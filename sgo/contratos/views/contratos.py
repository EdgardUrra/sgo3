"""Contratos views."""

from itertools import chain
from asyncio.windows_events import NULL
from cgi import print_form
from multiprocessing import context
from optparse import Values
import os
from queue import Empty
from tkinter import FLAT
from datetime import datetime
# Django
from django.contrib.auth.decorators import login_required, permission_required
from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.contrib import messages
from django.db.models import Q
from django.forms import NullBooleanField
from django.views.generic import TemplateView
from django.db.models import Count
from django.http import Http404, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.template.loader import render_to_string
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.forms import (
    AuthenticationForm, PasswordChangeForm, PasswordResetForm, SetPasswordForm,
)
from django.contrib.auth.tokens import default_token_generator
from mailmerge import MailMerge
from django.urls import reverse_lazy
from django.utils.decorators import method_decorator
from django.utils.http import (
    url_has_allowed_host_and_scheme, urlsafe_base64_decode,
)
from django.utils.translation import gettext_lazy as _
from django.views.decorators.csrf import csrf_protect
from django.conf import settings
from django.views.generic import ListView, DetailView
from django.views.generic.edit import FormView
# Models
from ficheros.models import Fichero
from contratos.models import TipoContrato, Contrato, DocumentosContrato, ContratosBono, Anexo
from requerimientos.models import RequerimientoTrabajador
from clientes.models import Planta
# Form
from contratos.forms import TipoContratoForm, CrearContratoForm, ContratoForm, ContratoEditarForm
from requerimientos.forms import RequeriTrabajadorForm
from users.forms import EditarUsuarioForm


class TipoContratosView(TemplateView):
    template_name = 'contratos/tipo_contratos_list.html'

    @method_decorator(csrf_exempt)
    @method_decorator(login_required)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)

    def post(self, request, *args, **kwargs):
        data = {}
        try:
            action = request.POST['action']
            if action == 'searchdata':
                data = []
                for i in TipoContrato.objects.filter(status=True):
                    data.append(i.toJSON())
            elif action == 'add':
                tipo = TipoContrato()
                tipo.nombre = request.POST['nombre'].lower()
                tipo.status = True
                tipo.save()
            elif action == 'edit':
                tipo = TipoContrato.objects.get(pk=request.POST['id'])
                tipo.nombre = request.POST['nombre'].lower()
                tipo.save()
            elif action == 'delete':
                tipo = TipoContrato.objects.get(pk=request.POST['id'])
                tipo.status = False
                tipo.save()
            else:
                data['error'] = 'Ha ocurrido un error'
        except Exception as e:
            data['error'] = str(e)
        return JsonResponse(data, safe=False)

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'Listado de Tipo Contratos'
        context['list_url'] = reverse_lazy('contratos:tipo_contrato')
        context['entity'] = 'TipoContrato'
        context['form'] = TipoContratoForm()
        return context


class ContratoListView(LoginRequiredMixin, PermissionRequiredMixin, ListView):
    """Contrato List
    Vista para listar todos las contratos según el usuario y plantas.
    """
    model = Contrato
    template_name = "contratos/contrato_list.html"
    paginate_by = 25
    #ordering = ['plantas', 'nombre', ]

    permission_required = 'contratos.view_contrato'
    raise_exception = True

    def get_queryset(self):
        search = self.request.GET.get('q')
        planta = self.kwargs.get('planta_id', None)

        if planta == '':
            planta = None

        if search:
            # Si el usuario no administrador se despliegan todos los contratos
            # de las plantas a las que pertenece el usuario, según el critero de busqueda.
            if not self.request.user.groups.filter(name__in=['Administrador', ]).exists():
                queryset = super(ContratoListView, self).get_queryset().filter(
                    Q(usuario__planta__in=self.request.user.planta.all()),
                    Q(usuario__first_name__icontains=search),
                    Q(usuario__last_name__icontains=search)
                ).distinct()
            else:
                # Si el usuario es administrador se despliegan todos las plantillas
                # segun el critero de busqueda.
                queryset = super(ContratoListView, self).get_queryset().filter(
                    Q(usuario__first_name__icontains=search),
                    Q(usuario__last_name__icontains=search),
                    Q(id__icontains=search),
                    Q(estado__icontains=search)
                ).distinct()
        else:
            # Si el usuario no es administrador, se despliegan los contrtatos
            # de las plantas a las que pertenece el usuario.
            if not self.request.user.groups.filter(name__in=['Administrador']).exists():
                queryset = super(ContratoListView, self).get_queryset().filter(
                    Q(user__planta__in=self.request.user.planta.all()),
                ).distinct()
            else:
                # Si el usuario es administrador, se despliegan todos los contratos.
                if planta is None:
                    queryset = super(ContratoListView, self).get_queryset()
                else:
                    # Si recibe la planta, solo muestra las plantillas que pertenecen a esa planta.
                    queryset = super(ContratoListView, self).get_queryset().filter(
                        Q(user__planta__in=self.request.user.planta.all())
                    ).distinct()

        return queryset


