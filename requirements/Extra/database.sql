PGDMP         5                y        	   firmatec1    13.3    13.3 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17881 	   firmatec1    DATABASE     e   CREATE DATABASE firmatec1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE firmatec1;
                postgres    false            �            1259    50778 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    50776    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    217            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    216            �            1259    50788    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    50786    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    219            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    218            �            1259    50770    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    50768    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    215            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    214            �            1259    51093    contratos_contrato    TABLE     R  CREATE TABLE public.contratos_contrato (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    archivado boolean NOT NULL,
    estado character varying(2) NOT NULL,
    obs text,
    created_by_id integer,
    modified_by_id integer,
    usuario_id integer NOT NULL
);
 &   DROP TABLE public.contratos_contrato;
       public         heap    postgres    false            �            1259    51091    contratos_contrato_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contratos_contrato_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.contratos_contrato_id_seq;
       public          postgres    false    245            �           0    0    contratos_contrato_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.contratos_contrato_id_seq OWNED BY public.contratos_contrato.id;
          public          postgres    false    244            �            1259    51104    contratos_documentoscontrato    TABLE     1  CREATE TABLE public.contratos_documentoscontrato (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    archivo character varying(100) NOT NULL,
    contrato_id bigint NOT NULL,
    created_by_id integer,
    modified_by_id integer
);
 0   DROP TABLE public.contratos_documentoscontrato;
       public         heap    postgres    false            �            1259    51102 #   contratos_documentoscontrato_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contratos_documentoscontrato_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.contratos_documentoscontrato_id_seq;
       public          postgres    false    247            �           0    0 #   contratos_documentoscontrato_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.contratos_documentoscontrato_id_seq OWNED BY public.contratos_documentoscontrato.id;
          public          postgres    false    246            �            1259    51112    contratos_plantilla    TABLE     �  CREATE TABLE public.contratos_plantilla (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    activo boolean NOT NULL,
    archivo character varying(100) NOT NULL,
    nombre character varying(120) NOT NULL,
    cliente_id integer,
    created_by_id integer,
    modified_by_id integer,
    tipo_id bigint NOT NULL
);
 '   DROP TABLE public.contratos_plantilla;
       public         heap    postgres    false            �            1259    51110    contratos_plantilla_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contratos_plantilla_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.contratos_plantilla_id_seq;
       public          postgres    false    249            �           0    0    contratos_plantilla_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.contratos_plantilla_id_seq OWNED BY public.contratos_plantilla.id;
          public          postgres    false    248            �            1259    51153    contratos_plantilla_plantas    TABLE     �   CREATE TABLE public.contratos_plantilla_plantas (
    id integer NOT NULL,
    plantilla_id bigint NOT NULL,
    planta_id integer NOT NULL
);
 /   DROP TABLE public.contratos_plantilla_plantas;
       public         heap    postgres    false            �            1259    51151 "   contratos_plantilla_plantas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contratos_plantilla_plantas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.contratos_plantilla_plantas_id_seq;
       public          postgres    false    253            �           0    0 "   contratos_plantilla_plantas_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.contratos_plantilla_plantas_id_seq OWNED BY public.contratos_plantilla_plantas.id;
          public          postgres    false    252            �            1259    51120    contratos_tipo    TABLE        CREATE TABLE public.contratos_tipo (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    nombre character varying(60) NOT NULL,
    created_by_id integer,
    modified_by_id integer
);
 "   DROP TABLE public.contratos_tipo;
       public         heap    postgres    false            �            1259    51118    contratos_tipo_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.contratos_tipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.contratos_tipo_id_seq;
       public          postgres    false    251            �           0    0    contratos_tipo_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.contratos_tipo_id_seq OWNED BY public.contratos_tipo.id;
          public          postgres    false    250            �            1259    51069    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    51067    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    243            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    242            �            1259    50760    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    50758    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    213            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    212            �            1259    50685    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    50683    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200                       1259    51265    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    51222    ficheros_fichero    TABLE     ^  CREATE TABLE public.ficheros_fichero (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    activo boolean NOT NULL,
    archivo character varying(100) NOT NULL,
    "desc" text,
    nombre character varying(120) NOT NULL,
    created_by_id integer,
    modified_by_id integer
);
 $   DROP TABLE public.ficheros_fichero;
       public         heap    postgres    false            �            1259    51220    ficheros_fichero_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ficheros_fichero_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ficheros_fichero_id_seq;
       public          postgres    false    255            �           0    0    ficheros_fichero_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.ficheros_fichero_id_seq OWNED BY public.ficheros_fichero.id;
          public          postgres    false    254                       1259    51243    ficheros_fichero_plantas    TABLE     �   CREATE TABLE public.ficheros_fichero_plantas (
    id integer NOT NULL,
    fichero_id bigint NOT NULL,
    planta_id integer NOT NULL
);
 ,   DROP TABLE public.ficheros_fichero_plantas;
       public         heap    postgres    false                        1259    51241    ficheros_fichero_plantas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ficheros_fichero_plantas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.ficheros_fichero_plantas_id_seq;
       public          postgres    false    257            �           0    0    ficheros_fichero_plantas_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.ficheros_fichero_plantas_id_seq OWNED BY public.ficheros_fichero_plantas.id;
          public          postgres    false    256            �            1259    50822    users_banco    TABLE     �   CREATE TABLE public.users_banco (
    id integer NOT NULL,
    nombre character varying(120) NOT NULL,
    status boolean NOT NULL,
    created_date timestamp with time zone,
    codigo character varying(3)
);
    DROP TABLE public.users_banco;
       public         heap    postgres    false            �            1259    50820    users_banco_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_banco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_banco_id_seq;
       public          postgres    false    221            �           0    0    users_banco_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_banco_id_seq OWNED BY public.users_banco.id;
          public          postgres    false    220            �            1259    50832    users_civil    TABLE     �   CREATE TABLE public.users_civil (
    id integer NOT NULL,
    nombre character varying(120) NOT NULL,
    status boolean NOT NULL,
    created_date timestamp with time zone
);
    DROP TABLE public.users_civil;
       public         heap    postgres    false            �            1259    50830    users_civil_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_civil_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_civil_id_seq;
       public          postgres    false    223            �           0    0    users_civil_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_civil_id_seq OWNED BY public.users_civil.id;
          public          postgres    false    222            �            1259    50842    users_nacionalidad    TABLE     �   CREATE TABLE public.users_nacionalidad (
    id integer NOT NULL,
    nombre character varying(120) NOT NULL,
    status boolean NOT NULL,
    created_date timestamp with time zone
);
 &   DROP TABLE public.users_nacionalidad;
       public         heap    postgres    false            �            1259    50840    users_nacionalidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_nacionalidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.users_nacionalidad_id_seq;
       public          postgres    false    225            �           0    0    users_nacionalidad_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.users_nacionalidad_id_seq OWNED BY public.users_nacionalidad.id;
          public          postgres    false    224            �            1259    50852 
   users_sexo    TABLE     �   CREATE TABLE public.users_sexo (
    id integer NOT NULL,
    nombre character varying(120) NOT NULL,
    status boolean NOT NULL,
    created_date timestamp with time zone
);
    DROP TABLE public.users_sexo;
       public         heap    postgres    false            �            1259    50850    users_sexo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_sexo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_sexo_id_seq;
       public          postgres    false    227            �           0    0    users_sexo_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_sexo_id_seq OWNED BY public.users_sexo.id;
          public          postgres    false    226            �            1259    50862    users_sistemaprevision    TABLE     �   CREATE TABLE public.users_sistemaprevision (
    id integer NOT NULL,
    nombre character varying(120) NOT NULL,
    status boolean NOT NULL,
    created_date timestamp with time zone
);
 *   DROP TABLE public.users_sistemaprevision;
       public         heap    postgres    false            �            1259    50860    users_sistemaprevision_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_sistemaprevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.users_sistemaprevision_id_seq;
       public          postgres    false    229            �           0    0    users_sistemaprevision_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.users_sistemaprevision_id_seq OWNED BY public.users_sistemaprevision.id;
          public          postgres    false    228            �            1259    50872    users_sistemasalud    TABLE     �   CREATE TABLE public.users_sistemasalud (
    id integer NOT NULL,
    nombre character varying(120) NOT NULL,
    status boolean NOT NULL,
    created_date timestamp with time zone
);
 &   DROP TABLE public.users_sistemasalud;
       public         heap    postgres    false            �            1259    50870    users_sistemasalud_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_sistemasalud_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.users_sistemasalud_id_seq;
       public          postgres    false    231            �           0    0    users_sistemasalud_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.users_sistemasalud_id_seq OWNED BY public.users_sistemasalud.id;
          public          postgres    false    230            �            1259    50882    users_tipocta    TABLE     �   CREATE TABLE public.users_tipocta (
    id integer NOT NULL,
    nombre character varying(120) NOT NULL,
    status boolean NOT NULL,
    created_date timestamp with time zone
);
 !   DROP TABLE public.users_tipocta;
       public         heap    postgres    false            �            1259    50880    users_tipocta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_tipocta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_tipocta_id_seq;
       public          postgres    false    233            �           0    0    users_tipocta_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.users_tipocta_id_seq OWNED BY public.users_tipocta.id;
          public          postgres    false    232            �            1259    50892 
   users_user    TABLE     �  CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    atributos jsonb,
    cambiar_clave boolean NOT NULL,
    codigo character varying(6),
    email character varying(254) NOT NULL,
    rut character varying(12) NOT NULL,
    fecha_nacimiento date,
    telefono character varying(15),
    domicilio character varying(200),
    cuenta character varying(30),
    banco_id integer,
    ciudad_id integer,
    created_by_id integer,
    estado_civil_id integer,
    modified_by_id integer,
    nacionalidad_id integer,
    provincia_id integer,
    region_id integer,
    sexo_id integer,
    sistema_prevision_id integer,
    sistema_salud_id integer,
    tipo_cuenta_id integer
);
    DROP TABLE public.users_user;
       public         heap    postgres    false                       1259    51344    users_user_cliente    TABLE     �   CREATE TABLE public.users_user_cliente (
    id integer NOT NULL,
    user_id integer NOT NULL,
    cliente_id integer NOT NULL
);
 &   DROP TABLE public.users_user_cliente;
       public         heap    postgres    false                       1259    51342    users_user_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.users_user_cliente_id_seq;
       public          postgres    false    264            �           0    0    users_user_cliente_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.users_user_cliente_id_seq OWNED BY public.users_user_cliente.id;
          public          postgres    false    263            �            1259    50913    users_user_groups    TABLE     �   CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 %   DROP TABLE public.users_user_groups;
       public         heap    postgres    false            �            1259    50911    users_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_groups_id_seq;
       public          postgres    false    237            �           0    0    users_user_groups_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;
          public          postgres    false    236            �            1259    50890    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    235            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;
          public          postgres    false    234            �            1259    50921    users_user_planta    TABLE     �   CREATE TABLE public.users_user_planta (
    id integer NOT NULL,
    user_id integer NOT NULL,
    planta_id integer NOT NULL
);
 %   DROP TABLE public.users_user_planta;
       public         heap    postgres    false            �            1259    50919    users_user_planta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_planta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.users_user_planta_id_seq;
       public          postgres    false    239            �           0    0    users_user_planta_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.users_user_planta_id_seq OWNED BY public.users_user_planta.id;
          public          postgres    false    238            �            1259    50929    users_user_user_permissions    TABLE     �   CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 /   DROP TABLE public.users_user_user_permissions;
       public         heap    postgres    false            �            1259    50927 "   users_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.users_user_user_permissions_id_seq;
       public          postgres    false    241            �           0    0 "   users_user_user_permissions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;
          public          postgres    false    240                       1259    51277    utils_cargo    TABLE     �   CREATE TABLE public.utils_cargo (
    id integer NOT NULL,
    nombre character varying(120) NOT NULL,
    status boolean NOT NULL
);
    DROP TABLE public.utils_cargo;
       public         heap    postgres    false                       1259    51275    utils_cargo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utils_cargo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.utils_cargo_id_seq;
       public          postgres    false    260            �           0    0    utils_cargo_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.utils_cargo_id_seq OWNED BY public.utils_cargo.id;
          public          postgres    false    259            �            1259    50732    utils_ciudad    TABLE     �   CREATE TABLE public.utils_ciudad (
    id integer NOT NULL,
    nombre character varying(250) NOT NULL,
    provincia_id integer NOT NULL
);
     DROP TABLE public.utils_ciudad;
       public         heap    postgres    false            �            1259    50730    utils_ciudad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utils_ciudad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.utils_ciudad_id_seq;
       public          postgres    false    211            �           0    0    utils_ciudad_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.utils_ciudad_id_seq OWNED BY public.utils_ciudad.id;
          public          postgres    false    210            �            1259    50696    utils_cliente    TABLE     1  CREATE TABLE public.utils_cliente (
    id integer NOT NULL,
    codigo character varying(6),
    razon_social character varying(80) NOT NULL,
    ciudad_id integer,
    direccion_comercial character varying(200),
    provincia_id integer,
    region_id integer,
    rut character varying(12) NOT NULL
);
 !   DROP TABLE public.utils_cliente;
       public         heap    postgres    false            �            1259    50694    utils_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utils_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.utils_cliente_id_seq;
       public          postgres    false    203            �           0    0    utils_cliente_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.utils_cliente_id_seq OWNED BY public.utils_cliente.id;
          public          postgres    false    202                       1259    51287    utils_departamento    TABLE     �   CREATE TABLE public.utils_departamento (
    id integer NOT NULL,
    nombre character varying(120) NOT NULL,
    status boolean NOT NULL
);
 &   DROP TABLE public.utils_departamento;
       public         heap    postgres    false                       1259    51285    utils_departamento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utils_departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.utils_departamento_id_seq;
       public          postgres    false    262            �           0    0    utils_departamento_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.utils_departamento_id_seq OWNED BY public.utils_departamento.id;
          public          postgres    false    261            �            1259    50722    utils_planta    TABLE     �  CREATE TABLE public.utils_planta (
    id integer NOT NULL,
    codigo character varying(6),
    nombre character varying(100) NOT NULL,
    cliente_id integer NOT NULL,
    ciudad_id integer,
    direccion_comercial character varying(200),
    provincia_id integer,
    region_id integer,
    representante_legal character varying(80),
    rut_representante character varying(12)
);
     DROP TABLE public.utils_planta;
       public         heap    postgres    false            �            1259    50720    utils_planta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utils_planta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.utils_planta_id_seq;
       public          postgres    false    209            �           0    0    utils_planta_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.utils_planta_id_seq OWNED BY public.utils_planta.id;
          public          postgres    false    208            �            1259    50714    utils_provincia    TABLE     �   CREATE TABLE public.utils_provincia (
    id integer NOT NULL,
    nombre character varying(250) NOT NULL,
    region_id integer NOT NULL
);
 #   DROP TABLE public.utils_provincia;
       public         heap    postgres    false            �            1259    50712    utils_provincia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utils_provincia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.utils_provincia_id_seq;
       public          postgres    false    207            �           0    0    utils_provincia_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.utils_provincia_id_seq OWNED BY public.utils_provincia.id;
          public          postgres    false    206            �            1259    50706    utils_region    TABLE     j   CREATE TABLE public.utils_region (
    id integer NOT NULL,
    nombre character varying(250) NOT NULL
);
     DROP TABLE public.utils_region;
       public         heap    postgres    false            �            1259    50704    utils_region_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utils_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.utils_region_id_seq;
       public          postgres    false    205            �           0    0    utils_region_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.utils_region_id_seq OWNED BY public.utils_region.id;
          public          postgres    false    204            �           2604    50781    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    50791    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    50773    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    51096    contratos_contrato id    DEFAULT     ~   ALTER TABLE ONLY public.contratos_contrato ALTER COLUMN id SET DEFAULT nextval('public.contratos_contrato_id_seq'::regclass);
 D   ALTER TABLE public.contratos_contrato ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    51107    contratos_documentoscontrato id    DEFAULT     �   ALTER TABLE ONLY public.contratos_documentoscontrato ALTER COLUMN id SET DEFAULT nextval('public.contratos_documentoscontrato_id_seq'::regclass);
 N   ALTER TABLE public.contratos_documentoscontrato ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            �           2604    51115    contratos_plantilla id    DEFAULT     �   ALTER TABLE ONLY public.contratos_plantilla ALTER COLUMN id SET DEFAULT nextval('public.contratos_plantilla_id_seq'::regclass);
 E   ALTER TABLE public.contratos_plantilla ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    249    249                       2604    51156    contratos_plantilla_plantas id    DEFAULT     �   ALTER TABLE ONLY public.contratos_plantilla_plantas ALTER COLUMN id SET DEFAULT nextval('public.contratos_plantilla_plantas_id_seq'::regclass);
 M   ALTER TABLE public.contratos_plantilla_plantas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253                        2604    51123    contratos_tipo id    DEFAULT     v   ALTER TABLE ONLY public.contratos_tipo ALTER COLUMN id SET DEFAULT nextval('public.contratos_tipo_id_seq'::regclass);
 @   ALTER TABLE public.contratos_tipo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    251    251            �           2604    51072    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    50763    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    50688    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201                       2604    51225    ficheros_fichero id    DEFAULT     z   ALTER TABLE ONLY public.ficheros_fichero ALTER COLUMN id SET DEFAULT nextval('public.ficheros_fichero_id_seq'::regclass);
 B   ALTER TABLE public.ficheros_fichero ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254    255                       2604    51246    ficheros_fichero_plantas id    DEFAULT     �   ALTER TABLE ONLY public.ficheros_fichero_plantas ALTER COLUMN id SET DEFAULT nextval('public.ficheros_fichero_plantas_id_seq'::regclass);
 J   ALTER TABLE public.ficheros_fichero_plantas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256    257            �           2604    50825    users_banco id    DEFAULT     p   ALTER TABLE ONLY public.users_banco ALTER COLUMN id SET DEFAULT nextval('public.users_banco_id_seq'::regclass);
 =   ALTER TABLE public.users_banco ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    50835    users_civil id    DEFAULT     p   ALTER TABLE ONLY public.users_civil ALTER COLUMN id SET DEFAULT nextval('public.users_civil_id_seq'::regclass);
 =   ALTER TABLE public.users_civil ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    50845    users_nacionalidad id    DEFAULT     ~   ALTER TABLE ONLY public.users_nacionalidad ALTER COLUMN id SET DEFAULT nextval('public.users_nacionalidad_id_seq'::regclass);
 D   ALTER TABLE public.users_nacionalidad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    50855    users_sexo id    DEFAULT     n   ALTER TABLE ONLY public.users_sexo ALTER COLUMN id SET DEFAULT nextval('public.users_sexo_id_seq'::regclass);
 <   ALTER TABLE public.users_sexo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    50865    users_sistemaprevision id    DEFAULT     �   ALTER TABLE ONLY public.users_sistemaprevision ALTER COLUMN id SET DEFAULT nextval('public.users_sistemaprevision_id_seq'::regclass);
 H   ALTER TABLE public.users_sistemaprevision ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    50875    users_sistemasalud id    DEFAULT     ~   ALTER TABLE ONLY public.users_sistemasalud ALTER COLUMN id SET DEFAULT nextval('public.users_sistemasalud_id_seq'::regclass);
 D   ALTER TABLE public.users_sistemasalud ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    50885    users_tipocta id    DEFAULT     t   ALTER TABLE ONLY public.users_tipocta ALTER COLUMN id SET DEFAULT nextval('public.users_tipocta_id_seq'::regclass);
 ?   ALTER TABLE public.users_tipocta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    50895    users_user id    DEFAULT     n   ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235                       2604    51347    users_user_cliente id    DEFAULT     ~   ALTER TABLE ONLY public.users_user_cliente ALTER COLUMN id SET DEFAULT nextval('public.users_user_cliente_id_seq'::regclass);
 D   ALTER TABLE public.users_user_cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264            �           2604    50916    users_user_groups id    DEFAULT     |   ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);
 C   ALTER TABLE public.users_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    50924    users_user_planta id    DEFAULT     |   ALTER TABLE ONLY public.users_user_planta ALTER COLUMN id SET DEFAULT nextval('public.users_user_planta_id_seq'::regclass);
 C   ALTER TABLE public.users_user_planta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    50932    users_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);
 M   ALTER TABLE public.users_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241                       2604    51280    utils_cargo id    DEFAULT     p   ALTER TABLE ONLY public.utils_cargo ALTER COLUMN id SET DEFAULT nextval('public.utils_cargo_id_seq'::regclass);
 =   ALTER TABLE public.utils_cargo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            �           2604    50735    utils_ciudad id    DEFAULT     r   ALTER TABLE ONLY public.utils_ciudad ALTER COLUMN id SET DEFAULT nextval('public.utils_ciudad_id_seq'::regclass);
 >   ALTER TABLE public.utils_ciudad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    50699    utils_cliente id    DEFAULT     t   ALTER TABLE ONLY public.utils_cliente ALTER COLUMN id SET DEFAULT nextval('public.utils_cliente_id_seq'::regclass);
 ?   ALTER TABLE public.utils_cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                       2604    51290    utils_departamento id    DEFAULT     ~   ALTER TABLE ONLY public.utils_departamento ALTER COLUMN id SET DEFAULT nextval('public.utils_departamento_id_seq'::regclass);
 D   ALTER TABLE public.utils_departamento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            �           2604    50725    utils_planta id    DEFAULT     r   ALTER TABLE ONLY public.utils_planta ALTER COLUMN id SET DEFAULT nextval('public.utils_planta_id_seq'::regclass);
 >   ALTER TABLE public.utils_planta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �           2604    50717    utils_provincia id    DEFAULT     x   ALTER TABLE ONLY public.utils_provincia ALTER COLUMN id SET DEFAULT nextval('public.utils_provincia_id_seq'::regclass);
 A   ALTER TABLE public.utils_provincia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    50709    utils_region id    DEFAULT     r   ALTER TABLE ONLY public.utils_region ALTER COLUMN id SET DEFAULT nextval('public.utils_region_id_seq'::regclass);
 >   ALTER TABLE public.utils_region ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �          0    50778 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    217   �      �          0    50788    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    219         �          0    50770    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    215   �      �          0    51093    contratos_contrato 
   TABLE DATA           �   COPY public.contratos_contrato (id, created, modified, archivado, estado, obs, created_by_id, modified_by_id, usuario_id) FROM stdin;
    public          postgres    false    245   �      �          0    51104    contratos_documentoscontrato 
   TABLE DATA           �   COPY public.contratos_documentoscontrato (id, created, modified, archivo, contrato_id, created_by_id, modified_by_id) FROM stdin;
    public          postgres    false    247   �      �          0    51112    contratos_plantilla 
   TABLE DATA           �   COPY public.contratos_plantilla (id, created, modified, activo, archivo, nombre, cliente_id, created_by_id, modified_by_id, tipo_id) FROM stdin;
    public          postgres    false    249   �      �          0    51153    contratos_plantilla_plantas 
   TABLE DATA           R   COPY public.contratos_plantilla_plantas (id, plantilla_id, planta_id) FROM stdin;
    public          postgres    false    253   �      �          0    51120    contratos_tipo 
   TABLE DATA           f   COPY public.contratos_tipo (id, created, modified, nombre, created_by_id, modified_by_id) FROM stdin;
    public          postgres    false    251         �          0    51069    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    243   �      �          0    50760    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    213   �t      �          0    50685    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   �u      �          0    51265    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    258   x      �          0    51222    ficheros_fichero 
   TABLE DATA           �   COPY public.ficheros_fichero (id, created, modified, activo, archivo, "desc", nombre, created_by_id, modified_by_id) FROM stdin;
    public          postgres    false    255   7y      �          0    51243    ficheros_fichero_plantas 
   TABLE DATA           M   COPY public.ficheros_fichero_plantas (id, fichero_id, planta_id) FROM stdin;
    public          postgres    false    257   Ty      �          0    50822    users_banco 
   TABLE DATA           O   COPY public.users_banco (id, nombre, status, created_date, codigo) FROM stdin;
    public          postgres    false    221   qy      �          0    50832    users_civil 
   TABLE DATA           G   COPY public.users_civil (id, nombre, status, created_date) FROM stdin;
    public          postgres    false    223   ]z      �          0    50842    users_nacionalidad 
   TABLE DATA           N   COPY public.users_nacionalidad (id, nombre, status, created_date) FROM stdin;
    public          postgres    false    225   �z      �          0    50852 
   users_sexo 
   TABLE DATA           F   COPY public.users_sexo (id, nombre, status, created_date) FROM stdin;
    public          postgres    false    227   �{      �          0    50862    users_sistemaprevision 
   TABLE DATA           R   COPY public.users_sistemaprevision (id, nombre, status, created_date) FROM stdin;
    public          postgres    false    229   �{      �          0    50872    users_sistemasalud 
   TABLE DATA           N   COPY public.users_sistemasalud (id, nombre, status, created_date) FROM stdin;
    public          postgres    false    231   �|      �          0    50882    users_tipocta 
   TABLE DATA           I   COPY public.users_tipocta (id, nombre, status, created_date) FROM stdin;
    public          postgres    false    233   �}      �          0    50892 
   users_user 
   TABLE DATA           �  COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, is_staff, is_active, date_joined, created, modified, atributos, cambiar_clave, codigo, email, rut, fecha_nacimiento, telefono, domicilio, cuenta, banco_id, ciudad_id, created_by_id, estado_civil_id, modified_by_id, nacionalidad_id, provincia_id, region_id, sexo_id, sistema_prevision_id, sistema_salud_id, tipo_cuenta_id) FROM stdin;
    public          postgres    false    235   /~      �          0    51344    users_user_cliente 
   TABLE DATA           E   COPY public.users_user_cliente (id, user_id, cliente_id) FROM stdin;
    public          postgres    false    264   �      �          0    50913    users_user_groups 
   TABLE DATA           B   COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    237   �      �          0    50921    users_user_planta 
   TABLE DATA           C   COPY public.users_user_planta (id, user_id, planta_id) FROM stdin;
    public          postgres    false    239   &�      �          0    50929    users_user_user_permissions 
   TABLE DATA           Q   COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    241   `�      �          0    51277    utils_cargo 
   TABLE DATA           9   COPY public.utils_cargo (id, nombre, status) FROM stdin;
    public          postgres    false    260   }�      �          0    50732    utils_ciudad 
   TABLE DATA           @   COPY public.utils_ciudad (id, nombre, provincia_id) FROM stdin;
    public          postgres    false    211   #�      �          0    50696    utils_cliente 
   TABLE DATA              COPY public.utils_cliente (id, codigo, razon_social, ciudad_id, direccion_comercial, provincia_id, region_id, rut) FROM stdin;
    public          postgres    false    203   B�      �          0    51287    utils_departamento 
   TABLE DATA           @   COPY public.utils_departamento (id, nombre, status) FROM stdin;
    public          postgres    false    262   h�      �          0    50722    utils_planta 
   TABLE DATA           �   COPY public.utils_planta (id, codigo, nombre, cliente_id, ciudad_id, direccion_comercial, provincia_id, region_id, representante_legal, rut_representante) FROM stdin;
    public          postgres    false    209   7�      �          0    50714    utils_provincia 
   TABLE DATA           @   COPY public.utils_provincia (id, nombre, region_id) FROM stdin;
    public          postgres    false    207   1�      �          0    50706    utils_region 
   TABLE DATA           2   COPY public.utils_region (id, nombre) FROM stdin;
    public          postgres    false    205   i�      �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 5, true);
          public          postgres    false    216            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 129, true);
          public          postgres    false    218            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 100, true);
          public          postgres    false    214            �           0    0    contratos_contrato_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.contratos_contrato_id_seq', 1, false);
          public          postgres    false    244            �           0    0 #   contratos_documentoscontrato_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.contratos_documentoscontrato_id_seq', 1, false);
          public          postgres    false    246            �           0    0    contratos_plantilla_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.contratos_plantilla_id_seq', 1, false);
          public          postgres    false    248            �           0    0 "   contratos_plantilla_plantas_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.contratos_plantilla_plantas_id_seq', 1, false);
          public          postgres    false    252            �           0    0    contratos_tipo_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.contratos_tipo_id_seq', 3, true);
          public          postgres    false    250            �           0    0    django_admin_log_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1474, true);
          public          postgres    false    242            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 25, true);
          public          postgres    false    212            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);
          public          postgres    false    200            �           0    0    ficheros_fichero_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.ficheros_fichero_id_seq', 1, false);
          public          postgres    false    254            �           0    0    ficheros_fichero_plantas_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ficheros_fichero_plantas_id_seq', 1, false);
          public          postgres    false    256            �           0    0    users_banco_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.users_banco_id_seq', 14, true);
          public          postgres    false    220            �           0    0    users_civil_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_civil_id_seq', 4, true);
          public          postgres    false    222            �           0    0    users_nacionalidad_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_nacionalidad_id_seq', 9, true);
          public          postgres    false    224            �           0    0    users_sexo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_sexo_id_seq', 3, true);
          public          postgres    false    226            �           0    0    users_sistemaprevision_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.users_sistemaprevision_id_seq', 7, true);
          public          postgres    false    228            �           0    0    users_sistemasalud_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.users_sistemasalud_id_seq', 14, true);
          public          postgres    false    230            �           0    0    users_tipocta_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.users_tipocta_id_seq', 5, true);
          public          postgres    false    232            �           0    0    users_user_cliente_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_cliente_id_seq', 2, true);
          public          postgres    false    263            �           0    0    users_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_user_groups_id_seq', 2, true);
          public          postgres    false    236            �           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 2, true);
          public          postgres    false    234            �           0    0    users_user_planta_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.users_user_planta_id_seq', 6, true);
          public          postgres    false    238            �           0    0 "   users_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);
          public          postgres    false    240                        0    0    utils_cargo_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.utils_cargo_id_seq', 472, true);
          public          postgres    false    259                       0    0    utils_ciudad_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.utils_ciudad_id_seq', 342, true);
          public          postgres    false    210                       0    0    utils_cliente_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.utils_cliente_id_seq', 12, true);
          public          postgres    false    202                       0    0    utils_departamento_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.utils_departamento_id_seq', 178, true);
          public          postgres    false    261                       0    0    utils_planta_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.utils_planta_id_seq', 75, true);
          public          postgres    false    208                       0    0    utils_provincia_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.utils_provincia_id_seq', 58, true);
          public          postgres    false    206                       0    0    utils_region_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.utils_region_id_seq', 16, true);
          public          postgres    false    204            0           2606    50818    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    217            5           2606    50804 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    219    219            8           2606    50793 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    219            2           2606    50783    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    217            +           2606    50795 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    215    215            -           2606    50775 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    215            �           2606    51101 *   contratos_contrato contratos_contrato_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.contratos_contrato
    ADD CONSTRAINT contratos_contrato_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.contratos_contrato DROP CONSTRAINT contratos_contrato_pkey;
       public            postgres    false    245            �           2606    51109 >   contratos_documentoscontrato contratos_documentoscontrato_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.contratos_documentoscontrato
    ADD CONSTRAINT contratos_documentoscontrato_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.contratos_documentoscontrato DROP CONSTRAINT contratos_documentoscontrato_pkey;
       public            postgres    false    247            �           2606    51117 ,   contratos_plantilla contratos_plantilla_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.contratos_plantilla
    ADD CONSTRAINT contratos_plantilla_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.contratos_plantilla DROP CONSTRAINT contratos_plantilla_pkey;
       public            postgres    false    249            �           2606    51200 Y   contratos_plantilla_plantas contratos_plantilla_plan_plantilla_id_planta_id_83e5f9b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.contratos_plantilla_plantas
    ADD CONSTRAINT contratos_plantilla_plan_plantilla_id_planta_id_83e5f9b0_uniq UNIQUE (plantilla_id, planta_id);
 �   ALTER TABLE ONLY public.contratos_plantilla_plantas DROP CONSTRAINT contratos_plantilla_plan_plantilla_id_planta_id_83e5f9b0_uniq;
       public            postgres    false    253    253            �           2606    51158 <   contratos_plantilla_plantas contratos_plantilla_plantas_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.contratos_plantilla_plantas
    ADD CONSTRAINT contratos_plantilla_plantas_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.contratos_plantilla_plantas DROP CONSTRAINT contratos_plantilla_plantas_pkey;
       public            postgres    false    253            �           2606    51125 "   contratos_tipo contratos_tipo_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.contratos_tipo
    ADD CONSTRAINT contratos_tipo_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.contratos_tipo DROP CONSTRAINT contratos_tipo_pkey;
       public            postgres    false    251            �           2606    51078 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    243            &           2606    50767 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    213    213            (           2606    50765 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    213                       2606    50693 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    51272 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    258            �           2606    51230 &   ficheros_fichero ficheros_fichero_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ficheros_fichero
    ADD CONSTRAINT ficheros_fichero_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.ficheros_fichero DROP CONSTRAINT ficheros_fichero_pkey;
       public            postgres    false    255            �           2606    51252 T   ficheros_fichero_plantas ficheros_fichero_plantas_fichero_id_planta_id_fb6b6bec_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ficheros_fichero_plantas
    ADD CONSTRAINT ficheros_fichero_plantas_fichero_id_planta_id_fb6b6bec_uniq UNIQUE (fichero_id, planta_id);
 ~   ALTER TABLE ONLY public.ficheros_fichero_plantas DROP CONSTRAINT ficheros_fichero_plantas_fichero_id_planta_id_fb6b6bec_uniq;
       public            postgres    false    257    257            �           2606    51248 6   ficheros_fichero_plantas ficheros_fichero_plantas_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.ficheros_fichero_plantas
    ADD CONSTRAINT ficheros_fichero_plantas_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.ficheros_fichero_plantas DROP CONSTRAINT ficheros_fichero_plantas_pkey;
       public            postgres    false    257            ;           2606    51386 "   users_banco users_banco_codigo_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.users_banco
    ADD CONSTRAINT users_banco_codigo_key UNIQUE (codigo);
 L   ALTER TABLE ONLY public.users_banco DROP CONSTRAINT users_banco_codigo_key;
       public            postgres    false    221            >           2606    50829 "   users_banco users_banco_nombre_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.users_banco
    ADD CONSTRAINT users_banco_nombre_key UNIQUE (nombre);
 L   ALTER TABLE ONLY public.users_banco DROP CONSTRAINT users_banco_nombre_key;
       public            postgres    false    221            @           2606    50827    users_banco users_banco_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users_banco
    ADD CONSTRAINT users_banco_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.users_banco DROP CONSTRAINT users_banco_pkey;
       public            postgres    false    221            C           2606    50839 "   users_civil users_civil_nombre_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.users_civil
    ADD CONSTRAINT users_civil_nombre_key UNIQUE (nombre);
 L   ALTER TABLE ONLY public.users_civil DROP CONSTRAINT users_civil_nombre_key;
       public            postgres    false    223            E           2606    50837    users_civil users_civil_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users_civil
    ADD CONSTRAINT users_civil_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.users_civil DROP CONSTRAINT users_civil_pkey;
       public            postgres    false    223            H           2606    50849 0   users_nacionalidad users_nacionalidad_nombre_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.users_nacionalidad
    ADD CONSTRAINT users_nacionalidad_nombre_key UNIQUE (nombre);
 Z   ALTER TABLE ONLY public.users_nacionalidad DROP CONSTRAINT users_nacionalidad_nombre_key;
       public            postgres    false    225            J           2606    50847 *   users_nacionalidad users_nacionalidad_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.users_nacionalidad
    ADD CONSTRAINT users_nacionalidad_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.users_nacionalidad DROP CONSTRAINT users_nacionalidad_pkey;
       public            postgres    false    225            M           2606    50859     users_sexo users_sexo_nombre_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users_sexo
    ADD CONSTRAINT users_sexo_nombre_key UNIQUE (nombre);
 J   ALTER TABLE ONLY public.users_sexo DROP CONSTRAINT users_sexo_nombre_key;
       public            postgres    false    227            O           2606    50857    users_sexo users_sexo_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_sexo
    ADD CONSTRAINT users_sexo_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_sexo DROP CONSTRAINT users_sexo_pkey;
       public            postgres    false    227            R           2606    50869 8   users_sistemaprevision users_sistemaprevision_nombre_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.users_sistemaprevision
    ADD CONSTRAINT users_sistemaprevision_nombre_key UNIQUE (nombre);
 b   ALTER TABLE ONLY public.users_sistemaprevision DROP CONSTRAINT users_sistemaprevision_nombre_key;
       public            postgres    false    229            T           2606    50867 2   users_sistemaprevision users_sistemaprevision_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.users_sistemaprevision
    ADD CONSTRAINT users_sistemaprevision_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.users_sistemaprevision DROP CONSTRAINT users_sistemaprevision_pkey;
       public            postgres    false    229            W           2606    50879 0   users_sistemasalud users_sistemasalud_nombre_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.users_sistemasalud
    ADD CONSTRAINT users_sistemasalud_nombre_key UNIQUE (nombre);
 Z   ALTER TABLE ONLY public.users_sistemasalud DROP CONSTRAINT users_sistemasalud_nombre_key;
       public            postgres    false    231            Y           2606    50877 *   users_sistemasalud users_sistemasalud_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.users_sistemasalud
    ADD CONSTRAINT users_sistemasalud_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.users_sistemasalud DROP CONSTRAINT users_sistemasalud_pkey;
       public            postgres    false    231            \           2606    50889 &   users_tipocta users_tipocta_nombre_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.users_tipocta
    ADD CONSTRAINT users_tipocta_nombre_key UNIQUE (nombre);
 P   ALTER TABLE ONLY public.users_tipocta DROP CONSTRAINT users_tipocta_nombre_key;
       public            postgres    false    233            ^           2606    50887     users_tipocta users_tipocta_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users_tipocta
    ADD CONSTRAINT users_tipocta_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.users_tipocta DROP CONSTRAINT users_tipocta_pkey;
       public            postgres    false    233            �           2606    51349 *   users_user_cliente users_user_cliente_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.users_user_cliente
    ADD CONSTRAINT users_user_cliente_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.users_user_cliente DROP CONSTRAINT users_user_cliente_pkey;
       public            postgres    false    264            �           2606    51351 F   users_user_cliente users_user_cliente_user_id_cliente_id_6368080f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_cliente
    ADD CONSTRAINT users_user_cliente_user_id_cliente_id_6368080f_uniq UNIQUE (user_id, cliente_id);
 p   ALTER TABLE ONLY public.users_user_cliente DROP CONSTRAINT users_user_cliente_user_id_cliente_id_6368080f_uniq;
       public            postgres    false    264    264            c           2606    50904     users_user users_user_codigo_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_codigo_key UNIQUE (codigo);
 J   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_codigo_key;
       public            postgres    false    235            g           2606    50910     users_user users_user_cuenta_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_cuenta_key UNIQUE (cuenta);
 J   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_cuenta_key;
       public            postgres    false    235            j           2606    50906    users_user users_user_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_email_key;
       public            postgres    false    235            ~           2606    50918 (   users_user_groups users_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_pkey;
       public            postgres    false    237            �           2606    51026 B   users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq;
       public            postgres    false    237    237            o           2606    50900    users_user users_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_pkey;
       public            postgres    false    235            �           2606    50926 (   users_user_planta users_user_planta_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.users_user_planta
    ADD CONSTRAINT users_user_planta_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.users_user_planta DROP CONSTRAINT users_user_planta_pkey;
       public            postgres    false    239            �           2606    51040 C   users_user_planta users_user_planta_user_id_planta_id_328d5a03_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_planta
    ADD CONSTRAINT users_user_planta_user_id_planta_id_328d5a03_uniq UNIQUE (user_id, planta_id);
 m   ALTER TABLE ONLY public.users_user_planta DROP CONSTRAINT users_user_planta_user_id_planta_id_328d5a03_uniq;
       public            postgres    false    239    239            t           2606    50908    users_user users_user_rut_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_rut_key UNIQUE (rut);
 G   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_rut_key;
       public            postgres    false    235            �           2606    50934 <   users_user_user_permissions users_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_pkey;
       public            postgres    false    241            �           2606    51054 [   users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq;
       public            postgres    false    241    241            {           2606    50902 "   users_user users_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_username_key;
       public            postgres    false    235            �           2606    51284 "   utils_cargo utils_cargo_nombre_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.utils_cargo
    ADD CONSTRAINT utils_cargo_nombre_key UNIQUE (nombre);
 L   ALTER TABLE ONLY public.utils_cargo DROP CONSTRAINT utils_cargo_nombre_key;
       public            postgres    false    260            �           2606    51282    utils_cargo utils_cargo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.utils_cargo
    ADD CONSTRAINT utils_cargo_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.utils_cargo DROP CONSTRAINT utils_cargo_pkey;
       public            postgres    false    260            #           2606    50737    utils_ciudad utils_ciudad_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.utils_ciudad
    ADD CONSTRAINT utils_ciudad_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.utils_ciudad DROP CONSTRAINT utils_ciudad_pkey;
       public            postgres    false    211                       2606    50703 &   utils_cliente utils_cliente_codigo_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.utils_cliente
    ADD CONSTRAINT utils_cliente_codigo_key UNIQUE (codigo);
 P   ALTER TABLE ONLY public.utils_cliente DROP CONSTRAINT utils_cliente_codigo_key;
       public            postgres    false    203                       2606    50701     utils_cliente utils_cliente_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.utils_cliente
    ADD CONSTRAINT utils_cliente_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.utils_cliente DROP CONSTRAINT utils_cliente_pkey;
       public            postgres    false    203                       2606    51313 #   utils_cliente utils_cliente_rut_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utils_cliente
    ADD CONSTRAINT utils_cliente_rut_key UNIQUE (rut);
 M   ALTER TABLE ONLY public.utils_cliente DROP CONSTRAINT utils_cliente_rut_key;
       public            postgres    false    203            �           2606    51294 0   utils_departamento utils_departamento_nombre_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.utils_departamento
    ADD CONSTRAINT utils_departamento_nombre_key UNIQUE (nombre);
 Z   ALTER TABLE ONLY public.utils_departamento DROP CONSTRAINT utils_departamento_nombre_key;
       public            postgres    false    262            �           2606    51292 *   utils_departamento utils_departamento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.utils_departamento
    ADD CONSTRAINT utils_departamento_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.utils_departamento DROP CONSTRAINT utils_departamento_pkey;
       public            postgres    false    262                       2606    50729 $   utils_planta utils_planta_codigo_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.utils_planta
    ADD CONSTRAINT utils_planta_codigo_key UNIQUE (codigo);
 N   ALTER TABLE ONLY public.utils_planta DROP CONSTRAINT utils_planta_codigo_key;
       public            postgres    false    209                       2606    50727    utils_planta utils_planta_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.utils_planta
    ADD CONSTRAINT utils_planta_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.utils_planta DROP CONSTRAINT utils_planta_pkey;
       public            postgres    false    209                       2606    50719 $   utils_provincia utils_provincia_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.utils_provincia
    ADD CONSTRAINT utils_provincia_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.utils_provincia DROP CONSTRAINT utils_provincia_pkey;
       public            postgres    false    207                       2606    50711    utils_region utils_region_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.utils_region
    ADD CONSTRAINT utils_region_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.utils_region DROP CONSTRAINT utils_region_pkey;
       public            postgres    false    205            .           1259    50819    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    217            3           1259    50815 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    219            6           1259    50816 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    219            )           1259    50801 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    215            �           1259    51217 )   contratos_contrato_created_by_id_5f4358ea    INDEX     q   CREATE INDEX contratos_contrato_created_by_id_5f4358ea ON public.contratos_contrato USING btree (created_by_id);
 =   DROP INDEX public.contratos_contrato_created_by_id_5f4358ea;
       public            postgres    false    245            �           1259    51218 *   contratos_contrato_modified_by_id_c6736778    INDEX     s   CREATE INDEX contratos_contrato_modified_by_id_c6736778 ON public.contratos_contrato USING btree (modified_by_id);
 >   DROP INDEX public.contratos_contrato_modified_by_id_c6736778;
       public            postgres    false    245            �           1259    51219 &   contratos_contrato_usuario_id_48ab40c0    INDEX     k   CREATE INDEX contratos_contrato_usuario_id_48ab40c0 ON public.contratos_contrato USING btree (usuario_id);
 :   DROP INDEX public.contratos_contrato_usuario_id_48ab40c0;
       public            postgres    false    245            �           1259    51214 1   contratos_documentoscontrato_contrato_id_16b10552    INDEX     �   CREATE INDEX contratos_documentoscontrato_contrato_id_16b10552 ON public.contratos_documentoscontrato USING btree (contrato_id);
 E   DROP INDEX public.contratos_documentoscontrato_contrato_id_16b10552;
       public            postgres    false    247            �           1259    51215 3   contratos_documentoscontrato_created_by_id_07c7514f    INDEX     �   CREATE INDEX contratos_documentoscontrato_created_by_id_07c7514f ON public.contratos_documentoscontrato USING btree (created_by_id);
 G   DROP INDEX public.contratos_documentoscontrato_created_by_id_07c7514f;
       public            postgres    false    247            �           1259    51216 4   contratos_documentoscontrato_modified_by_id_1b702152    INDEX     �   CREATE INDEX contratos_documentoscontrato_modified_by_id_1b702152 ON public.contratos_documentoscontrato USING btree (modified_by_id);
 H   DROP INDEX public.contratos_documentoscontrato_modified_by_id_1b702152;
       public            postgres    false    247            �           1259    51196 '   contratos_plantilla_cliente_id_c4d34818    INDEX     m   CREATE INDEX contratos_plantilla_cliente_id_c4d34818 ON public.contratos_plantilla USING btree (cliente_id);
 ;   DROP INDEX public.contratos_plantilla_cliente_id_c4d34818;
       public            postgres    false    249            �           1259    51197 *   contratos_plantilla_created_by_id_808eee2b    INDEX     s   CREATE INDEX contratos_plantilla_created_by_id_808eee2b ON public.contratos_plantilla USING btree (created_by_id);
 >   DROP INDEX public.contratos_plantilla_created_by_id_808eee2b;
       public            postgres    false    249            �           1259    51198 +   contratos_plantilla_modified_by_id_69eb5d45    INDEX     u   CREATE INDEX contratos_plantilla_modified_by_id_69eb5d45 ON public.contratos_plantilla USING btree (modified_by_id);
 ?   DROP INDEX public.contratos_plantilla_modified_by_id_69eb5d45;
       public            postgres    false    249            �           1259    51212 .   contratos_plantilla_plantas_planta_id_375852b1    INDEX     {   CREATE INDEX contratos_plantilla_plantas_planta_id_375852b1 ON public.contratos_plantilla_plantas USING btree (planta_id);
 B   DROP INDEX public.contratos_plantilla_plantas_planta_id_375852b1;
       public            postgres    false    253            �           1259    51211 1   contratos_plantilla_plantas_plantilla_id_520988ea    INDEX     �   CREATE INDEX contratos_plantilla_plantas_plantilla_id_520988ea ON public.contratos_plantilla_plantas USING btree (plantilla_id);
 E   DROP INDEX public.contratos_plantilla_plantas_plantilla_id_520988ea;
       public            postgres    false    253            �           1259    51213 $   contratos_plantilla_tipo_id_1e53ab9f    INDEX     g   CREATE INDEX contratos_plantilla_tipo_id_1e53ab9f ON public.contratos_plantilla USING btree (tipo_id);
 8   DROP INDEX public.contratos_plantilla_tipo_id_1e53ab9f;
       public            postgres    false    249            �           1259    51194 %   contratos_tipo_created_by_id_58c5bcba    INDEX     i   CREATE INDEX contratos_tipo_created_by_id_58c5bcba ON public.contratos_tipo USING btree (created_by_id);
 9   DROP INDEX public.contratos_tipo_created_by_id_58c5bcba;
       public            postgres    false    251            �           1259    51195 &   contratos_tipo_modified_by_id_34b37974    INDEX     k   CREATE INDEX contratos_tipo_modified_by_id_34b37974 ON public.contratos_tipo USING btree (modified_by_id);
 :   DROP INDEX public.contratos_tipo_modified_by_id_34b37974;
       public            postgres    false    251            �           1259    51089 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    243            �           1259    51090 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    243            �           1259    51274 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    258            �           1259    51273 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    258            �           1259    51249 '   ficheros_fichero_created_by_id_02d82dd6    INDEX     m   CREATE INDEX ficheros_fichero_created_by_id_02d82dd6 ON public.ficheros_fichero USING btree (created_by_id);
 ;   DROP INDEX public.ficheros_fichero_created_by_id_02d82dd6;
       public            postgres    false    255            �           1259    51250 (   ficheros_fichero_modified_by_id_6af57ccf    INDEX     o   CREATE INDEX ficheros_fichero_modified_by_id_6af57ccf ON public.ficheros_fichero USING btree (modified_by_id);
 <   DROP INDEX public.ficheros_fichero_modified_by_id_6af57ccf;
       public            postgres    false    255            �           1259    51263 ,   ficheros_fichero_plantas_fichero_id_bbd0ee30    INDEX     w   CREATE INDEX ficheros_fichero_plantas_fichero_id_bbd0ee30 ON public.ficheros_fichero_plantas USING btree (fichero_id);
 @   DROP INDEX public.ficheros_fichero_plantas_fichero_id_bbd0ee30;
       public            postgres    false    257            �           1259    51264 +   ficheros_fichero_plantas_planta_id_e62690c8    INDEX     u   CREATE INDEX ficheros_fichero_plantas_planta_id_e62690c8 ON public.ficheros_fichero_plantas USING btree (planta_id);
 ?   DROP INDEX public.ficheros_fichero_plantas_planta_id_e62690c8;
       public            postgres    false    257            9           1259    51387     users_banco_codigo_719dce65_like    INDEX     n   CREATE INDEX users_banco_codigo_719dce65_like ON public.users_banco USING btree (codigo varchar_pattern_ops);
 4   DROP INDEX public.users_banco_codigo_719dce65_like;
       public            postgres    false    221            <           1259    50935     users_banco_nombre_a0c1bf46_like    INDEX     n   CREATE INDEX users_banco_nombre_a0c1bf46_like ON public.users_banco USING btree (nombre varchar_pattern_ops);
 4   DROP INDEX public.users_banco_nombre_a0c1bf46_like;
       public            postgres    false    221            A           1259    50936     users_civil_nombre_3edfde0b_like    INDEX     n   CREATE INDEX users_civil_nombre_3edfde0b_like ON public.users_civil USING btree (nombre varchar_pattern_ops);
 4   DROP INDEX public.users_civil_nombre_3edfde0b_like;
       public            postgres    false    223            F           1259    50937 '   users_nacionalidad_nombre_aef14a91_like    INDEX     |   CREATE INDEX users_nacionalidad_nombre_aef14a91_like ON public.users_nacionalidad USING btree (nombre varchar_pattern_ops);
 ;   DROP INDEX public.users_nacionalidad_nombre_aef14a91_like;
       public            postgres    false    225            K           1259    50938    users_sexo_nombre_7dda088d_like    INDEX     l   CREATE INDEX users_sexo_nombre_7dda088d_like ON public.users_sexo USING btree (nombre varchar_pattern_ops);
 3   DROP INDEX public.users_sexo_nombre_7dda088d_like;
       public            postgres    false    227            P           1259    50939 +   users_sistemaprevision_nombre_6030b512_like    INDEX     �   CREATE INDEX users_sistemaprevision_nombre_6030b512_like ON public.users_sistemaprevision USING btree (nombre varchar_pattern_ops);
 ?   DROP INDEX public.users_sistemaprevision_nombre_6030b512_like;
       public            postgres    false    229            U           1259    50940 '   users_sistemasalud_nombre_ded122ec_like    INDEX     |   CREATE INDEX users_sistemasalud_nombre_ded122ec_like ON public.users_sistemasalud USING btree (nombre varchar_pattern_ops);
 ;   DROP INDEX public.users_sistemasalud_nombre_ded122ec_like;
       public            postgres    false    231            Z           1259    50941 "   users_tipocta_nombre_9961171a_like    INDEX     r   CREATE INDEX users_tipocta_nombre_9961171a_like ON public.users_tipocta USING btree (nombre varchar_pattern_ops);
 6   DROP INDEX public.users_tipocta_nombre_9961171a_like;
       public            postgres    false    233            _           1259    51012    users_user_banco_id_b603fb91    INDEX     W   CREATE INDEX users_user_banco_id_b603fb91 ON public.users_user USING btree (banco_id);
 0   DROP INDEX public.users_user_banco_id_b603fb91;
       public            postgres    false    235            `           1259    51013    users_user_ciudad_id_cf074a3e    INDEX     Y   CREATE INDEX users_user_ciudad_id_cf074a3e ON public.users_user USING btree (ciudad_id);
 1   DROP INDEX public.users_user_ciudad_id_cf074a3e;
       public            postgres    false    235            �           1259    51363 &   users_user_cliente_cliente_id_3cb8dd88    INDEX     k   CREATE INDEX users_user_cliente_cliente_id_3cb8dd88 ON public.users_user_cliente USING btree (cliente_id);
 :   DROP INDEX public.users_user_cliente_cliente_id_3cb8dd88;
       public            postgres    false    264            �           1259    51362 #   users_user_cliente_user_id_93f0ae06    INDEX     e   CREATE INDEX users_user_cliente_user_id_93f0ae06 ON public.users_user_cliente USING btree (user_id);
 7   DROP INDEX public.users_user_cliente_user_id_93f0ae06;
       public            postgres    false    264            a           1259    51008    users_user_codigo_8d607452_like    INDEX     l   CREATE INDEX users_user_codigo_8d607452_like ON public.users_user USING btree (codigo varchar_pattern_ops);
 3   DROP INDEX public.users_user_codigo_8d607452_like;
       public            postgres    false    235            d           1259    51015 !   users_user_created_by_id_ba0dd846    INDEX     a   CREATE INDEX users_user_created_by_id_ba0dd846 ON public.users_user USING btree (created_by_id);
 5   DROP INDEX public.users_user_created_by_id_ba0dd846;
       public            postgres    false    235            e           1259    51011    users_user_cuenta_d702db23_like    INDEX     l   CREATE INDEX users_user_cuenta_d702db23_like ON public.users_user USING btree (cuenta varchar_pattern_ops);
 3   DROP INDEX public.users_user_cuenta_d702db23_like;
       public            postgres    false    235            h           1259    51009    users_user_email_243f6e77_like    INDEX     j   CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);
 2   DROP INDEX public.users_user_email_243f6e77_like;
       public            postgres    false    235            k           1259    51016 #   users_user_estado_civil_id_d4c18e42    INDEX     e   CREATE INDEX users_user_estado_civil_id_d4c18e42 ON public.users_user USING btree (estado_civil_id);
 7   DROP INDEX public.users_user_estado_civil_id_d4c18e42;
       public            postgres    false    235            |           1259    51038 #   users_user_groups_group_id_9afc8d0e    INDEX     e   CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);
 7   DROP INDEX public.users_user_groups_group_id_9afc8d0e;
       public            postgres    false    237                       1259    51037 "   users_user_groups_user_id_5f6f5a90    INDEX     c   CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);
 6   DROP INDEX public.users_user_groups_user_id_5f6f5a90;
       public            postgres    false    237            l           1259    51017 "   users_user_modified_by_id_d127a936    INDEX     c   CREATE INDEX users_user_modified_by_id_d127a936 ON public.users_user USING btree (modified_by_id);
 6   DROP INDEX public.users_user_modified_by_id_d127a936;
       public            postgres    false    235            m           1259    51018 #   users_user_nacionalidad_id_035617f6    INDEX     e   CREATE INDEX users_user_nacionalidad_id_035617f6 ON public.users_user USING btree (nacionalidad_id);
 7   DROP INDEX public.users_user_nacionalidad_id_035617f6;
       public            postgres    false    235            �           1259    51052 $   users_user_planta_planta_id_1c2d96c2    INDEX     g   CREATE INDEX users_user_planta_planta_id_1c2d96c2 ON public.users_user_planta USING btree (planta_id);
 8   DROP INDEX public.users_user_planta_planta_id_1c2d96c2;
       public            postgres    false    239            �           1259    51051 "   users_user_planta_user_id_0f03c7ed    INDEX     c   CREATE INDEX users_user_planta_user_id_0f03c7ed ON public.users_user_planta USING btree (user_id);
 6   DROP INDEX public.users_user_planta_user_id_0f03c7ed;
       public            postgres    false    239            p           1259    51019     users_user_provincia_id_6e2369c7    INDEX     _   CREATE INDEX users_user_provincia_id_6e2369c7 ON public.users_user USING btree (provincia_id);
 4   DROP INDEX public.users_user_provincia_id_6e2369c7;
       public            postgres    false    235            q           1259    51020    users_user_region_id_5f144ed5    INDEX     Y   CREATE INDEX users_user_region_id_5f144ed5 ON public.users_user USING btree (region_id);
 1   DROP INDEX public.users_user_region_id_5f144ed5;
       public            postgres    false    235            r           1259    51010    users_user_rut_f091af2a_like    INDEX     f   CREATE INDEX users_user_rut_f091af2a_like ON public.users_user USING btree (rut varchar_pattern_ops);
 0   DROP INDEX public.users_user_rut_f091af2a_like;
       public            postgres    false    235            u           1259    51021    users_user_sexo_id_b77baabd    INDEX     U   CREATE INDEX users_user_sexo_id_b77baabd ON public.users_user USING btree (sexo_id);
 /   DROP INDEX public.users_user_sexo_id_b77baabd;
       public            postgres    false    235            v           1259    51022 (   users_user_sistema_prevision_id_4b21f5f1    INDEX     o   CREATE INDEX users_user_sistema_prevision_id_4b21f5f1 ON public.users_user USING btree (sistema_prevision_id);
 <   DROP INDEX public.users_user_sistema_prevision_id_4b21f5f1;
       public            postgres    false    235            w           1259    51023 $   users_user_sistema_salud_id_52dca179    INDEX     g   CREATE INDEX users_user_sistema_salud_id_52dca179 ON public.users_user USING btree (sistema_salud_id);
 8   DROP INDEX public.users_user_sistema_salud_id_52dca179;
       public            postgres    false    235            x           1259    51024 "   users_user_tipo_cuenta_id_e704716a    INDEX     c   CREATE INDEX users_user_tipo_cuenta_id_e704716a ON public.users_user USING btree (tipo_cuenta_id);
 6   DROP INDEX public.users_user_tipo_cuenta_id_e704716a;
       public            postgres    false    235            �           1259    51066 2   users_user_user_permissions_permission_id_0b93982e    INDEX     �   CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);
 F   DROP INDEX public.users_user_user_permissions_permission_id_0b93982e;
       public            postgres    false    241            �           1259    51065 ,   users_user_user_permissions_user_id_20aca447    INDEX     w   CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);
 @   DROP INDEX public.users_user_user_permissions_user_id_20aca447;
       public            postgres    false    241            y           1259    51007 !   users_user_username_06e46fe6_like    INDEX     p   CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);
 5   DROP INDEX public.users_user_username_06e46fe6_like;
       public            postgres    false    235            �           1259    51332     utils_cargo_nombre_6d52f625_like    INDEX     n   CREATE INDEX utils_cargo_nombre_6d52f625_like ON public.utils_cargo USING btree (nombre varchar_pattern_ops);
 4   DROP INDEX public.utils_cargo_nombre_6d52f625_like;
       public            postgres    false    260            $           1259    50757 "   utils_ciudad_provincia_id_59ea5542    INDEX     c   CREATE INDEX utils_ciudad_provincia_id_59ea5542 ON public.utils_ciudad USING btree (provincia_id);
 6   DROP INDEX public.utils_ciudad_provincia_id_59ea5542;
       public            postgres    false    211            	           1259    51334     utils_cliente_ciudad_id_d99919ec    INDEX     _   CREATE INDEX utils_cliente_ciudad_id_d99919ec ON public.utils_cliente USING btree (ciudad_id);
 4   DROP INDEX public.utils_cliente_ciudad_id_d99919ec;
       public            postgres    false    203            
           1259    50738 "   utils_cliente_codigo_43a94902_like    INDEX     r   CREATE INDEX utils_cliente_codigo_43a94902_like ON public.utils_cliente USING btree (codigo varchar_pattern_ops);
 6   DROP INDEX public.utils_cliente_codigo_43a94902_like;
       public            postgres    false    203                       1259    51335 #   utils_cliente_provincia_id_d470f512    INDEX     e   CREATE INDEX utils_cliente_provincia_id_d470f512 ON public.utils_cliente USING btree (provincia_id);
 7   DROP INDEX public.utils_cliente_provincia_id_d470f512;
       public            postgres    false    203                       1259    51336     utils_cliente_region_id_7094ac8e    INDEX     _   CREATE INDEX utils_cliente_region_id_7094ac8e ON public.utils_cliente USING btree (region_id);
 4   DROP INDEX public.utils_cliente_region_id_7094ac8e;
       public            postgres    false    203                       1259    51337    utils_cliente_rut_ca23620b_like    INDEX     l   CREATE INDEX utils_cliente_rut_ca23620b_like ON public.utils_cliente USING btree (rut varchar_pattern_ops);
 3   DROP INDEX public.utils_cliente_rut_ca23620b_like;
       public            postgres    false    203            �           1259    51333 '   utils_departamento_nombre_2d686fa9_like    INDEX     |   CREATE INDEX utils_departamento_nombre_2d686fa9_like ON public.utils_departamento USING btree (nombre varchar_pattern_ops);
 ;   DROP INDEX public.utils_departamento_nombre_2d686fa9_like;
       public            postgres    false    262                       1259    51339    utils_planta_ciudad_id_800ec94a    INDEX     ]   CREATE INDEX utils_planta_ciudad_id_800ec94a ON public.utils_planta USING btree (ciudad_id);
 3   DROP INDEX public.utils_planta_ciudad_id_800ec94a;
       public            postgres    false    209                       1259    50751     utils_planta_cliente_id_21cc87a1    INDEX     _   CREATE INDEX utils_planta_cliente_id_21cc87a1 ON public.utils_planta USING btree (cliente_id);
 4   DROP INDEX public.utils_planta_cliente_id_21cc87a1;
       public            postgres    false    209                       1259    50750 !   utils_planta_codigo_c76b36d1_like    INDEX     p   CREATE INDEX utils_planta_codigo_c76b36d1_like ON public.utils_planta USING btree (codigo varchar_pattern_ops);
 5   DROP INDEX public.utils_planta_codigo_c76b36d1_like;
       public            postgres    false    209                        1259    51340 "   utils_planta_provincia_id_d4113772    INDEX     c   CREATE INDEX utils_planta_provincia_id_d4113772 ON public.utils_planta USING btree (provincia_id);
 6   DROP INDEX public.utils_planta_provincia_id_d4113772;
       public            postgres    false    209            !           1259    51341    utils_planta_region_id_4d33a9d4    INDEX     ]   CREATE INDEX utils_planta_region_id_4d33a9d4 ON public.utils_planta USING btree (region_id);
 3   DROP INDEX public.utils_planta_region_id_4d33a9d4;
       public            postgres    false    209                       1259    50744 "   utils_provincia_region_id_bf1cdb76    INDEX     c   CREATE INDEX utils_provincia_region_id_bf1cdb76 ON public.utils_provincia USING btree (region_id);
 6   DROP INDEX public.utils_provincia_region_id_bf1cdb76;
       public            postgres    false    207            �           2606    50810 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3117    219    215            �           2606    50805 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    217    3122    219            �           2606    50796 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3112    215    213            �           2606    51179 M   contratos_contrato contratos_contrato_created_by_id_5f4358ea_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_contrato
    ADD CONSTRAINT contratos_contrato_created_by_id_5f4358ea_fk_users_user_id FOREIGN KEY (created_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.contratos_contrato DROP CONSTRAINT contratos_contrato_created_by_id_5f4358ea_fk_users_user_id;
       public          postgres    false    3183    235    245            �           2606    51184 N   contratos_contrato contratos_contrato_modified_by_id_c6736778_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_contrato
    ADD CONSTRAINT contratos_contrato_modified_by_id_c6736778_fk_users_user_id FOREIGN KEY (modified_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.contratos_contrato DROP CONSTRAINT contratos_contrato_modified_by_id_c6736778_fk_users_user_id;
       public          postgres    false    3183    235    245            �           2606    51189 J   contratos_contrato contratos_contrato_usuario_id_48ab40c0_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_contrato
    ADD CONSTRAINT contratos_contrato_usuario_id_48ab40c0_fk_users_user_id FOREIGN KEY (usuario_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.contratos_contrato DROP CONSTRAINT contratos_contrato_usuario_id_48ab40c0_fk_users_user_id;
       public          postgres    false    235    245    3183            �           2606    51164 S   contratos_documentoscontrato contratos_documentos_contrato_id_16b10552_fk_contratos    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_documentoscontrato
    ADD CONSTRAINT contratos_documentos_contrato_id_16b10552_fk_contratos FOREIGN KEY (contrato_id) REFERENCES public.contratos_contrato(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.contratos_documentoscontrato DROP CONSTRAINT contratos_documentos_contrato_id_16b10552_fk_contratos;
       public          postgres    false    247    245    3221            �           2606    51169 U   contratos_documentoscontrato contratos_documentos_created_by_id_07c7514f_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_documentoscontrato
    ADD CONSTRAINT contratos_documentos_created_by_id_07c7514f_fk_users_use FOREIGN KEY (created_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.contratos_documentoscontrato DROP CONSTRAINT contratos_documentos_created_by_id_07c7514f_fk_users_use;
       public          postgres    false    3183    235    247            �           2606    51174 V   contratos_documentoscontrato contratos_documentos_modified_by_id_1b702152_fk_users_use    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_documentoscontrato
    ADD CONSTRAINT contratos_documentos_modified_by_id_1b702152_fk_users_use FOREIGN KEY (modified_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.contratos_documentoscontrato DROP CONSTRAINT contratos_documentos_modified_by_id_1b702152_fk_users_use;
       public          postgres    false    3183    247    235            �           2606    51206 P   contratos_plantilla_plantas contratos_plantilla__planta_id_375852b1_fk_utils_pla    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_plantilla_plantas
    ADD CONSTRAINT contratos_plantilla__planta_id_375852b1_fk_utils_pla FOREIGN KEY (planta_id) REFERENCES public.utils_planta(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.contratos_plantilla_plantas DROP CONSTRAINT contratos_plantilla__planta_id_375852b1_fk_utils_pla;
       public          postgres    false    3103    253    209            �           2606    51201 S   contratos_plantilla_plantas contratos_plantilla__plantilla_id_520988ea_fk_contratos    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_plantilla_plantas
    ADD CONSTRAINT contratos_plantilla__plantilla_id_520988ea_fk_contratos FOREIGN KEY (plantilla_id) REFERENCES public.contratos_plantilla(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.contratos_plantilla_plantas DROP CONSTRAINT contratos_plantilla__plantilla_id_520988ea_fk_contratos;
       public          postgres    false    253    3232    249            �           2606    51136 O   contratos_plantilla contratos_plantilla_cliente_id_c4d34818_fk_utils_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_plantilla
    ADD CONSTRAINT contratos_plantilla_cliente_id_c4d34818_fk_utils_cliente_id FOREIGN KEY (cliente_id) REFERENCES public.utils_cliente(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.contratos_plantilla DROP CONSTRAINT contratos_plantilla_cliente_id_c4d34818_fk_utils_cliente_id;
       public          postgres    false    3086    249    203            �           2606    51141 O   contratos_plantilla contratos_plantilla_created_by_id_808eee2b_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_plantilla
    ADD CONSTRAINT contratos_plantilla_created_by_id_808eee2b_fk_users_user_id FOREIGN KEY (created_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.contratos_plantilla DROP CONSTRAINT contratos_plantilla_created_by_id_808eee2b_fk_users_user_id;
       public          postgres    false    3183    235    249            �           2606    51146 P   contratos_plantilla contratos_plantilla_modified_by_id_69eb5d45_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_plantilla
    ADD CONSTRAINT contratos_plantilla_modified_by_id_69eb5d45_fk_users_user_id FOREIGN KEY (modified_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.contratos_plantilla DROP CONSTRAINT contratos_plantilla_modified_by_id_69eb5d45_fk_users_user_id;
       public          postgres    false    249    235    3183            �           2606    51159 M   contratos_plantilla contratos_plantilla_tipo_id_1e53ab9f_fk_contratos_tipo_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_plantilla
    ADD CONSTRAINT contratos_plantilla_tipo_id_1e53ab9f_fk_contratos_tipo_id FOREIGN KEY (tipo_id) REFERENCES public.contratos_tipo(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.contratos_plantilla DROP CONSTRAINT contratos_plantilla_tipo_id_1e53ab9f_fk_contratos_tipo_id;
       public          postgres    false    3237    249    251            �           2606    51126 E   contratos_tipo contratos_tipo_created_by_id_58c5bcba_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_tipo
    ADD CONSTRAINT contratos_tipo_created_by_id_58c5bcba_fk_users_user_id FOREIGN KEY (created_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.contratos_tipo DROP CONSTRAINT contratos_tipo_created_by_id_58c5bcba_fk_users_user_id;
       public          postgres    false    235    3183    251            �           2606    51131 F   contratos_tipo contratos_tipo_modified_by_id_34b37974_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos_tipo
    ADD CONSTRAINT contratos_tipo_modified_by_id_34b37974_fk_users_user_id FOREIGN KEY (modified_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.contratos_tipo DROP CONSTRAINT contratos_tipo_modified_by_id_34b37974_fk_users_user_id;
       public          postgres    false    251    235    3183            �           2606    51079 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3112    243    213            �           2606    51084 C   django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id;
       public          postgres    false    3183    235    243            �           2606    51231 I   ficheros_fichero ficheros_fichero_created_by_id_02d82dd6_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ficheros_fichero
    ADD CONSTRAINT ficheros_fichero_created_by_id_02d82dd6_fk_users_user_id FOREIGN KEY (created_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ficheros_fichero DROP CONSTRAINT ficheros_fichero_created_by_id_02d82dd6_fk_users_user_id;
       public          postgres    false    3183    255    235            �           2606    51236 J   ficheros_fichero ficheros_fichero_modified_by_id_6af57ccf_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ficheros_fichero
    ADD CONSTRAINT ficheros_fichero_modified_by_id_6af57ccf_fk_users_user_id FOREIGN KEY (modified_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.ficheros_fichero DROP CONSTRAINT ficheros_fichero_modified_by_id_6af57ccf_fk_users_user_id;
       public          postgres    false    235    3183    255            �           2606    51253 N   ficheros_fichero_plantas ficheros_fichero_pla_fichero_id_bbd0ee30_fk_ficheros_    FK CONSTRAINT     �   ALTER TABLE ONLY public.ficheros_fichero_plantas
    ADD CONSTRAINT ficheros_fichero_pla_fichero_id_bbd0ee30_fk_ficheros_ FOREIGN KEY (fichero_id) REFERENCES public.ficheros_fichero(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.ficheros_fichero_plantas DROP CONSTRAINT ficheros_fichero_pla_fichero_id_bbd0ee30_fk_ficheros_;
       public          postgres    false    3247    255    257            �           2606    51258 W   ficheros_fichero_plantas ficheros_fichero_plantas_planta_id_e62690c8_fk_utils_planta_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ficheros_fichero_plantas
    ADD CONSTRAINT ficheros_fichero_plantas_planta_id_e62690c8_fk_utils_planta_id FOREIGN KEY (planta_id) REFERENCES public.utils_planta(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.ficheros_fichero_plantas DROP CONSTRAINT ficheros_fichero_plantas_planta_id_e62690c8_fk_utils_planta_id;
       public          postgres    false    257    3103    209            �           2606    50942 9   users_user users_user_banco_id_b603fb91_fk_users_banco_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_banco_id_b603fb91_fk_users_banco_id FOREIGN KEY (banco_id) REFERENCES public.users_banco(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_banco_id_b603fb91_fk_users_banco_id;
       public          postgres    false    3136    221    235            �           2606    50947 ;   users_user users_user_ciudad_id_cf074a3e_fk_utils_ciudad_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_ciudad_id_cf074a3e_fk_utils_ciudad_id FOREIGN KEY (ciudad_id) REFERENCES public.utils_ciudad(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_ciudad_id_cf074a3e_fk_utils_ciudad_id;
       public          postgres    false    211    3107    235            �           2606    51357 M   users_user_cliente users_user_cliente_cliente_id_3cb8dd88_fk_utils_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_cliente
    ADD CONSTRAINT users_user_cliente_cliente_id_3cb8dd88_fk_utils_cliente_id FOREIGN KEY (cliente_id) REFERENCES public.utils_cliente(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.users_user_cliente DROP CONSTRAINT users_user_cliente_cliente_id_3cb8dd88_fk_utils_cliente_id;
       public          postgres    false    3086    264    203            �           2606    51352 G   users_user_cliente users_user_cliente_user_id_93f0ae06_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_cliente
    ADD CONSTRAINT users_user_cliente_user_id_93f0ae06_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.users_user_cliente DROP CONSTRAINT users_user_cliente_user_id_93f0ae06_fk_users_user_id;
       public          postgres    false    235    264    3183            �           2606    50957 =   users_user users_user_created_by_id_ba0dd846_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_created_by_id_ba0dd846_fk_users_user_id FOREIGN KEY (created_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_created_by_id_ba0dd846_fk_users_user_id;
       public          postgres    false    3183    235    235            �           2606    50962 @   users_user users_user_estado_civil_id_d4c18e42_fk_users_civil_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_estado_civil_id_d4c18e42_fk_users_civil_id FOREIGN KEY (estado_civil_id) REFERENCES public.users_civil(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_estado_civil_id_d4c18e42_fk_users_civil_id;
       public          postgres    false    223    3141    235            �           2606    51032 F   users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id;
       public          postgres    false    237    3122    217            �           2606    51027 E   users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_user_groups DROP CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id;
       public          postgres    false    237    3183    235            �           2606    50967 >   users_user users_user_modified_by_id_d127a936_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_modified_by_id_d127a936_fk_users_user_id FOREIGN KEY (modified_by_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_modified_by_id_d127a936_fk_users_user_id;
       public          postgres    false    235    235    3183            �           2606    50972 G   users_user users_user_nacionalidad_id_035617f6_fk_users_nacionalidad_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_nacionalidad_id_035617f6_fk_users_nacionalidad_id FOREIGN KEY (nacionalidad_id) REFERENCES public.users_nacionalidad(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_nacionalidad_id_035617f6_fk_users_nacionalidad_id;
       public          postgres    false    3146    235    225            �           2606    51046 I   users_user_planta users_user_planta_planta_id_1c2d96c2_fk_utils_planta_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_planta
    ADD CONSTRAINT users_user_planta_planta_id_1c2d96c2_fk_utils_planta_id FOREIGN KEY (planta_id) REFERENCES public.utils_planta(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.users_user_planta DROP CONSTRAINT users_user_planta_planta_id_1c2d96c2_fk_utils_planta_id;
       public          postgres    false    3103    239    209            �           2606    51041 E   users_user_planta users_user_planta_user_id_0f03c7ed_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_planta
    ADD CONSTRAINT users_user_planta_user_id_0f03c7ed_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.users_user_planta DROP CONSTRAINT users_user_planta_user_id_0f03c7ed_fk_users_user_id;
       public          postgres    false    3183    239    235            �           2606    50977 A   users_user users_user_provincia_id_6e2369c7_fk_utils_provincia_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_provincia_id_6e2369c7_fk_utils_provincia_id FOREIGN KEY (provincia_id) REFERENCES public.utils_provincia(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_provincia_id_6e2369c7_fk_utils_provincia_id;
       public          postgres    false    235    3095    207            �           2606    50982 ;   users_user users_user_region_id_5f144ed5_fk_utils_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_region_id_5f144ed5_fk_utils_region_id FOREIGN KEY (region_id) REFERENCES public.utils_region(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_region_id_5f144ed5_fk_utils_region_id;
       public          postgres    false    205    235    3093            �           2606    50987 7   users_user users_user_sexo_id_b77baabd_fk_users_sexo_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_sexo_id_b77baabd_fk_users_sexo_id FOREIGN KEY (sexo_id) REFERENCES public.users_sexo(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_sexo_id_b77baabd_fk_users_sexo_id;
       public          postgres    false    3151    227    235            �           2606    50992 @   users_user users_user_sistema_prevision_id_4b21f5f1_fk_users_sis    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_sistema_prevision_id_4b21f5f1_fk_users_sis FOREIGN KEY (sistema_prevision_id) REFERENCES public.users_sistemaprevision(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_sistema_prevision_id_4b21f5f1_fk_users_sis;
       public          postgres    false    3156    229    235            �           2606    50997 H   users_user users_user_sistema_salud_id_52dca179_fk_users_sistemasalud_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_sistema_salud_id_52dca179_fk_users_sistemasalud_id FOREIGN KEY (sistema_salud_id) REFERENCES public.users_sistemasalud(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_sistema_salud_id_52dca179_fk_users_sistemasalud_id;
       public          postgres    false    231    235    3161            �           2606    51002 A   users_user users_user_tipo_cuenta_id_e704716a_fk_users_tipocta_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_tipo_cuenta_id_e704716a_fk_users_tipocta_id FOREIGN KEY (tipo_cuenta_id) REFERENCES public.users_tipocta(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.users_user DROP CONSTRAINT users_user_tipo_cuenta_id_e704716a_fk_users_tipocta_id;
       public          postgres    false    3166    235    233            �           2606    51060 T   users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm;
       public          postgres    false    3117    215    241            �           2606    51055 Y   users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_user_user_permissions DROP CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id;
       public          postgres    false    3183    235    241            �           2606    50752 E   utils_ciudad utils_ciudad_provincia_id_59ea5542_fk_utils_provincia_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.utils_ciudad
    ADD CONSTRAINT utils_ciudad_provincia_id_59ea5542_fk_utils_provincia_id FOREIGN KEY (provincia_id) REFERENCES public.utils_provincia(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.utils_ciudad DROP CONSTRAINT utils_ciudad_provincia_id_59ea5542_fk_utils_provincia_id;
       public          postgres    false    211    207    3095            �           2606    51364 A   utils_cliente utils_cliente_ciudad_id_d99919ec_fk_utils_ciudad_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.utils_cliente
    ADD CONSTRAINT utils_cliente_ciudad_id_d99919ec_fk_utils_ciudad_id FOREIGN KEY (ciudad_id) REFERENCES public.utils_ciudad(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.utils_cliente DROP CONSTRAINT utils_cliente_ciudad_id_d99919ec_fk_utils_ciudad_id;
       public          postgres    false    3107    211    203            �           2606    51369 G   utils_cliente utils_cliente_provincia_id_d470f512_fk_utils_provincia_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.utils_cliente
    ADD CONSTRAINT utils_cliente_provincia_id_d470f512_fk_utils_provincia_id FOREIGN KEY (provincia_id) REFERENCES public.utils_provincia(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.utils_cliente DROP CONSTRAINT utils_cliente_provincia_id_d470f512_fk_utils_provincia_id;
       public          postgres    false    3095    207    203            �           2606    51305 A   utils_cliente utils_cliente_region_id_7094ac8e_fk_utils_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.utils_cliente
    ADD CONSTRAINT utils_cliente_region_id_7094ac8e_fk_utils_region_id FOREIGN KEY (region_id) REFERENCES public.utils_region(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.utils_cliente DROP CONSTRAINT utils_cliente_region_id_7094ac8e_fk_utils_region_id;
       public          postgres    false    3093    205    203            �           2606    51374 ?   utils_planta utils_planta_ciudad_id_800ec94a_fk_utils_ciudad_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.utils_planta
    ADD CONSTRAINT utils_planta_ciudad_id_800ec94a_fk_utils_ciudad_id FOREIGN KEY (ciudad_id) REFERENCES public.utils_ciudad(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.utils_planta DROP CONSTRAINT utils_planta_ciudad_id_800ec94a_fk_utils_ciudad_id;
       public          postgres    false    3107    209    211            �           2606    50745 A   utils_planta utils_planta_cliente_id_21cc87a1_fk_utils_cliente_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.utils_planta
    ADD CONSTRAINT utils_planta_cliente_id_21cc87a1_fk_utils_cliente_id FOREIGN KEY (cliente_id) REFERENCES public.utils_cliente(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.utils_planta DROP CONSTRAINT utils_planta_cliente_id_21cc87a1_fk_utils_cliente_id;
       public          postgres    false    209    203    3086            �           2606    51379 E   utils_planta utils_planta_provincia_id_d4113772_fk_utils_provincia_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.utils_planta
    ADD CONSTRAINT utils_planta_provincia_id_d4113772_fk_utils_provincia_id FOREIGN KEY (provincia_id) REFERENCES public.utils_provincia(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.utils_planta DROP CONSTRAINT utils_planta_provincia_id_d4113772_fk_utils_provincia_id;
       public          postgres    false    207    209    3095            �           2606    51327 ?   utils_planta utils_planta_region_id_4d33a9d4_fk_utils_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.utils_planta
    ADD CONSTRAINT utils_planta_region_id_4d33a9d4_fk_utils_region_id FOREIGN KEY (region_id) REFERENCES public.utils_region(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.utils_planta DROP CONSTRAINT utils_planta_region_id_4d33a9d4_fk_utils_region_id;
       public          postgres    false    3093    205    209            �           2606    50739 E   utils_provincia utils_provincia_region_id_bf1cdb76_fk_utils_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.utils_provincia
    ADD CONSTRAINT utils_provincia_region_id_bf1cdb76_fk_utils_region_id FOREIGN KEY (region_id) REFERENCES public.utils_region(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.utils_provincia DROP CONSTRAINT utils_provincia_region_id_bf1cdb76_fk_utils_region_id;
       public          postgres    false    205    3093    207            �   M   x�3�tL����,.)JL�/�2B�+8��Y%��\Ɯn��ɉ9�U`	�.Tϼ�Ԣ�|.Sΐ�Ĥ�,�y1z\\\ ��!�      �   �  x�%�ɑ�@���1܇/�K�|�@)���Ga~�y1Q}�1{q�����*����:����&����6����.��	��]?�!��3�ѳ�ѳ�ѳ�ѳ�ѳ�ѳ��s��s�����������	�������狠���������O�H�(�h��X$�$�T$�4$�t$��SxǐHzYHz�Hz9Hz�(z%(z�(ze(z�(z(zu���P��Q�jP�j��Z��Z��������:��:���&�J������b�`�b�a�c�M`�Mb�Ma������Л��[��[��[��[��������������ۛ�7Μ��@�D�KU��gr�*qɰ&���K1���fr/��&^��9�+��U)_󪔗�C��V�|}�R���6�_�2�^z;���4�������+���W|���6'~���'w�	�����N������      �   �  x�m�ݎ�0�����T� ���1*U.�)�t��k<����7�q8�v3�=��p�����/K?�.sq�,�<Q��0�;f/��uC��XX�l��W���䶢��U����py�����Fm��U+"� Q��'	�m�_o�q����~=:wI"pi[��Yk��(��V��Q��sѹ��\�^X����Z$�X���b�A���Z�`(��J�	�T1reE�t?E��+��X��g��1�%d�ui�1��E��8�2��C�:W����&��w%��_0���)�_�q��ݷ��A�sc|&PA������IR�<��Տm\���b̯9:#5��(�*�kN���!�kp�K���3A�2Ng�$!�|��A@\���[��x*$��_��!!e�-��B9[0��a�O.��=���&�� c�L	F���}q�{�y�ᑂs\����z��4;a<��@�vB~�'ٖ��c)8�S�Kc{P(2��̠4d�љHb�Q�z���
�U,|YXW!��JLi=�[*1�vh��w���gC�d;8���/���8J����	j&*��=�d[ZҰt����F��|e�@m�7�$��7B��xn]I��/k��ֽzx��َ^�����i|5�8%�o�* �������m�K��k�zwi�_�G;c��
G�������;���%ek��Nm<�3�J�:��j��)�̠ɛQ(�*tK���=�nv9�*���j�Fm��I�#�J�� �Jr����n�\7	��6�Q�`ΤHq(�9�%E%I�H��������,�j_� iL=ȁ4yѤz���9~�%i�1�O�ar�;n��0ޘ<�	���L"�]|C*f������B^Xۂo�Y���o-b�{����Hyvw5�uyɹ�M���V��M�O�F����ݝmN7�3�~���`x"�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�u̱�  ����p��،~��N%��|m㢦�K(��'�� g���pJd}�R�@��(�׶���M�����A"�VB��ԭ���2L���8��8��4R��j�Ϲ�bFy�~�w��~��4�      �      x�ŽϏ�H��y���:�� S�$�t:uK�R%�(�I��{��3��bM��bD�j0�����ao�����:��x���d��5sw�N:-i�b������>� �kn�fnqG߅�wq���gq�,��R��X~� 
.��q����8.w�/���v��e����v������m�/���zw����6������� ��x�P\��.��ULPE�rW��C���MƱ��b��$�(6�v��X��r���X���;.�e�_\|����|]m�����jS�U1ɗ||(�jY��vu��X��_�]],�V����&�d�&�qy�����=|��o'�j���՗e��*�� �K}W����|���L :η��:�d�>��G��`���Wm?���*aX���M]�ۇ����(�0ϫݭ�L"!ЖW���?��^|�>���F���,a��c��AB;p'�����$h��A�PE�)Z�v��a�3�CAz��B����d���x�彯���q�5�Z�KA7�z��5С�,4��J�쫬�M��gr(�!R5/����Ǐ��CQq�Ž>�ġj�Di���CU�~u<��6���5�F�����A'���I�P�f��?���-��&�����&�C�1!�o_���o�1X�X�gQ�hEG�_�Q��_�ϻ�+W�<[��7�U�^������z�o�����,�ӌx��g����Su\��������S� &��:��I�`,QY"��bϦybТ��n}(k&ΓI�,RgI�R�6�~y\Wۉ��>O&�&e*m����ȉ�4�=�Y��i$�[ح����N8�i�:�"�5-&�ӆ��,�R3�^�y0O�����cyb���S�-ڭy8O�DL�4�J<!d���,�P
���;��+MP�VF�Z����Y
#,���V+�D���oЫgB��q�L���c��~�o��τ<S��en������z�,o�XR����C5��7����`<@,�f�? &�x����!?�	�{U���<o�^��Yl�=�.���q��y�~����罽��9̀g��Մݯ��� �8�x��Ӧ8L|h�`O�dI��ۂ!�X��������D�ܸ�<�&�ȥO�:�vU�*aˠ��O�[Z����[��'b4��P�7����k_�!�*�f��@鋏�Td@G�ԃf�����3�FD������u����A�V����[C�P,�߭W��}�g�Ih��R��sS�*Ϋ���Zh+3���c0	��̸{[�˕�ʤh���m!�d��Ҋ���P��i5+��#�����qB�9��	\��.>�?˺X\���ֻ��I��&Dc�S�����ef�q\����;�&�Q�" X��&����>4��D�D�/׼Z�zme�o+QgQ�(���jSm�װ��G�1��I�Y�ih��{T���S�x���$�����~Y���4��G
$|�2K�6{ ܢ�u�7J�ta��X�:>��M��S��O�,��d�n�|��i	_s��*��_~�??=r"D{�����\�?j�ӏfgaƩ�B�o�e��S� ��5n:��[�SR�@O5(�LlLrQ��S�p��ť2�m����z#	��H�=������yzO>C<���e�[���t4$�2�~�e��~�8��ij@���b��F:�������>��1�°3�;�N��/�3����K���Ƶ������.�a�)��x���WwwSیJ�02֫�8���0Ѵ``	)vX�[+��B�P��9!�����v���b�/����	5vt��g�䜐b��]6��w7����*ָ�	e�D|��[���	1v���tW�&!��M���u���[�w�OFȭ�
�P������LBc�Vm+x���T{X���8�P[�O�ũn��hN�#�޸�v�k�H'[	�u����a���v,2!��ܓ���vKw�3�Oȭ���v�P���o��^���$���yp�c@G!!����O���u�zpJ��4e	h��qU@��}z}ܶ�J�-ݙ��P�z:�)I��7g�QHi����8'd�BJ�-]R����G���jk!��ď#���k���unE�\[~�*�J;0�p�nm]� �X����P���r_��Gg+�DE�n;Q�9����%�����q�D"�r>�5'�"B��l���?���c��mg t[.��Pԕ�r��5��,8!���|���aF�t;=�^�	j�P`������d���ޭ�K�bB���_\|X|Y�/�]h�y_1!��Jo��X�5|o�"��&�(#�<#`�	���x����bBɭ	ᄕ���q+�K���&C�|:�aȄ|[r:��G&�ۂ%���}�W�s��\[n�i�=��� ��`�h����j~��&t�
)�����E��c=��	�;�L�m�<� �ٙ���p� �ٱ�n9z^�)�G��_��X��X��-�vv�k�n����p����΀
. �����+,.!Ԏ�v��I8�VI�7��V#W�����w�8��+�J;J�v����j��-�B�5��m�tQ�c�4U�g,��,��x�.P}�I�{�jϺ��X�~b>3���;�[�Ś��j�nؠ	Y��<.@'͎	�-׫c��	!�����X������Ά��aݴg�pB�2�B��r���՚�:�J�-1	>��Ao|��c͜�RJ�-:u����eq~[1��R�l�n<3O.�åt�r!���\��� ]����߱`JI����t���m��RdK�]����(�4��q��MS<�O�YHJ�2��|(�5~K��?��{��5Bɱ3;F��N�1ˤ0�`���0Q`m���3]���u�e�Ӎ$T���̜�jV�k��z�ߒХ×�xQ����	G�t��D�'�&�
��Б�U���������T3�>�E�-���/����ِ�$�0�`�k�nS�2���N�؄�0!9��Á�, �*��\bE3~��g"�{�G#:�Й������r�n�8w���q<�
ޗ��W�svg9�9���孝F�����q�q��s�r�59��Q0]U����c�q/�R��b�4�%ZtȢ�F|���x,YOM��a㩌�j]q�BU�8ȴ_Cp����{�TY�cC:����W�8TB�5sB.�ТCUmh���sxy�:8<BsO8Q!Hh����nW��-�7��K�0���I!�&7�K��+�4�%�!�I&�5暀 p<�ÿ�v4�7�Z��H�(�q�H��H�;p^>Q��3[�<���O�M$�r�嫾�����1{\|.;w����Yz\�:	���:8y+�WZ�{VxOT��&������D]p|��nf87FT��0��Y&�}�����l�r;��Wժ.�k�tN�����MX�[�Qo��N�s0CL���Vd�7�-�5�40&�\r#��|����W�D��vS�"%ӎ�s�Nb��ǡ����?�7����)uv�(�{X��xX��XMI���nu�/.��_�3�c���Ż�(3��!�Nl�r|������$� ��
V/�_�Aw��?�����Q��Z������[F�5<..f��b�l�Ev�,�g�0	�uL	��u;~�5&�s\l�bq_q;u��`	�9�V��jŋNc�$GũL#��w�vꌪ�rrh�¹�K��7.<u�z�C�l;Y��k�Q��ق��q-��l��sb������	}ڊ�%�pU��"KlDi�K�{ś3�����qda� D����9&jl\��kW8�ؘ��q�NU�9n�a4�O�1s�[�6����25^#K����q	E:\'5�� ���w����D}�k@���\�6.���?�f���������p��p��'�8TB�U9
��b��-��O0�<�(��sqk+����u���a�f
B||P1�,1Y���`��9(�����5	5:R�Ḇ@�ѱ �S���@и    ����*�i�ЩcGM��0��Ƶ��/�e�Ppg ���{�Ю�tcI������-�.V�	�:h�w�3�QK��W:�\��n=տ��)��25g����_�be]�Q��o�\Qg�r�U�������w���)���5կ<dɕ��q�*����ƥ��|7L�tX���{����:� �y)qv������f��T�hwU�rK�:�(�q-$��gwvk��n��!�n\{:�n��믰DHֱ�f�^\|`@�����Y���E�l�s./&�p\;�qlvˊ��@T��<��Xԫ��>/�J赣Fa��)��eF.�#'��e����q��D�������3�j�DQ�k!q��3}7�teLT�(��@��:c���1Q��ep�yw�Z-�9.���YИ��Q2�_%�u�a�k&�vT��x��>U%��GL��8�8�U���]���GF8J'�t\~�A/�e�x^g���W�QN���ٛ�my:.R��/p��&逝��O�rL:tL�6lg����j��N��Ϋ�����F���� f�;�u;.|�������߽5�Q1wӄ(�q��q26�c/�0gW��D7nc�R�
�IMD�"��.�(�qm����[�3f���Z ��ԑZ%,�gn�S�A�w��),%���{�Ͻx����4�靀��Ĉ��R�A������	�,�����Kk֡�[
'�s�eN-UL�
9�u��斗�b�PS�BJ��Yr&�c�4��!�1�=��-���툠�}��o��۱�C�9Bŝ9gm;�,CLulG�%A� �͎�*���:�t>�\/-�2�?o�{�%��
�]P�C�-���L90v0�5Dm@�vڂ�"���������C&DݒS܏�סEP�D4
���6��0���RmZ �z��Xë�O��yB�y���݆��s䂪.rȉ�:�2�Z\�>)�_��E���O\(�Z*���[�..o��l��k��ȱ���>�v�r�ݭww�{��Ar�(������O�tC�7p��87KLƢJPJ��^?����
��ټ�/�A6�����3*C���H��!����*A�зC��ˇ�<c�=��j��[�!�ʦ<����2�(C�ݭP8�ƅ��J�H�[�A;�Ĵ�<g�De����?mNe�� *�\3D ���!�u[��'�p��ᔝ
���5k�7��^�=��K���M�W�`�-��D��c)���Y'6Q���mg�������C_ X��xߔ�n��J�Lto��R�P.�=��:�YQ��tx���9g�!�\s�_��*�CER.�)S�(��^��;��Ě���)׌����O�LH�!��^����D�cB�Zs�/���%;
��]D	�ˍ�͡��Oe��G��*�T��#[۹gƻ���ғ�1�_㔭kc���ۚH{�x�=����ߙK�r[K}�r7~QB�a�����;�y�����r��>�;� �vAX�M��5���ά6������9f����=ɜ�NI9̨YW��A)��)���rsS����r��$d
����Ѧ���^��>��?@,����l;k�3v�׵�}�X/�Pmg!��9�Г9'N *���+����9����r�N�w��Q%���t�	[TD��c`x*MĬs�(�j��g�;Fȳ����������̶G���rl�T���U1���DUc��#��{��؞�b���ʥ'���2�C�H�Dweg�Q�e�]Ӽ8���r�n���LTC�\�L"3o,�B(��fXs��(�rؽ^?v�nZ)C81u㞱A�ӱ�;��f#vw���JI��N�����9�I-F�?���%A�H�	�
�
��Y��B��g�9dB���gzU|�Q	=:T\c�O<�;y��fQ.3�W3g1�,ʵ1,���8Vr.�DU��ϽS$����r౳e���`-m��c�P�c�Y}��s�i�xw�
^ATL�v�@�s×�u��������Q0��a���>�@�	$0�+��z~S�0!o�O;�Z;i�� 6*�JB�S&��_`�F�6ʥ��ga�(8�:T�DS�������ԏf����D��k�;h�k�(�r�"쿮Y���(�r��~����Dq�ˏۗr��"���<U-zݖ5�� �\`Җa��~ށlW����)}v���?N��D�kBvk
=����f� �:(א�wo���1)�1@	�3�vc��r��+^�� j�I��z�l�$�2(��'�47�9ea�ɷ+vA�C�������{�^�P._o�����D9�M��OŬ�-A�>�R�*2h�>�����Jס���qk�����)�c���c$��5�3fB�:�<�ߒ֥r�w�N��^�f+V�fGN����[�ѥ��arYQ�u��5�TjB�0�̸�e���&�	Q��rE���$D}��K�����T����xBT)A�����3F�΄�Qr����sj�ۅ��W8V�m���_rfA�o��	9!��\4��;�w�(!J�\dW��X꫷��{�<���H�	���#D��"'�y�ۨw���&��������;��]	Qw����>�9�qBU�8���$З�����
�,h���Z�*ׂu�HB9��V*����*1rྲྀ����������E�ݕc]b�5�N�ҡK�F0g�P�E<s��ͤˎ"����G0Olu���ƽ����5�I?��̏Ih2s%��$xQ����K�=a���2���A��� �/�S���-�@LBU9����[�uŤ��s��Np����a��c���n�ٔH�""�JO���#vQ[�M��f�~ȱ ��Nk
V
�;nF5�
�:�
݇�7eP�C=j�,jBU9̸����7�P�C�џ;��N�U�J�s ��t�A��N�.%��S�J���z�h��E}ز�j�N�A�� y�ᒁ�*�:$�o�'�XJ�6�>r��;j�����9DJvQ�K)��&=����@�,a�t:�g��T�gB�%�=&�>;��7�d�*-�������\������u��ʒ�-rٸ����bJ� {�g��T��_���~�F�P?阪�O�NR�-�`��ha�¨o-��A=&�>������r�/�����h�Q�T�m�Lx�(��ؐS��n�����ڲ9������o8��)K��ug���HFK��Vz�h��\��d�B������#KF��z�(�MɁw�Ѩ��7��<�Z3q������1ā�v����!n�P����3f"��J{�'��v�̊[G��&���Y��4���H�(�s{2Z�ԧ������Ohف�SN����d�ΩG�1��ɭ=�b�����BՎ���M�x�}�����Ѿ�[?p\�h��E�穁.�:�A2Z��7��}q(~���:8�J�w����h!S�)��&�Ф�ͺ]���䳙lB�[��Is�7� �Jǀ[\�k����1���1J���	:�h�������JhB��Ә����̶A鲳!{dc�8��Q��%c���i�+� -c�[�o�r��X;���ь�l�����:������+�JF���V�`��#�9�	J����gb�&��*�8魦���q=�C��2��Dm�����@�EL}vL�j\<�0� ���ݍV7�-s���G��n���%L�h	�O�rL]��A�m��[P�{bB�>�wz�%B��%��v�����)Ny���1@E¸�
�?і8k�t��	L�𿘵hv��C؜���LG띴��͙Ϟ
v�`:Z��G�v�]|���&7�B��\���YsV:Z��b\���?3o)KGk���t�e4/���C�M��f��WE���P}z��k��	C�\,.�}z��c���cB����5P}v��z���LG�zx�(Z�`�W�9�t��O�F�X)�t� 
�RHS��{R��'N�`:Z�g:����.�8r�t���N���F�� H�����ݡ	�9HB~Rvy���<�?�N���Ƣkf۔t���oD���:���@��}��#�af�    �g&��.�����=��$��곣�'����^��^ldƱ2�P���ܫYS�$J>��ө2��� �8u������g��	�pa�3�^^�/ ����m��M(���;4�4&�<�����2����.��XO�������E+���檸öSӏA{����[�����22XO�Cl�b�`uR1u�F���9w��Jq\[���W�W>������~���O�f����Wő#��uŸx�?�����/2��nO����}Q��Lt0dB�9q�;��77,��+z���bb��P	�e�=��S�9��[P�ԼlЄ�ZtOy����ǟ��%x�P
� �>n'I
a~e��)ی[���lP#��pC�Wo��<�doDO}^0����R��@O;Ԉz�(��v"�1���Qq �[Ui2CQI����1<�܈<'�u\_�)�1�I .��}<7U�s^!������n����W�
CsIt�eW���	��-t<|�oPW�����������<u���� :,,�*܌�3��c�zXB/F:<�\�F���s�.'�$�%�`s�/�fhdx�T:^���{xk�w'�A�b��
~>6B-�ޠ0HB4-�+����PM.��tc��ŗ�E�����!.�+�x�Kj�0�O�rƊ_73d����n�	�a*�XI��x��'l\y����@���� ���3�����(�i����"��v<�fo��e��Ѱ�%б`=����2��;�U�Gq����*��
�/K��}`�qb�� �e� e�s��aipq�����ظn~�s���_Pbpq��H����$R�`��\�94B-EPcWG=/p�!���s<��nb���1���"����Ϋ���PC�S�,^b�g�-a<�ޥ_&2`g����D͢��hy2�\_��~� ˋ�9C�/�0,!C)��oWm�%C�^�����b�d}B%S/4X}$��#�T��~��#4��B�%����$	��C�\�� �hI*xu���x[~�� ��z���bꔳ�BhiX�z_���WRX�23�Aw�s���Jh	��śEȠE�kK��	�����;�7 �K���0�X��_�`��9D�&Ȍ���]O�B�4�#�Wu�xu���^���A��/M/�5T����ԫ����T�'���{ ����i�\M��6@O!���7��u5��1LO*S�zŲx����i�&����qb�ci��vh0��J���f/X/Tp��l�n'�-,��6���4�f�Y�!�,8f��5���I?��1a`W��T���ڡe��b31�Z1�NH�����-�/�������?�ສ�|��'�P�ٙ������p͒������U�by�:y`x�T^�_��b3�<�DB%1�ī��XrF�����~������eZq����NU�!����n]Nl����1�C�x�]8Yo��M��b?�n�y��]��\���*>3?3��'���C�b��1HB-�FM��zj��"	�8H��p�_�����;���i	�8h�%���Dllp~�|�M6��/!�<W�ݮS@[9��τ{0�[�)#+�~��I�a����L������s���^:f��ç6,�RLG@\�/y���x1�0�l�l��Z:b�D�J�p\#i�)ۥ?D�KXU,����>/� �V�լ�짹�D�.�*�k19�q�8�,xu��x��/9�q�8@��4қ�M_?w\87ŵ��ݞB���!/��矋5k��翇<]���m1�P��qѤQ��� c�Էnr��q�/7ly�d^|��L�7�w��,?%>�<x[�{N!���Mq�gV8���=^��&[` !(��]�Pn+�����/u�"!�X�X"f`nL�7f7Y���C:���.���&!��aݓg��j"�4w�m�x�.x�����!�Ra�����YK3������槿�y����rⴴ��q�J'�K�����6HB?�0����2t��$�G��<�	�8@l���g���r�����P.yߙ������O�14B0-�TyX!��������2���}�bT���7�$����}84��Ys��Ϝ{�,xy���x�Za��s�(1Tx�ϟ^��-0�d��͚��4�L�>̱h��/v�gT�P���+�-�X��~R�#���������8B2��Ǻ���P�Ĺ���Ż���`���!f4F]���IS+CSz
�o����ˀWn���N�Z���d�z�۸�s�7�ʊ�S���=��hY��OH��!�����ƴ�S�x��	����֬h�ϯ��#�_|�U�;B�h!����D�D���,�.
<�Ł��`��b�d�$$�!� �L�[!�'�ՄHh�����
~�����S�Cb����-ପ����'�W�Yk{"���bcbn����E��a-��E)aB¤�@07>q���kw��.N�'�~"!��L�9}�	�8Dy�;�qpw ����ϴ@B#ϥl��=(��3"��"̎�Fx����X`P� !�,W"1�8�z����zΈ��K�ޙA���qۘ7��Խ���N��0͈��KS��=�G���e��
��x�<:�����ݑeD�����m�ڦȈ����(�f>%��&�7�OfD�ޥ�z(�K�6@F��S�)aK�Q8�o8+���ֻ�0��������wp`�TM�HB Ϥ�#�zS"]���������Ї�U;���x�<^
��hh�(�%
q�	��a}B"Nwk�.EF���<U\�G�X�V;�{�yS�8���w��D)�g�?#r�.��%/D R�f���Pod�U"?�"v��,�E��]`fDuҺ�sV8��w�2x{,����}YO��3TB555QKVp��z���*����Hջ<L�SF,nR5��}W�p*2"K/CX��L6�/�x���x�jq�!�ª���}G�r3��5o3/#R�.�#O(Dnޅ�)ǚ�)��yW��c"��� k�|���8�׆�L��r��p2C��wi0���=7�E*�.���b������`�"'�Rm��n_n95K��w��9�4u6���t��S���bW"��T�{�%�F>#��..��>D�H��!���qo%��./ͩRʈD��҉�z�f4�#$���A�K r�.ͬJ�}{W��72"�.��&�t����U���룤��B��낵͘Yw��9d�9j"��"����������(�t<�G�)�ȸ�8�9�li�::���9rX�::V����<��v��+�'���vg*�GRcs���`CD��%FvF��)G D��E�݉#����껯�D��Acޝ�� ��.L��9�H���L�����G���ɀ]F��v�b�ݱ��;V��v����n�
����JL:��NIh�A�Xk񖷗G��]���^7��ϬG$�� M]ʑev�������v"�����zX@��G3"����=�=�N�,�L�m���C�ӱ�T�dD�]&I� �mAܱ��%D�ݡaw�d����H:��V[^�@��fo~���:q�yua�_��Xwp!,�w��d"����6��V"���T�<��)u��aE:�k�Vuã��t���m1yϖ!N)�ϏkV�`F��XbV�<O��e��_\�]X�ƆU�*��ȫ�Ը�rx�0^��V�{��f�T�u�������LE����G��j��C$��� ��4�[wi����m*"����Xx֑sEd�]��V&CYu��Z)Y!�����y�|d�Ȫ�D̍pV!�ȩ�,����bU@|��֜��"2�.6��6�C��\��ykVE��]�
�����Xwi��%D���Kd�]�45ɏ�r���Ȭ�@^7/�#�������#+�PDn���T«�PDn]J���v�bu�@J     �9	[pV\�ȭ�D�J��`w�;f	v����5+�����KTz���SDv��e8l����������t�l�����rs�Ia�&�"r�.0Aɕ��XU�u�e��8�F��Ñ�JWD���\E1����*�����E�f�E}dl8)"��1��a��+"���0��.�%-�H��<�X/�x��$� 1�Zo�H(����m�h�gy�H��9�,�ȣ�0�usފՆG�t�����Y�1�ȥ���v8��+��������Zu���%� 	�(�>��ai�G�W�^Q)���&�����Q�
��Qg��t8�=�o�*y*���Q��{yO�J�w<s�
~��N��;"ތ��p�(*����J�樬zǊ��4�P�Z/w�ٝʫw��|�U�s^TV=O��r��dR9	9Ee�[�ʃw��s.AQ���k������P���.�}�Y#�J�w0��=�I�p��sRܰN�(*��� ;��5g�\Q��'���_���ʧw8�^��\�R��a�J"2�Y�Hoq(�~p�E$�;�\�D���nm�ʌ*"��03��u�W)t&u[ޜF����u�|�qQ8���S$9.�����I���Q��'Ö���F$�3X���Sxh}�O�02�H�;8l�}��Dڼ�������:/x�-^�6o'R�S�B>�-Y���&�Cz������x��;��c��WD���aһ��w��K���	v�rK�������@G�s��[m1��D�<���$~a2xU�p,׬)�țw�Դ�*&�ϱ<J-O�:�[������/x�P�4wp��:��(a�4<Oxd9e"a��teb���(M�4݀�Mŋ��yg�2���J�}�M���"R�1
�W�ݶ���("e��p�X��L���
�H��;"�hxX!�����`��<:(�)|���7r4B����qʪ�UD���x>��q�lp��L�CL��������DBݡ�*,��.�Hwh��K�y��I�D�[L��}	�%�鈡IX����D�C�\_px(X5N9�Cwx�6�.��Łul6'����]�XU?}��%z�2x����#���p�j]lx�&'R��\o�9�='r�Y"�����������it�afg0ɉD�C�0�oȡ��h!����D����:�z���9qVN���
`j*�;V�#'��u�����Qt8ݻ�CY��9�Bwxi�*�tM��zS�zQ�D*��&��],��GŹ�$"���7E�K$�DJݡ�d�^1G���񮠱8B(.l�ĸ�5�ˉ\z���{m,��J�S��|�-�MȦC�ֺ�{��O$���/�|6B3,���5����K�fd�c�Uω�z��qnJ�EpU��kEV..'�0f_;d��VZ�N��P�NZT�EE,	���{�86s"�����Mś7�$z˂��O;�Ѽk�r"���9'�j���X��9�I�)�(#�!�8��f5��2���D&�C��^NakN$�;N��$F��;\ĸ�ۢF!��$i����3*}�V�e���LD�������.��u},��ǚ9�Cfl�X29ԀEơ悇�ݡ�Ej`H�V:�j8��(X`�����a���%��S����L���!�[���x�
�Skr�Ja��{2��a�n�j��))R<��6նB��
���u]>�\��2��2x��F��R�L���}���s�J�������^�zLJ4-0^V7S3�aQ�iX0�^��ɊtC�t�������C5�e0LJ4-3	>��n�)��y��g��RM�M�O�[?'S�H�FHi�~<�%�=�.���zQ��4��B��,�����-O[?`̲_|�"�C2i�0I~�KQ60|�,Η�Y*�R�>®r��CY�V�HH�#�����ǆE'I�P�&�pj���j�{TBC>	.o��b8� �����
��h�h��t:��qgΌ^���b���fƁ�\U�C��yj/����/�'�����^b޳��͆����d�];2�e���hBn:r�W��f�	�up]_~�f��Z�j޴�%�=�����I&D��ҴA��Æ�z��G4fv/���S;Q���[�B��*�6hB�Z�Ey��r����Y�������=����e���|��̃��#^!%�Ba�~��+�Ռ%��1���%��YM/��З�98%[}]͊��Z ,�ˇ��x!�W�!��Eu�.��QL�K����o��
�k��Z^e��n��8?v��x� ���@�3�};�+��
��o������}V(���k��ګ�Q����D��#����+�"8��N38���w���^o<s�S)�rsS����}(�;��e`�E����db�>��b��X˓��LN�j��r�ҘWM���Iɪe��逝C�}��I�Ы)�y��bsÃQjj`
�U���	�d�¢�y����������b�@L��� ���6R�J�X����ݙ�X\�]����^2)MG�;�{��Lǔ:`�Ν�I��c⥸w�ba�_ R���bu�wMy�~z55��?�P�NZ���x�B*�PQ0'> "!���; ,���'��~��fJ,�LB.3���J�j<t:\��=�W�%�g��JdҜ�5�G�a��3B��3��.��1�V�TMD��\��V��8
���W/^F,!���GF�`��X\ϒ�W}�`
��S�^���v���w܇$���25�0���P����a�#���RlF�:��}H����g��rq�Y��9E��A)��<�W����}�<���M �:�0�A挽N��q�x�ׇ�[s-�P��Ć@����zTBAV`*�~Ol,���`f���X~潅q)%�5@<)��>oy�Jry�U��A�w�K̂��?�T�1�@|8�}	8]�{��bm�K�����m�'<��(�p�����z��l�f����1��rƌ���`d\���(p��Y�(�p�q��
���d�G����,ܠ�(�HB%Sۋ(	>|x�bQ��X��x�h��w4%�-M�����@I���9;��0)b0�\_�X� Q[�Zi��� ޭ8YY�(-v`�"��l�*Y�K�Z8Xڜ��t�)�u������:x������vL� �ԥ��>��|�B2��LM���. f��@�tB�}�x���%�L(�!c*��E��a�����"�6\T��/��Q���`ֽ\WɱQ�����aΎQ��BE[uj��,,�(���݆��.�b�Îz�"�$N���_%�v���vv���d�[�&�㰳�\U����W2��%��pU�z{��7w�(�p�y�_!��y�}��;5o����p�x��s1Qla��X����/���bDE����󭋷�C�^����`{+1v��js�a�Ï�G�,����K��/���b�rD1�ē�������D,ed�R���b�%��@3���B��r�ʉ3�T��D��������' j0"�g���;o��%Gx�>.5�vꈹ�Zs�zӋ�ŧ��<o����pӛ36��=��v�	�%a#6��>���E��Y�7�[/���Z���_t�8ȉJ�X����jq}�8�ie1�&�zu̍o���!
=\K#�#�qa�Vf4o�L�8�p0
�R����n�fM�wLEO����s��8V�w�f�/"��cKG��ǈi��^׏B��RQe�����|^l���[O�r��I� ���b���]]�1PDmI�(�{D�]�%&.��`��;�HO��Y��T�G��( �x\����\sf�>��ɋg�gA��~�g���7����mU�W{��?~��i�]�wXg��?�ۿ�S �mO���H�	�Ҥ���՗e	��P��R���9�\�զ��:��8��:R�I4-V+c����g�8�3�7ݞ?�k��E]���gA��������X�a\�_j�/��Y�>�3%�LS�G5�'�g�[O2��JG>����?l20(�0>˓0�~���    _ށ�Q�C�������Z��]�@q&�,�E�ɧ��qp�_�E�%k�ȡ��Y���H�\q�����R}"49e۾��� �E���� )@KFN�ۻ~�W���I�Y֘~pڡ����C�<��I�ls`�|��8\jD�$L���$�V,k�1A�sӉ?��0;����v>�.z*2{�=�(=�:ɳ��_��������Y��g<yJ�A���S�:��8:�R{�\����|z7ǒ�
m�"�9r�3�!��,I�{�{%3�5��,�#�Ć�x��b����	Uf2�l��	�u���!&����is�+-Me$HHPAH��S�{ l�O�x�G�N�Ql�]|���C"�DjN��sOZ"!+�&����w�����+̘	a)��M�O|O�Y(�)���9M}����T���*��$1T�3�)�Z|��X�-�N()�z\��@`�~���a��T��^�Ɔ �ӝ�x��������[����A�+O�����l���۷ *Yf��Y�3��2�pS�ۗE�-XhB����I��X�'zqZ��<op�� �����M���g�b��n��<`'lA��Vw�|�[�;�,�+6�L���Ŧ�u�o�q�Q�6�tWb�����j��q��,K�=E��{���v���݆7����Yc(w�2�9�-W;,�SiZ��>���ɸ�ᓤ&���=v<���:����'����Q/E9�qQ�Q���E�?�k]|��u�d��d\�i$�I����gK-��v�R�|����l�]=YO�ǡ�+��ƙ�s�2!�8�Mg@�η��:�������w�Q�;�o��3O�	��X$f�HT��������ۢ9N�2Bh'���q�H+绷g&x��J	=�R��nӨ���˪�}�������G��SB�q���ti��ojB�-B�q�%��$�Y����w�[�X*%| ,���d`�c��Ë����=+�2D_��PJ���������"�����䓯�b��g�px�ی���s��-�/��1��l�}��B�V��p"�̍���:}���XBĲE��$��d���f�cK>!�CilE����M��K�$��ԓ��}�5�O��,QJB�	�Htd'�W T�Ha��r({����y|B����V��Ծ[������?����?����8�a�ob�#��dkN��WoCt�>��իv��2HbT3����@�jR�<�4��o���������@���$��V��55O�q�Le�$@��i����ظm������.�1*�?/>����3��*
����/�m*��Y��<����Zw��:�~:�m�������S�o���1iz;U�m-@��l�g�������Q/9[�!~�ĲiJ�������_~x�l��y�N�E9�E�I��� xM%�e=����zQ�V09�1�=ؼ��X��J�1ҿ�$���<�P�I��*��(�΍�S:�P��N.�<2�����e��i�����T^��WC1<D�=���j�1 �;z"��30Tvc ���<j��-�8UD����CY7��>y>��᱇o�ʲ�����R�+8���E�9f�e�`"ո�xn�G�K5��a�Ss=j\�	�,a�V}V�''45n%r�Xy�4'dsm�t��|FH��m��I����yBuz�''�G<f}xM�,�-&�6��#��Gd�g�Wsoj�uO�xf�Ų���!��	D�d:	ı��"c�&#����CB�������CB����HF��V�
ь����
�%�,��S�l�!oXӇM{vB�g�����;''ĳEx�7��'�B<���2i���!�pI���d�bq����7�t$A�C��g��D�����!it#2�&���'0J3����)�&������#�"�P{�[ߙ��|�!�4�_#�wS)#�B�i3$OgX���!����a�e,q�3E(?M�_�0sG,s^�XcN6��ʶ��G<c��Hy%�l�x�g�p��'Yҩ<� �<dؼ��f�X.�g�p��Y>�N�"\��%���)��+Yk�0ԛ㼔�>C����>��*��>C6�=I͘��O8
����<��a���ݬ�,l>��6��E�{:7��3A��,nLx��N2�,� K�����x6	���ͯ��T� ��F@NZ��6��~!S��S�S	'�U�=�����9��+�k�FV`rX�sN<#��Pq�ݒ~ډE���jҼ/���<��A5S����'��
\tn��]����?�L�,��n?n����C]cW�=^U��i&cc(�4z&�Y�27��m�#��1p������Y���I�]A��j�,��O�؋�'Yj>��D�r�
L�V^����I��BO��'J�=���&��ħ~����@��J&Qsf�~���ari�P�i�L�gY$e����w��;������4�$p^��y�����>�u���[�}q�;�Q��(�H�&�T�F��7!����H����L� �����_�'p�g*�m]�����!��>t$&`�c$�Y�9��&����)��OǷ;���H�"�8��T�xs!��]���������R�ʕ]a�D��t��������/^>���M�TC��Y���(m��2�;��Ѫw��a�1��o1�;��,�+VշX����f�T�i[��i���J%x��˪w��mi(`��.�3S�x��><���.n��������,˒�Թ��w�=����/��ǣ�7{�����^��#�D�Z�}���G�B����j�<�?6�P�`U$g)8e���*��66�`,	�d��^��w���~�)�g��~-SiW��.�8T���
"}}��\��7�C�g9�5'}`��/o��{��r0����x>$�}��-�G� ����5�i=ל�@`W`.�ml�ٚ3�k$�<G��&"�Ű�+,`kl避���R��3σ�g�<��T�bi<�����M����q�>n���D7�F����$pe�$��v�L�D�8f�s*ٳ0ğ��"W��9ߐ�G2�^Y����9��|1t�_a��":�4�@N�I3�8m��Z�H��{lJ�ر����AN9;&�<��MJ��l�u�`��W'��|�z&g"U�09Z4�և�z5����9�^E�6��ڰQ��oNy^C����~%��5���[�W;ϟU��1~'�ES���wjc*x�ة�ĘJy�#�BJ*iD���Zm��l#���q�&B!M�h.�ҭ� ��e���DQ��"j�:��
�l�:(�C/�,Tg��Vͩ�L7_��u5u�@,`����{�J���e?����v�ޝ�2ߞ�0���2כ���C�of'{��/��|�{Uu�?i������Ԥ0qV_��=f6��h��Glf5��#F�M��%N�m��&�U}�t��ŰB2�hXV׮O��V���2ORc"�n]�P.mî�-ƾE�"!a}o+��A䌠ٖ�����3x�*6�lM�V,�?���f�I|3)�),�13e��*�����0;��=?"p>��(WfvitQ�׆���Unm�$���<x���	�����-y�$�i?�����w��ne�{�#��]��06�.�7L�s�����=�����`rIm۔dl��`�7Ӯ=�{�I��lz`�͝x�'����}����ζ�9��$T/�`jM�5�y�P��a�6 ����-��ٖ</�a��2�
k�G��0���I���a�H�a����=�~�m���{��-y�E�a,c���!8#�	OOy��s�x?<��^�XJ�-��Q�oQz�"���=������;�2��RD��;V���ӗ�'�͉!��<?�p2��%��1����?�d�s91K`*�l�Ǒ�5ۊ�5rlމ������8�m�s9&�,A�!������=D⬒��ƹ��W�h�"�t��_E{��W|�� <�lU�T���=�˕���dCC'�R*�k,�n��3�4u���@c9x���i�F��64� ���h��E�H! ��@���lz<�<v ��BL�F �  �D:6�����w�E<=��:1홏���pl�n�l{C��=���01��9�tCܦ�����+�b��@Gqd6��Dvk��"��B��Lb'��ҙO��oa�s`*;�dl�{f�m�����
]&��41�28?��ZW����-����^���s�l"O��&0�`W0��q��D���87�"�R�;��77�����b������F��޵�X�Yڥ�i����Z�UfI���K�{���ݪ�Tn���{IpE��7�7�L�{=�	�<�"���Yq�=H�܍����5��Z\T�����hgQ�	�L3���ҶW����]UKX_�]O�9�_m���X(ݾپ�ٶ<o��R��ed�lҨ��u�J��B��Q��0��ݷ�8J�����a�>��oo!�k��9
c"��Ul�
�K��i�~�:Zx^GaqD��힏N_�ϧ(,�9�0#T��x�G�$y~��2�}s�&���u/w��f��3^ׇ���?�y_��D���29�����ݧM{N���3EyĻ-g��s69~5���::S]\q���\K⹖;��0˛b�1�L���mg�J�P/�S��M��F��W[�5X������ �C�}�^�xf�ç�n�d�<�X�*CeFC���d3CoG���Qb֘�Z�۩y�3���x��s�Eb�{)q�߲w�=���c��
�<=is�	ҿR���Qĺ�/����[d�5��0��XW��1.?�4��[��Ia R�Ff��_!v���k@+�&�l��F��ūk�D��C��ٸ����X�~�����+(�E�������zn"mL}�Yc�5n��O��S�c�N�;lv����wХڻ}g{��[�6��el�}ω$8%')`��٦O=����K3�۱#�f�Zz�"�E��٣�!�W���X�T�����<E��V�ĭz�ܥc�m�P��s	�O��� ¬�Y�s��?�'x=鹊w�����P���*=��G��]fj����H<ݎ�R������4�s_W���o��
`&;K6��f��7�<�;�JH���B)�e�vtxs�;��Q��l/'=ͧ���2x�&���</�'|O���(�s�O���u����?@�0��w���c-��/uV'W�m6��x���&��_p�Q��vhY��}z�y�p\�`�sKva��O憬W��������U�'��D�L���خ>�����ǟO����#t�eӀ"w�d�RɹV<��2�8�muF�8[؏?o�o	E?1ۖ�&�^g!̅�a���"��?�r�Dd��P��$�L�V�;�O{��P8��,�D��A����j{؝8��_�g"L�.�������cr��EdV���]�(�Ї��8��¤�w�`���ñ�6���˥�`^�6��^��У��}ٙ�Qt�֌��_�0CW��aK�H�"�Z�_쵚���н$
��1oz��.b5װz��ε9t6`SH�&M����O����,a=�¦7�Y�����o��]�'���J�62�1��t��{�������^js�yա`"_��ܤRr9f��k6��л$�<C���'�/������m�H��3p�1�rx�Po���^�mg�5�`(�W;�B��r���3HC��_ �jT�_���|���SH#\��(��;������s��Z�-"�/��Y;�y%�i��."NӸM���y��yύ��c�<FA�"CsqBs3�/�\KC'b��؞����Q�L�Wj��F2U��$��q��ܯ�f�?���e�� /B�"�v�X�b������CָѺ�-�V}�uNݷ�<t$x G���Lm��DN�?��Ѓ����u$xg�i��5๏7d��6��e���0;y����|H���H5w��ϗS�������9�	X�;��������l����=S��znb5������*n����c��c\��4�d$�p��l;�o����;(�z_�1�}6R��$�-����?�f H0��{n�c'�Yz��1�H�X4-��&�W�[S�7}&�,l����NKY3�Ќ>�Ke=x����xv��a�M>f.��� �Em�4<5Co-xA�� ��fl��sl�^-gϨI���kYqC����I�/-�Ӽ>B~'��ɒ^��SLxr�0!*�<2K�l���Z�=�+�8@�mo6��58���?��y,ߓ�9.*`*m����a��=�]>�4L>RfA�u�E���'v]���V-�c�����'X�=u{�$�D�n儍fkc(r�����86�f9��4�l;C�cIDt�g*�����R���P�>�)����b�f�w�AB�j���U	s�����ݡx�ߍ`*�UnJ�R�D=ጣ���r/ҳ\�,oR���3����s�љ��q4���F�b�]��gin�L��	۾>,���,��2]����oOZgO��>z�evW�L�}�>a�/�DS�	�/b��E�f�����|��K=��l�w�{MNc{�4m�T�ؼ�����S�zd��5vq]˛���b��"�i��%z#>�u^����L�ˬ˻f�X�7L����Ʈ�L���C\7ִ|�����|���E�y���9�A��<�g�ş���Y&�^7�>�y����"�O(�N"�C��ʿ��tL�|)2�`�)<S&�(��D���r���G�0�bs�&>������
<�%�5��p�nv��}�l�L0�g2��$�gF�%���?���y�ZUC�)fqR�Ȝ��]r����H݁wӨ�[=N���C�ؚ��<2����J~��F����&�m��Y����7�Ÿ��5�M�P�E9���}��҅�#�n��y��>�<׫p!�A��NU��~�w�9d�K�T��6!�۪w��o��ҡ�5W����O�E�������Vւ�������fT=l����#1��k�UAk��(֏�/m+���1O�#�n�q�����>O~�r�c��
s�lǒ��x�my�wzPɡo�%A���BŊy�I�%������ %f��\p����i���?~� x�I�.N�ӣ�J��{N7;�h"��jXlF��{���0�iB���4�dd"��W���0Cg't{�`����� O7>t�"�"\)Uf�\�Wn�� ��;&�
^�i&=q��醇�1�X^��25ԩkiN�<t~	�8���̑��&��M�=��%
�e����\����Y2x�8����ل�ϫ���/��S����o��o�_[��      �   �   x�U�Kn� @��0�@��ܥ��K��s�J�t���1��
K~�Hie̏YR(e���s~E�3���Z�L
畽ra�����dv��q�Ή����cLaco�q�>#��� �g��`LK m:�1e\�'��%Q�mű��詣G[{@���k�B_��vK�c��ۄ��?#�J�~t�9[�6�.��V�l���Ӗ�0���';[�D�O��#v�~7������7(@��      �   j  x���Kn�0D��)�1�Ϳ�2 ����~�� ����"ɉ{���z������Ʒ>z[WH��~B��	�D�@��O��:wmtm��{D�zV�oJ4�5ݛ3�&�bZ۸}� )1�Xe��r�)�:�"@c���]h�0��-����v�5��W�XHt&�Cz����.�i�K/�Ba[J~��t}��K-2B-�E�v���>�5�?�ER�zA�4��чeeF&�k��@�@����fk������q!t�4n���W����T���ng2��VH����=��T�	E?Q@f�5tc�FJ�e����}j�3}��?6a��#��t�%ɀ۪�}x�,RQYX����XrɀMJ���}�J��}Ԫ��͔������.�d"�e�A��Br��9�5~��՜_:�!eJ�KH�]RH�^S�hY~�[��Ôj���g~q�]�1)�a#����ƤV���jps��q %'7�~pK� $�\���SO7i���$'zW�5�u�ru�[9��!z�4/C��S�϶�.]e���.�HR��P���/���r8�8q�&�%�>jd���}m�hMc�xܐ����~����ð#Q�_��x8�EF(      �   
  x���n�0  �g��� �-�
o� �	��Yb�Z�E#���s�H���1��S���*�������gsN��r��]�,�5����@nx�H�M�z61ց�8�pU�Ia����$�3H�w�k�܇�Єm��C{�I��](�>&Tծ$s��%�9���{�����[>
7�*3���VD5J�����	���^��8|P(��yї4N5�IyҮE���ʋ�Y��Ƥ��hו�$�!��
�
�"���b�P����E� ��\Y      �      x������ � �      �      x������ � �      �   �   x����
�0���)��Kl��f�J�
�\�0�8�j����Iq�d�w��)�P�&����{"�0`4�2aS�q:�|�� yS�o#:}3�^��9�j�EO��%�F9�
8e�
B)�J�������j7�9d��/�9�덕�gɯ�����i
�Ǉ�'�D��#v�-꣸�H>��f�8��3�QH۴�m��s7���z��~E�Đ�3      �   ]   x�3��,M��H��,�4202�5��52P04�25�2��34416��50�2�t�,�/J�L$N��sb1~�FF�Ɔ �����9%�ED)����� 2�(e      �   �   x���?
�0���)�@C��i�n��NN.Q�b1u�V����v.������jhS��z8�X1[q�C�(�0A�Rj�� 
���k�',��B�D�|�Hg��O�+X�B1a���� 5����%,[.����5�f�k�E��%��p����|�i��cdؼ�B	!F�[f      �   ^   x�3��M,N.�����,�4202�5��52P04�25�2��315053�50�2�tK�M�#F�1�g^JjZf^f
�b3+# 2ҳ06�45)����� ���      �   �   x��α
�0@�9�
 ��b�&�ҥ�ҭ�+vR#���H���˵�=w�m,2��@($4�5ʔ�F4� �M��֡�C�w�i\�H>��ћ������+?���㓎��>-Ӽ���Fc7,wL��믾���7��F�      �   �   x����N� �u��@�*e��c�.ԸrsSH�����<��IM�?����"��F��tNf�&���bJ,���N�:�JI��f5a+{��}���]�!E��yɅX��w
�ݶ�y��.�A[��ä7�\ݛ�ho���-Ƃ�3�W�i�����-Sn����G�!�6�!��l�<��Q;@��*�~��X,�u�{p�V�ܑ2޳����q9Ǧ�׊�ߥ� ��;�ŧ�}7�ں���R�*      �   �   x�3�t.M�+IT*-�,�4202�5��52P04�20�2��32654��50�2�)�,.Iĥ��������<%U�1#��(��C�g��L +�SCC��L�:2RKS�\sR�K�o��L��F��b���� ��@      �   �  x���Ko�0���W�`�b����i���&mBCۨ&����@��׏Q�QYT�l��s��P��LC���̽�1h�����nL/�c��S8e��x]W�8��g����r�.���M��^��M�:5��L�
>�>%.���PP�0ԡ}�2�u٠֘�[�?#c�h ��+B&B�X����k�C�/��P���f_ge�7�F@2PC�섳�CH-=�bFӸ��]?=��ߜ���I:�o��m;9��۶��O�'uw?��p����)�	�Ь��E�Fͮ�Pb:�N�C��Y�6�� �aM�ϔ���R���P!����?2�����I,��V��EBjƁ) -�M_�U���(7ٸ���a�m-���Ѣ~4@�JV���g�8�?g㩺      �      x�3�4�4�2�4�44����� �:      �      x�3�4�4�2�B�=... 
      �   *   x��9 0��&soЄ?�X�R��|Ѿ?�_�J�|l$      �      x������ � �      �      x�}ZKs�F>ÿ���`���HS��D�����^F$D�����s�!�����Ƕ���ڪ�#v��ϯ{Fd�`�m�W]^ֻ�_mWl�{�Qpy�k�7�6�����-6E]�-r�4��vyU�M�U����|S�%Ρ`D4n��ﺄ�A����y.ں	W��������㟛
/��k�=�v��y40�e��zSW�o��x����J�!c��a-8��MO��	���])Z�o�<K��QVxss���4X�'$�MSo�ͦ�m[�\[a�F�F��uD��z����Ɍ}l�kˍ���K�*6���/�?
���+M}8~o�����g�D���x
��9�G��ufT���k��I��Sz2#����)����,��2�
�I�0��1bƸ�A��r"�!{�ښ�9�U����{U���!\8|_Ir�����
�+M�9����$^x����,���M^��Ɓ�$X�|x_T@lTW<�O΂u�Q���UV�jó���N��R;;S�m����Ɂxv�����_�["��h��ld�׏��*�=���uS��h���Jf&bs{��wx.!q�@=�9�$�J�z!��Ծ���<IpS��\KOx�zU�)��<�^V[��&�bj�, 	��gn�KѤr�-�r�E�Fƃ���Ƶ�wL�WxX�2��˱~���IdMf�Y���3���wN��x��>�X�U�M�w�)�'D��[�lu�i��Z��$�����q�`�ì��Ez2� ǘ��!'���4�ɛV-99M�Z6�U�Ð���k�#��!�9��=��]�3-��E�}d�D��U~���,4t�������M���"�����mAap� BX�K)�}�cW��u��Ֆ�Cl��_�JZ�X&�_��4Y<���j����:t}c)KX8�.�
š�	�U�E2h�ɟ�v��Q��E��H��l\@�T�Rp�E~2��w}���
��]��113|�M���h����@gMx�+K��|P 8���B4c�g��E@�ӛXhX�dQ�9�}u��Yk|D���M��FT^S�Er�^��(�AK��[�X7���|��޲�@�������r��r�aG����C.SHA��1�h�=Io�e<�z_ֿ���F��(w�xΦ��=?'b�4�g��%֫�7�#�s��PJ��y���m�5�=]@ƅ�І�� ��Ȉ����K1+�*»������b�܊\����8X�u���	@��sQ�N	���#��!2��ӥz�1�����<��pj�.�t����g_�7&A�Y��`�11h���[�r E�w��`� �]s	��¥��KrD I�3a9� �QO�w@&���:@�+��(�p������)��)� i>tN�j��~�T�V�$��ӵ܌~!��H��#���̴P�z�t���S��N�F<�@��_1�����&F���{Uђ����3��,��+(�!,��98� )��b~3���!q���Ĭ'�Dg�Z}VO����2D���M�.F���Y��z��(��5E������|iKyB5`إ��9�
�"��zLt� <-��!l>����A�/�j@c%���c��-���DHK�d0;�U��f$��m��+�Jc,,ܒ�ǐV��']&D��� G|��R�C��R&�g^V�����`�[�7k7�c�!�}��Lm�XD#����^�7n�E���x�\se%�Y"0a���FC�4�Ħ��嗮��F�Qz�J�g��Q��u����;��0�}�*.L��\����������b���6�ץ��X�b���tv75�ZG�.��� p�}m��X��zS!B���|u���9PF-w��',}��!��
>�\��ݕ^<\�yl!��Ӄ��;.�
�Oe�K�T^��*��LO@z-�e���B�M�R��䳡�#��q��汨4#��Œ��|�P<�X���*J���4E��1������ŧ�-m<���f	��J�5=�xF����a3�g�ko�p&y�I�mp5��4�Ͻ8�ܔZg����U����6+�mNeC���:q1�v�˻�o��y���:/?\�_�H�1;����?Z,N5e�n����i|~r�KN�`���4����'����)vl�̂ɌY�'�E�7!�v+6�i���i�+���=�B�>a���V>��¸�W� װtn��s]�n�Z�^�q鸼����@���1��b�+,�)
�$Y�3mGY�5���&?��Sc.(�����;9��̲֎�_ 2�{��N��7����9\����g���c�V��x�w&���j�L����j�7>�/��6Ġ��;�<#�Cy]����AW~Y�]]/��z������b����Q����WC*2�]�G�ߎ7��8�����B�&y	1d�f@-1j����xe��M��{ae�*���H+1��,Fg��/��mj(j�+xL,�.b�:��C�li��ʃ�k�����P~�$}qel���Q���eh+�8��SB��ܶk��K���e@4v��4N�bI�ħHi��!����џ�A3���(��t�F�f&�8]� ���Cb����6�
s� ��mo�S� �6�xѷ1�m��*,s�f�E@q����k ��gB�n�C���2/��&��� ��z����?�"b��j�����ԋ!΃�^aH�A�H�qU~�U#��(��Ѷq#��]�]#���Pcz�)�@���@����m<���`
cS�5v��0����)���һ�Hh�/�)��Q�B�e
0�s@��B�����U�Q/��c���x:YB`�Jc�B���~���[tib&N�kp!���-^@ �&>��:z��`��T��-�3
��^a�A��ZvQm������GPŬ2���)�$�Ⱥ��+΃�}�)���9�Ә4�ho{�B.��>��:ޥ��2 �ޯ?�џ���.>�ş-����������R��o�+'�PT��#���4�Hw^M!�/(�
��w1�$0��d���MO]��@]T�	}�9s������k0���� G����+=�Ȁ���^zB�����B)�
s�?dP��EL,��b�s���f�w���5TLw��~��^��௓�%1������u�P>���/@in��cYT;��>�*�
�V���>�z�cI�	c��X��pdc N��5|/�Mn��t�I@,�i�->��st�s��?$ENAT�5��m���F5]��c������H�;J�G��  c�����CMF�}��67��q�9���ޓ糽�3'ʷ���W�)g�ȸ��@���b]��-.b�>��e�H�2���Wx�g$���#i5&�Nm(ڔ�9'v6:�M{2�����2R�(�Wh0��
�)@�@������]��G5W�̌���GW�z���,u��S7�#�r����#Rd�r�0/�br7(����C ��?w�9"H��6`?�4Zp�v��i�?�Q	hvp�z�S�A(x�O���K��7ѸƄ��q�v�����n�"�8��L����Z�4N�>	{�f�P]�yokl�.�褣#�*8žu�q����͑xV�#�~�+��Gx�%�"��-�h1JT|�lT�Sݮ{�2v׏-2k3_<�һ�/�ŀ�W� ���b����t� ��Hl��l�Ɗ����,�z����0w4RD�=���0͟���N����bԬ���	?�i�0σ�n��`%�ߍ���QT���S���7��H�^21�,�M �棘0b�ZƾE�_y@�[�xKwRJ�5;�\1z!!F�����~XC�H&X�vj(+$��U�s'�83��� m��'�V��VvMNV�������X���	j�t�����d=��T3ȹ8���X2�a�' ��Tw�ݏ�@��������%��aU��Mq��R����m�Ī�|Tǿ)��4�N�[x��d�7� oϵ�� �   =����6�?�m��<8�XF<<~��0d��w���3{&,ez��c�J�r>A[N���_������%M@il]��-F���!�wq��(��=���2F�\i#�-KL�=���]	�*~����3)��m����|�z��͛�T��      �     x�UXMs��=o���O�GIk[J�dFvT��\�����@U�m��}����Vn�cy�{(W.*�3��~�E�����m���E���=D����hAɕ�Z�<���g%��y�.�C?:��޶�h_��yg���"~�Q�{��v�������L�6�y��Di���4ST�{���o[�6l}�L��̍m]�����1(�2ד���|+��v����s�Է�oM�Z�_mw�
jsZ�'Tɏ����ϗ/׸R����&��0��ὗW�n�͓m�w3e�ɣm7��Wf%̽?N�&ۦ��i��we���F���к1���/:��C��MO�H��e�{����vó?�>ݒҠ��--�D��-����H�����A�jk��OE�fҥV�mX�"IpM�j8����H\�ػ����JȰ�	���`��N΅8'f���ym�1+���^w�o�dn�02�ژ;,rv��X�۵����o��ڼp�G�0�c�P�ۊ%pI%ҧoN�E6Q�Q|�ϗ��B!�à�����1(^���r�2e{��7[�`G����Y����<�x�c��x�$j����>*��U?�_��Ol��S�6Ğ�![H����aO9��<����	I��aďSo�׭�%�B�1���� �z�?���_��)3�ss�-��䛠Ԛ�=�mV@�y��[<�~PB�N�).͛���5X�؂@��л�rs�y`2��^�_l���8��GG��BXZ��8�z�$��yQ"a�����O���@+��Q!V���}L��ץ��?1�& ��Z�Qypǘ�FN�݉�!D�M���B0�.�a���g᪭y;��L���6"H?}b�v]s�
��m)@�)�K��N`���rGa~�mc/{�rkɘ��[��:|bާ�VH�f:(�ȱaL/Yn./�d#�V�����h��^�%C����eҏJ�:N#}!*Q�p�LP.�B�U,N���k_bI��+R�^C��Md6�5����H�p�������0(Q!�z���M�􇟡��M>���	"�(fB��~��n$(�W広�>�nvi�z/|�ɶOe���4#�A ���h�/r�$*��e�	�Ǘ�٩��k��㝝V�1�H�̫؈3½�ɧQN�Ԇnڦh�FjC����D�s=ɁF
�0%�f��WX@"Z-8�ܼw� ��S����S��!����i ��Ώq��i�<��s4s�Y�uj�ć��D%]���=��]wv��&-��.�.���ӽ 1]�͛�N7�zc�gdD�.���>�o��n �@1��F3x�����u��"����ڇ=��[p��m��YA������bDPt���U6u.a�M�����hы�3��ʚC(p�j|��>a�N8w�`Է��˩'EӭMk�<Y�r��?:��p|0����U����
Rk�a�2PB11�ض�G�Ә.��*ZY��s�I�/�β�503��E��S.-S�,E�`�Z�슓+���D� �	���^˪�=���46+z�q�����}d�KXH[����(%g�|�Tx�ZO�����k��Z���-0���e#x#?A���)~�}VX��dt_�)A�8N���(��7�ra|�CDߣ,��&c�E�r�
���GU��J�O�_�Z��55�s������#3�=������RS\��������-�<�Wa�Vqf~s(�A\���\��a8`UW�V]��ʰ�=Ӟ�
$B/�m3ޓ3�`���SBp�&��zp��iғ�+0J�$��Aё�;�����<��Ɋ�0�G- ��:	BO}����a3�+�?X$d��\����_	�P��	B-�F^�ˤ��2}0Z27�'.Kn}�RW��H�h�����M�\K����q��d0���yLP
f=�GK�d*o�ʾ��7C��_#��@���ؖ��<��y셝4�A1�Ld
JfZUs�b�og��`-��oD��q���$�0�G��=n�Ҍ�q������9�	�l�ym�Nv	5�������E��Ѭ��G',�C�M������ʁ��3}���˃@0���E�����"0�Da��wD@�G���/�J�H�	+F�1(Dw��ꀔ�vԬ̨~}��q�y9(�����(��vCy�v�P��S"��ϗ�eJ$�4b��b��	��%�'�7J��?抟bov�q �۔lH��F�K�<O![/jQ�����D���(��S���Y��d�������z�Ln�QӬ^�2�KY�̭��r��!\>�ި������l��Ϫġ�E���>O
��	�MH>�J����u{ۛ�\�9au=dO c��^<
�`�p%��7/��vvh��bQ���X���|Q�o0lX+6�'th��dJ# �>q��DV-��BD08�$M"ckF6��+��w�,[�D0m���p�Y�
��#g RhlUc���*�g�� V/:%]v��� 
Hg�1v��i�bn�p2��2�̄h��������-?lE^� �0y*�q�s�^��P�?V���]���t���F��Z�'@t]�͈��l����.	��={{��._ɄSڢokB���������sLg숅����_GTs�t�������n�=R?\~df�	������|Xd"yh2�������b~���Qa�p��U�/��������6���2w*�'[@���e���)�>�/��H���E��r'��_],��j0�      �     x�u�Mn�0���)�,��H�,�5�ځQ��l&k��ɔ�\$������J��c 
$0|��I� Kl��*�C�`M+Jnoȸ�WfTrF˜�Y�I�;���+����4a,.#Ir2��:���(���)ۇ�B�t�-^\�s*A��y���Z��nt(�����^�Q�W���[���"�Y&iN8'������.�����9���Q&eI��$<%�m����_�̃��<
=�$W�}=�r��Ɲ�j�U>.�KX��9���,�r|,O�H�\հ��X�zU�5՞��7�o��p$�8,�նqӠn����"�4�i:�_� <kK;�����2���9�pYR�����֝��1zƎ�$!�2�q����ú}�e_��!�Y���96��^y�L��S*dqT� �h�f�o��r���͕cj�F`��`����Q�0)�>�o�MOƿ��EJ���I&�r���aӆ�*��;�����PV�s��|p���0I�\N��]��}��niE ����      �   �  x�uWKr�H]�O�Lؔ$�Yb�۞1m�0^L̦]B��!���Q���Ws��b�2KB�vo���RV~^�*|1�ӝ��P�u�V9�HL�.�Be?���:_�ˡ�[S�<S[�������5˂�Ӽ�]���P����MjU�xP{{�����t�Jc/-b�R�Mb��Y�4մ���)+����3J��|)����T))\q��|1Y�5vr~��'��T�p�3LʝNLk�Eg�$�IU�I�ᗎ�b~?����R!�Ĝ�
$eh*E��������J`����lP�v=���!���RP#�G��dT�P���W�-E�Q����;WΓ.-ɄJl�*U�����gg�Զ#�q�Ӝ����I�	�W�.1+̖{��w�]�`/K��&�:<r�P@vy�6E�$",�ac�3��]�f��<�&���T���7��I�I,f��x f�		R�U0vO��'nt	�U���8�	��,k:�4�9�Ϲ��hm��ı���JHr0 �eQ�٧	K�tze�����]�|�geRSx5�̤�ڢ_����2w�,D��Y��I'���@'%P���g��rݩ�]��*5+��U ��l1��>�,1.����d+�a(4�������t���+&(m�T5#Q�)��l��|��R���K��Te�k�1�e@�����"�7hh���J0��G&�?��͞婏L4�,E�X���gp�$Eg2���<U���DCA���8H��l�m?�!M��t-�C1�+�;��ڮ���/��*���Ԫ`�J�����,JQֻ]zp���d�>�j�2��@��ˡ��Xkn�5�U�6��a�+�ږb%Xr�SE%���S��"���3�B1x�g]����#�ʜ�� ��^6�t�3�%�����������Ι]:#���_%���m�������hKb��f4/�̞9��F��mnI2���Iީ��q��`������O�X}[�7�r��n��������N�/z�<_��>��}����u|�6g_��<=����eȃt|���y$��h�?��DW����M�K�C��+:Ad����u�؀
"�l���.�?��i}D���y�=�4א�ch��s��l4r jk��޶��6�t8Kȕ���+�q,?�%�9�#ހOJӤw�P���R-hO�ȁx��3�a\��I᷷"ndp:U��m��-��U@�,ӵqvw���8υt���û�ۊ�!�}78�BF+$C~O·H7wfU_���3�||I�u�7�	���
z�Qݶ��N���P��؎YN~������l�g�B��۫���6x�zbn;�`�OqR)"�~j�jKBX_�oN����s������k���R����Ҏ�/�1�T�Km�y�at����R�{�)�'��9`���%^�_j
��@�����}N�"�ǆY#�_^\\��X+?      �   �	  x��Y�r"G]'_��HP��cv�A�r;�MR�Pu�LV�<������e/z�?0�/��� 
�28䞉�����{�>�=71�Iz<�c�2:�Y�1ڕ,1�w7�Z��B�P$<��n��+�\
ڍ�;�L��*��?�~���̈������1Z��V�I�EYF��$����i����9�v.��G��Tj�r�Ћ|>�2t�/��<�".%&�湶f�z�lY���y��G/�rVj|3רi�Q��<���X�k�pj�6����d�L�1���vܖgHo0��{���g���,Wy	z��s�Y��#����yēLT�F,���ژ�1��l2Y~�N��ؚ뻝��Y��=ѐ��O���V�J��q�4U����t%Q�6���"ǟJy�I�H"J�Sz�r.��8?�영�~�ky:�\&�<�d�R�{�b���r_7f���2	^ӱF���'�$=���[����zuhG��=cž�q���@K3MC3�c�<�@��L�s��	yw<V�ǾBN�		���k�q�8:�X�y��6}3��emڅ��ٌ������+ڋs��B��nZZ�Z�:��-�$��:�����i�P ��U)���C ���g�����E�V�'-�!��zH$����SAa�������J�n�p
b��w2�ȏ6񙪿"z�HU�ӪT>]~�&�����A =�TG��,�f�L��q|'����e�%9�D�e�l�Ɩ���B.?��p��	%h(
_e��
�6��錽��@v�D��JGU=C|����t����aS�߱8d�=Q)ܪ �t�i�Y�)���z>�'�]]�L!|����e:!��U:7�6{�~Jml���Qx\�>B*RF/c�"�����!�����Ȣ4�ct]�W����GF��Y�^Ȁ��4z�)��h)璪&��F���">e�UU��n��2��~�oB^nT��|��S���i[!_�lp�5�+��^t�+h�3�;&�B�E�q�^�����Oi�h% � g��F�7����\9��&�ܡRp���۟�2F&��tժ w�m>Hw�d��:�H�1u�ϣ]Ilhș�-$^y��'��ȴP��c�<�<�i@�[�f���%��j�!K؜K� 0B��]��HA��*����3��|�m��H�A�3TV����z�~�'3�԰Ѳ	�mwßUC�^�Z���O��0!Α!�)K~ƤA�'����sX���Ab�X��ٚ������	�����	,Qdx�؁�j�����8oY�ԡ���я�5���q�';������zu�5��hA��Y�e�$d�o�q+�Mb�M�jL-ѹ�J��lܥ�m�����y�@8��3�@��`�@�}l���~�3ce��}���g5��q9���Ỳ5ǣ��Pޱ�z�v4�E��P{d�n�,ا��(u	�y�(�呌�Θ�
0�����Pϳ;^���#��S�;t�'xR����������g���K��'�j�j�0��c4j�UL�����l!ſ�9�n^0^K�(0ʸ�#��;���@>o_7�gJ*��1=���G���G0z�)�]�QG7۪���[�����h��\5+r��2@����t4�t�1^,��&ԫm�Zs���.��@�Ǝ�JbmY���{z\��Q����\��,Vn-�������]�%��"Dj絕0E$��1zn�ˁ�c�a�h � <=��]~Rd��]1z���P�]L�|�6Z>:�&?�0�(���+]�Nm1�=����=e�� S���#g<U�OÜ�ꠛo+�j�����v�:$��N���x�	�����Ʊo�|�>���v���Nqŵ��o?���5����ޮ[��`DR,���������X��4�����ߔeu�6o����r	d?Z70u��4:��I w��y���C����yy'X��k����DZ�c��)��@��d����E����s=�wTr�&��hsi#LS>[O�|�_�RYQ������0�։�D��{:L}'u��Դ�yU`�~p@�<9����p�T��-u�ꕈ�A�c:��mO͇*Tʲz尶�\Y���:�T���[�I���h=�7[O�ڦ���� � �4A�8�m�\c|n�.X�Zn�@�C���#h�9��ԝ����i�s��H�b$���s�U�h�]�'��P��m���|��U͍�)E�o:���G{�Y�*�叿~���E�m����}]���_x��z�׾.z��Emp��v�/�k�k����� ��d�uz菿�E�8;c��'yB��'�E:�Ms
��(�֢n�К.��S��k(Z�tB���D�+x҂I��4���:q�����	v�s��ob�5:�a���kx�-���i��nY~\d&ksڴ�� �8.q���n�x
�b��k=�_%eT��D�^|��YJs�6q�}[I	4u�2���(�#�x�.����Nk�Z��:GR      �   (  x�%Rˎ�0<S_�/("���t��E�6���&��W�l?����C����P���8,7�ކ���SMG��[�t��5�'�r��{�QZn>%:r��� �jj�F�縢���@�VMI�ٝ�/�	j:���ɐ�T���쐇V����!���ݕ{~���״�VssK�@d���-�d������h+U]�ɚ�8W��Fڑ�h��o� ��]�3>���pa(�fL	M��+vc��U���8F�$Wmh�2.�>�/W�ϳI���׬T�b�y$@C��}��$j��PE(y��Uh�y�h6����'qe����w��e���]޼$Z:���'�U��n�]˛�Z8 ��Z%�I�%H\���ԪR��34�EI��0v�Z�.җ�;�����_l{�J|(�S.o�$Z�"G&7�3S�}5�3DV��8Zy�3]:��#/�1�i<���r�Zi(������O3�T��\���;�/,���N��Hq��8	�	����q\bu8�zH+M{LI��R����      �   �   x�UP=R1��N���1�
%�P���8V6�3�	��M����b+o`.f��I��}�/�~��Ʀo/޴��;M�@Ų�
�$��Y�$g׃˅� vi�8���k;n���5�Ҵ��s�:+d�v
�˓�-�M��d�E	;�r��94��<^���PQ�<��.��5��@�����f%��co{�i�>B� ��.}���7��$��s�>����~���     