PGDMP     9            	        y            MedCard    13.2    13.2 ?   -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            0           1262    16779    MedCard    DATABASE     f   CREATE DATABASE "MedCard" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "MedCard";
                postgres    false            ?            1259    17090    allergy    TABLE     Y   CREATE TABLE public.allergy (
    id integer NOT NULL,
    name_allergy text NOT NULL
);
    DROP TABLE public.allergy;
       public         heap    admin    false            ?            1259    17088    allergy_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.allergy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.allergy_id_seq;
       public          admin    false    240            1           0    0    allergy_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.allergy_id_seq OWNED BY public.allergy.id;
          public          admin    false    239            ?            1259    16811 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    admin    false            ?            1259    16809    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          admin    false    207            2           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          admin    false    206            ?            1259    16821    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    admin    false            ?            1259    16819    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          admin    false    209            3           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          admin    false    208            ?            1259    16803    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    admin    false            ?            1259    16801    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          admin    false    205            4           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          admin    false    204            ?            1259    16829 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    admin    false            ?            1259    16839    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    admin    false            ?            1259    16837    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          admin    false    213            5           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          admin    false    212            ?            1259    16827    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          admin    false    211            6           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          admin    false    210            ?            1259    16847    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    admin    false            ?            1259    16845 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          admin    false    215            7           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          admin    false    214            ?            1259    17021 
   department    TABLE     q   CREATE TABLE public.department (
    id integer NOT NULL,
    name_department character varying(100) NOT NULL
);
    DROP TABLE public.department;
       public         heap    admin    false            ?            1259    17019    department_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.department_id_seq;
       public          admin    false    228            8           0    0    department_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.department_id_seq OWNED BY public.department.id;
          public          admin    false    227            ?            1259    17101 	   diagnosis    TABLE     ]   CREATE TABLE public.diagnosis (
    id integer NOT NULL,
    name_diagnosis text NOT NULL
);
    DROP TABLE public.diagnosis;
       public         heap    admin    false            ?            1259    17099    diagnosis_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.diagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.diagnosis_id_seq;
       public          admin    false    242            9           0    0    diagnosis_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.diagnosis_id_seq OWNED BY public.diagnosis.id;
          public          admin    false    241            ?            1259    16907    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
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
       public         heap    admin    false            ?            1259    16905    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          admin    false    217            :           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          admin    false    216            ?            1259    16793    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    admin    false            ?            1259    16791    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          admin    false    203            ;           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          admin    false    202            ?            1259    16782    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    admin    false            ?            1259    16780    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          admin    false    201            <           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          admin    false    200            ?            1259    16989    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    admin    false            ?            1259    17037    doctor    TABLE     ?   CREATE TABLE public.doctor (
    id integer NOT NULL,
    doctors_name character varying(100) NOT NULL,
    office character varying(20) NOT NULL,
    id_department_id integer NOT NULL,
    id_position_id integer NOT NULL
);
    DROP TABLE public.doctor;
       public         heap    admin    false            
           1259    17664    doctor_department    TABLE     x   CREATE TABLE public.doctor_department (
    id integer NOT NULL,
    name_department character varying(100) NOT NULL
);
 %   DROP TABLE public.doctor_department;
       public         heap    admin    false            	           1259    17662    doctor_department_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.doctor_department_id_seq;
       public          admin    false    266            =           0    0    doctor_department_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.doctor_department_id_seq OWNED BY public.doctor_department.id;
          public          admin    false    265                       1259    17672    doctor_doctor    TABLE     ?   CREATE TABLE public.doctor_doctor (
    id integer NOT NULL,
    doctors_name character varying(100) NOT NULL,
    id_position_id integer NOT NULL,
    office character varying(20) NOT NULL,
    id_department_id integer NOT NULL
);
 !   DROP TABLE public.doctor_doctor;
       public         heap    admin    false                       1259    17670    doctor_doctor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.doctor_doctor_id_seq;
       public          admin    false    268            >           0    0    doctor_doctor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.doctor_doctor_id_seq OWNED BY public.doctor_doctor.id;
          public          admin    false    267            ?            1259    17035    doctor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.doctor_id_seq;
       public          admin    false    232            ?           0    0    doctor_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.doctor_id_seq OWNED BY public.doctor.id;
          public          admin    false    231                       1259    17656    doctor_position    TABLE     t   CREATE TABLE public.doctor_position (
    id integer NOT NULL,
    name_position character varying(200) NOT NULL
);
 #   DROP TABLE public.doctor_position;
       public         heap    admin    false                       1259    17654    doctor_position_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.doctor_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.doctor_position_id_seq;
       public          admin    false    264            @           0    0    doctor_position_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.doctor_position_id_seq OWNED BY public.doctor_position.id;
          public          admin    false    263            ?            1259    17112    hospital_card    TABLE     A  CREATE TABLE public.hospital_card (
    id integer NOT NULL,
    arrival_date timestamp with time zone NOT NULL,
    discharge_date timestamp with time zone NOT NULL,
    hospitalization_type text NOT NULL,
    chamber character varying(50) NOT NULL,
    department_id integer NOT NULL,
    doctor_id integer NOT NULL
);
 !   DROP TABLE public.hospital_card;
       public         heap    admin    false            ?            1259    17110    hospital_card_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.hospital_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.hospital_card_id_seq;
       public          admin    false    244            A           0    0    hospital_card_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.hospital_card_id_seq OWNED BY public.hospital_card.id;
          public          admin    false    243                       1259    17292    hospital_service    TABLE     ?   CREATE TABLE public.hospital_service (
    id integer NOT NULL,
    rec_date timestamp with time zone NOT NULL,
    comment text NOT NULL,
    doctor_id integer NOT NULL,
    hospital_card_id integer NOT NULL,
    service_id integer NOT NULL
);
 $   DROP TABLE public.hospital_service;
       public         heap    admin    false                       1259    17290    hospital_service_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.hospital_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.hospital_service_id_seq;
       public          admin    false    262            B           0    0    hospital_service_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.hospital_service_id_seq OWNED BY public.hospital_service.id;
          public          admin    false    261            ?            1259    16940    otp_static_staticdevice    TABLE     ?  CREATE TABLE public.otp_static_staticdevice (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    confirmed boolean NOT NULL,
    user_id integer NOT NULL,
    throttling_failure_count integer NOT NULL,
    throttling_failure_timestamp timestamp with time zone,
    CONSTRAINT otp_static_staticdevice_throttling_failure_count_check CHECK ((throttling_failure_count >= 0))
);
 +   DROP TABLE public.otp_static_staticdevice;
       public         heap    admin    false            ?            1259    16938    otp_static_staticdevice_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.otp_static_staticdevice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.otp_static_staticdevice_id_seq;
       public          admin    false    219            C           0    0    otp_static_staticdevice_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.otp_static_staticdevice_id_seq OWNED BY public.otp_static_staticdevice.id;
          public          admin    false    218            ?            1259    16948    otp_static_statictoken    TABLE     ?   CREATE TABLE public.otp_static_statictoken (
    id integer NOT NULL,
    token character varying(16) NOT NULL,
    device_id integer NOT NULL
);
 *   DROP TABLE public.otp_static_statictoken;
       public         heap    admin    false            ?            1259    16946    otp_static_statictoken_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.otp_static_statictoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.otp_static_statictoken_id_seq;
       public          admin    false    221            D           0    0    otp_static_statictoken_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.otp_static_statictoken_id_seq OWNED BY public.otp_static_statictoken.id;
          public          admin    false    220            ?            1259    16972    otp_totp_totpdevice    TABLE     ,  CREATE TABLE public.otp_totp_totpdevice (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    confirmed boolean NOT NULL,
    key character varying(80) NOT NULL,
    step smallint NOT NULL,
    t0 bigint NOT NULL,
    digits smallint NOT NULL,
    tolerance smallint NOT NULL,
    drift smallint NOT NULL,
    last_t bigint NOT NULL,
    user_id integer NOT NULL,
    throttling_failure_count integer NOT NULL,
    throttling_failure_timestamp timestamp with time zone,
    CONSTRAINT otp_totp_totpdevice_digits_check CHECK ((digits >= 0)),
    CONSTRAINT otp_totp_totpdevice_step_check CHECK ((step >= 0)),
    CONSTRAINT otp_totp_totpdevice_throttling_failure_count_check CHECK ((throttling_failure_count >= 0)),
    CONSTRAINT otp_totp_totpdevice_tolerance_check CHECK ((tolerance >= 0))
);
 '   DROP TABLE public.otp_totp_totpdevice;
       public         heap    admin    false            ?            1259    16970    otp_totp_totpdevice_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.otp_totp_totpdevice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.otp_totp_totpdevice_id_seq;
       public          admin    false    223            E           0    0    otp_totp_totpdevice_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.otp_totp_totpdevice_id_seq OWNED BY public.otp_totp_totpdevice.id;
          public          admin    false    222            ?            1259    17057    patient    TABLE     ?  CREATE TABLE public.patient (
    id integer NOT NULL,
    patient_surname character varying(50) NOT NULL,
    patient_name character varying(50) NOT NULL,
    patient_patronymic character varying(50) NOT NULL,
    date_of_birth timestamp with time zone NOT NULL,
    home_address character varying(100) NOT NULL,
    work_place character varying(50) NOT NULL,
    work_position character varying(30) NOT NULL,
    blood_type character varying(10) NOT NULL,
    phone_number character varying(50) NOT NULL
);
    DROP TABLE public.patient;
       public         heap    admin    false            ?            1259    17065    patient_allergy    TABLE     ?   CREATE TABLE public.patient_allergy (
    id integer NOT NULL,
    comment text NOT NULL,
    allergy_id integer NOT NULL,
    patient_id integer NOT NULL
);
 #   DROP TABLE public.patient_allergy;
       public         heap    admin    false            ?            1259    17063    patient_allergy_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.patient_allergy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.patient_allergy_id_seq;
       public          admin    false    236            F           0    0    patient_allergy_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.patient_allergy_id_seq OWNED BY public.patient_allergy.id;
          public          admin    false    235            ?            1259    17055    patient_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.patient_id_seq;
       public          admin    false    234            G           0    0    patient_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.patient_id_seq OWNED BY public.patient.id;
          public          admin    false    233            ?            1259    17076    patient_vaccination    TABLE     ?   CREATE TABLE public.patient_vaccination (
    id integer NOT NULL,
    date_vaccination timestamp with time zone NOT NULL,
    patient_id integer NOT NULL,
    vaccination_id integer NOT NULL
);
 '   DROP TABLE public.patient_vaccination;
       public         heap    admin    false            ?            1259    17074    patient_vaccination_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.patient_vaccination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.patient_vaccination_id_seq;
       public          admin    false    238            H           0    0    patient_vaccination_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.patient_vaccination_id_seq OWNED BY public.patient_vaccination.id;
          public          admin    false    237            ?            1259    17029    position    TABLE     o   CREATE TABLE public."position" (
    id integer NOT NULL,
    name_position character varying(200) NOT NULL
);
    DROP TABLE public."position";
       public         heap    admin    false            ?            1259    17156    position_diagnosis    TABLE     ?   CREATE TABLE public.position_diagnosis (
    id integer NOT NULL,
    diagnosis_id integer NOT NULL,
    position_id integer NOT NULL
);
 &   DROP TABLE public.position_diagnosis;
       public         heap    admin    false            ?            1259    17154    position_diagnosis_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.position_diagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.position_diagnosis_id_seq;
       public          admin    false    252            I           0    0    position_diagnosis_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.position_diagnosis_id_seq OWNED BY public.position_diagnosis.id;
          public          admin    false    251            ?            1259    17027    position_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.position_id_seq;
       public          admin    false    230            J           0    0    position_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.position_id_seq OWNED BY public."position".id;
          public          admin    false    229                       1259    17284    position_service    TABLE     ?   CREATE TABLE public.position_service (
    id integer NOT NULL,
    position_id integer NOT NULL,
    service_id integer NOT NULL
);
 $   DROP TABLE public.position_service;
       public         heap    admin    false                       1259    17282    position_service_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.position_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.position_service_id_seq;
       public          admin    false    260            K           0    0    position_service_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.position_service_id_seq OWNED BY public.position_service.id;
          public          admin    false    259            ?            1259    17123    record    TABLE     ?   CREATE TABLE public.record (
    id integer NOT NULL,
    date_record timestamp with time zone NOT NULL,
    lamentation text NOT NULL,
    doctor_id integer NOT NULL,
    hospital_card_id integer NOT NULL,
    patient_id integer NOT NULL
);
    DROP TABLE public.record;
       public         heap    admin    false                       1259    17721    record_allergy    TABLE     `   CREATE TABLE public.record_allergy (
    id integer NOT NULL,
    name_allergy text NOT NULL
);
 "   DROP TABLE public.record_allergy;
       public         heap    admin    false                       1259    17719    record_allergy_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.record_allergy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.record_allergy_id_seq;
       public          admin    false    278            L           0    0    record_allergy_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.record_allergy_id_seq OWNED BY public.record_allergy.id;
          public          admin    false    277            ?            1259    17145    record_diagnosis    TABLE     ?   CREATE TABLE public.record_diagnosis (
    id integer NOT NULL,
    comment text NOT NULL,
    diagnosis_id integer NOT NULL,
    doctor_id integer NOT NULL,
    record_id integer NOT NULL
);
 $   DROP TABLE public.record_diagnosis;
       public         heap    admin    false            ?            1259    17143    record_diagnosis_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.record_diagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.record_diagnosis_id_seq;
       public          admin    false    250            M           0    0    record_diagnosis_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.record_diagnosis_id_seq OWNED BY public.record_diagnosis.id;
          public          admin    false    249                       1259    17743    record_hospitalcard    TABLE     G  CREATE TABLE public.record_hospitalcard (
    id integer NOT NULL,
    doctor_id integer NOT NULL,
    arrival_date timestamp with time zone NOT NULL,
    discharge_date timestamp with time zone NOT NULL,
    hospitalization_type text NOT NULL,
    department_id integer NOT NULL,
    chamber character varying(50) NOT NULL
);
 '   DROP TABLE public.record_hospitalcard;
       public         heap    admin    false                       1259    17741    record_hospitalcard_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.record_hospitalcard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.record_hospitalcard_id_seq;
       public          admin    false    282            N           0    0    record_hospitalcard_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.record_hospitalcard_id_seq OWNED BY public.record_hospitalcard.id;
          public          admin    false    281            ?            1259    17164    record_hospitalcardrecord    TABLE     ?   CREATE TABLE public.record_hospitalcardrecord (
    id integer NOT NULL,
    hospital_card_id integer NOT NULL,
    record_id integer NOT NULL
);
 -   DROP TABLE public.record_hospitalcardrecord;
       public         heap    admin    false            ?            1259    17162     record_hospitalcardrecord_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.record_hospitalcardrecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.record_hospitalcardrecord_id_seq;
       public          admin    false    254            O           0    0     record_hospitalcardrecord_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.record_hospitalcardrecord_id_seq OWNED BY public.record_hospitalcardrecord.id;
          public          admin    false    253            ?            1259    17121    record_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.record_id_seq;
       public          admin    false    246            P           0    0    record_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.record_id_seq OWNED BY public.record.id;
          public          admin    false    245                        1259    17776    record_positiondiagnosis    TABLE     ?   CREATE TABLE public.record_positiondiagnosis (
    id integer NOT NULL,
    position_id integer NOT NULL,
    diagnosis_id integer NOT NULL
);
 ,   DROP TABLE public.record_positiondiagnosis;
       public         heap    admin    false                       1259    17774    record_positiondiagnosis_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.record_positiondiagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.record_positiondiagnosis_id_seq;
       public          admin    false    288            Q           0    0    record_positiondiagnosis_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.record_positiondiagnosis_id_seq OWNED BY public.record_positiondiagnosis.id;
          public          admin    false    287                       1259    17754    record_record    TABLE     ?   CREATE TABLE public.record_record (
    id integer NOT NULL,
    patient_id integer NOT NULL,
    date_record timestamp with time zone NOT NULL,
    doctor_id integer NOT NULL,
    lamentation text NOT NULL,
    hospital_card_id integer NOT NULL
);
 !   DROP TABLE public.record_record;
       public         heap    admin    false                       1259    17752    record_record_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.record_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.record_record_id_seq;
       public          admin    false    284            R           0    0    record_record_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.record_record_id_seq OWNED BY public.record_record.id;
          public          admin    false    283                       1259    17765    record_recorddiagnosis    TABLE     ?   CREATE TABLE public.record_recorddiagnosis (
    id integer NOT NULL,
    record_id integer NOT NULL,
    diagnosis_id integer NOT NULL,
    doctor_id integer NOT NULL,
    comment text NOT NULL
);
 *   DROP TABLE public.record_recorddiagnosis;
       public         heap    admin    false                       1259    17763    record_recorddiagnosis_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.record_recorddiagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.record_recorddiagnosis_id_seq;
       public          admin    false    286            S           0    0    record_recorddiagnosis_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.record_recorddiagnosis_id_seq OWNED BY public.record_recorddiagnosis.id;
          public          admin    false    285                       1259    17273    record_service    TABLE     ?   CREATE TABLE public.record_service (
    id integer NOT NULL,
    comment text NOT NULL,
    record_id integer NOT NULL,
    service_id integer NOT NULL
);
 "   DROP TABLE public.record_service;
       public         heap    admin    false                       1259    17271    record_service_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.record_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.record_service_id_seq;
       public          admin    false    258            T           0    0    record_service_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.record_service_id_seq OWNED BY public.record_service.id;
          public          admin    false    257                       1259    17732    record_vaccination    TABLE     h   CREATE TABLE public.record_vaccination (
    id integer NOT NULL,
    name_vaccination text NOT NULL
);
 &   DROP TABLE public.record_vaccination;
       public         heap    admin    false                       1259    17730    record_vaccination_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.record_vaccination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.record_vaccination_id_seq;
       public          admin    false    280            U           0    0    record_vaccination_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.record_vaccination_id_seq OWNED BY public.record_vaccination.id;
          public          admin    false    279                        1259    17262    service    TABLE     s   CREATE TABLE public.service (
    id integer NOT NULL,
    name_service text NOT NULL,
    price numeric(10,10)
);
    DROP TABLE public.service;
       public         heap    admin    false                       1259    17702    service_hospitalservice    TABLE     ?   CREATE TABLE public.service_hospitalservice (
    id integer NOT NULL,
    hospital_card_id integer NOT NULL,
    service_id integer NOT NULL,
    rec_date timestamp with time zone NOT NULL,
    comment text NOT NULL,
    doctor_id integer NOT NULL
);
 +   DROP TABLE public.service_hospitalservice;
       public         heap    admin    false                       1259    17700    service_hospitalservice_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.service_hospitalservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.service_hospitalservice_id_seq;
       public          admin    false    274            V           0    0    service_hospitalservice_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.service_hospitalservice_id_seq OWNED BY public.service_hospitalservice.id;
          public          admin    false    273            ?            1259    17260    service_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.service_id_seq;
       public          admin    false    256            W           0    0    service_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.service_id_seq OWNED BY public.service.id;
          public          admin    false    255                       1259    17713    service_positionservice    TABLE     ?   CREATE TABLE public.service_positionservice (
    id integer NOT NULL,
    position_id integer NOT NULL,
    service_id integer NOT NULL
);
 +   DROP TABLE public.service_positionservice;
       public         heap    admin    false                       1259    17711    service_positionservice_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.service_positionservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.service_positionservice_id_seq;
       public          admin    false    276            X           0    0    service_positionservice_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.service_positionservice_id_seq OWNED BY public.service_positionservice.id;
          public          admin    false    275                       1259    17691    service_recordservice    TABLE     ?   CREATE TABLE public.service_recordservice (
    id integer NOT NULL,
    record_id integer NOT NULL,
    service_id integer NOT NULL,
    comment text NOT NULL
);
 )   DROP TABLE public.service_recordservice;
       public         heap    admin    false                       1259    17689    service_recordservice_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.service_recordservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.service_recordservice_id_seq;
       public          admin    false    272            Y           0    0    service_recordservice_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.service_recordservice_id_seq OWNED BY public.service_recordservice.id;
          public          admin    false    271                       1259    17680    service_service    TABLE     {   CREATE TABLE public.service_service (
    id integer NOT NULL,
    name_service text NOT NULL,
    price numeric(10,10)
);
 #   DROP TABLE public.service_service;
       public         heap    admin    false                       1259    17678    service_service_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.service_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.service_service_id_seq;
       public          admin    false    270            Z           0    0    service_service_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.service_service_id_seq OWNED BY public.service_service.id;
          public          admin    false    269            ?            1259    17001    two_factor_phonedevice    TABLE     -  CREATE TABLE public.two_factor_phonedevice (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    confirmed boolean NOT NULL,
    number character varying(128) NOT NULL,
    key character varying(40) NOT NULL,
    method character varying(4) NOT NULL,
    user_id integer NOT NULL
);
 *   DROP TABLE public.two_factor_phonedevice;
       public         heap    admin    false            ?            1259    16999    two_factor_phonedevice_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.two_factor_phonedevice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.two_factor_phonedevice_id_seq;
       public          admin    false    226            [           0    0    two_factor_phonedevice_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.two_factor_phonedevice_id_seq OWNED BY public.two_factor_phonedevice.id;
          public          admin    false    225            ?            1259    17134    vaccination    TABLE     a   CREATE TABLE public.vaccination (
    id integer NOT NULL,
    name_vaccination text NOT NULL
);
    DROP TABLE public.vaccination;
       public         heap    admin    false            ?            1259    17132    vaccination_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.vaccination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.vaccination_id_seq;
       public          admin    false    248            \           0    0    vaccination_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.vaccination_id_seq OWNED BY public.vaccination.id;
          public          admin    false    247            W           2604    17093 
   allergy id    DEFAULT     h   ALTER TABLE ONLY public.allergy ALTER COLUMN id SET DEFAULT nextval('public.allergy_id_seq'::regclass);
 9   ALTER TABLE public.allergy ALTER COLUMN id DROP DEFAULT;
       public          admin    false    240    239    240            A           2604    16814    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          admin    false    207    206    207            B           2604    16824    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    209    208    209            @           2604    16806    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          admin    false    205    204    205            C           2604    16832    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          admin    false    210    211    211            D           2604    16842    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          admin    false    212    213    213            E           2604    16850    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    214    215    215            Q           2604    17024    department id    DEFAULT     n   ALTER TABLE ONLY public.department ALTER COLUMN id SET DEFAULT nextval('public.department_id_seq'::regclass);
 <   ALTER TABLE public.department ALTER COLUMN id DROP DEFAULT;
       public          admin    false    227    228    228            X           2604    17104    diagnosis id    DEFAULT     l   ALTER TABLE ONLY public.diagnosis ALTER COLUMN id SET DEFAULT nextval('public.diagnosis_id_seq'::regclass);
 ;   ALTER TABLE public.diagnosis ALTER COLUMN id DROP DEFAULT;
       public          admin    false    241    242    242            F           2604    16910    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          admin    false    216    217    217            ?           2604    16796    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          admin    false    203    202    203            >           2604    16785    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          admin    false    200    201    201            S           2604    17040 	   doctor id    DEFAULT     f   ALTER TABLE ONLY public.doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_id_seq'::regclass);
 8   ALTER TABLE public.doctor ALTER COLUMN id DROP DEFAULT;
       public          admin    false    232    231    232            d           2604    17667    doctor_department id    DEFAULT     |   ALTER TABLE ONLY public.doctor_department ALTER COLUMN id SET DEFAULT nextval('public.doctor_department_id_seq'::regclass);
 C   ALTER TABLE public.doctor_department ALTER COLUMN id DROP DEFAULT;
       public          admin    false    265    266    266            e           2604    17675    doctor_doctor id    DEFAULT     t   ALTER TABLE ONLY public.doctor_doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_doctor_id_seq'::regclass);
 ?   ALTER TABLE public.doctor_doctor ALTER COLUMN id DROP DEFAULT;
       public          admin    false    268    267    268            c           2604    17659    doctor_position id    DEFAULT     x   ALTER TABLE ONLY public.doctor_position ALTER COLUMN id SET DEFAULT nextval('public.doctor_position_id_seq'::regclass);
 A   ALTER TABLE public.doctor_position ALTER COLUMN id DROP DEFAULT;
       public          admin    false    264    263    264            Y           2604    17115    hospital_card id    DEFAULT     t   ALTER TABLE ONLY public.hospital_card ALTER COLUMN id SET DEFAULT nextval('public.hospital_card_id_seq'::regclass);
 ?   ALTER TABLE public.hospital_card ALTER COLUMN id DROP DEFAULT;
       public          admin    false    243    244    244            b           2604    17295    hospital_service id    DEFAULT     z   ALTER TABLE ONLY public.hospital_service ALTER COLUMN id SET DEFAULT nextval('public.hospital_service_id_seq'::regclass);
 B   ALTER TABLE public.hospital_service ALTER COLUMN id DROP DEFAULT;
       public          admin    false    261    262    262            H           2604    16943    otp_static_staticdevice id    DEFAULT     ?   ALTER TABLE ONLY public.otp_static_staticdevice ALTER COLUMN id SET DEFAULT nextval('public.otp_static_staticdevice_id_seq'::regclass);
 I   ALTER TABLE public.otp_static_staticdevice ALTER COLUMN id DROP DEFAULT;
       public          admin    false    219    218    219            J           2604    16951    otp_static_statictoken id    DEFAULT     ?   ALTER TABLE ONLY public.otp_static_statictoken ALTER COLUMN id SET DEFAULT nextval('public.otp_static_statictoken_id_seq'::regclass);
 H   ALTER TABLE public.otp_static_statictoken ALTER COLUMN id DROP DEFAULT;
       public          admin    false    221    220    221            K           2604    16975    otp_totp_totpdevice id    DEFAULT     ?   ALTER TABLE ONLY public.otp_totp_totpdevice ALTER COLUMN id SET DEFAULT nextval('public.otp_totp_totpdevice_id_seq'::regclass);
 E   ALTER TABLE public.otp_totp_totpdevice ALTER COLUMN id DROP DEFAULT;
       public          admin    false    223    222    223            T           2604    17060 
   patient id    DEFAULT     h   ALTER TABLE ONLY public.patient ALTER COLUMN id SET DEFAULT nextval('public.patient_id_seq'::regclass);
 9   ALTER TABLE public.patient ALTER COLUMN id DROP DEFAULT;
       public          admin    false    233    234    234            U           2604    17068    patient_allergy id    DEFAULT     x   ALTER TABLE ONLY public.patient_allergy ALTER COLUMN id SET DEFAULT nextval('public.patient_allergy_id_seq'::regclass);
 A   ALTER TABLE public.patient_allergy ALTER COLUMN id DROP DEFAULT;
       public          admin    false    236    235    236            V           2604    17079    patient_vaccination id    DEFAULT     ?   ALTER TABLE ONLY public.patient_vaccination ALTER COLUMN id SET DEFAULT nextval('public.patient_vaccination_id_seq'::regclass);
 E   ALTER TABLE public.patient_vaccination ALTER COLUMN id DROP DEFAULT;
       public          admin    false    238    237    238            R           2604    17032    position id    DEFAULT     l   ALTER TABLE ONLY public."position" ALTER COLUMN id SET DEFAULT nextval('public.position_id_seq'::regclass);
 <   ALTER TABLE public."position" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    230    229    230            ]           2604    17159    position_diagnosis id    DEFAULT     ~   ALTER TABLE ONLY public.position_diagnosis ALTER COLUMN id SET DEFAULT nextval('public.position_diagnosis_id_seq'::regclass);
 D   ALTER TABLE public.position_diagnosis ALTER COLUMN id DROP DEFAULT;
       public          admin    false    252    251    252            a           2604    17287    position_service id    DEFAULT     z   ALTER TABLE ONLY public.position_service ALTER COLUMN id SET DEFAULT nextval('public.position_service_id_seq'::regclass);
 B   ALTER TABLE public.position_service ALTER COLUMN id DROP DEFAULT;
       public          admin    false    259    260    260            Z           2604    17126 	   record id    DEFAULT     f   ALTER TABLE ONLY public.record ALTER COLUMN id SET DEFAULT nextval('public.record_id_seq'::regclass);
 8   ALTER TABLE public.record ALTER COLUMN id DROP DEFAULT;
       public          admin    false    245    246    246            j           2604    17724    record_allergy id    DEFAULT     v   ALTER TABLE ONLY public.record_allergy ALTER COLUMN id SET DEFAULT nextval('public.record_allergy_id_seq'::regclass);
 @   ALTER TABLE public.record_allergy ALTER COLUMN id DROP DEFAULT;
       public          admin    false    277    278    278            \           2604    17148    record_diagnosis id    DEFAULT     z   ALTER TABLE ONLY public.record_diagnosis ALTER COLUMN id SET DEFAULT nextval('public.record_diagnosis_id_seq'::regclass);
 B   ALTER TABLE public.record_diagnosis ALTER COLUMN id DROP DEFAULT;
       public          admin    false    250    249    250            l           2604    17746    record_hospitalcard id    DEFAULT     ?   ALTER TABLE ONLY public.record_hospitalcard ALTER COLUMN id SET DEFAULT nextval('public.record_hospitalcard_id_seq'::regclass);
 E   ALTER TABLE public.record_hospitalcard ALTER COLUMN id DROP DEFAULT;
       public          admin    false    281    282    282            ^           2604    17167    record_hospitalcardrecord id    DEFAULT     ?   ALTER TABLE ONLY public.record_hospitalcardrecord ALTER COLUMN id SET DEFAULT nextval('public.record_hospitalcardrecord_id_seq'::regclass);
 K   ALTER TABLE public.record_hospitalcardrecord ALTER COLUMN id DROP DEFAULT;
       public          admin    false    253    254    254            o           2604    17779    record_positiondiagnosis id    DEFAULT     ?   ALTER TABLE ONLY public.record_positiondiagnosis ALTER COLUMN id SET DEFAULT nextval('public.record_positiondiagnosis_id_seq'::regclass);
 J   ALTER TABLE public.record_positiondiagnosis ALTER COLUMN id DROP DEFAULT;
       public          admin    false    287    288    288            m           2604    17757    record_record id    DEFAULT     t   ALTER TABLE ONLY public.record_record ALTER COLUMN id SET DEFAULT nextval('public.record_record_id_seq'::regclass);
 ?   ALTER TABLE public.record_record ALTER COLUMN id DROP DEFAULT;
       public          admin    false    283    284    284            n           2604    17768    record_recorddiagnosis id    DEFAULT     ?   ALTER TABLE ONLY public.record_recorddiagnosis ALTER COLUMN id SET DEFAULT nextval('public.record_recorddiagnosis_id_seq'::regclass);
 H   ALTER TABLE public.record_recorddiagnosis ALTER COLUMN id DROP DEFAULT;
       public          admin    false    285    286    286            `           2604    17276    record_service id    DEFAULT     v   ALTER TABLE ONLY public.record_service ALTER COLUMN id SET DEFAULT nextval('public.record_service_id_seq'::regclass);
 @   ALTER TABLE public.record_service ALTER COLUMN id DROP DEFAULT;
       public          admin    false    257    258    258            k           2604    17735    record_vaccination id    DEFAULT     ~   ALTER TABLE ONLY public.record_vaccination ALTER COLUMN id SET DEFAULT nextval('public.record_vaccination_id_seq'::regclass);
 D   ALTER TABLE public.record_vaccination ALTER COLUMN id DROP DEFAULT;
       public          admin    false    280    279    280            _           2604    17265 
   service id    DEFAULT     h   ALTER TABLE ONLY public.service ALTER COLUMN id SET DEFAULT nextval('public.service_id_seq'::regclass);
 9   ALTER TABLE public.service ALTER COLUMN id DROP DEFAULT;
       public          admin    false    256    255    256            h           2604    17705    service_hospitalservice id    DEFAULT     ?   ALTER TABLE ONLY public.service_hospitalservice ALTER COLUMN id SET DEFAULT nextval('public.service_hospitalservice_id_seq'::regclass);
 I   ALTER TABLE public.service_hospitalservice ALTER COLUMN id DROP DEFAULT;
       public          admin    false    273    274    274            i           2604    17716    service_positionservice id    DEFAULT     ?   ALTER TABLE ONLY public.service_positionservice ALTER COLUMN id SET DEFAULT nextval('public.service_positionservice_id_seq'::regclass);
 I   ALTER TABLE public.service_positionservice ALTER COLUMN id DROP DEFAULT;
       public          admin    false    276    275    276            g           2604    17694    service_recordservice id    DEFAULT     ?   ALTER TABLE ONLY public.service_recordservice ALTER COLUMN id SET DEFAULT nextval('public.service_recordservice_id_seq'::regclass);
 G   ALTER TABLE public.service_recordservice ALTER COLUMN id DROP DEFAULT;
       public          admin    false    272    271    272            f           2604    17683    service_service id    DEFAULT     x   ALTER TABLE ONLY public.service_service ALTER COLUMN id SET DEFAULT nextval('public.service_service_id_seq'::regclass);
 A   ALTER TABLE public.service_service ALTER COLUMN id DROP DEFAULT;
       public          admin    false    269    270    270            P           2604    17004    two_factor_phonedevice id    DEFAULT     ?   ALTER TABLE ONLY public.two_factor_phonedevice ALTER COLUMN id SET DEFAULT nextval('public.two_factor_phonedevice_id_seq'::regclass);
 H   ALTER TABLE public.two_factor_phonedevice ALTER COLUMN id DROP DEFAULT;
       public          admin    false    226    225    226            [           2604    17137    vaccination id    DEFAULT     p   ALTER TABLE ONLY public.vaccination ALTER COLUMN id SET DEFAULT nextval('public.vaccination_id_seq'::regclass);
 =   ALTER TABLE public.vaccination ALTER COLUMN id DROP DEFAULT;
       public          admin    false    247    248    248            ?          0    17090    allergy 
   TABLE DATA           3   COPY public.allergy (id, name_allergy) FROM stdin;
    public          admin    false    240    I      ?          0    16811 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          admin    false    207   I      ?          0    16821    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          admin    false    209   :I      ?          0    16803    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          admin    false    205   WI      ?          0    16829 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          admin    false    211   ?M      ?          0    16839    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          admin    false    213   ?N      ?          0    16847    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          admin    false    215   ?N      ?          0    17021 
   department 
   TABLE DATA           9   COPY public.department (id, name_department) FROM stdin;
    public          admin    false    228   ?N      ?          0    17101 	   diagnosis 
   TABLE DATA           7   COPY public.diagnosis (id, name_diagnosis) FROM stdin;
    public          admin    false    242   O      ?          0    16907    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          admin    false    217   $O      ?          0    16793    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          admin    false    203   nO      ?          0    16782    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          admin    false    201   ?P      ?          0    16989    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          admin    false    224   >S      ?          0    17037    doctor 
   TABLE DATA           \   COPY public.doctor (id, doctors_name, office, id_department_id, id_position_id) FROM stdin;
    public          admin    false    232   ?W                0    17664    doctor_department 
   TABLE DATA           @   COPY public.doctor_department (id, name_department) FROM stdin;
    public          admin    false    266   ?W                0    17672    doctor_doctor 
   TABLE DATA           c   COPY public.doctor_doctor (id, doctors_name, id_position_id, office, id_department_id) FROM stdin;
    public          admin    false    268   ?W                0    17656    doctor_position 
   TABLE DATA           <   COPY public.doctor_position (id, name_position) FROM stdin;
    public          admin    false    264   
X      ?          0    17112    hospital_card 
   TABLE DATA           ?   COPY public.hospital_card (id, arrival_date, discharge_date, hospitalization_type, chamber, department_id, doctor_id) FROM stdin;
    public          admin    false    244   'X                0    17292    hospital_service 
   TABLE DATA           j   COPY public.hospital_service (id, rec_date, comment, doctor_id, hospital_card_id, service_id) FROM stdin;
    public          admin    false    262   DX      ?          0    16940    otp_static_staticdevice 
   TABLE DATA           ?   COPY public.otp_static_staticdevice (id, name, confirmed, user_id, throttling_failure_count, throttling_failure_timestamp) FROM stdin;
    public          admin    false    219   aX      ?          0    16948    otp_static_statictoken 
   TABLE DATA           F   COPY public.otp_static_statictoken (id, token, device_id) FROM stdin;
    public          admin    false    221   ~X      ?          0    16972    otp_totp_totpdevice 
   TABLE DATA           ?   COPY public.otp_totp_totpdevice (id, name, confirmed, key, step, t0, digits, tolerance, drift, last_t, user_id, throttling_failure_count, throttling_failure_timestamp) FROM stdin;
    public          admin    false    223   ?X      ?          0    17057    patient 
   TABLE DATA           ?   COPY public.patient (id, patient_surname, patient_name, patient_patronymic, date_of_birth, home_address, work_place, work_position, blood_type, phone_number) FROM stdin;
    public          admin    false    234   ?X      ?          0    17065    patient_allergy 
   TABLE DATA           N   COPY public.patient_allergy (id, comment, allergy_id, patient_id) FROM stdin;
    public          admin    false    236   Y      ?          0    17076    patient_vaccination 
   TABLE DATA           _   COPY public.patient_vaccination (id, date_vaccination, patient_id, vaccination_id) FROM stdin;
    public          admin    false    238   5Y      ?          0    17029    position 
   TABLE DATA           7   COPY public."position" (id, name_position) FROM stdin;
    public          admin    false    230   RY                0    17156    position_diagnosis 
   TABLE DATA           K   COPY public.position_diagnosis (id, diagnosis_id, position_id) FROM stdin;
    public          admin    false    252   oY                0    17284    position_service 
   TABLE DATA           G   COPY public.position_service (id, position_id, service_id) FROM stdin;
    public          admin    false    260   ?Y                 0    17123    record 
   TABLE DATA           g   COPY public.record (id, date_record, lamentation, doctor_id, hospital_card_id, patient_id) FROM stdin;
    public          admin    false    246   ?Y                 0    17721    record_allergy 
   TABLE DATA           :   COPY public.record_allergy (id, name_allergy) FROM stdin;
    public          admin    false    278   ?Y                0    17145    record_diagnosis 
   TABLE DATA           [   COPY public.record_diagnosis (id, comment, diagnosis_id, doctor_id, record_id) FROM stdin;
    public          admin    false    250   ?Y      $          0    17743    record_hospitalcard 
   TABLE DATA           ?   COPY public.record_hospitalcard (id, doctor_id, arrival_date, discharge_date, hospitalization_type, department_id, chamber) FROM stdin;
    public          admin    false    282    Z                0    17164    record_hospitalcardrecord 
   TABLE DATA           T   COPY public.record_hospitalcardrecord (id, hospital_card_id, record_id) FROM stdin;
    public          admin    false    254   Z      *          0    17776    record_positiondiagnosis 
   TABLE DATA           Q   COPY public.record_positiondiagnosis (id, position_id, diagnosis_id) FROM stdin;
    public          admin    false    288   :Z      &          0    17754    record_record 
   TABLE DATA           n   COPY public.record_record (id, patient_id, date_record, doctor_id, lamentation, hospital_card_id) FROM stdin;
    public          admin    false    284   WZ      (          0    17765    record_recorddiagnosis 
   TABLE DATA           a   COPY public.record_recorddiagnosis (id, record_id, diagnosis_id, doctor_id, comment) FROM stdin;
    public          admin    false    286   tZ                0    17273    record_service 
   TABLE DATA           L   COPY public.record_service (id, comment, record_id, service_id) FROM stdin;
    public          admin    false    258   ?Z      "          0    17732    record_vaccination 
   TABLE DATA           B   COPY public.record_vaccination (id, name_vaccination) FROM stdin;
    public          admin    false    280   ?Z      
          0    17262    service 
   TABLE DATA           :   COPY public.service (id, name_service, price) FROM stdin;
    public          admin    false    256   ?Z                0    17702    service_hospitalservice 
   TABLE DATA           q   COPY public.service_hospitalservice (id, hospital_card_id, service_id, rec_date, comment, doctor_id) FROM stdin;
    public          admin    false    274   ?Z                0    17713    service_positionservice 
   TABLE DATA           N   COPY public.service_positionservice (id, position_id, service_id) FROM stdin;
    public          admin    false    276   [                0    17691    service_recordservice 
   TABLE DATA           S   COPY public.service_recordservice (id, record_id, service_id, comment) FROM stdin;
    public          admin    false    272   "[                0    17680    service_service 
   TABLE DATA           B   COPY public.service_service (id, name_service, price) FROM stdin;
    public          admin    false    270   ?[      ?          0    17001    two_factor_phonedevice 
   TABLE DATA           c   COPY public.two_factor_phonedevice (id, name, confirmed, number, key, method, user_id) FROM stdin;
    public          admin    false    226   \[                0    17134    vaccination 
   TABLE DATA           ;   COPY public.vaccination (id, name_vaccination) FROM stdin;
    public          admin    false    248   y[      ]           0    0    allergy_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.allergy_id_seq', 1, false);
          public          admin    false    239            ^           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          admin    false    206            _           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          admin    false    208            `           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 112, true);
          public          admin    false    204            a           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          admin    false    212            b           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          admin    false    210            c           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          admin    false    214            d           0    0    department_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.department_id_seq', 1, false);
          public          admin    false    227            e           0    0    diagnosis_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.diagnosis_id_seq', 1, false);
          public          admin    false    241            f           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);
          public          admin    false    216            g           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 28, true);
          public          admin    false    202            h           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 33, true);
          public          admin    false    200            i           0    0    doctor_department_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.doctor_department_id_seq', 1, false);
          public          admin    false    265            j           0    0    doctor_doctor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.doctor_doctor_id_seq', 1, false);
          public          admin    false    267            k           0    0    doctor_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.doctor_id_seq', 1, false);
          public          admin    false    231            l           0    0    doctor_position_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.doctor_position_id_seq', 1, false);
          public          admin    false    263            m           0    0    hospital_card_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hospital_card_id_seq', 1, false);
          public          admin    false    243            n           0    0    hospital_service_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.hospital_service_id_seq', 1, false);
          public          admin    false    261            o           0    0    otp_static_staticdevice_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.otp_static_staticdevice_id_seq', 1, true);
          public          admin    false    218            p           0    0    otp_static_statictoken_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.otp_static_statictoken_id_seq', 1, false);
          public          admin    false    220            q           0    0    otp_totp_totpdevice_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.otp_totp_totpdevice_id_seq', 2, true);
          public          admin    false    222            r           0    0    patient_allergy_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.patient_allergy_id_seq', 1, false);
          public          admin    false    235            s           0    0    patient_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.patient_id_seq', 1, false);
          public          admin    false    233            t           0    0    patient_vaccination_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.patient_vaccination_id_seq', 1, false);
          public          admin    false    237            u           0    0    position_diagnosis_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.position_diagnosis_id_seq', 1, false);
          public          admin    false    251            v           0    0    position_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.position_id_seq', 1, false);
          public          admin    false    229            w           0    0    position_service_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.position_service_id_seq', 1, false);
          public          admin    false    259            x           0    0    record_allergy_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.record_allergy_id_seq', 1, false);
          public          admin    false    277            y           0    0    record_diagnosis_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.record_diagnosis_id_seq', 1, false);
          public          admin    false    249            z           0    0    record_hospitalcard_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.record_hospitalcard_id_seq', 1, false);
          public          admin    false    281            {           0    0     record_hospitalcardrecord_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.record_hospitalcardrecord_id_seq', 1, false);
          public          admin    false    253            |           0    0    record_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.record_id_seq', 1, false);
          public          admin    false    245            }           0    0    record_positiondiagnosis_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.record_positiondiagnosis_id_seq', 1, false);
          public          admin    false    287            ~           0    0    record_record_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.record_record_id_seq', 1, false);
          public          admin    false    283                       0    0    record_recorddiagnosis_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.record_recorddiagnosis_id_seq', 1, false);
          public          admin    false    285            ?           0    0    record_service_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.record_service_id_seq', 1, false);
          public          admin    false    257            ?           0    0    record_vaccination_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.record_vaccination_id_seq', 1, false);
          public          admin    false    279            ?           0    0    service_hospitalservice_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.service_hospitalservice_id_seq', 1, false);
          public          admin    false    273            ?           0    0    service_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.service_id_seq', 1, false);
          public          admin    false    255            ?           0    0    service_positionservice_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.service_positionservice_id_seq', 1, false);
          public          admin    false    275            ?           0    0    service_recordservice_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.service_recordservice_id_seq', 1, false);
          public          admin    false    271            ?           0    0    service_service_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.service_service_id_seq', 1, false);
          public          admin    false    269            ?           0    0    two_factor_phonedevice_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.two_factor_phonedevice_id_seq', 1, false);
          public          admin    false    225            ?           0    0    vaccination_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.vaccination_id_seq', 1, false);
          public          admin    false    247            ?           2606    17098    allergy allergy_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.allergy
    ADD CONSTRAINT allergy_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.allergy DROP CONSTRAINT allergy_pkey;
       public            admin    false    240            }           2606    16936    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            admin    false    207            ?           2606    16863 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            admin    false    209    209            ?           2606    16826 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            admin    false    209                       2606    16816    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            admin    false    207            x           2606    16854 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            admin    false    205    205            z           2606    16808 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            admin    false    205            ?           2606    16844 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            admin    false    213            ?           2606    16878 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            admin    false    213    213            ?           2606    16834    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            admin    false    211            ?           2606    16852 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            admin    false    215            ?           2606    16892 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            admin    false    215    215            ?           2606    16930     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            admin    false    211            ?           2606    17026    department department_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public            admin    false    228            ?           2606    17109    diagnosis diagnosis_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.diagnosis
    ADD CONSTRAINT diagnosis_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.diagnosis DROP CONSTRAINT diagnosis_pkey;
       public            admin    false    242            ?           2606    16916 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            admin    false    217            s           2606    16800 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            admin    false    203    203            u           2606    16798 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            admin    false    203            q           2606    16790 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            admin    false    201            ?           2606    16996 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            admin    false    224            ?           2606    17669 (   doctor_department doctor_department_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.doctor_department
    ADD CONSTRAINT doctor_department_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.doctor_department DROP CONSTRAINT doctor_department_pkey;
       public            admin    false    266            ?           2606    17677     doctor_doctor doctor_doctor_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.doctor_doctor
    ADD CONSTRAINT doctor_doctor_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.doctor_doctor DROP CONSTRAINT doctor_doctor_pkey;
       public            admin    false    268            ?           2606    17042    doctor doctor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            admin    false    232            ?           2606    17661 $   doctor_position doctor_position_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.doctor_position
    ADD CONSTRAINT doctor_position_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.doctor_position DROP CONSTRAINT doctor_position_pkey;
       public            admin    false    264            ?           2606    17120     hospital_card hospital_card_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.hospital_card
    ADD CONSTRAINT hospital_card_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.hospital_card DROP CONSTRAINT hospital_card_pkey;
       public            admin    false    244            ?           2606    17300 &   hospital_service hospital_service_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.hospital_service
    ADD CONSTRAINT hospital_service_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.hospital_service DROP CONSTRAINT hospital_service_pkey;
       public            admin    false    262            ?           2606    16945 4   otp_static_staticdevice otp_static_staticdevice_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.otp_static_staticdevice
    ADD CONSTRAINT otp_static_staticdevice_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.otp_static_staticdevice DROP CONSTRAINT otp_static_staticdevice_pkey;
       public            admin    false    219            ?           2606    16953 2   otp_static_statictoken otp_static_statictoken_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.otp_static_statictoken
    ADD CONSTRAINT otp_static_statictoken_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.otp_static_statictoken DROP CONSTRAINT otp_static_statictoken_pkey;
       public            admin    false    221            ?           2606    16980 ,   otp_totp_totpdevice otp_totp_totpdevice_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.otp_totp_totpdevice
    ADD CONSTRAINT otp_totp_totpdevice_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.otp_totp_totpdevice DROP CONSTRAINT otp_totp_totpdevice_pkey;
       public            admin    false    223            ?           2606    17073 $   patient_allergy patient_allergy_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.patient_allergy
    ADD CONSTRAINT patient_allergy_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.patient_allergy DROP CONSTRAINT patient_allergy_pkey;
       public            admin    false    236            ?           2606    17062    patient patient_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.patient DROP CONSTRAINT patient_pkey;
       public            admin    false    234            ?           2606    17081 ,   patient_vaccination patient_vaccination_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.patient_vaccination
    ADD CONSTRAINT patient_vaccination_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.patient_vaccination DROP CONSTRAINT patient_vaccination_pkey;
       public            admin    false    238            ?           2606    17161 *   position_diagnosis position_diagnosis_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.position_diagnosis
    ADD CONSTRAINT position_diagnosis_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.position_diagnosis DROP CONSTRAINT position_diagnosis_pkey;
       public            admin    false    252            ?           2606    17034    position position_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."position" DROP CONSTRAINT position_pkey;
       public            admin    false    230            ?           2606    17289 &   position_service position_service_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.position_service
    ADD CONSTRAINT position_service_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.position_service DROP CONSTRAINT position_service_pkey;
       public            admin    false    260                       2606    17729 "   record_allergy record_allergy_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.record_allergy
    ADD CONSTRAINT record_allergy_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.record_allergy DROP CONSTRAINT record_allergy_pkey;
       public            admin    false    278            ?           2606    17153 &   record_diagnosis record_diagnosis_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.record_diagnosis
    ADD CONSTRAINT record_diagnosis_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.record_diagnosis DROP CONSTRAINT record_diagnosis_pkey;
       public            admin    false    250                       2606    17751 ,   record_hospitalcard record_hospitalcard_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.record_hospitalcard
    ADD CONSTRAINT record_hospitalcard_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.record_hospitalcard DROP CONSTRAINT record_hospitalcard_pkey;
       public            admin    false    282            ?           2606    17169 8   record_hospitalcardrecord record_hospitalcardrecord_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.record_hospitalcardrecord
    ADD CONSTRAINT record_hospitalcardrecord_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.record_hospitalcardrecord DROP CONSTRAINT record_hospitalcardrecord_pkey;
       public            admin    false    254            ?           2606    17131    record record_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.record DROP CONSTRAINT record_pkey;
       public            admin    false    246                       2606    17781 6   record_positiondiagnosis record_positiondiagnosis_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.record_positiondiagnosis
    ADD CONSTRAINT record_positiondiagnosis_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.record_positiondiagnosis DROP CONSTRAINT record_positiondiagnosis_pkey;
       public            admin    false    288                       2606    17762     record_record record_record_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.record_record
    ADD CONSTRAINT record_record_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.record_record DROP CONSTRAINT record_record_pkey;
       public            admin    false    284                       2606    17773 2   record_recorddiagnosis record_recorddiagnosis_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.record_recorddiagnosis
    ADD CONSTRAINT record_recorddiagnosis_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.record_recorddiagnosis DROP CONSTRAINT record_recorddiagnosis_pkey;
       public            admin    false    286            ?           2606    17281 "   record_service record_service_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.record_service
    ADD CONSTRAINT record_service_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.record_service DROP CONSTRAINT record_service_pkey;
       public            admin    false    258                       2606    17740 *   record_vaccination record_vaccination_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.record_vaccination
    ADD CONSTRAINT record_vaccination_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.record_vaccination DROP CONSTRAINT record_vaccination_pkey;
       public            admin    false    280            ?           2606    17710 4   service_hospitalservice service_hospitalservice_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.service_hospitalservice
    ADD CONSTRAINT service_hospitalservice_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.service_hospitalservice DROP CONSTRAINT service_hospitalservice_pkey;
       public            admin    false    274            ?           2606    17270    service service_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public            admin    false    256            ?           2606    17718 4   service_positionservice service_positionservice_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.service_positionservice
    ADD CONSTRAINT service_positionservice_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.service_positionservice DROP CONSTRAINT service_positionservice_pkey;
       public            admin    false    276            ?           2606    17699 0   service_recordservice service_recordservice_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.service_recordservice
    ADD CONSTRAINT service_recordservice_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.service_recordservice DROP CONSTRAINT service_recordservice_pkey;
       public            admin    false    272            ?           2606    17688 $   service_service service_service_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.service_service
    ADD CONSTRAINT service_service_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.service_service DROP CONSTRAINT service_service_pkey;
       public            admin    false    270            ?           2606    17006 2   two_factor_phonedevice two_factor_phonedevice_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.two_factor_phonedevice
    ADD CONSTRAINT two_factor_phonedevice_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.two_factor_phonedevice DROP CONSTRAINT two_factor_phonedevice_pkey;
       public            admin    false    226            ?           2606    17142    vaccination vaccination_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.vaccination
    ADD CONSTRAINT vaccination_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.vaccination DROP CONSTRAINT vaccination_pkey;
       public            admin    false    248            {           1259    16937    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            admin    false    207            ?           1259    16874 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            admin    false    209            ?           1259    16875 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            admin    false    209            v           1259    16860 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            admin    false    205            ?           1259    16890 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            admin    false    213            ?           1259    16889 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            admin    false    213            ?           1259    16904 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            admin    false    215            ?           1259    16903 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            admin    false    215            ?           1259    16931     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            admin    false    211            ?           1259    16927 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            admin    false    217            ?           1259    16928 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            admin    false    217            ?           1259    16998 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            admin    false    224            ?           1259    16997 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            admin    false    224            ?           1259    17793 '   doctor_doctor_id_department_id_125fc7cd    INDEX     m   CREATE INDEX doctor_doctor_id_department_id_125fc7cd ON public.doctor_doctor USING btree (id_department_id);
 ;   DROP INDEX public.doctor_doctor_id_department_id_125fc7cd;
       public            admin    false    268            ?           1259    17792 %   doctor_doctor_id_position_id_9db1ee70    INDEX     i   CREATE INDEX doctor_doctor_id_position_id_9db1ee70 ON public.doctor_doctor USING btree (id_position_id);
 9   DROP INDEX public.doctor_doctor_id_position_id_9db1ee70;
       public            admin    false    268            ?           1259    17053     doctor_id_department_id_0d5d2396    INDEX     _   CREATE INDEX doctor_id_department_id_0d5d2396 ON public.doctor USING btree (id_department_id);
 4   DROP INDEX public.doctor_id_department_id_0d5d2396;
       public            admin    false    232            ?           1259    17054    doctor_id_position_id_e26fbff7    INDEX     [   CREATE INDEX doctor_id_position_id_e26fbff7 ON public.doctor USING btree (id_position_id);
 2   DROP INDEX public.doctor_id_position_id_e26fbff7;
       public            admin    false    232            ?           1259    17180 $   hospital_card_department_id_48ac8810    INDEX     g   CREATE INDEX hospital_card_department_id_48ac8810 ON public.hospital_card USING btree (department_id);
 8   DROP INDEX public.hospital_card_department_id_48ac8810;
       public            admin    false    244            ?           1259    17181     hospital_card_doctor_id_3451e072    INDEX     _   CREATE INDEX hospital_card_doctor_id_3451e072 ON public.hospital_card USING btree (doctor_id);
 4   DROP INDEX public.hospital_card_doctor_id_3451e072;
       public            admin    false    244            ?           1259    17340 #   hospital_service_doctor_id_17e8548e    INDEX     e   CREATE INDEX hospital_service_doctor_id_17e8548e ON public.hospital_service USING btree (doctor_id);
 7   DROP INDEX public.hospital_service_doctor_id_17e8548e;
       public            admin    false    262            ?           1259    17341 *   hospital_service_hospital_card_id_4231d314    INDEX     s   CREATE INDEX hospital_service_hospital_card_id_4231d314 ON public.hospital_service USING btree (hospital_card_id);
 >   DROP INDEX public.hospital_service_hospital_card_id_4231d314;
       public            admin    false    262            ?           1259    17342 $   hospital_service_service_id_0625012e    INDEX     g   CREATE INDEX hospital_service_service_id_0625012e ON public.hospital_service USING btree (service_id);
 8   DROP INDEX public.hospital_service_service_id_0625012e;
       public            admin    false    262            ?           1259    16959 (   otp_static_staticdevice_user_id_7f9cff2b    INDEX     o   CREATE INDEX otp_static_staticdevice_user_id_7f9cff2b ON public.otp_static_staticdevice USING btree (user_id);
 <   DROP INDEX public.otp_static_staticdevice_user_id_7f9cff2b;
       public            admin    false    219            ?           1259    16967 )   otp_static_statictoken_device_id_74b7c7d1    INDEX     q   CREATE INDEX otp_static_statictoken_device_id_74b7c7d1 ON public.otp_static_statictoken USING btree (device_id);
 =   DROP INDEX public.otp_static_statictoken_device_id_74b7c7d1;
       public            admin    false    221            ?           1259    16965 %   otp_static_statictoken_token_d0a51866    INDEX     i   CREATE INDEX otp_static_statictoken_token_d0a51866 ON public.otp_static_statictoken USING btree (token);
 9   DROP INDEX public.otp_static_statictoken_token_d0a51866;
       public            admin    false    221            ?           1259    16966 *   otp_static_statictoken_token_d0a51866_like    INDEX     ?   CREATE INDEX otp_static_statictoken_token_d0a51866_like ON public.otp_static_statictoken USING btree (token varchar_pattern_ops);
 >   DROP INDEX public.otp_static_statictoken_token_d0a51866_like;
       public            admin    false    221            ?           1259    16986 $   otp_totp_totpdevice_user_id_0fb18292    INDEX     g   CREATE INDEX otp_totp_totpdevice_user_id_0fb18292 ON public.otp_totp_totpdevice USING btree (user_id);
 8   DROP INDEX public.otp_totp_totpdevice_user_id_0fb18292;
       public            admin    false    223            ?           1259    17258 #   patient_allergy_allergy_id_0c93b05e    INDEX     e   CREATE INDEX patient_allergy_allergy_id_0c93b05e ON public.patient_allergy USING btree (allergy_id);
 7   DROP INDEX public.patient_allergy_allergy_id_0c93b05e;
       public            admin    false    236            ?           1259    17259 #   patient_allergy_patient_id_83d966bc    INDEX     e   CREATE INDEX patient_allergy_patient_id_83d966bc ON public.patient_allergy USING btree (patient_id);
 7   DROP INDEX public.patient_allergy_patient_id_83d966bc;
       public            admin    false    236            ?           1259    17087 '   patient_vaccination_patient_id_4bdc5f3f    INDEX     m   CREATE INDEX patient_vaccination_patient_id_4bdc5f3f ON public.patient_vaccination USING btree (patient_id);
 ;   DROP INDEX public.patient_vaccination_patient_id_4bdc5f3f;
       public            admin    false    238            ?           1259    17257 +   patient_vaccination_vaccination_id_d4d545d0    INDEX     u   CREATE INDEX patient_vaccination_vaccination_id_d4d545d0 ON public.patient_vaccination USING btree (vaccination_id);
 ?   DROP INDEX public.patient_vaccination_vaccination_id_d4d545d0;
       public            admin    false    238            ?           1259    17228 (   position_diagnosis_diagnosis_id_1beb5686    INDEX     o   CREATE INDEX position_diagnosis_diagnosis_id_1beb5686 ON public.position_diagnosis USING btree (diagnosis_id);
 <   DROP INDEX public.position_diagnosis_diagnosis_id_1beb5686;
       public            admin    false    252            ?           1259    17229 '   position_diagnosis_position_id_f405f85a    INDEX     m   CREATE INDEX position_diagnosis_position_id_f405f85a ON public.position_diagnosis USING btree (position_id);
 ;   DROP INDEX public.position_diagnosis_position_id_f405f85a;
       public            admin    false    252            ?           1259    17323 %   position_service_position_id_84243ee0    INDEX     i   CREATE INDEX position_service_position_id_84243ee0 ON public.position_service USING btree (position_id);
 9   DROP INDEX public.position_service_position_id_84243ee0;
       public            admin    false    260            ?           1259    17324 $   position_service_service_id_8a101a99    INDEX     g   CREATE INDEX position_service_service_id_8a101a99 ON public.position_service USING btree (service_id);
 8   DROP INDEX public.position_service_service_id_8a101a99;
       public            admin    false    260            ?           1259    17215 &   record_diagnosis_diagnosis_id_6e808f09    INDEX     k   CREATE INDEX record_diagnosis_diagnosis_id_6e808f09 ON public.record_diagnosis USING btree (diagnosis_id);
 :   DROP INDEX public.record_diagnosis_diagnosis_id_6e808f09;
       public            admin    false    250            ?           1259    17216 #   record_diagnosis_doctor_id_7aa7ed91    INDEX     e   CREATE INDEX record_diagnosis_doctor_id_7aa7ed91 ON public.record_diagnosis USING btree (doctor_id);
 7   DROP INDEX public.record_diagnosis_doctor_id_7aa7ed91;
       public            admin    false    250            ?           1259    17217 #   record_diagnosis_record_id_842b0ea9    INDEX     e   CREATE INDEX record_diagnosis_record_id_842b0ea9 ON public.record_diagnosis USING btree (record_id);
 7   DROP INDEX public.record_diagnosis_record_id_842b0ea9;
       public            admin    false    250            ?           1259    17197    record_doctor_id_c4496a33    INDEX     Q   CREATE INDEX record_doctor_id_c4496a33 ON public.record USING btree (doctor_id);
 -   DROP INDEX public.record_doctor_id_c4496a33;
       public            admin    false    246            ?           1259    17198     record_hospital_card_id_f83e823b    INDEX     _   CREATE INDEX record_hospital_card_id_f83e823b ON public.record USING btree (hospital_card_id);
 4   DROP INDEX public.record_hospital_card_id_f83e823b;
       public            admin    false    246                       1259    17847 *   record_hospitalcard_department_id_d33577c6    INDEX     s   CREATE INDEX record_hospitalcard_department_id_d33577c6 ON public.record_hospitalcard USING btree (department_id);
 >   DROP INDEX public.record_hospitalcard_department_id_d33577c6;
       public            admin    false    282                       1259    17846 &   record_hospitalcard_doctor_id_f2b0303b    INDEX     k   CREATE INDEX record_hospitalcard_doctor_id_f2b0303b ON public.record_hospitalcard USING btree (doctor_id);
 :   DROP INDEX public.record_hospitalcard_doctor_id_f2b0303b;
       public            admin    false    282            ?           1259    17240 3   record_hospitalcardrecord_hospital_card_id_17ff765b    INDEX     ?   CREATE INDEX record_hospitalcardrecord_hospital_card_id_17ff765b ON public.record_hospitalcardrecord USING btree (hospital_card_id);
 G   DROP INDEX public.record_hospitalcardrecord_hospital_card_id_17ff765b;
       public            admin    false    254            ?           1259    17241 ,   record_hospitalcardrecord_record_id_fdd5fc45    INDEX     w   CREATE INDEX record_hospitalcardrecord_record_id_fdd5fc45 ON public.record_hospitalcardrecord USING btree (record_id);
 @   DROP INDEX public.record_hospitalcardrecord_record_id_fdd5fc45;
       public            admin    false    254            ?           1259    17199    record_patient_id_397f3732    INDEX     S   CREATE INDEX record_patient_id_397f3732 ON public.record USING btree (patient_id);
 .   DROP INDEX public.record_patient_id_397f3732;
       public            admin    false    246                       1259    17895 .   record_positiondiagnosis_diagnosis_id_0b69765f    INDEX     {   CREATE INDEX record_positiondiagnosis_diagnosis_id_0b69765f ON public.record_positiondiagnosis USING btree (diagnosis_id);
 B   DROP INDEX public.record_positiondiagnosis_diagnosis_id_0b69765f;
       public            admin    false    288                       1259    17894 -   record_positiondiagnosis_position_id_611b2a97    INDEX     y   CREATE INDEX record_positiondiagnosis_position_id_611b2a97 ON public.record_positiondiagnosis USING btree (position_id);
 A   DROP INDEX public.record_positiondiagnosis_position_id_611b2a97;
       public            admin    false    288            	           1259    17864     record_record_doctor_id_a36f4155    INDEX     _   CREATE INDEX record_record_doctor_id_a36f4155 ON public.record_record USING btree (doctor_id);
 4   DROP INDEX public.record_record_doctor_id_a36f4155;
       public            admin    false    284            
           1259    17865 '   record_record_hospital_card_id_0af83442    INDEX     m   CREATE INDEX record_record_hospital_card_id_0af83442 ON public.record_record USING btree (hospital_card_id);
 ;   DROP INDEX public.record_record_hospital_card_id_0af83442;
       public            admin    false    284                       1259    17863 !   record_record_patient_id_5450df44    INDEX     a   CREATE INDEX record_record_patient_id_5450df44 ON public.record_record USING btree (patient_id);
 5   DROP INDEX public.record_record_patient_id_5450df44;
       public            admin    false    284                       1259    17882 ,   record_recorddiagnosis_diagnosis_id_db521f6e    INDEX     w   CREATE INDEX record_recorddiagnosis_diagnosis_id_db521f6e ON public.record_recorddiagnosis USING btree (diagnosis_id);
 @   DROP INDEX public.record_recorddiagnosis_diagnosis_id_db521f6e;
       public            admin    false    286                       1259    17883 )   record_recorddiagnosis_doctor_id_e96fea37    INDEX     q   CREATE INDEX record_recorddiagnosis_doctor_id_e96fea37 ON public.record_recorddiagnosis USING btree (doctor_id);
 =   DROP INDEX public.record_recorddiagnosis_doctor_id_e96fea37;
       public            admin    false    286                       1259    17881 )   record_recorddiagnosis_record_id_b5b2239f    INDEX     q   CREATE INDEX record_recorddiagnosis_record_id_b5b2239f ON public.record_recorddiagnosis USING btree (record_id);
 =   DROP INDEX public.record_recorddiagnosis_record_id_b5b2239f;
       public            admin    false    286            ?           1259    17311 !   record_service_record_id_ed47c13e    INDEX     a   CREATE INDEX record_service_record_id_ed47c13e ON public.record_service USING btree (record_id);
 5   DROP INDEX public.record_service_record_id_ed47c13e;
       public            admin    false    258            ?           1259    17312 "   record_service_service_id_9c4dfde3    INDEX     c   CREATE INDEX record_service_service_id_9c4dfde3 ON public.record_service USING btree (service_id);
 6   DROP INDEX public.record_service_service_id_9c4dfde3;
       public            admin    false    258            ?           1259    17823 *   service_hospitalservice_doctor_id_6c02b288    INDEX     s   CREATE INDEX service_hospitalservice_doctor_id_6c02b288 ON public.service_hospitalservice USING btree (doctor_id);
 >   DROP INDEX public.service_hospitalservice_doctor_id_6c02b288;
       public            admin    false    274            ?           1259    17821 1   service_hospitalservice_hospital_card_id_2b25416d    INDEX     ?   CREATE INDEX service_hospitalservice_hospital_card_id_2b25416d ON public.service_hospitalservice USING btree (hospital_card_id);
 E   DROP INDEX public.service_hospitalservice_hospital_card_id_2b25416d;
       public            admin    false    274            ?           1259    17822 +   service_hospitalservice_service_id_6821b73e    INDEX     u   CREATE INDEX service_hospitalservice_service_id_6821b73e ON public.service_hospitalservice USING btree (service_id);
 ?   DROP INDEX public.service_hospitalservice_service_id_6821b73e;
       public            admin    false    274            ?           1259    17834 ,   service_positionservice_position_id_09ecb20c    INDEX     w   CREATE INDEX service_positionservice_position_id_09ecb20c ON public.service_positionservice USING btree (position_id);
 @   DROP INDEX public.service_positionservice_position_id_09ecb20c;
       public            admin    false    276                        1259    17835 +   service_positionservice_service_id_f8b19122    INDEX     u   CREATE INDEX service_positionservice_service_id_f8b19122 ON public.service_positionservice USING btree (service_id);
 ?   DROP INDEX public.service_positionservice_service_id_f8b19122;
       public            admin    false    276            ?           1259    17804 (   service_recordservice_record_id_a2c84144    INDEX     o   CREATE INDEX service_recordservice_record_id_a2c84144 ON public.service_recordservice USING btree (record_id);
 <   DROP INDEX public.service_recordservice_record_id_a2c84144;
       public            admin    false    272            ?           1259    17805 )   service_recordservice_service_id_9a4ba5b9    INDEX     q   CREATE INDEX service_recordservice_service_id_9a4ba5b9 ON public.service_recordservice USING btree (service_id);
 =   DROP INDEX public.service_recordservice_service_id_9a4ba5b9;
       public            admin    false    272            ?           1259    17012 '   two_factor_phonedevice_user_id_54718003    INDEX     m   CREATE INDEX two_factor_phonedevice_user_id_54718003 ON public.two_factor_phonedevice USING btree (user_id);
 ;   DROP INDEX public.two_factor_phonedevice_user_id_54718003;
       public            admin    false    226                       2606    16869 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          admin    false    205    209    3194                       2606    16864 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          admin    false    209    3199    207                       2606    16855 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          admin    false    203    205    3189                       2606    16884 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          admin    false    3199    213    207                       2606    16879 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          admin    false    211    213    3207                       2606    16898 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          admin    false    215    205    3194                       2606    16893 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          admin    false    3207    211    215                       2606    16917 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          admin    false    3189    203    217                       2606    16922 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          admin    false    3207    211    217            >           2606    17787 M   doctor_doctor doctor_doctor_id_department_id_125fc7cd_fk_doctor_department_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.doctor_doctor
    ADD CONSTRAINT doctor_doctor_id_department_id_125fc7cd_fk_doctor_department_id FOREIGN KEY (id_department_id) REFERENCES public.doctor_department(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.doctor_doctor DROP CONSTRAINT doctor_doctor_id_department_id_125fc7cd_fk_doctor_department_id;
       public          admin    false    3309    268    266            =           2606    17782 I   doctor_doctor doctor_doctor_id_position_id_9db1ee70_fk_doctor_position_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.doctor_doctor
    ADD CONSTRAINT doctor_doctor_id_position_id_9db1ee70_fk_doctor_position_id FOREIGN KEY (id_position_id) REFERENCES public.doctor_position(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.doctor_doctor DROP CONSTRAINT doctor_doctor_id_position_id_9db1ee70_fk_doctor_position_id;
       public          admin    false    3307    264    268            $           2606    17043 8   doctor doctor_id_department_id_0d5d2396_fk_department_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_id_department_id_0d5d2396_fk_department_id FOREIGN KEY (id_department_id) REFERENCES public.department(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_id_department_id_0d5d2396_fk_department_id;
       public          admin    false    232    3246    228            %           2606    17048 4   doctor doctor_id_position_id_e26fbff7_fk_position_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_id_position_id_e26fbff7_fk_position_id FOREIGN KEY (id_position_id) REFERENCES public."position"(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_id_position_id_e26fbff7_fk_position_id;
       public          admin    false    3248    230    232            *           2606    17170 C   hospital_card hospital_card_department_id_48ac8810_fk_department_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hospital_card
    ADD CONSTRAINT hospital_card_department_id_48ac8810_fk_department_id FOREIGN KEY (department_id) REFERENCES public.department(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.hospital_card DROP CONSTRAINT hospital_card_department_id_48ac8810_fk_department_id;
       public          admin    false    228    244    3246            +           2606    17175 ;   hospital_card hospital_card_doctor_id_3451e072_fk_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hospital_card
    ADD CONSTRAINT hospital_card_doctor_id_3451e072_fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.hospital_card DROP CONSTRAINT hospital_card_doctor_id_3451e072_fk_doctor_id;
       public          admin    false    244    232    3252            :           2606    17325 A   hospital_service hospital_service_doctor_id_17e8548e_fk_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hospital_service
    ADD CONSTRAINT hospital_service_doctor_id_17e8548e_fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.hospital_service DROP CONSTRAINT hospital_service_doctor_id_17e8548e_fk_doctor_id;
       public          admin    false    232    262    3252            ;           2606    17330 O   hospital_service hospital_service_hospital_card_id_4231d314_fk_hospital_card_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hospital_service
    ADD CONSTRAINT hospital_service_hospital_card_id_4231d314_fk_hospital_card_id FOREIGN KEY (hospital_card_id) REFERENCES public.hospital_card(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.hospital_service DROP CONSTRAINT hospital_service_hospital_card_id_4231d314_fk_hospital_card_id;
       public          admin    false    3270    262    244            <           2606    17335 C   hospital_service hospital_service_service_id_0625012e_fk_service_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hospital_service
    ADD CONSTRAINT hospital_service_service_id_0625012e_fk_service_id FOREIGN KEY (service_id) REFERENCES public.service(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.hospital_service DROP CONSTRAINT hospital_service_service_id_0625012e_fk_service_id;
       public          admin    false    256    3292    262                        2606    16954 P   otp_static_staticdevice otp_static_staticdevice_user_id_7f9cff2b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.otp_static_staticdevice
    ADD CONSTRAINT otp_static_staticdevice_user_id_7f9cff2b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.otp_static_staticdevice DROP CONSTRAINT otp_static_staticdevice_user_id_7f9cff2b_fk_auth_user_id;
       public          admin    false    211    3207    219            !           2606    16960 K   otp_static_statictoken otp_static_statictok_device_id_74b7c7d1_fk_otp_stati    FK CONSTRAINT     ?   ALTER TABLE ONLY public.otp_static_statictoken
    ADD CONSTRAINT otp_static_statictok_device_id_74b7c7d1_fk_otp_stati FOREIGN KEY (device_id) REFERENCES public.otp_static_staticdevice(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.otp_static_statictoken DROP CONSTRAINT otp_static_statictok_device_id_74b7c7d1_fk_otp_stati;
       public          admin    false    221    3228    219            "           2606    16981 H   otp_totp_totpdevice otp_totp_totpdevice_user_id_0fb18292_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.otp_totp_totpdevice
    ADD CONSTRAINT otp_totp_totpdevice_user_id_0fb18292_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.otp_totp_totpdevice DROP CONSTRAINT otp_totp_totpdevice_user_id_0fb18292_fk_auth_user_id;
       public          admin    false    211    3207    223            &           2606    17247 A   patient_allergy patient_allergy_allergy_id_0c93b05e_fk_allergy_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.patient_allergy
    ADD CONSTRAINT patient_allergy_allergy_id_0c93b05e_fk_allergy_id FOREIGN KEY (allergy_id) REFERENCES public.allergy(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.patient_allergy DROP CONSTRAINT patient_allergy_allergy_id_0c93b05e_fk_allergy_id;
       public          admin    false    240    3264    236            '           2606    17252 A   patient_allergy patient_allergy_patient_id_83d966bc_fk_patient_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.patient_allergy
    ADD CONSTRAINT patient_allergy_patient_id_83d966bc_fk_patient_id FOREIGN KEY (patient_id) REFERENCES public.patient(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.patient_allergy DROP CONSTRAINT patient_allergy_patient_id_83d966bc_fk_patient_id;
       public          admin    false    236    3254    234            (           2606    17082 I   patient_vaccination patient_vaccination_patient_id_4bdc5f3f_fk_patient_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.patient_vaccination
    ADD CONSTRAINT patient_vaccination_patient_id_4bdc5f3f_fk_patient_id FOREIGN KEY (patient_id) REFERENCES public.patient(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.patient_vaccination DROP CONSTRAINT patient_vaccination_patient_id_4bdc5f3f_fk_patient_id;
       public          admin    false    3254    238    234            )           2606    17242 Q   patient_vaccination patient_vaccination_vaccination_id_d4d545d0_fk_vaccination_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.patient_vaccination
    ADD CONSTRAINT patient_vaccination_vaccination_id_d4d545d0_fk_vaccination_id FOREIGN KEY (vaccination_id) REFERENCES public.vaccination(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.patient_vaccination DROP CONSTRAINT patient_vaccination_vaccination_id_d4d545d0_fk_vaccination_id;
       public          admin    false    3277    248    238            2           2606    17218 K   position_diagnosis position_diagnosis_diagnosis_id_1beb5686_fk_diagnosis_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.position_diagnosis
    ADD CONSTRAINT position_diagnosis_diagnosis_id_1beb5686_fk_diagnosis_id FOREIGN KEY (diagnosis_id) REFERENCES public.diagnosis(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.position_diagnosis DROP CONSTRAINT position_diagnosis_diagnosis_id_1beb5686_fk_diagnosis_id;
       public          admin    false    242    252    3266            3           2606    17223 I   position_diagnosis position_diagnosis_position_id_f405f85a_fk_position_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.position_diagnosis
    ADD CONSTRAINT position_diagnosis_position_id_f405f85a_fk_position_id FOREIGN KEY (position_id) REFERENCES public."position"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.position_diagnosis DROP CONSTRAINT position_diagnosis_position_id_f405f85a_fk_position_id;
       public          admin    false    252    230    3248            8           2606    17313 E   position_service position_service_position_id_84243ee0_fk_position_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.position_service
    ADD CONSTRAINT position_service_position_id_84243ee0_fk_position_id FOREIGN KEY (position_id) REFERENCES public."position"(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.position_service DROP CONSTRAINT position_service_position_id_84243ee0_fk_position_id;
       public          admin    false    230    260    3248            9           2606    17318 C   position_service position_service_service_id_8a101a99_fk_service_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.position_service
    ADD CONSTRAINT position_service_service_id_8a101a99_fk_service_id FOREIGN KEY (service_id) REFERENCES public.service(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.position_service DROP CONSTRAINT position_service_service_id_8a101a99_fk_service_id;
       public          admin    false    260    3292    256            /           2606    17200 G   record_diagnosis record_diagnosis_diagnosis_id_6e808f09_fk_diagnosis_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_diagnosis
    ADD CONSTRAINT record_diagnosis_diagnosis_id_6e808f09_fk_diagnosis_id FOREIGN KEY (diagnosis_id) REFERENCES public.diagnosis(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.record_diagnosis DROP CONSTRAINT record_diagnosis_diagnosis_id_6e808f09_fk_diagnosis_id;
       public          admin    false    250    3266    242            0           2606    17205 A   record_diagnosis record_diagnosis_doctor_id_7aa7ed91_fk_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_diagnosis
    ADD CONSTRAINT record_diagnosis_doctor_id_7aa7ed91_fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.record_diagnosis DROP CONSTRAINT record_diagnosis_doctor_id_7aa7ed91_fk_doctor_id;
       public          admin    false    3252    250    232            1           2606    17210 A   record_diagnosis record_diagnosis_record_id_842b0ea9_fk_record_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_diagnosis
    ADD CONSTRAINT record_diagnosis_record_id_842b0ea9_fk_record_id FOREIGN KEY (record_id) REFERENCES public.record(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.record_diagnosis DROP CONSTRAINT record_diagnosis_record_id_842b0ea9_fk_record_id;
       public          admin    false    250    246    3275            ,           2606    17182 -   record record_doctor_id_c4496a33_fk_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_doctor_id_c4496a33_fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) DEFERRABLE INITIALLY DEFERRED;
 W   ALTER TABLE ONLY public.record DROP CONSTRAINT record_doctor_id_c4496a33_fk_doctor_id;
       public          admin    false    246    232    3252            -           2606    17187 ;   record record_hospital_card_id_f83e823b_fk_hospital_card_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_hospital_card_id_f83e823b_fk_hospital_card_id FOREIGN KEY (hospital_card_id) REFERENCES public.hospital_card(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.record DROP CONSTRAINT record_hospital_card_id_f83e823b_fk_hospital_card_id;
       public          admin    false    246    3270    244            G           2606    17841 K   record_hospitalcard record_hospitalcard_department_id_d33577c6_fk_doctor_de    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_hospitalcard
    ADD CONSTRAINT record_hospitalcard_department_id_d33577c6_fk_doctor_de FOREIGN KEY (department_id) REFERENCES public.doctor_department(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.record_hospitalcard DROP CONSTRAINT record_hospitalcard_department_id_d33577c6_fk_doctor_de;
       public          admin    false    266    282    3309            F           2606    17836 N   record_hospitalcard record_hospitalcard_doctor_id_f2b0303b_fk_doctor_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_hospitalcard
    ADD CONSTRAINT record_hospitalcard_doctor_id_f2b0303b_fk_doctor_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.record_hospitalcard DROP CONSTRAINT record_hospitalcard_doctor_id_f2b0303b_fk_doctor_doctor_id;
       public          admin    false    3313    268    282            4           2606    17230 U   record_hospitalcardrecord record_hospitalcardr_hospital_card_id_17ff765b_fk_hospital_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_hospitalcardrecord
    ADD CONSTRAINT record_hospitalcardr_hospital_card_id_17ff765b_fk_hospital_ FOREIGN KEY (hospital_card_id) REFERENCES public.hospital_card(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.record_hospitalcardrecord DROP CONSTRAINT record_hospitalcardr_hospital_card_id_17ff765b_fk_hospital_;
       public          admin    false    3270    254    244            5           2606    17235 S   record_hospitalcardrecord record_hospitalcardrecord_record_id_fdd5fc45_fk_record_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_hospitalcardrecord
    ADD CONSTRAINT record_hospitalcardrecord_record_id_fdd5fc45_fk_record_id FOREIGN KEY (record_id) REFERENCES public.record(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.record_hospitalcardrecord DROP CONSTRAINT record_hospitalcardrecord_record_id_fdd5fc45_fk_record_id;
       public          admin    false    246    254    3275            .           2606    17192 /   record record_patient_id_397f3732_fk_patient_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_patient_id_397f3732_fk_patient_id FOREIGN KEY (patient_id) REFERENCES public.patient(id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY public.record DROP CONSTRAINT record_patient_id_397f3732_fk_patient_id;
       public          admin    false    234    246    3254            O           2606    17889 P   record_positiondiagnosis record_positiondiagn_diagnosis_id_0b69765f_fk_record_di    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_positiondiagnosis
    ADD CONSTRAINT record_positiondiagn_diagnosis_id_0b69765f_fk_record_di FOREIGN KEY (diagnosis_id) REFERENCES public.record_diagnosis(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.record_positiondiagnosis DROP CONSTRAINT record_positiondiagn_diagnosis_id_0b69765f_fk_record_di;
       public          admin    false    288    250    3281            N           2606    17884 O   record_positiondiagnosis record_positiondiagn_position_id_611b2a97_fk_doctor_po    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_positiondiagnosis
    ADD CONSTRAINT record_positiondiagn_position_id_611b2a97_fk_doctor_po FOREIGN KEY (position_id) REFERENCES public.doctor_position(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.record_positiondiagnosis DROP CONSTRAINT record_positiondiagn_position_id_611b2a97_fk_doctor_po;
       public          admin    false    3307    264    288            I           2606    17853 B   record_record record_record_doctor_id_a36f4155_fk_doctor_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_record
    ADD CONSTRAINT record_record_doctor_id_a36f4155_fk_doctor_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.record_record DROP CONSTRAINT record_record_doctor_id_a36f4155_fk_doctor_doctor_id;
       public          admin    false    3313    284    268            J           2606    17858 B   record_record record_record_hospital_card_id_0af83442_fk_record_ho    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_record
    ADD CONSTRAINT record_record_hospital_card_id_0af83442_fk_record_ho FOREIGN KEY (hospital_card_id) REFERENCES public.record_hospitalcard(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.record_record DROP CONSTRAINT record_record_hospital_card_id_0af83442_fk_record_ho;
       public          admin    false    3336    282    284            H           2606    17848 =   record_record record_record_patient_id_5450df44_fk_patient_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_record
    ADD CONSTRAINT record_record_patient_id_5450df44_fk_patient_id FOREIGN KEY (patient_id) REFERENCES public.patient(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.record_record DROP CONSTRAINT record_record_patient_id_5450df44_fk_patient_id;
       public          admin    false    3254    234    284            L           2606    17871 N   record_recorddiagnosis record_recorddiagnos_diagnosis_id_db521f6e_fk_record_di    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_recorddiagnosis
    ADD CONSTRAINT record_recorddiagnos_diagnosis_id_db521f6e_fk_record_di FOREIGN KEY (diagnosis_id) REFERENCES public.record_diagnosis(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.record_recorddiagnosis DROP CONSTRAINT record_recorddiagnos_diagnosis_id_db521f6e_fk_record_di;
       public          admin    false    3281    250    286            M           2606    17876 T   record_recorddiagnosis record_recorddiagnosis_doctor_id_e96fea37_fk_doctor_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_recorddiagnosis
    ADD CONSTRAINT record_recorddiagnosis_doctor_id_e96fea37_fk_doctor_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.record_recorddiagnosis DROP CONSTRAINT record_recorddiagnosis_doctor_id_e96fea37_fk_doctor_doctor_id;
       public          admin    false    3313    286    268            K           2606    17866 T   record_recorddiagnosis record_recorddiagnosis_record_id_b5b2239f_fk_record_record_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_recorddiagnosis
    ADD CONSTRAINT record_recorddiagnosis_record_id_b5b2239f_fk_record_record_id FOREIGN KEY (record_id) REFERENCES public.record_record(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.record_recorddiagnosis DROP CONSTRAINT record_recorddiagnosis_record_id_b5b2239f_fk_record_record_id;
       public          admin    false    3341    284    286            6           2606    17301 =   record_service record_service_record_id_ed47c13e_fk_record_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_service
    ADD CONSTRAINT record_service_record_id_ed47c13e_fk_record_id FOREIGN KEY (record_id) REFERENCES public.record(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.record_service DROP CONSTRAINT record_service_record_id_ed47c13e_fk_record_id;
       public          admin    false    246    3275    258            7           2606    17306 ?   record_service record_service_service_id_9c4dfde3_fk_service_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.record_service
    ADD CONSTRAINT record_service_service_id_9c4dfde3_fk_service_id FOREIGN KEY (service_id) REFERENCES public.service(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.record_service DROP CONSTRAINT record_service_service_id_9c4dfde3_fk_service_id;
       public          admin    false    256    3292    258            A           2606    17806 S   service_hospitalservice service_hospitalserv_hospital_card_id_2b25416d_fk_record_ho    FK CONSTRAINT     ?   ALTER TABLE ONLY public.service_hospitalservice
    ADD CONSTRAINT service_hospitalserv_hospital_card_id_2b25416d_fk_record_ho FOREIGN KEY (hospital_card_id) REFERENCES public.record_hospitalcard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.service_hospitalservice DROP CONSTRAINT service_hospitalserv_hospital_card_id_2b25416d_fk_record_ho;
       public          admin    false    282    3336    274            B           2606    17811 M   service_hospitalservice service_hospitalserv_service_id_6821b73e_fk_service_s    FK CONSTRAINT     ?   ALTER TABLE ONLY public.service_hospitalservice
    ADD CONSTRAINT service_hospitalserv_service_id_6821b73e_fk_service_s FOREIGN KEY (service_id) REFERENCES public.service_service(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.service_hospitalservice DROP CONSTRAINT service_hospitalserv_service_id_6821b73e_fk_service_s;
       public          admin    false    274    270    3315            C           2606    17816 V   service_hospitalservice service_hospitalservice_doctor_id_6c02b288_fk_doctor_doctor_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.service_hospitalservice
    ADD CONSTRAINT service_hospitalservice_doctor_id_6c02b288_fk_doctor_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.service_hospitalservice DROP CONSTRAINT service_hospitalservice_doctor_id_6c02b288_fk_doctor_doctor_id;
       public          admin    false    268    3313    274            D           2606    17824 N   service_positionservice service_positionserv_position_id_09ecb20c_fk_doctor_po    FK CONSTRAINT     ?   ALTER TABLE ONLY public.service_positionservice
    ADD CONSTRAINT service_positionserv_position_id_09ecb20c_fk_doctor_po FOREIGN KEY (position_id) REFERENCES public.doctor_position(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.service_positionservice DROP CONSTRAINT service_positionserv_position_id_09ecb20c_fk_doctor_po;
       public          admin    false    264    3307    276            E           2606    17829 M   service_positionservice service_positionserv_service_id_f8b19122_fk_service_s    FK CONSTRAINT     ?   ALTER TABLE ONLY public.service_positionservice
    ADD CONSTRAINT service_positionserv_service_id_f8b19122_fk_service_s FOREIGN KEY (service_id) REFERENCES public.service_service(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.service_positionservice DROP CONSTRAINT service_positionserv_service_id_f8b19122_fk_service_s;
       public          admin    false    3315    276    270            ?           2606    17794 R   service_recordservice service_recordservice_record_id_a2c84144_fk_record_record_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.service_recordservice
    ADD CONSTRAINT service_recordservice_record_id_a2c84144_fk_record_record_id FOREIGN KEY (record_id) REFERENCES public.record_record(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.service_recordservice DROP CONSTRAINT service_recordservice_record_id_a2c84144_fk_record_record_id;
       public          admin    false    272    3341    284            @           2606    17799 U   service_recordservice service_recordservice_service_id_9a4ba5b9_fk_service_service_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.service_recordservice
    ADD CONSTRAINT service_recordservice_service_id_9a4ba5b9_fk_service_service_id FOREIGN KEY (service_id) REFERENCES public.service_service(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.service_recordservice DROP CONSTRAINT service_recordservice_service_id_9a4ba5b9_fk_service_service_id;
       public          admin    false    272    3315    270            #           2606    17013 N   two_factor_phonedevice two_factor_phonedevice_user_id_54718003_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.two_factor_phonedevice
    ADD CONSTRAINT two_factor_phonedevice_user_id_54718003_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.two_factor_phonedevice DROP CONSTRAINT two_factor_phonedevice_user_id_54718003_fk_auth_user_id;
       public          admin    false    3207    211    226            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   :  x?}?A??:???W??bBH8?eo?Z??IO(A?2vV???mw?q?6?????r????vص???>?v?0O[,??.??Ҕ???í#?/)xpൻw3?~I?ʁ}???uA?ct???????ǡ(?5]05?#P?{BĊA`?j?H??&??M??Gqp?????\?/???) bG?R????ۇ???????X?4????]y???v?????r۽??<?7_?a^~?????G?@??c?h$????Jx??|?W?	??k??g????+SR?+#>#Fݮ?؋??B?UD?ӟs;??????+Nޗ[?K??~O?`????"?%?~?{?D7??y???3?w+???x0Y?f???_n|l?????׏P`?L?????!F?2Ҕ'??0?.f?]$5i??q??0?8\?JQK?p&????
???
??tDX?v??4?/9,??0?b*
?bi???i? ??.?0s?g??a?2r??T<q ?I?7@?]?$N??vFJ?v?>?
맍?2Gʗ"a???T)?M(Ȓ2~???=?\?G??~~?}??K???????z??#e볇??}?J?g?	???9??Ϟ???8?w??߻??|???;?x~? ??D?7/w???z??zP??G?M?.l?????T?B\???*V????ڸ])4h?m??<???D??eSgÍ?$?Q??:
??Ga&?(?# ?`?T??'??
ů?x?*?c??٪?|??'???|?s{W?Oְ%t?T?w#????R?F!??\E??z?.???^?	?W#NQ?*??DD?݊??!?[??%ش?k?ކ???Ei???l?e?RQ= <d*"!??jSɠ.e?*?? ?'??I?A?O=??܃8?|?R?A?lsvi?kQ(d??i?ل>????l??$	????TE?㇤????3M?m??F3?q?_+E]e?:m???2??'}?G5N?????b?x?tM??????1Ú?o??_???)E֛f?z????f#?)?yy?I?ҝo&J5???5vO?&2|L&8|?%???O??????????
R
B
s???c??n3ݷ      ?   ?   x?m??N?@?3<nH/?͒???Z?011,?8?qЧ??AcU????(/yWV?????:?!??to??_?ŉ???D???h????aw??^//;hÛ$????)l jP?!???nb?XĕI??e?"g??'.?L?BL?U???????l??;z?jN?E?????Ux??f?o?????:/?+???caSW??!?߶???A?????ڍY??/*???S?K-?p?>???~Q%V?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   :   x?3?4202?50?50R02?24?24ѳ46447?60?4?L?LI,Ҝ&??\1z\\\ `	?      ?     x?m??n? ??3?\?.?*,AK??*o?r1ʶ????|8??;S??4????Mw??ϛ2???xٚG?	??S??m>6?B??;?v(?2)r?b??i??B??z????˱???+ܾT?J??-&???Q%??uPHcȎ?UĹέ?b?-?\_?Ƨ??y?Y?wj?lf?_??+???j?ޣ?+?ҵJc?ё??SE???Lb?b?|??(%?>?33?*??ߗ?lX8>?l߹??1<????[}~ ??n??      ?   ?  x????n?0???????@$??g ??s,OV???'˩??*\?Ѝ}>???.???)]?6?1?mߦ?u2?F/H??^??"nS??O&7ظK:}CaH?I@?۟?~]a@JГ??%h?p?yƫ??޼???u?}???0%??3???:?v??=t?hw????U?DQP??Y???텝??ޝ}?d?P4???Z?%?????)?Io???v????>?h?@?J/(??.c>?ٵ?*?2???,?H???NR͝??B????!???|?+?t??g?d?x??B?????6.???d???ܧS?Rys]?w)ı4???=?qt?j?3N)???h???;+6Cv???_H??G?Bq3?->P?n?c??{n??3??e?y;??~}?Ⱥ? ???q|???????&???ɥv??,h??9?B?$D?N1?Ե???՚?2/Ȋ6?c=d?3??~B?O??NB?qd?)?:A????????
??ȨI?=?⺐C??)?O?{?"@?Y?k\e?!?7?xb?C????^7W?̐O?0$ü?@??3????!?m^M?Z??8?l?Oi?S??޿??????v??ҥ*H?@?A?ه??A???׬#??D???f?ÚۺHi??uM???k"??r??"??PK?LM?* ????;?o?d?zX???I?k??l?$?<?      ?   e  x?M?G??h??q?*j???<#c2?IF-!?`?ə???RK????y?7i?%??$)???SҌ=<?kY???_?z ޲?x?:1??嬬7ܝ?z??CH?tp|??@??J<ݰʭb}K??b????[???a??ٖ?|?&zbG?{??A?m3&?Q'?w?5\?϶?D??o?H?<?P????#????x?i\ɿ/Ϧ???A^????[??]???l???(?L?$????dǗG? *?ux??_????Uf?q;??R?IfD?A??\.U*n??????[??%?^k1?J????7)Q?
S???$@??	?f؆ᥓ?MMG?x?)?,??;?C?e@Z???5?g??^L????ðZX)?a?ٹX???&MH?L?x&?{u?x?ź2>	??3-?!>???bV??v:U?J?????p+c䴚3???y??'a?5????(slQ*u?p)?<&?ֺ?<?r?Q???!(F????^qt?aC?aG????\?G???B?????&??? ?]?z@? ???w?]jq1?Ҏ?\>DA?f|??@a?`B?_0}???|8???_0?s?7??????*?ij??5??g?灬?????1[??bA??!l??Ԇ??2F???
?M??????g?L?l?m???~wgRTH???>^X??Db???(]+?!?k????"??P_?;ꈮ":??n???Rp??Ųqc5??[? `?哜?3?m^?`&}????v	N???a"?????7?އ???(?k????$??J4d???!
?0?t@C*B_???a?????????.??A????|ڌ-٫?
Kz??F???!n??(????࿝?f?r??}?2bHڣ??5kl??u??u???X???8GI??U???U7?
<????ui??,??????????'??|Pb/?.?e?2mW?k+&?=%?%'%???????ا??_~?C~??״?/???t??h㹍????E?ʻ<JK@?t?	???c9?Q*	?)??T??!.?|D?SbŒ?g>v?????cs????ܬ=s(Osuk?,??&"??m?Ml????2??}
???????(+Cz??O?)?B??Jm??yk]????V ~!???p?G	G????ϟ??E?ڱ      ?      x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?      ?      x?????? ? ?            x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   P   x?ǹ?0 ???O?????2??9?????6?ve!c?Mϴ$?l1??v????OM??????_??      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?            x?????? ? ?            x?????? ? ?             x?????? ? ?             x?????? ? ?            x?????? ? ?      $      x?????? ? ?            x?????? ? ?      *      x?????? ? ?      &      x?????? ? ?      (      x?????? ? ?            x?????? ? ?      "      x?????? ? ?      
      x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?      ?      x?????? ? ?            x?????? ? ?     