@login_required
@permission_required('contratos.add_contrato', raise_exception=True)
def create(request):

            requrimientotrabajador = request.POST['requerimiento_trabajador_id'] 
            contrato = Contrato()
            contrato.causal_id = request.POST['causal']
            contrato.motivo = request.POST['motivo']
            contrato.fecha_inicio = request.POST['fecha_inicio']
            contrato.fecha_termino = request.POST['fecha_termino']
            contrato.fecha_termino_ultimo_anexo = request.POST['fecha_termino']
            contrato.horario_id = request.POST['horario']
            contrato.sueldo_base = request.POST['sueldo_base']
            contrato.tipo_contrato_id = request.POST['tipo_contrato']
            contrato.gratificacion_id = request.POST['gratificacion']
            contrato.planta_id = request.POST['planta']
            contrato.trabajador_id = request.POST['trabajador_id']
            contrato.requerimiento_trabajador_id = request.POST['requerimiento_trabajador_id'] 
            contrato.status = True
            contrato.save()
            largobonos = int(request.POST['largobonos']) + 1
            i = []
            for a in range(1,largobonos):
                i = request.POST.getlist(str(a))
                if (i[0] != '0'):
                    bonos = ContratosBono()
                    bonos.valor = i[0]
                    bonos.bono_id = i[1]
                    bonos.contrato_id = contrato.id
                    bonos.save()
                    

            return redirect('contratos:create_contrato',requrimientotrabajador)


@login_required
@permission_required('contratos.add_contrato', raise_exception=True)
def update_contrato(request, contrato_id, template_name='contratos/contrato_update.html'):
            data = dict()
            contrato = get_object_or_404(Contrato, pk=contrato_id)

            if request.method == 'POST':
                contrato.sueldo_base = request.POST['sueldo_base']
                contrato.causal_id = request.POST['causal']
                contrato.motivo = request.POST['motivo']
                contrato.fecha_inicio = request.POST['fecha_inicio']
                contrato.fecha_termino = request.POST['fecha_termino']
                contrato.fecha_termino_ultimo_anexo = request.POST['fecha_termino']
                contrato.horario_id = request.POST['horario']
                contrato.tipo_contrato_id = request.POST['tipo_contrato']
                contrato.status = True
                contrato.save()
                bonos = []
                bonosguardados = ContratosBono.objects.values_list('id', flat=True).filter(contrato_id=contrato_id) 
                for i in bonosguardados:
                    bonos.append(i) 
                for a in bonos:
                    bonoseliminar = ContratosBono.objects.get(id = a)
                    bonoseliminar.delete()
                largobonos = int(request.POST['largobonos']) + 1
                i = []
                for a in range(1,largobonos):
                    i = request.POST.getlist(str(a))
                    if (i[0] != '0' ):
                        bonos = ContratosBono()
                        bonos.valor = i[0]
                        bonos.bono_id = i[1]
                        bonos.contrato_id = contrato.id
                        bonos.save()

                return redirect('contratos:create_contrato',contrato.requerimiento_trabajador_id)
            else:
                
                form = ContratoEditarForm(instance=contrato,)
                req = contrato.requerimiento_trabajador_id 

                bonos = RequerimientoTrabajador.objects.raw(" SELECT b.id, b.nombre, cb.valor FROM public.requerimientos_requerimientotrabajador as rt LEFT JOIN public.requerimientos_requerimiento as r on r.id = rt.requerimiento_id LEFT JOIN public.clientes_planta as p on p.id = r.planta_id LEFT JOIN public.clientes_planta_bono as pb on pb.planta_id = p.id LEFT JOIN public.utils_bono as b on b.id = pb.bono_id LEFT JOIN public.contratos_contrato as c on c.requerimiento_trabajador_id = rt.id LEFT JOIN public.contratos_contratosbono as cb on cb.bono_id = pb.bono_id WHERE rt.id = %s ORDER BY cb.valor" , [req])
                largobonos = len(bonos)
                context={
                    'form4': form,
                    'contrato':contrato,
                    'contrato_id': contrato.id,
                    'largobonos' : largobonos,
                    'bonos' : bonos

                }
                data['html_form'] = render_to_string(
                    template_name,
                    context,
                    request=request,
                )
                return JsonResponse(data)


