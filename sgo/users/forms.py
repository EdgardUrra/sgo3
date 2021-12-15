"""Users Forms"""

# Django
from django import forms
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Layout, Row, Column
from django.forms import inlineformset_factory, RadioSelect
from django.contrib.auth import get_user_model
from django.forms import TextInput
from django.contrib.auth.models import Group
# sgo Model
from utils.models import Cliente, Negocio, Region, Provincia, Ciudad
from users.models import Civil, Salud, Afp, Profesion, ProfesionUser, Especialidad, TipoCta, Parentesco, Contacto, TipoArchivo, ArchivoUser

User = get_user_model()


class ProfesionCreateForm(forms.ModelForm):
    nombre = forms.CharField(required=True, label="Nombre",
                                 widget=forms.TextInput(attrs={'class': "form-control"}))

    def __init__(self, *args, **kwargs):
        super(ProfesionCreateForm, self).__init__(*args, **kwargs)

    class Meta:
        model = Profesion
        fields = ("nombre", "status", )


class ParentescoCreateForm(forms.ModelForm):
    nombre = forms.CharField(required=True, label="Nombre",
                                 widget=forms.TextInput(attrs={'class': "form-control"}))

    def __init__(self, *args, **kwargs):
        super(ParentescoCreateForm, self).__init__(*args, **kwargs)

    class Meta:
        model = Parentesco
        fields = ("nombre", "status", )


class TipoArchivoCreateForm(forms.ModelForm):
    nombre = forms.CharField(required=True, label="Nombre",
                                 widget=forms.TextInput(attrs={'class': "form-control"}))

    def __init__(self, *args, **kwargs):
        super(TipoArchivoCreateForm, self).__init__(*args, **kwargs)

    class Meta:
        model = TipoArchivo
        fields = ("nombre", "status", )