@login_required
@permission_required('contratos.add_contrato', raise_exception=True)
def create_anexo(request):
            requrimientotrabajador = request.POST['requerimiento_trabajador_id'] 
            anexo = Anexo()
            anexo.trabajador_id = request.POST['trabajador_id']
            anexo.requerimiento_trabajador_id = request.POST['requerimiento_trabajador_id']
            anexo.fecha_inicio = request.POST['UltimoAnexo']
            anexo.fecha_termino = request.POST['fechaTerminoAnexo']
            if "motivo" in request.POST:
                anexo.motivo = request.POST['motivo']
            else:
                anexo.motivo = ''
            anexo.fecha_termino_anexo_anterior = request.POST['fechaTerminoAnexo']
            anexo.contrato_id = request.POST['id_contrato']
            if "renta" in request.POST:
                 anexo.nueva_renta = request.POST['NuevaRenta']
            anexo.causal_id = request.POST['id_causalanexo']
            anexo.planta_id = request.POST['planta']
            anexo.save()
            contrato = Contrato.objects.get(pk=request.POST['id_contrato'])
            contrato.fecha_termino_ultimo_anexo = request.POST['fechaTerminoAnexo']
            contrato.save()
            return redirect('contratos:create_contrato',requrimientotrabajador)
 

class ContratoIdView(TemplateView):
    template_name = 'contratos/create_contrato.html'



    def get_context_data(self, requerimiento_trabajador_id, **kwargs):

        requer_trabajador = get_object_or_404(RequerimientoTrabajador, pk=requerimiento_trabajador_id)
        trabaj = RequerimientoTrabajador.objects.filter(id=requerimiento_trabajador_id).values(
                'trabajador', 'trabajador__first_name', 'trabajador__last_name', 'trabajador__rut','trabajador__estado_civil__nombre', 'trabajador__fecha_nacimiento',
                'trabajador__domicilio', 'trabajador__ciudad', 'trabajador__afp', 'trabajador__salud', 'trabajador__nivel_estudio',
                'trabajador__telefono', 'trabajador__nacionalidad', 'requerimiento__nombre',  'referido',
                'requerimiento__areacargo', 'requerimiento__centro_costo', 'requerimiento__cliente__razon_social',
                'requerimiento__cliente__rut', 'requerimiento__planta__nombre', 'requerimiento__planta__region',
                'requerimiento__planta__ciudad', 'requerimiento__planta__direccion',
                'requerimiento__planta__gratificacion', 'trabajador__user__planta__nombre').order_by('trabajador__user__planta')
        context = super().get_context_data(**kwargs)
        context['datos'] = RequerimientoTrabajador.objects.filter(pk=requerimiento_trabajador_id).values(
                'trabajador', 'trabajador__first_name', 'trabajador__last_name', 'trabajador__rut','trabajador__estado_civil__nombre',
                'trabajador__fecha_nacimiento', 'trabajador__domicilio', 'trabajador__ciudad__nombre', 'trabajador__afp__nombre',
                'trabajador__salud__nombre',
                'trabajador__nivel_estudio__nombre', 'trabajador__telefono', 'trabajador__nacionalidad__nombre', 'requerimiento__nombre',
                'referido', 'area_cargo__area__nombre', 'area_cargo__cargo__nombre', 'requerimiento__centro_costo', 'requerimiento__cliente__razon_social',
                'requerimiento__cliente__rut', 'requerimiento__codigo', 'requerimiento__planta__nombre', 'requerimiento__planta',
                'requerimiento__planta__region__nombre', 'requerimiento__planta__provincia__nombre',
                'requerimiento__planta__ciudad__nombre', 'requerimiento__planta__direccion',
                'requerimiento__planta__gratificacion__nombre','requerimiento__planta__gratificacion').order_by('trabajador__rut')
        context['contratos'] = RequerimientoTrabajador.objects.filter(pk=requerimiento_trabajador_id).values( 'contrato',
                'contrato__requerimiento_trabajador', 'contrato__estado_contrato','contrato__sueldo_base', 'contrato__tipo_contrato__nombre','contrato__causal__nombre' ,'contrato__causal', 'contrato__motivo', 'contrato__fecha_inicio',
                 'contrato__fecha_termino', 'contrato__horario__nombre' , 'contrato__fecha_termino_ultimo_anexo', 'trabajador__first_name', 'trabajador__last_name', 'trabajador__domicilio' )
        context['anexos'] = RequerimientoTrabajador.objects.filter(pk=requerimiento_trabajador_id).values( 'anexo',
                'anexo__requerimiento_trabajador', 'anexo__nueva_renta', 'contrato__tipo_contrato__nombre','anexo__causal__nombre' ,'anexo__causal', 'anexo__motivo', 'anexo__fecha_inicio',
                 'anexo__fecha_termino' ).order_by('anexo__fecha_inicio')

        

        horario = RequerimientoTrabajador.objects.values_list('requerimiento__cliente__horario', flat=True).filter(pk=requerimiento_trabajador_id)
        bonos = RequerimientoTrabajador.objects.values_list('requerimiento__planta__bono', flat=True).filter(pk=requerimiento_trabajador_id)
        largobonos = len(bonos)
        context['largobonos'] = largobonos
        context['requerimiento_trabajador_id'] = requerimiento_trabajador_id
        context['bonos'] = RequerimientoTrabajador.objects.filter(pk=requerimiento_trabajador_id).values('requerimiento__planta__bono','requerimiento__planta__bono__nombre')
        context['form3'] = RequeriTrabajadorForm(instance=requer_trabajador, user=trabaj)
        context['form1'] = CrearContratoForm(instance=requer_trabajador)
        context['form2'] = ContratoForm()
        return context



class ContratosBonoView(TemplateView):
    """ContratosBono List
    Vista para listar todos los negocios según el usuario y sus las negocios
    relacionadas.
    """
    template_name = 'utils/create_cliente.html'

    @method_decorator(csrf_exempt)
    @method_decorator(login_required)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)

    def post(self, request, cliente_id, *args, **kwargs):
        data = {}
        try:
            action = request.POST['action']
            if action == 'searchdata':
                data = []
                for i in ContratosBono.objects.filter(cliente=cliente_id, status=True):
                    data.append(i.toJSON())
            else:
                data['error'] = 'Ha ocurrido un error'
        except Exception as e:
            data['error'] = str(e)
        return JsonResponse(data, safe=False)


class ContratoMis(LoginRequiredMixin, TemplateView):
    template_name = 'home.html'

    def get_context_data(self, **kwargs):
        context = super(ContratoMis, self).get_context_data(**kwargs)
        # Obtengo las plantas del Usuario
        plantas = self.request.user.planta.all()
        # Obtengo los ficheros de las plantas a las que pertenece el usuario
        context['ficheros'] = Fichero.objects.filter(
            plantas__in=plantas, status=True, created_by_id=self.request.user
        ).distinct()
        # Obtengo los contratos del usuario si no es administrador.
        if self.request.user.groups.filter(name__in=['Administrador', 'Administrador Contratos']).exists():
            context['contratos'] = Contrato.objects.filter(
                created_by_id=self.request.user).order_by('modified')
        else:
            # Obtengo todos los contratos por firmar de todas las plantas a las
            # que pertenece el usuario.
            context['contratos'] = Contrato.objects.filter(
                usuario__planta__in=plantas, estado=Contrato.POR_FIRMAR, created_by_id=self.request.user)
            context['result'] = Contrato.objects.values(
                'usuario__planta__nombre').order_by('usuario__planta').annotate(count=Count(estado=Contrato.FIRMADO_TRABAJADOR))

        return context