class CrearUsuarioForm(forms.ModelForm):
    email = forms.EmailField(required=True,
                             widget=forms.EmailInput(attrs={'class': "form-control"}))
    
    first_name = forms.CharField(required=True, label="Nombres",
                                 widget=forms.TextInput(attrs={'class': "form-control" }))
    last_name = forms.CharField(required=True, label="Apellidos",
                                widget=forms.TextInput(attrs={'class': "form-control"}))
    fecha_nacimiento = forms.DateField(required=True, input_formats=["%d/%m/%Y"], label="Fecha de Nacimiento",
                                widget=forms.TextInput(attrs={'placeholder': 'DD/MM/AAAA','class': "form-control", 'id':"datetimepicker1"}))
    estado_civil = forms.ModelChoiceField(queryset=Civil.objects.all(), required=True, label="Estado Civil",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    salud = forms.ModelChoiceField(queryset=Salud.objects.all(), required=True, label="Sistema Salud",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    afp = forms.ModelChoiceField(queryset=Afp.objects.all(), required=True, label="Sistema Prevision",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    tipo_cuenta = forms.ModelChoiceField(queryset=TipoCta.objects.all(), required=True, label="Tipo Cuenta",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    cuenta = forms.CharField(required=True, label="Número de Cuenta",
                                widget=forms.TextInput(attrs={'class': "form-control"}))
    group = forms.ModelChoiceField(queryset=Group.objects.none(), required=True, label="Perfil",
                                   widget=forms.Select(attrs={'class': 'form-control ',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    cliente = forms.ModelMultipleChoiceField(queryset=Cliente.objects.all(), required=True, label="Cliente",
                                            widget=forms.SelectMultiple(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    negocio = forms.ModelMultipleChoiceField(queryset=Negocio.objects.all(), required=True, label="Negocio",
                                            widget=forms.SelectMultiple(
                                                attrs={'class': 'selectpicker show-tick',
                                                       'data-size': '5',
                                                       'data-live-search': 'true',
                                                       'data-live-search-normalize': 'true'
                                                       })
                                            )
    rut = forms.CharField(required=True, label="RUT",
                          widget=forms.TextInput(attrs={'class': "form-control",
                          'onkeypress': "return isNumber(event)",
                          'oninput': "checkRut(this)",
                          'title': "El RUT debe ser ingresado sin puntos ni guiones.",
                          'placeholder': '987654321',}))
    
    

    def __init__(self, *args, **kwargs):
        user = kwargs.pop('user', None)
        print(user)
        super(CrearUsuarioForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.layout = Layout(
            Row(
                Column('group', css_class='form-group col-md-4 mb-0'),
                Column('rut', css_class='form-group col-md-4 mb-0'),
                Column('pasaporte', css_class='form-group col-md-4 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('first_name', css_class='form-group col-md-6 mb-0'),
                Column('last_name', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('fecha_nacimiento', css_class='form-group col-md-6 mb-0'),
                Column('sexo', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('telefono', css_class='form-group col-md-6 mb-0'),
                Column('telefono2', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('email', css_class='form-group col-md-6 mb-0'),
                Column('estado_civil', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('nacionalidad', css_class='form-group col-md-6 mb-0'),
                Column('foto', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('region', css_class='form-group col-md-4 mb-0'),
                Column('provincia', css_class='form-group col-md-4 mb-0'),
                Column('ciudad', css_class='form-group col-md-4 mb-0'),
                css_class='form-row'
            ),
            'domicilio',
            Row(
                Column('afp', css_class='form-group col-md-6 mb-0'),
                Column('salud', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('especialidad', css_class='form-group col-md-6 mb-0'),
                Column('nivel_estudio', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('banco', css_class='form-group col-md-4 mb-0'),
                Column('tipo_cuenta', css_class='form-group col-md-4 mb-0'),
                Column('cuenta', css_class='form-group col-md-4 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('talla_polera', css_class='form-group col-md-4 mb-0'),
                Column('talla_pantalon', css_class='form-group col-md-4 mb-0'),
                Column('calzado', css_class='form-group col-md-4 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('licencia_conducir', css_class='form-group col-md-6 mb-0'),
                Column('examen', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('cliente', css_class='form-group col-md-6 mb-0'),
                Column('negocio', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            # 'check_me_out',
            # Submit('submit', 'Sign in')
        )
        if not user.groups.filter(name='Administrador').exists():
            self.fields['group'].queryset = Group.objects.exclude(name__in=['Administrador', 'Administrador Contratos', 'Fiscalizador Interno', 'Fiscalizador DT', ])
            self.fields['cliente'].queryset = Cliente.objects.filter(id__in=user.cliente.all())
            self.fields['negocio'].queryset = Negocio.objects.filter(id__in=user.negocio.all())
            cliente_id = self.data.get('cliente')
            # self.fields['negocio'].queryset = negocio.objects.filter(cliente_id=cliente_id).order_by('nombre')
        else:
            self.fields['group'].queryset = Group.objects.all()
            self.fields['cliente'].queryset = Cliente.objects.all()
            self.fields['negocio'].queryset = Negocio.objects.all()

        

        # if 'cliente' in self.data:
        #     try:
                
        #         self.fields['negocio'].queryset = negocio.objects.filter(cliente_id=cliente_id).order_by('nombre')
        #     except (ValueError, TypeError):
        #         pass  # invalid input from the client; ignore and fallback to empty negocio queryset
        # elif self.instance.pk:
        #     self.fields['negocio'].queryset = self.instance.cliente.negocios_set.order_by('nombre')
        #     # self.fields['negocio'].queryset = negocio.objects.select_related('cliente')


    class Meta:
        model = User
        fields = ("group", "rut", "pasaporte", "first_name", "last_name", "sexo", "email", "telefono", "telefono2",
                  "estado_civil", "fecha_nacimiento", "nacionalidad", "licencia_conducir", "talla_polera", "talla_pantalon",
                  "calzado", "nivel_estudio", "especialidad", "region", "provincia", "ciudad", "domicilio", "salud", "afp", "examen",
                   "foto", "banco", "tipo_cuenta", "cuenta", "cliente", "negocio", "is_active", )
        exclude = ('password1', 'password2')
        widgets = {
            'telefono': TextInput(attrs={
                'class': "form-control",
                'type': "number",
                'placeholder': '56912345678',
                }),
            'telefono2': TextInput(attrs={
                'class': "form-control",
                'type': "number",
                'placeholder': '56912345678',
                }),
            'cuenta': TextInput(attrs={
                'class': "form-control",
                'type': "number"
                }),
        }



class EditarUsuarioForm(forms.ModelForm):
    email = forms.EmailField(required=True,
                             widget=forms.EmailInput(attrs={'class': "form-control"}))
    first_name = forms.CharField(required=True, label="Nombres",
                                 widget=forms.TextInput(attrs={'class': "form-control"}))
    last_name = forms.CharField(required=True, label="Apellidos",
                                widget=forms.TextInput(attrs={'class': "form-control"}))
    fecha_nacimiento = forms.DateField(required=True, input_formats=["%d/%m/%Y"], label="Fecha de Nacimiento",
                                widget=forms.DateInput(attrs={'placeholder': 'DD/MM/AAAA','class': "form-control"}))
    estado_civil = forms.ModelChoiceField(queryset=Civil.objects.all(), required=True, label="Estado Civil",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    salud = forms.ModelChoiceField(queryset=Salud.objects.all(), required=True, label="Sistema Salud",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    afp = forms.ModelChoiceField(queryset=Afp.objects.all(), required=True, label="Sistema Prevision",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    tipo_cuenta = forms.ModelChoiceField(queryset=TipoCta.objects.all(), required=True, label="Tipo Cuenta",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    cuenta = forms.CharField(required=True, label="Número de Cuenta",
                                widget=forms.TextInput(attrs={'class': "form-control"}))
    group = forms.ModelChoiceField(queryset=Group.objects.none(), required=True, label="Perfil",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    cliente = forms.ModelMultipleChoiceField(queryset=Cliente.objects.none(), required=True, label="Cliente",
                                   widget=forms.SelectMultiple(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    negocio = forms.ModelMultipleChoiceField(queryset=Negocio.objects.none(), required=True, label="Negocio",
                                            widget=forms.SelectMultiple(
                                                attrs={'class': 'selectpicker show-tick form-control',
                                                       'data-size': '5',
                                                       'data-live-search': 'true',
                                                       'data-live-search-normalize': 'true'
                                                       })
                                            )
    rut = forms.CharField(required=True, label="RUT",
                          widget=forms.TextInput(attrs={'class': "form-control"}))

        
    def __init__(self, *args, **kwargs):
        user = kwargs.pop('user', None)
        super(EditarUsuarioForm, self).__init__(*args, **kwargs)

        self.fields['provincia'].queryset = Provincia.objects.none()

        if 'region' in self.data:
            try:
                region_id = int(self.data.get('region'))
                self.fields['provincia'].queryset = Provincia.objects.filter(region_id=region_id).order_by('nombre')
            except (ValueError, TypeError):
                pass  # invalid input from the client; ignore and fallback to empty Provincia queryset
        elif self.instance.pk:
            self.fields['provincia'].queryset = self.instance.region.provincia_set.order_by('nombre')

        self.fields['ciudad'].queryset = Provincia.objects.none()

        if 'provincia' in self.data:
            try:
                provincia_id = int(self.data.get('provincia'))
                self.fields['ciudad'].queryset = Ciudad.objects.filter(provincia_id=provincia_id).order_by('nombre')
            except (ValueError, TypeError):
                pass  # invalid input from the client; ignore and fallback to empty Provincia queryset
        elif self.instance.pk:
            # self.fields['ciudad'].queryset = self.instance.region.provincia.ciudad_set.order_by('nombre')
            self.fields['ciudad'].queryset = self.instance.provincia.ciudad_set.order_by('nombre')

        self.helper = FormHelper()
        self.helper.layout = Layout(
            Row(
                Column('group', css_class='form-group col-md-4 mb-0'),
                Column('rut', css_class='form-group col-md-4 mb-0'),
                Column('pasaporte', css_class='form-group col-md-4 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('first_name', css_class='form-group col-md-6 mb-0'),
                Column('last_name', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('fecha_nacimiento', css_class='form-group col-md-6 mb-0'),
                Column('sexo', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('telefono', css_class='form-group col-md-6 mb-0'),
                Column('telefono2', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('email', css_class='form-group col-md-6 mb-0'),
                Column('estado_civil', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('nacionalidad', css_class='form-group col-md-6 mb-0'),
                Column('foto', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('region', css_class='form-group col-md-4 mb-0'),
                Column('provincia', css_class='form-group col-md-4 mb-0'),
                Column('ciudad', css_class='form-group col-md-4 mb-0'),
                css_class='form-row'
            ),
            'domicilio',
            Row(
                Column('afp', css_class='form-group col-md-6 mb-0'),
                Column('salud', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('especialidad', css_class='form-group col-md-6 mb-0'),
                Column('nivel_estudio', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('banco', css_class='form-group col-md-4 mb-0'),
                Column('tipo_cuenta', css_class='form-group col-md-4 mb-0'),
                Column('cuenta', css_class='form-group col-md-4 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('talla_polera', css_class='form-group col-md-4 mb-0'),
                Column('talla_pantalon', css_class='form-group col-md-4 mb-0'),
                Column('calzado', css_class='form-group col-md-4 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('licencia_conducir', css_class='form-group col-md-6 mb-0'),
                Column('examen', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
            Row(
                Column('cliente', css_class='form-group col-md-6 mb-0'),
                Column('negocio', css_class='form-group col-md-6 mb-0'),
                css_class='form-row'
            ),
        )

        if not user.groups.filter(name='Administrador').exists():
            self.fields['group'].queryset = Group.objects.exclude(name__in=['Administrador', 'Administrador Contratos', 'Fiscalizador Interno', 'Fiscalizador DT', ])
            self.fields['cliente'].queryset = Cliente.objects.filter(id__in=user.negocio.all())
            self.fields['negocio'].queryset = Negocio.objects.filter(id__in=user.negocio.all())
        else:
            self.fields['group'].queryset = Group.objects.all()
            self.fields['cliente'].queryset = Cliente.objects.all()
            self.fields['negocio'].queryset = Negocio.objects.all()

 
    class Meta:
        model = User
        fields = ("group", "rut", "pasaporte", "first_name", "last_name", "sexo", "email", "telefono", "telefono2",
                  "estado_civil", "fecha_nacimiento", "nacionalidad", "licencia_conducir", "talla_polera", "talla_pantalon",
                  "calzado", "nivel_estudio", "especialidad", "region", "provincia", "ciudad", "domicilio", "salud", "afp", "examen",
                   "foto", "banco", "tipo_cuenta", "cuenta", "cliente", "negocio", "is_active", )
        widgets = {
            'telefono': TextInput(attrs={
                'class': "form-control",
                'type': "number",
                'placeholder': '56912345678'
                }),
            'cuenta': TextInput(attrs={
                'class': "form-control",
                'type': "number"
                }),
        }


class ProfesionUserCreateForm(forms.ModelForm):
    institucion = forms.CharField(required=True, label="Institucion",
                                 widget=forms.TextInput(attrs={'class': "form-control"}))
    profesion = forms.ModelChoiceField(queryset=Profesion.objects.all(), required=True, label="Profesión",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )
    # user = forms.ModelChoiceField(queryset=User.objects.all(), required=True, label="Usuario",
    #                                widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
    #                                                           'data-size': '5',
    #                                                           'data-live-search': 'true',
    #                                                           'data-live-search-normalize': 'true'
    #                                                           })
    #                                )

    def __init__(self, *args, **kwargs):
        user = kwargs.pop('user', None)
        super(ProfesionUserCreateForm, self).__init__(*args, **kwargs)

    class Meta:
        model = ProfesionUser
        fields = ("egreso", "institucion", "profesion", )


class ContactoCreateForm(forms.ModelForm):
    nombre = forms.CharField(required=True, label="Nombre",
                                 widget=forms.TextInput(attrs={'class': "form-control"}))
    parentesco = forms.ModelChoiceField(queryset=Parentesco.objects.all(), required=True, label="Parentesco",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )

    def __init__(self, *args, **kwargs):
        user = kwargs.pop('user', None)
        super(ContactoCreateForm, self).__init__(*args, **kwargs)

    class Meta:
        model = Contacto
        fields = ("nombre", "telefono", "parentesco", )


class ArchivoUserCreateForm(forms.ModelForm):
    tipo_archivo = forms.ModelChoiceField(queryset=TipoArchivo.objects.all(), required=True, label="Tipo Archivo",
                                   widget=forms.Select(attrs={'class': 'selectpicker show-tick form-control',
                                                              'data-size': '5',
                                                              'data-live-search': 'true',
                                                              'data-live-search-normalize': 'true'
                                                              })
                                   )

    def __init__(self, *args, **kwargs):
        user = kwargs.pop('user', None)
        super(ArchivoUserCreateForm, self).__init__(*args, **kwargs)

    class Meta:
        model = ArchivoUser
        fields = ("tipo_archivo", "url", )


class EditarAtributosForm(forms.ModelForm):
    atributos = forms.JSONField(required=True, label="Más Información",
                                widget=forms.Textarea(attrs={'class': "form-control",
                                                             'placeholder': '{"cargo": 23, "departamento": 17, "jornada": "Diurna", "sueldo": "500.000", "beneficio": "Si", "fecha_ingreso": "12/10/2021", "hora_ingreso": "08:30", "fecha_termino": "10/01/2022"}',}))

    def __init__(self, *args, **kwargs):
        user = kwargs.pop('user', None)
        print(user)
        super(EditarAtributosForm, self).__init__(*args, **kwargs)

    class Meta:
        model = User
        fields = ("atributos", )
        exclude = ('group', 'rut', 'first_name', 'last_name', 'sexo', 'email', 'telefono', 'estado_civil', 'fecha_nacimiento', 
                  'nacionalidad', 'region', 'provincia', 'ciudad', 'domicilio', 'salud', 'afp',
                  'banco', 'tipo_cuenta', 'cuenta', 'cliente', 'negocio', 'is_active', 'password1', 'password2')