class ContratoDetailView(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    model = Contrato
    template_name = "contratos/contrato_detail.html"
    context_object_name = "contrato"

    permission_required = 'contratos.view_contrato'
    raise_exception = True

    def get_context_data(self, **kwargs):
        context = super(ContratoDetailView, self).get_context_data(**kwargs)
        # Solo el administrador puede ver el contrato de otro usuario.
        if not self.request.user.groups.filter(name__in=['Administrador', 'Administrador Contratos', 'Fiscalizador Interno', 'Fiscalizador DT', ]).exists():
            if not self.object.usuario == self.request.user:
                raise Http404

        # Obtengo todos los documentos del contrato
        documentos = DocumentosContrato.objects.filter(contrato=self.object.id)
        context['documentos'] = documentos

        return context


class PasswordContextMixin:
    extra_context = None

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context.update({
            'title': self.title,
            **(self.extra_context or {})
        })
        return context


class ContratoFirmarView(LoginRequiredMixin, PermissionRequiredMixin, DetailView):
    slug_url_kwarg = "id"
    slug_field = "id"
    model = Contrato
    template_name = 'registration/password_reset_done.html'
    title = _('Password reset sent')
    template_name = "contratos/contrato_firm.html"
    context_object_name = "contrato"

    permission_required = 'contratos.view_contrato'
    raise_exception = True

    def get_context_data(self, **kwargs):
        context = super(ContratoFirmarView, self).get_context_data(**kwargs)
        # Solo el administrador puede ver el contrato de otro usuario.
        if not self.request.user.groups.filter(name__in=['Administrador', 'Administrador Contratos', 'Fiscalizador Interno', 'Fiscalizador DT', ]).exists():
            if not self.object.usuario == self.request.user:
                raise Http404

        # Obtengo todos los documentos del contrato
        documentos = DocumentosContrato.objects.filter(contrato=self.object.id)
        context['documentos'] = documentos
        return context


class generar_firma_contrato(PermissionRequiredMixin, PasswordContextMixin):
        email_template_name = 'emails/contrat_firm_token.html'
        extra_email_context = None
        form_class = PasswordResetForm
        from_email = None
        # from_email = mel@yopmail.com
        html_email_template_name = None
        subject_template_name = 'emails/password_reset_subject.txt'
        success_url = reverse_lazy('password_reset_done')
        template_name = 'emails/contrat_firm_token.html'
        title = _('Password reset')
        token_generator = default_token_generator

        @method_decorator(csrf_protect)
        def dispatch(self, *args, **kwargs):
            return super().dispatch(*args, **kwargs)

        def form_valid(self, form):
            opts = {
                'use_https': self.request.is_secure(),
                'token_generator': self.token_generator,
                'from_email': self.from_email,
                'email_template_name': self.email_template_name,
                'subject_template_name': self.subject_template_name,
                'request': self.request,
                'html_email_template_name': self.html_email_template_name,
                'extra_email_context': self.extra_email_context,
            }
            form.save(**opts)
            return super().form_valid(form)


        INTERNAL_RESET_SESSION_TOKEN = '_password_reset_token'

        def generar_firma_contrato(request, contrato_id, template_name='contratos/users_firma_contrato.html'):
            data = dict()
            # Obtengo el usuario
            contrato = get_object_or_404(Contrato, pk=contrato_id)
            print (contrato_id)
            uidb64 = "1s72q4rgru5hyt6fyrjhvc8y1a73piq6"
            token = "oN8ZslfdNk6n6sjUKo63roxbVdfeRHGQthkT48CjlTB57IPj2tn1Ga6d7VRMOGlF"

            if request.method == 'POST':
                print (contrato_id)

            else:
                data['form_is_valid'] = False

            context = {'contrato': contrato, }
            data['html_form'] = render_to_string(
                template_name,
                context,
                request=request
            )
            return JsonResponse(data)


class PasswordContextMixin:
    extra_context = None

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context.update({
            'title': self.title,
            **(self.extra_context or {})
        })
        return context


class PasswordResetView(PasswordContextMixin, FormView):
    email_template_name = 'registration/contrat_firm_token.html'
    extra_email_context = None
    form_class = PasswordResetForm
    from_email = None
    html_email_template_name = None
    subject_template_name = 'registration/password_reset_subject.txt'
    success_url = reverse_lazy('password_reset_done')
    template_name = 'registration/password_reset_form.html'
    title = _('Password reset')
    token_generator = default_token_generator

    @method_decorator(csrf_protect)
    def dispatch(self, *args, **kwargs):
        return super().dispatch(*args, **kwargs)

    def form_valid(self, form):
        opts = {
            'use_https': self.request.is_secure(),
            'token_generator': self.token_generator,
            'from_email': self.from_email,
            'email_template_name': self.email_template_name,
            'subject_template_name': self.subject_template_name,
            'request': self.request,
            'html_email_template_name': self.html_email_template_name,
            'extra_email_context': self.extra_email_context,
        }
        form.save(**opts)
        return super().form_valid(form)


INTERNAL_RESET_SESSION_TOKEN = '_password_reset_token'


class PasswordResetDoneView(PasswordContextMixin, TemplateView):
    template_name = 'registration/password_reset_done.html'
    title = _('Password reset sent')
