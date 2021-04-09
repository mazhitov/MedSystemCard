--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-09 11:32:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 240 (class 1259 OID 17090)
-- Name: allergy; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.allergy (
    id integer NOT NULL,
    name_allergy text NOT NULL
);


ALTER TABLE public.allergy OWNER TO admin;

--
-- TOC entry 239 (class 1259 OID 17088)
-- Name: allergy_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.allergy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.allergy_id_seq OWNER TO admin;

--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 239
-- Name: allergy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.allergy_id_seq OWNED BY public.allergy.id;


--
-- TOC entry 207 (class 1259 OID 16811)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- TOC entry 206 (class 1259 OID 16809)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 209 (class 1259 OID 16821)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- TOC entry 208 (class 1259 OID 16819)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 205 (class 1259 OID 16803)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- TOC entry 204 (class 1259 OID 16801)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 211 (class 1259 OID 16829)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user (
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


ALTER TABLE public.auth_user OWNER TO admin;

--
-- TOC entry 213 (class 1259 OID 16839)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin;

--
-- TOC entry 212 (class 1259 OID 16837)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin;

--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 210 (class 1259 OID 16827)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin;

--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 215 (class 1259 OID 16847)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin;

--
-- TOC entry 214 (class 1259 OID 16845)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin;

--
-- TOC entry 3638 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 228 (class 1259 OID 17021)
-- Name: department; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.department (
    id integer NOT NULL,
    name_department character varying(100) NOT NULL
);


ALTER TABLE public.department OWNER TO admin;

--
-- TOC entry 227 (class 1259 OID 17019)
-- Name: department_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.department_id_seq OWNER TO admin;

--
-- TOC entry 3639 (class 0 OID 0)
-- Dependencies: 227
-- Name: department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.department_id_seq OWNED BY public.department.id;


--
-- TOC entry 242 (class 1259 OID 17101)
-- Name: diagnosis; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.diagnosis (
    id integer NOT NULL,
    name_diagnosis text NOT NULL
);


ALTER TABLE public.diagnosis OWNER TO admin;

--
-- TOC entry 241 (class 1259 OID 17099)
-- Name: diagnosis_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.diagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.diagnosis_id_seq OWNER TO admin;

--
-- TOC entry 3640 (class 0 OID 0)
-- Dependencies: 241
-- Name: diagnosis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.diagnosis_id_seq OWNED BY public.diagnosis.id;


--
-- TOC entry 217 (class 1259 OID 16907)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- TOC entry 216 (class 1259 OID 16905)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- TOC entry 3641 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 203 (class 1259 OID 16793)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- TOC entry 202 (class 1259 OID 16791)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- TOC entry 3642 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 201 (class 1259 OID 16782)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- TOC entry 200 (class 1259 OID 16780)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- TOC entry 3643 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 224 (class 1259 OID 16989)
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- TOC entry 232 (class 1259 OID 17037)
-- Name: doctor; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.doctor (
    id integer NOT NULL,
    doctors_name character varying(100) NOT NULL,
    office character varying(20) NOT NULL,
    id_department_id integer NOT NULL,
    id_position_id integer NOT NULL
);


ALTER TABLE public.doctor OWNER TO admin;

--
-- TOC entry 266 (class 1259 OID 17664)
-- Name: doctor_department; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.doctor_department (
    id integer NOT NULL,
    name_department character varying(100) NOT NULL
);


ALTER TABLE public.doctor_department OWNER TO admin;

--
-- TOC entry 265 (class 1259 OID 17662)
-- Name: doctor_department_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.doctor_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doctor_department_id_seq OWNER TO admin;

--
-- TOC entry 3644 (class 0 OID 0)
-- Dependencies: 265
-- Name: doctor_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.doctor_department_id_seq OWNED BY public.doctor_department.id;


--
-- TOC entry 268 (class 1259 OID 17672)
-- Name: doctor_doctor; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.doctor_doctor (
    id integer NOT NULL,
    doctors_name character varying(100) NOT NULL,
    id_position_id integer NOT NULL,
    office character varying(20) NOT NULL,
    id_department_id integer NOT NULL
);


ALTER TABLE public.doctor_doctor OWNER TO admin;

--
-- TOC entry 267 (class 1259 OID 17670)
-- Name: doctor_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.doctor_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doctor_doctor_id_seq OWNER TO admin;

--
-- TOC entry 3645 (class 0 OID 0)
-- Dependencies: 267
-- Name: doctor_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.doctor_doctor_id_seq OWNED BY public.doctor_doctor.id;


--
-- TOC entry 231 (class 1259 OID 17035)
-- Name: doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doctor_id_seq OWNER TO admin;

--
-- TOC entry 3646 (class 0 OID 0)
-- Dependencies: 231
-- Name: doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.doctor_id_seq OWNED BY public.doctor.id;


--
-- TOC entry 264 (class 1259 OID 17656)
-- Name: doctor_position; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.doctor_position (
    id integer NOT NULL,
    name_position character varying(200) NOT NULL
);


ALTER TABLE public.doctor_position OWNER TO admin;

--
-- TOC entry 263 (class 1259 OID 17654)
-- Name: doctor_position_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.doctor_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doctor_position_id_seq OWNER TO admin;

--
-- TOC entry 3647 (class 0 OID 0)
-- Dependencies: 263
-- Name: doctor_position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.doctor_position_id_seq OWNED BY public.doctor_position.id;


--
-- TOC entry 244 (class 1259 OID 17112)
-- Name: hospital_card; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.hospital_card (
    id integer NOT NULL,
    arrival_date timestamp with time zone NOT NULL,
    discharge_date timestamp with time zone NOT NULL,
    hospitalization_type text NOT NULL,
    chamber character varying(50) NOT NULL,
    department_id integer NOT NULL,
    doctor_id integer NOT NULL
);


ALTER TABLE public.hospital_card OWNER TO admin;

--
-- TOC entry 243 (class 1259 OID 17110)
-- Name: hospital_card_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.hospital_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hospital_card_id_seq OWNER TO admin;

--
-- TOC entry 3648 (class 0 OID 0)
-- Dependencies: 243
-- Name: hospital_card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.hospital_card_id_seq OWNED BY public.hospital_card.id;


--
-- TOC entry 262 (class 1259 OID 17292)
-- Name: hospital_service; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.hospital_service (
    id integer NOT NULL,
    rec_date timestamp with time zone NOT NULL,
    comment text NOT NULL,
    doctor_id integer NOT NULL,
    hospital_card_id integer NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE public.hospital_service OWNER TO admin;

--
-- TOC entry 261 (class 1259 OID 17290)
-- Name: hospital_service_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.hospital_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hospital_service_id_seq OWNER TO admin;

--
-- TOC entry 3649 (class 0 OID 0)
-- Dependencies: 261
-- Name: hospital_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.hospital_service_id_seq OWNED BY public.hospital_service.id;


--
-- TOC entry 219 (class 1259 OID 16940)
-- Name: otp_static_staticdevice; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.otp_static_staticdevice (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    confirmed boolean NOT NULL,
    user_id integer NOT NULL,
    throttling_failure_count integer NOT NULL,
    throttling_failure_timestamp timestamp with time zone,
    CONSTRAINT otp_static_staticdevice_throttling_failure_count_check CHECK ((throttling_failure_count >= 0))
);


ALTER TABLE public.otp_static_staticdevice OWNER TO admin;

--
-- TOC entry 218 (class 1259 OID 16938)
-- Name: otp_static_staticdevice_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.otp_static_staticdevice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.otp_static_staticdevice_id_seq OWNER TO admin;

--
-- TOC entry 3650 (class 0 OID 0)
-- Dependencies: 218
-- Name: otp_static_staticdevice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.otp_static_staticdevice_id_seq OWNED BY public.otp_static_staticdevice.id;


--
-- TOC entry 221 (class 1259 OID 16948)
-- Name: otp_static_statictoken; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.otp_static_statictoken (
    id integer NOT NULL,
    token character varying(16) NOT NULL,
    device_id integer NOT NULL
);


ALTER TABLE public.otp_static_statictoken OWNER TO admin;

--
-- TOC entry 220 (class 1259 OID 16946)
-- Name: otp_static_statictoken_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.otp_static_statictoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.otp_static_statictoken_id_seq OWNER TO admin;

--
-- TOC entry 3651 (class 0 OID 0)
-- Dependencies: 220
-- Name: otp_static_statictoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.otp_static_statictoken_id_seq OWNED BY public.otp_static_statictoken.id;


--
-- TOC entry 223 (class 1259 OID 16972)
-- Name: otp_totp_totpdevice; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.otp_totp_totpdevice (
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


ALTER TABLE public.otp_totp_totpdevice OWNER TO admin;

--
-- TOC entry 222 (class 1259 OID 16970)
-- Name: otp_totp_totpdevice_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.otp_totp_totpdevice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.otp_totp_totpdevice_id_seq OWNER TO admin;

--
-- TOC entry 3652 (class 0 OID 0)
-- Dependencies: 222
-- Name: otp_totp_totpdevice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.otp_totp_totpdevice_id_seq OWNED BY public.otp_totp_totpdevice.id;


--
-- TOC entry 234 (class 1259 OID 17057)
-- Name: patient; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.patient (
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


ALTER TABLE public.patient OWNER TO admin;

--
-- TOC entry 236 (class 1259 OID 17065)
-- Name: patient_allergy; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.patient_allergy (
    id integer NOT NULL,
    comment text NOT NULL,
    allergy_id integer NOT NULL,
    patient_id integer NOT NULL
);


ALTER TABLE public.patient_allergy OWNER TO admin;

--
-- TOC entry 235 (class 1259 OID 17063)
-- Name: patient_allergy_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.patient_allergy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_allergy_id_seq OWNER TO admin;

--
-- TOC entry 3653 (class 0 OID 0)
-- Dependencies: 235
-- Name: patient_allergy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.patient_allergy_id_seq OWNED BY public.patient_allergy.id;


--
-- TOC entry 233 (class 1259 OID 17055)
-- Name: patient_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_id_seq OWNER TO admin;

--
-- TOC entry 3654 (class 0 OID 0)
-- Dependencies: 233
-- Name: patient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.patient_id_seq OWNED BY public.patient.id;


--
-- TOC entry 238 (class 1259 OID 17076)
-- Name: patient_vaccination; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.patient_vaccination (
    id integer NOT NULL,
    date_vaccination timestamp with time zone NOT NULL,
    patient_id integer NOT NULL,
    vaccination_id integer NOT NULL
);


ALTER TABLE public.patient_vaccination OWNER TO admin;

--
-- TOC entry 237 (class 1259 OID 17074)
-- Name: patient_vaccination_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.patient_vaccination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_vaccination_id_seq OWNER TO admin;

--
-- TOC entry 3655 (class 0 OID 0)
-- Dependencies: 237
-- Name: patient_vaccination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.patient_vaccination_id_seq OWNED BY public.patient_vaccination.id;


--
-- TOC entry 230 (class 1259 OID 17029)
-- Name: position; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."position" (
    id integer NOT NULL,
    name_position character varying(200) NOT NULL
);


ALTER TABLE public."position" OWNER TO admin;

--
-- TOC entry 252 (class 1259 OID 17156)
-- Name: position_diagnosis; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.position_diagnosis (
    id integer NOT NULL,
    diagnosis_id integer NOT NULL,
    position_id integer NOT NULL
);


ALTER TABLE public.position_diagnosis OWNER TO admin;

--
-- TOC entry 251 (class 1259 OID 17154)
-- Name: position_diagnosis_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.position_diagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.position_diagnosis_id_seq OWNER TO admin;

--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 251
-- Name: position_diagnosis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.position_diagnosis_id_seq OWNED BY public.position_diagnosis.id;


--
-- TOC entry 229 (class 1259 OID 17027)
-- Name: position_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.position_id_seq OWNER TO admin;

--
-- TOC entry 3657 (class 0 OID 0)
-- Dependencies: 229
-- Name: position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.position_id_seq OWNED BY public."position".id;


--
-- TOC entry 260 (class 1259 OID 17284)
-- Name: position_service; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.position_service (
    id integer NOT NULL,
    position_id integer NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE public.position_service OWNER TO admin;

--
-- TOC entry 259 (class 1259 OID 17282)
-- Name: position_service_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.position_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.position_service_id_seq OWNER TO admin;

--
-- TOC entry 3658 (class 0 OID 0)
-- Dependencies: 259
-- Name: position_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.position_service_id_seq OWNED BY public.position_service.id;


--
-- TOC entry 246 (class 1259 OID 17123)
-- Name: record; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record (
    id integer NOT NULL,
    date_record timestamp with time zone NOT NULL,
    lamentation text NOT NULL,
    doctor_id integer NOT NULL,
    hospital_card_id integer NOT NULL,
    patient_id integer NOT NULL
);


ALTER TABLE public.record OWNER TO admin;

--
-- TOC entry 278 (class 1259 OID 17721)
-- Name: record_allergy; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record_allergy (
    id integer NOT NULL,
    name_allergy text NOT NULL
);


ALTER TABLE public.record_allergy OWNER TO admin;

--
-- TOC entry 277 (class 1259 OID 17719)
-- Name: record_allergy_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.record_allergy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_allergy_id_seq OWNER TO admin;

--
-- TOC entry 3659 (class 0 OID 0)
-- Dependencies: 277
-- Name: record_allergy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.record_allergy_id_seq OWNED BY public.record_allergy.id;


--
-- TOC entry 250 (class 1259 OID 17145)
-- Name: record_diagnosis; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record_diagnosis (
    id integer NOT NULL,
    comment text NOT NULL,
    diagnosis_id integer NOT NULL,
    doctor_id integer NOT NULL,
    record_id integer NOT NULL
);


ALTER TABLE public.record_diagnosis OWNER TO admin;

--
-- TOC entry 249 (class 1259 OID 17143)
-- Name: record_diagnosis_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.record_diagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_diagnosis_id_seq OWNER TO admin;

--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 249
-- Name: record_diagnosis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.record_diagnosis_id_seq OWNED BY public.record_diagnosis.id;


--
-- TOC entry 282 (class 1259 OID 17743)
-- Name: record_hospitalcard; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record_hospitalcard (
    id integer NOT NULL,
    doctor_id integer NOT NULL,
    arrival_date timestamp with time zone NOT NULL,
    discharge_date timestamp with time zone NOT NULL,
    hospitalization_type text NOT NULL,
    department_id integer NOT NULL,
    chamber character varying(50) NOT NULL
);


ALTER TABLE public.record_hospitalcard OWNER TO admin;

--
-- TOC entry 281 (class 1259 OID 17741)
-- Name: record_hospitalcard_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.record_hospitalcard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_hospitalcard_id_seq OWNER TO admin;

--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 281
-- Name: record_hospitalcard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.record_hospitalcard_id_seq OWNED BY public.record_hospitalcard.id;


--
-- TOC entry 254 (class 1259 OID 17164)
-- Name: record_hospitalcardrecord; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record_hospitalcardrecord (
    id integer NOT NULL,
    hospital_card_id integer NOT NULL,
    record_id integer NOT NULL
);


ALTER TABLE public.record_hospitalcardrecord OWNER TO admin;

--
-- TOC entry 253 (class 1259 OID 17162)
-- Name: record_hospitalcardrecord_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.record_hospitalcardrecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_hospitalcardrecord_id_seq OWNER TO admin;

--
-- TOC entry 3662 (class 0 OID 0)
-- Dependencies: 253
-- Name: record_hospitalcardrecord_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.record_hospitalcardrecord_id_seq OWNED BY public.record_hospitalcardrecord.id;


--
-- TOC entry 245 (class 1259 OID 17121)
-- Name: record_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_id_seq OWNER TO admin;

--
-- TOC entry 3663 (class 0 OID 0)
-- Dependencies: 245
-- Name: record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.record_id_seq OWNED BY public.record.id;


--
-- TOC entry 288 (class 1259 OID 17776)
-- Name: record_positiondiagnosis; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record_positiondiagnosis (
    id integer NOT NULL,
    position_id integer NOT NULL,
    diagnosis_id integer NOT NULL
);


ALTER TABLE public.record_positiondiagnosis OWNER TO admin;

--
-- TOC entry 287 (class 1259 OID 17774)
-- Name: record_positiondiagnosis_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.record_positiondiagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_positiondiagnosis_id_seq OWNER TO admin;

--
-- TOC entry 3664 (class 0 OID 0)
-- Dependencies: 287
-- Name: record_positiondiagnosis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.record_positiondiagnosis_id_seq OWNED BY public.record_positiondiagnosis.id;


--
-- TOC entry 284 (class 1259 OID 17754)
-- Name: record_record; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record_record (
    id integer NOT NULL,
    patient_id integer NOT NULL,
    date_record timestamp with time zone NOT NULL,
    doctor_id integer NOT NULL,
    lamentation text NOT NULL,
    hospital_card_id integer NOT NULL
);


ALTER TABLE public.record_record OWNER TO admin;

--
-- TOC entry 283 (class 1259 OID 17752)
-- Name: record_record_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.record_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_record_id_seq OWNER TO admin;

--
-- TOC entry 3665 (class 0 OID 0)
-- Dependencies: 283
-- Name: record_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.record_record_id_seq OWNED BY public.record_record.id;


--
-- TOC entry 286 (class 1259 OID 17765)
-- Name: record_recorddiagnosis; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record_recorddiagnosis (
    id integer NOT NULL,
    record_id integer NOT NULL,
    diagnosis_id integer NOT NULL,
    doctor_id integer NOT NULL,
    comment text NOT NULL
);


ALTER TABLE public.record_recorddiagnosis OWNER TO admin;

--
-- TOC entry 285 (class 1259 OID 17763)
-- Name: record_recorddiagnosis_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.record_recorddiagnosis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_recorddiagnosis_id_seq OWNER TO admin;

--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 285
-- Name: record_recorddiagnosis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.record_recorddiagnosis_id_seq OWNED BY public.record_recorddiagnosis.id;


--
-- TOC entry 258 (class 1259 OID 17273)
-- Name: record_service; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record_service (
    id integer NOT NULL,
    comment text NOT NULL,
    record_id integer NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE public.record_service OWNER TO admin;

--
-- TOC entry 257 (class 1259 OID 17271)
-- Name: record_service_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.record_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_service_id_seq OWNER TO admin;

--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 257
-- Name: record_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.record_service_id_seq OWNED BY public.record_service.id;


--
-- TOC entry 280 (class 1259 OID 17732)
-- Name: record_vaccination; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.record_vaccination (
    id integer NOT NULL,
    name_vaccination text NOT NULL
);


ALTER TABLE public.record_vaccination OWNER TO admin;

--
-- TOC entry 279 (class 1259 OID 17730)
-- Name: record_vaccination_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.record_vaccination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_vaccination_id_seq OWNER TO admin;

--
-- TOC entry 3668 (class 0 OID 0)
-- Dependencies: 279
-- Name: record_vaccination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.record_vaccination_id_seq OWNED BY public.record_vaccination.id;


--
-- TOC entry 256 (class 1259 OID 17262)
-- Name: service; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.service (
    id integer NOT NULL,
    name_service text NOT NULL,
    price numeric(10,10)
);


ALTER TABLE public.service OWNER TO admin;

--
-- TOC entry 274 (class 1259 OID 17702)
-- Name: service_hospitalservice; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.service_hospitalservice (
    id integer NOT NULL,
    hospital_card_id integer NOT NULL,
    service_id integer NOT NULL,
    rec_date timestamp with time zone NOT NULL,
    comment text NOT NULL,
    doctor_id integer NOT NULL
);


ALTER TABLE public.service_hospitalservice OWNER TO admin;

--
-- TOC entry 273 (class 1259 OID 17700)
-- Name: service_hospitalservice_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.service_hospitalservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_hospitalservice_id_seq OWNER TO admin;

--
-- TOC entry 3669 (class 0 OID 0)
-- Dependencies: 273
-- Name: service_hospitalservice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.service_hospitalservice_id_seq OWNED BY public.service_hospitalservice.id;


--
-- TOC entry 255 (class 1259 OID 17260)
-- Name: service_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_id_seq OWNER TO admin;

--
-- TOC entry 3670 (class 0 OID 0)
-- Dependencies: 255
-- Name: service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.service_id_seq OWNED BY public.service.id;


--
-- TOC entry 276 (class 1259 OID 17713)
-- Name: service_positionservice; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.service_positionservice (
    id integer NOT NULL,
    position_id integer NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE public.service_positionservice OWNER TO admin;

--
-- TOC entry 275 (class 1259 OID 17711)
-- Name: service_positionservice_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.service_positionservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_positionservice_id_seq OWNER TO admin;

--
-- TOC entry 3671 (class 0 OID 0)
-- Dependencies: 275
-- Name: service_positionservice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.service_positionservice_id_seq OWNED BY public.service_positionservice.id;


--
-- TOC entry 272 (class 1259 OID 17691)
-- Name: service_recordservice; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.service_recordservice (
    id integer NOT NULL,
    record_id integer NOT NULL,
    service_id integer NOT NULL,
    comment text NOT NULL
);


ALTER TABLE public.service_recordservice OWNER TO admin;

--
-- TOC entry 271 (class 1259 OID 17689)
-- Name: service_recordservice_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.service_recordservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_recordservice_id_seq OWNER TO admin;

--
-- TOC entry 3672 (class 0 OID 0)
-- Dependencies: 271
-- Name: service_recordservice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.service_recordservice_id_seq OWNED BY public.service_recordservice.id;


--
-- TOC entry 270 (class 1259 OID 17680)
-- Name: service_service; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.service_service (
    id integer NOT NULL,
    name_service text NOT NULL,
    price numeric(10,10)
);


ALTER TABLE public.service_service OWNER TO admin;

--
-- TOC entry 269 (class 1259 OID 17678)
-- Name: service_service_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.service_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_service_id_seq OWNER TO admin;

--
-- TOC entry 3673 (class 0 OID 0)
-- Dependencies: 269
-- Name: service_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.service_service_id_seq OWNED BY public.service_service.id;


--
-- TOC entry 226 (class 1259 OID 17001)
-- Name: two_factor_phonedevice; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.two_factor_phonedevice (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    confirmed boolean NOT NULL,
    number character varying(128) NOT NULL,
    key character varying(40) NOT NULL,
    method character varying(4) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.two_factor_phonedevice OWNER TO admin;

--
-- TOC entry 225 (class 1259 OID 16999)
-- Name: two_factor_phonedevice_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.two_factor_phonedevice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.two_factor_phonedevice_id_seq OWNER TO admin;

--
-- TOC entry 3674 (class 0 OID 0)
-- Dependencies: 225
-- Name: two_factor_phonedevice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.two_factor_phonedevice_id_seq OWNED BY public.two_factor_phonedevice.id;


--
-- TOC entry 248 (class 1259 OID 17134)
-- Name: vaccination; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.vaccination (
    id integer NOT NULL,
    name_vaccination text NOT NULL
);


ALTER TABLE public.vaccination OWNER TO admin;

--
-- TOC entry 247 (class 1259 OID 17132)
-- Name: vaccination_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.vaccination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vaccination_id_seq OWNER TO admin;

--
-- TOC entry 3675 (class 0 OID 0)
-- Dependencies: 247
-- Name: vaccination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.vaccination_id_seq OWNED BY public.vaccination.id;


--
-- TOC entry 3159 (class 2604 OID 17093)
-- Name: allergy id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.allergy ALTER COLUMN id SET DEFAULT nextval('public.allergy_id_seq'::regclass);


--
-- TOC entry 3137 (class 2604 OID 16814)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3138 (class 2604 OID 16824)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3136 (class 2604 OID 16806)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3139 (class 2604 OID 16832)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3140 (class 2604 OID 16842)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3141 (class 2604 OID 16850)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3153 (class 2604 OID 17024)
-- Name: department id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.department ALTER COLUMN id SET DEFAULT nextval('public.department_id_seq'::regclass);


--
-- TOC entry 3160 (class 2604 OID 17104)
-- Name: diagnosis id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diagnosis ALTER COLUMN id SET DEFAULT nextval('public.diagnosis_id_seq'::regclass);


--
-- TOC entry 3142 (class 2604 OID 16910)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3135 (class 2604 OID 16796)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3134 (class 2604 OID 16785)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3155 (class 2604 OID 17040)
-- Name: doctor id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_id_seq'::regclass);


--
-- TOC entry 3172 (class 2604 OID 17667)
-- Name: doctor_department id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor_department ALTER COLUMN id SET DEFAULT nextval('public.doctor_department_id_seq'::regclass);


--
-- TOC entry 3173 (class 2604 OID 17675)
-- Name: doctor_doctor id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor_doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_doctor_id_seq'::regclass);


--
-- TOC entry 3171 (class 2604 OID 17659)
-- Name: doctor_position id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor_position ALTER COLUMN id SET DEFAULT nextval('public.doctor_position_id_seq'::regclass);


--
-- TOC entry 3161 (class 2604 OID 17115)
-- Name: hospital_card id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.hospital_card ALTER COLUMN id SET DEFAULT nextval('public.hospital_card_id_seq'::regclass);


--
-- TOC entry 3170 (class 2604 OID 17295)
-- Name: hospital_service id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.hospital_service ALTER COLUMN id SET DEFAULT nextval('public.hospital_service_id_seq'::regclass);


--
-- TOC entry 3144 (class 2604 OID 16943)
-- Name: otp_static_staticdevice id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.otp_static_staticdevice ALTER COLUMN id SET DEFAULT nextval('public.otp_static_staticdevice_id_seq'::regclass);


--
-- TOC entry 3146 (class 2604 OID 16951)
-- Name: otp_static_statictoken id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.otp_static_statictoken ALTER COLUMN id SET DEFAULT nextval('public.otp_static_statictoken_id_seq'::regclass);


--
-- TOC entry 3147 (class 2604 OID 16975)
-- Name: otp_totp_totpdevice id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.otp_totp_totpdevice ALTER COLUMN id SET DEFAULT nextval('public.otp_totp_totpdevice_id_seq'::regclass);


--
-- TOC entry 3156 (class 2604 OID 17060)
-- Name: patient id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.patient ALTER COLUMN id SET DEFAULT nextval('public.patient_id_seq'::regclass);


--
-- TOC entry 3157 (class 2604 OID 17068)
-- Name: patient_allergy id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.patient_allergy ALTER COLUMN id SET DEFAULT nextval('public.patient_allergy_id_seq'::regclass);


--
-- TOC entry 3158 (class 2604 OID 17079)
-- Name: patient_vaccination id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.patient_vaccination ALTER COLUMN id SET DEFAULT nextval('public.patient_vaccination_id_seq'::regclass);


--
-- TOC entry 3154 (class 2604 OID 17032)
-- Name: position id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."position" ALTER COLUMN id SET DEFAULT nextval('public.position_id_seq'::regclass);


--
-- TOC entry 3165 (class 2604 OID 17159)
-- Name: position_diagnosis id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.position_diagnosis ALTER COLUMN id SET DEFAULT nextval('public.position_diagnosis_id_seq'::regclass);


--
-- TOC entry 3169 (class 2604 OID 17287)
-- Name: position_service id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.position_service ALTER COLUMN id SET DEFAULT nextval('public.position_service_id_seq'::regclass);


--
-- TOC entry 3162 (class 2604 OID 17126)
-- Name: record id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record ALTER COLUMN id SET DEFAULT nextval('public.record_id_seq'::regclass);


--
-- TOC entry 3178 (class 2604 OID 17724)
-- Name: record_allergy id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_allergy ALTER COLUMN id SET DEFAULT nextval('public.record_allergy_id_seq'::regclass);


--
-- TOC entry 3164 (class 2604 OID 17148)
-- Name: record_diagnosis id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_diagnosis ALTER COLUMN id SET DEFAULT nextval('public.record_diagnosis_id_seq'::regclass);


--
-- TOC entry 3180 (class 2604 OID 17746)
-- Name: record_hospitalcard id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_hospitalcard ALTER COLUMN id SET DEFAULT nextval('public.record_hospitalcard_id_seq'::regclass);


--
-- TOC entry 3166 (class 2604 OID 17167)
-- Name: record_hospitalcardrecord id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_hospitalcardrecord ALTER COLUMN id SET DEFAULT nextval('public.record_hospitalcardrecord_id_seq'::regclass);


--
-- TOC entry 3183 (class 2604 OID 17779)
-- Name: record_positiondiagnosis id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_positiondiagnosis ALTER COLUMN id SET DEFAULT nextval('public.record_positiondiagnosis_id_seq'::regclass);


--
-- TOC entry 3181 (class 2604 OID 17757)
-- Name: record_record id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_record ALTER COLUMN id SET DEFAULT nextval('public.record_record_id_seq'::regclass);


--
-- TOC entry 3182 (class 2604 OID 17768)
-- Name: record_recorddiagnosis id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_recorddiagnosis ALTER COLUMN id SET DEFAULT nextval('public.record_recorddiagnosis_id_seq'::regclass);


--
-- TOC entry 3168 (class 2604 OID 17276)
-- Name: record_service id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_service ALTER COLUMN id SET DEFAULT nextval('public.record_service_id_seq'::regclass);


--
-- TOC entry 3179 (class 2604 OID 17735)
-- Name: record_vaccination id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_vaccination ALTER COLUMN id SET DEFAULT nextval('public.record_vaccination_id_seq'::regclass);


--
-- TOC entry 3167 (class 2604 OID 17265)
-- Name: service id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service ALTER COLUMN id SET DEFAULT nextval('public.service_id_seq'::regclass);


--
-- TOC entry 3176 (class 2604 OID 17705)
-- Name: service_hospitalservice id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_hospitalservice ALTER COLUMN id SET DEFAULT nextval('public.service_hospitalservice_id_seq'::regclass);


--
-- TOC entry 3177 (class 2604 OID 17716)
-- Name: service_positionservice id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_positionservice ALTER COLUMN id SET DEFAULT nextval('public.service_positionservice_id_seq'::regclass);


--
-- TOC entry 3175 (class 2604 OID 17694)
-- Name: service_recordservice id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_recordservice ALTER COLUMN id SET DEFAULT nextval('public.service_recordservice_id_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 17683)
-- Name: service_service id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_service ALTER COLUMN id SET DEFAULT nextval('public.service_service_id_seq'::regclass);


--
-- TOC entry 3152 (class 2604 OID 17004)
-- Name: two_factor_phonedevice id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.two_factor_phonedevice ALTER COLUMN id SET DEFAULT nextval('public.two_factor_phonedevice_id_seq'::regclass);


--
-- TOC entry 3163 (class 2604 OID 17137)
-- Name: vaccination id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.vaccination ALTER COLUMN id SET DEFAULT nextval('public.vaccination_id_seq'::regclass);


--
-- TOC entry 3578 (class 0 OID 17090)
-- Dependencies: 240
-- Data for Name: allergy; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3545 (class 0 OID 16811)
-- Dependencies: 207
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3547 (class 0 OID 16821)
-- Dependencies: 209
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3543 (class 0 OID 16803)
-- Dependencies: 205
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add static device', 7, 'add_staticdevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change static device', 7, 'change_staticdevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete static device', 7, 'delete_staticdevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view static device', 7, 'view_staticdevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add static token', 8, 'add_statictoken');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change static token', 8, 'change_statictoken');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete static token', 8, 'delete_statictoken');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view static token', 8, 'view_statictoken');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add TOTP device', 9, 'add_totpdevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change TOTP device', 9, 'change_totpdevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete TOTP device', 9, 'delete_totpdevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view TOTP device', 9, 'view_totpdevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add phone device', 10, 'add_phonedevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change phone device', 10, 'change_phonedevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete phone device', 10, 'delete_phonedevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view phone device', 10, 'view_phonedevice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add department', 11, 'add_department');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change department', 11, 'change_department');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete department', 11, 'delete_department');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view department', 11, 'view_department');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add position', 12, 'add_position');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change position', 12, 'change_position');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete position', 12, 'delete_position');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view position', 12, 'view_position');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add doctor', 13, 'add_doctor');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change doctor', 13, 'change_doctor');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete doctor', 13, 'delete_doctor');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view doctor', 13, 'view_doctor');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add patient with vaccination', 14, 'add_patientwithvaccination');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change patient with vaccination', 14, 'change_patientwithvaccination');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete patient with vaccination', 14, 'delete_patientwithvaccination');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view patient with vaccination', 14, 'view_patientwithvaccination');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can add patient with allergy', 15, 'add_patientwithallergy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can change patient with allergy', 15, 'change_patientwithallergy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can delete patient with allergy', 15, 'delete_patientwithallergy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can view patient with allergy', 15, 'view_patientwithallergy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add patient', 16, 'add_patient');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change patient', 16, 'change_patient');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete patient', 16, 'delete_patient');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can view patient', 16, 'view_patient');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (65, 'Can add position service', 17, 'add_positionservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (66, 'Can change position service', 17, 'change_positionservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (67, 'Can delete position service', 17, 'delete_positionservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (68, 'Can view position service', 17, 'view_positionservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (69, 'Can add service', 18, 'add_service');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (70, 'Can change service', 18, 'change_service');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (71, 'Can delete service', 18, 'delete_service');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (72, 'Can view service', 18, 'view_service');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (73, 'Can add hospital service', 19, 'add_hospitalservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (74, 'Can change hospital service', 19, 'change_hospitalservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (75, 'Can delete hospital service', 19, 'delete_hospitalservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (76, 'Can view hospital service', 19, 'view_hospitalservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (77, 'Can add record service', 20, 'add_recordservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (78, 'Can change record service', 20, 'change_recordservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (79, 'Can delete record service', 20, 'delete_recordservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (80, 'Can view record service', 20, 'view_recordservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (81, 'Can add record diagnosis', 21, 'add_recorddiagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (82, 'Can change record diagnosis', 21, 'change_recorddiagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (83, 'Can delete record diagnosis', 21, 'delete_recorddiagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (84, 'Can view record diagnosis', 21, 'view_recorddiagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (85, 'Can add position diagnosis', 22, 'add_positiondiagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (86, 'Can change position diagnosis', 22, 'change_positiondiagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (87, 'Can delete position diagnosis', 22, 'delete_positiondiagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (88, 'Can view position diagnosis', 22, 'view_positiondiagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (89, 'Can add hospital card', 23, 'add_hospitalcard');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (90, 'Can change hospital card', 23, 'change_hospitalcard');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (91, 'Can delete hospital card', 23, 'delete_hospitalcard');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (92, 'Can view hospital card', 23, 'view_hospitalcard');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (93, 'Can add record', 24, 'add_record');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (94, 'Can change record', 24, 'change_record');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (95, 'Can delete record', 24, 'delete_record');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (96, 'Can view record', 24, 'view_record');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (97, 'Can add vaccination', 25, 'add_vaccination');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (98, 'Can change vaccination', 25, 'change_vaccination');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (99, 'Can delete vaccination', 25, 'delete_vaccination');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (100, 'Can view vaccination', 25, 'view_vaccination');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (101, 'Can add HospitalCardRecord', 26, 'add_hospitalcardrecord');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (102, 'Can change HospitalCardRecord', 26, 'change_hospitalcardrecord');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (103, 'Can delete HospitalCardRecord', 26, 'delete_hospitalcardrecord');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (104, 'Can view HospitalCardRecord', 26, 'view_hospitalcardrecord');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (105, 'Can add diagnosis', 27, 'add_diagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (106, 'Can change diagnosis', 27, 'change_diagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (107, 'Can delete diagnosis', 27, 'delete_diagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (108, 'Can view diagnosis', 27, 'view_diagnosis');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (109, 'Can add allergy', 28, 'add_allergy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (110, 'Can change allergy', 28, 'change_allergy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (111, 'Can delete allergy', 28, 'delete_allergy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (112, 'Can view allergy', 28, 'view_allergy');


--
-- TOC entry 3549 (class 0 OID 16829)
-- Dependencies: 211
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (2, 'pbkdf2_sha256$216000$2YqUqxYCjCcB$u4WXNNXgzh1NT4d2NN8k9oygGIX8MiROXbVxSYJ1ct4=', '2021-03-31 08:15:46.125047+06', true, 'kesha', '', '', '', true, true, '2021-03-31 08:14:57.944705+06');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$216000$kx8x4AbEwGw9$UZhDU+aUnM5ASMkCjfRPR4LlnucvmoZSgYfFdRK4fNA=', '2021-04-01 13:13:46.422961+06', true, 'admin', '', '', 'kesha@gmail.com', true, true, '2021-03-23 15:47:37.406345+06');


--
-- TOC entry 3551 (class 0 OID 16839)
-- Dependencies: 213
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3553 (class 0 OID 16847)
-- Dependencies: 215
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3566 (class 0 OID 17021)
-- Dependencies: 228
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3580 (class 0 OID 17101)
-- Dependencies: 242
-- Data for Name: diagnosis; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3555 (class 0 OID 16907)
-- Dependencies: 217
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2021-04-02 20:12:14.931176+06', '3', 'aidar', 3, '', 4, 1);


--
-- TOC entry 3541 (class 0 OID 16793)
-- Dependencies: 203
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'otp_static', 'staticdevice');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'otp_static', 'statictoken');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'otp_totp', 'totpdevice');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'two_factor', 'phonedevice');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'doctor', 'department');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'doctor', 'position');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'doctor', 'doctor');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'patient', 'patientwithvaccination');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'patient', 'patientwithallergy');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'patient', 'patient');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (17, 'service', 'positionservice');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (18, 'service', 'service');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (19, 'service', 'hospitalservice');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (20, 'service', 'recordservice');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (21, 'record', 'recorddiagnosis');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (22, 'record', 'positiondiagnosis');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (23, 'record', 'hospitalcard');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (24, 'record', 'record');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (25, 'record', 'vaccination');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (26, 'record', 'hospitalcardrecord');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (27, 'record', 'diagnosis');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (28, 'record', 'allergy');


--
-- TOC entry 3539 (class 0 OID 16782)
-- Dependencies: 201
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2021-03-23 13:19:22.707737+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2021-03-23 13:19:22.79369+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2021-03-23 13:19:22.916618+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-03-23 13:19:22.947599+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-23 13:19:22.96259+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-03-23 13:19:22.998573+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-03-23 13:19:23.015562+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-03-23 13:19:23.031557+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-03-23 13:19:23.045542+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-03-23 13:19:23.060534+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-03-23 13:19:23.063534+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-03-23 13:19:23.077526+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-03-23 13:19:23.115503+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-03-23 13:19:23.133492+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-03-23 13:19:23.149483+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-03-23 13:19:23.165473+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2021-03-23 13:19:23.179469+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'otp_static', '0001_initial', '2021-03-23 13:19:23.228439+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'otp_static', '0002_throttling', '2021-03-23 13:19:23.288404+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'otp_totp', '0001_initial', '2021-03-23 13:19:23.315388+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'otp_totp', '0002_auto_20190420_0723', '2021-03-23 13:19:23.355365+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'sessions', '0001_initial', '2021-03-23 13:19:23.371355+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'two_factor', '0001_initial', '2021-03-23 13:19:23.411333+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'two_factor', '0002_auto_20150110_0810', '2021-03-23 13:19:23.439317+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'two_factor', '0003_auto_20150817_1733', '2021-03-23 13:19:23.476297+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'two_factor', '0004_auto_20160205_1827', '2021-03-23 13:19:23.493287+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'two_factor', '0005_auto_20160224_0450', '2021-03-23 13:19:23.598226+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'two_factor', '0006_phonedevice_key_default', '2021-03-23 13:19:23.615216+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'doctor', '0001_initial', '2021-03-31 08:13:30.63378+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'patient', '0001_initial', '2021-03-31 08:13:30.781697+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'record', '0001_initial', '2021-03-31 08:13:31.006581+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'patient', '0002_auto_20210331_0813', '2021-03-31 08:13:31.193457+06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'service', '0001_initial', '2021-03-31 08:13:31.361361+06');


--
-- TOC entry 3562 (class 0 OID 16989)
-- Dependencies: 224
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('amntczyaaft3xelrakqo0pfedttot6qq', '.eJx1Uttu4jAQ_Rc_tyiOg0nytux2KSDarbpQVVVl-TIOaULMOk7Ti_LvawpiA9K-zeXMnDPH_kSMN27NmhosyxVKEUEX_ZrgsoBq11AvvMrMQJrK2VwMdpDBoVsPFkZBOT5gTxaseb320yOCqU50IKRWAmvCJQkTFVItYkiIpiKK-UjAMPQYXxERTviQxkIHigYcsF_a5h_cKlaaLK_Yaw4tSj9R7WCL0qopy4uvmCnuuG90h1TnJdT7HN6c5b3-Ky9zn4FiJ4PdkakG12zPmFAGFVjujEWnhKiFUpoN7EJZW73JlSqh5Rac8a6g9Ak9CFy8_NKL1UcRU1NF6t0GoPTqNpa3cRFt5mTqruXqjYj2W3wj59k2C4zC00JfOb1c3KNnT3nUdCkba6FybC_s6SjguTs_vqetOzcCaWM3B4cKeP-C_7sxRVEcjyKKyQiiJFKE42RISTiMqBKjAEc0CDHRHAeo-6-laANubVQ_6lHs_O7J8-n-pzHXGqa59JjLP9Y_hvRWMi_RT8--_1gurgid_Zz8Xk7mD5PZfEJuHsfTx_H4mt7doe4v4yP6Wg:1lRQgf:oR5_RavNZVQSzBczJeZB_B28QV-eBkRl5X--CvOfCeQ', '2021-04-14 08:34:29.549283+06');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('wov4jchryja1zfrrrm6fds8mlp4sp6i0', '.eJxVjMsOgjAQRf-la0N4FBCW7v2GZtqZSrUppi1oNPy7RVnIbs49986bPcwLPAo7XowTs6EH698sRLqz3k3WHr63QIiQxLKhNpbCj-kZPfz5GaxJRCh2w2QETHEQUyAvDLKeFWyXSVA3cqvAK7jLmKnRRW9ktlayzYbsPCLZ09bdPRggDGmtWy55DceSN1ipglA3UquUlBIbKqFsuhbyolN5p_OaK6RcYX2s6pZXBXWKLR8-J18z:1lRWps:oePufrG2TCETt-FuRDD3RT16Cbkqm6oJmu0FLicwMnc', '2021-04-14 15:08:24.161414+06');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('6kvve19pzwwxc5pamxj3yucm93r4yuu7', '.eJxVjsFuhDAMRP8l5yqFEGDh2Hu_IXJiZ0kbJRUJ7GpX--8NhUO5jDzzxpaf7OYeMKPy8eqCWh3d2PhkKdMPG8Pi_dvfrBAyFPA6rHWe0u7pnmf4x1fwrjhCdVosRMGSJ7UkmpVDNrKanTIN5pvCBvALwjVyE0OeneZbhR808c-I5D-O7unABGkq27aXWrZwEbLDxtSEttPWlERo7EiA6IYeqnow1WCrVhqkymB7adpeNjUNphyNuTxOqzO0f7r5XIRvsoN3wV6_RGVtrg:1lRrWU:UWNHN2LCqGHpbxNvV8Rr_3X5BwH7JkQO6eDGvmT5COo', '2021-04-15 13:13:46.425942+06');


--
-- TOC entry 3570 (class 0 OID 17037)
-- Dependencies: 232
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3604 (class 0 OID 17664)
-- Dependencies: 266
-- Data for Name: doctor_department; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3606 (class 0 OID 17672)
-- Dependencies: 268
-- Data for Name: doctor_doctor; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3602 (class 0 OID 17656)
-- Dependencies: 264
-- Data for Name: doctor_position; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3582 (class 0 OID 17112)
-- Dependencies: 244
-- Data for Name: hospital_card; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3600 (class 0 OID 17292)
-- Dependencies: 262
-- Data for Name: hospital_service; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3557 (class 0 OID 16940)
-- Dependencies: 219
-- Data for Name: otp_static_staticdevice; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3559 (class 0 OID 16948)
-- Dependencies: 221
-- Data for Name: otp_static_statictoken; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3561 (class 0 OID 16972)
-- Dependencies: 223
-- Data for Name: otp_totp_totpdevice; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.otp_totp_totpdevice (id, name, confirmed, key, step, t0, digits, tolerance, drift, last_t, user_id, throttling_failure_count, throttling_failure_timestamp) VALUES (2, 'default', true, '45b5240624c4a30d780e482cc26fd0955b67f4af', 30, 0, 6, 1, 0, 53908707, 1, 0, NULL);


--
-- TOC entry 3572 (class 0 OID 17057)
-- Dependencies: 234
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3574 (class 0 OID 17065)
-- Dependencies: 236
-- Data for Name: patient_allergy; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3576 (class 0 OID 17076)
-- Dependencies: 238
-- Data for Name: patient_vaccination; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3568 (class 0 OID 17029)
-- Dependencies: 230
-- Data for Name: position; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3590 (class 0 OID 17156)
-- Dependencies: 252
-- Data for Name: position_diagnosis; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3598 (class 0 OID 17284)
-- Dependencies: 260
-- Data for Name: position_service; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3584 (class 0 OID 17123)
-- Dependencies: 246
-- Data for Name: record; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3616 (class 0 OID 17721)
-- Dependencies: 278
-- Data for Name: record_allergy; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3588 (class 0 OID 17145)
-- Dependencies: 250
-- Data for Name: record_diagnosis; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3620 (class 0 OID 17743)
-- Dependencies: 282
-- Data for Name: record_hospitalcard; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3592 (class 0 OID 17164)
-- Dependencies: 254
-- Data for Name: record_hospitalcardrecord; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3626 (class 0 OID 17776)
-- Dependencies: 288
-- Data for Name: record_positiondiagnosis; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3622 (class 0 OID 17754)
-- Dependencies: 284
-- Data for Name: record_record; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3624 (class 0 OID 17765)
-- Dependencies: 286
-- Data for Name: record_recorddiagnosis; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3596 (class 0 OID 17273)
-- Dependencies: 258
-- Data for Name: record_service; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3618 (class 0 OID 17732)
-- Dependencies: 280
-- Data for Name: record_vaccination; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3594 (class 0 OID 17262)
-- Dependencies: 256
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3612 (class 0 OID 17702)
-- Dependencies: 274
-- Data for Name: service_hospitalservice; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3614 (class 0 OID 17713)
-- Dependencies: 276
-- Data for Name: service_positionservice; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3610 (class 0 OID 17691)
-- Dependencies: 272
-- Data for Name: service_recordservice; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3608 (class 0 OID 17680)
-- Dependencies: 270
-- Data for Name: service_service; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3564 (class 0 OID 17001)
-- Dependencies: 226
-- Data for Name: two_factor_phonedevice; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3586 (class 0 OID 17134)
-- Dependencies: 248
-- Data for Name: vaccination; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3676 (class 0 OID 0)
-- Dependencies: 239
-- Name: allergy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.allergy_id_seq', 1, false);


--
-- TOC entry 3677 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3678 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3679 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 112, true);


--
-- TOC entry 3680 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3681 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3683 (class 0 OID 0)
-- Dependencies: 227
-- Name: department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.department_id_seq', 1, false);


--
-- TOC entry 3684 (class 0 OID 0)
-- Dependencies: 241
-- Name: diagnosis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.diagnosis_id_seq', 1, false);


--
-- TOC entry 3685 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);


--
-- TOC entry 3686 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 28, true);


--
-- TOC entry 3687 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 33, true);


--
-- TOC entry 3688 (class 0 OID 0)
-- Dependencies: 265
-- Name: doctor_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.doctor_department_id_seq', 1, false);


--
-- TOC entry 3689 (class 0 OID 0)
-- Dependencies: 267
-- Name: doctor_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.doctor_doctor_id_seq', 1, false);


--
-- TOC entry 3690 (class 0 OID 0)
-- Dependencies: 231
-- Name: doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.doctor_id_seq', 1, false);


--
-- TOC entry 3691 (class 0 OID 0)
-- Dependencies: 263
-- Name: doctor_position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.doctor_position_id_seq', 1, false);


--
-- TOC entry 3692 (class 0 OID 0)
-- Dependencies: 243
-- Name: hospital_card_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.hospital_card_id_seq', 1, false);


--
-- TOC entry 3693 (class 0 OID 0)
-- Dependencies: 261
-- Name: hospital_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.hospital_service_id_seq', 1, false);


--
-- TOC entry 3694 (class 0 OID 0)
-- Dependencies: 218
-- Name: otp_static_staticdevice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.otp_static_staticdevice_id_seq', 1, true);


--
-- TOC entry 3695 (class 0 OID 0)
-- Dependencies: 220
-- Name: otp_static_statictoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.otp_static_statictoken_id_seq', 1, false);


--
-- TOC entry 3696 (class 0 OID 0)
-- Dependencies: 222
-- Name: otp_totp_totpdevice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.otp_totp_totpdevice_id_seq', 2, true);


--
-- TOC entry 3697 (class 0 OID 0)
-- Dependencies: 235
-- Name: patient_allergy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.patient_allergy_id_seq', 1, false);


--
-- TOC entry 3698 (class 0 OID 0)
-- Dependencies: 233
-- Name: patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.patient_id_seq', 1, false);


--
-- TOC entry 3699 (class 0 OID 0)
-- Dependencies: 237
-- Name: patient_vaccination_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.patient_vaccination_id_seq', 1, false);


--
-- TOC entry 3700 (class 0 OID 0)
-- Dependencies: 251
-- Name: position_diagnosis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.position_diagnosis_id_seq', 1, false);


--
-- TOC entry 3701 (class 0 OID 0)
-- Dependencies: 229
-- Name: position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.position_id_seq', 1, false);


--
-- TOC entry 3702 (class 0 OID 0)
-- Dependencies: 259
-- Name: position_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.position_service_id_seq', 1, false);


--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 277
-- Name: record_allergy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.record_allergy_id_seq', 1, false);


--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 249
-- Name: record_diagnosis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.record_diagnosis_id_seq', 1, false);


--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 281
-- Name: record_hospitalcard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.record_hospitalcard_id_seq', 1, false);


--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 253
-- Name: record_hospitalcardrecord_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.record_hospitalcardrecord_id_seq', 1, false);


--
-- TOC entry 3707 (class 0 OID 0)
-- Dependencies: 245
-- Name: record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.record_id_seq', 1, false);


--
-- TOC entry 3708 (class 0 OID 0)
-- Dependencies: 287
-- Name: record_positiondiagnosis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.record_positiondiagnosis_id_seq', 1, false);


--
-- TOC entry 3709 (class 0 OID 0)
-- Dependencies: 283
-- Name: record_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.record_record_id_seq', 1, false);


--
-- TOC entry 3710 (class 0 OID 0)
-- Dependencies: 285
-- Name: record_recorddiagnosis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.record_recorddiagnosis_id_seq', 1, false);


--
-- TOC entry 3711 (class 0 OID 0)
-- Dependencies: 257
-- Name: record_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.record_service_id_seq', 1, false);


--
-- TOC entry 3712 (class 0 OID 0)
-- Dependencies: 279
-- Name: record_vaccination_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.record_vaccination_id_seq', 1, false);


--
-- TOC entry 3713 (class 0 OID 0)
-- Dependencies: 273
-- Name: service_hospitalservice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.service_hospitalservice_id_seq', 1, false);


--
-- TOC entry 3714 (class 0 OID 0)
-- Dependencies: 255
-- Name: service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.service_id_seq', 1, false);


--
-- TOC entry 3715 (class 0 OID 0)
-- Dependencies: 275
-- Name: service_positionservice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.service_positionservice_id_seq', 1, false);


--
-- TOC entry 3716 (class 0 OID 0)
-- Dependencies: 271
-- Name: service_recordservice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.service_recordservice_id_seq', 1, false);


--
-- TOC entry 3717 (class 0 OID 0)
-- Dependencies: 269
-- Name: service_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.service_service_id_seq', 1, false);


--
-- TOC entry 3718 (class 0 OID 0)
-- Dependencies: 225
-- Name: two_factor_phonedevice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.two_factor_phonedevice_id_seq', 1, false);


--
-- TOC entry 3719 (class 0 OID 0)
-- Dependencies: 247
-- Name: vaccination_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.vaccination_id_seq', 1, false);


--
-- TOC entry 3264 (class 2606 OID 17098)
-- Name: allergy allergy_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.allergy
    ADD CONSTRAINT allergy_pkey PRIMARY KEY (id);


--
-- TOC entry 3197 (class 2606 OID 16936)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3202 (class 2606 OID 16863)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3205 (class 2606 OID 16826)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3199 (class 2606 OID 16816)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 16854)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3194 (class 2606 OID 16808)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 16844)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 16878)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3207 (class 2606 OID 16834)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 16852)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16892)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3210 (class 2606 OID 16930)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3246 (class 2606 OID 17026)
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- TOC entry 3266 (class 2606 OID 17109)
-- Name: diagnosis diagnosis_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.diagnosis
    ADD CONSTRAINT diagnosis_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 16916)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3187 (class 2606 OID 16800)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3189 (class 2606 OID 16798)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3185 (class 2606 OID 16790)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3240 (class 2606 OID 16996)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3309 (class 2606 OID 17669)
-- Name: doctor_department doctor_department_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor_department
    ADD CONSTRAINT doctor_department_pkey PRIMARY KEY (id);


--
-- TOC entry 3313 (class 2606 OID 17677)
-- Name: doctor_doctor doctor_doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor_doctor
    ADD CONSTRAINT doctor_doctor_pkey PRIMARY KEY (id);


--
-- TOC entry 3252 (class 2606 OID 17042)
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);


--
-- TOC entry 3307 (class 2606 OID 17661)
-- Name: doctor_position doctor_position_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor_position
    ADD CONSTRAINT doctor_position_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 17120)
-- Name: hospital_card hospital_card_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.hospital_card
    ADD CONSTRAINT hospital_card_pkey PRIMARY KEY (id);


--
-- TOC entry 3304 (class 2606 OID 17300)
-- Name: hospital_service hospital_service_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.hospital_service
    ADD CONSTRAINT hospital_service_pkey PRIMARY KEY (id);


--
-- TOC entry 3228 (class 2606 OID 16945)
-- Name: otp_static_staticdevice otp_static_staticdevice_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.otp_static_staticdevice
    ADD CONSTRAINT otp_static_staticdevice_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 16953)
-- Name: otp_static_statictoken otp_static_statictoken_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.otp_static_statictoken
    ADD CONSTRAINT otp_static_statictoken_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 16980)
-- Name: otp_totp_totpdevice otp_totp_totpdevice_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.otp_totp_totpdevice
    ADD CONSTRAINT otp_totp_totpdevice_pkey PRIMARY KEY (id);


--
-- TOC entry 3258 (class 2606 OID 17073)
-- Name: patient_allergy patient_allergy_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.patient_allergy
    ADD CONSTRAINT patient_allergy_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 17062)
-- Name: patient patient_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 17081)
-- Name: patient_vaccination patient_vaccination_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.patient_vaccination
    ADD CONSTRAINT patient_vaccination_pkey PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 17161)
-- Name: position_diagnosis position_diagnosis_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.position_diagnosis
    ADD CONSTRAINT position_diagnosis_pkey PRIMARY KEY (id);


--
-- TOC entry 3248 (class 2606 OID 17034)
-- Name: position position_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (id);


--
-- TOC entry 3298 (class 2606 OID 17289)
-- Name: position_service position_service_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.position_service
    ADD CONSTRAINT position_service_pkey PRIMARY KEY (id);


--
-- TOC entry 3330 (class 2606 OID 17729)
-- Name: record_allergy record_allergy_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_allergy
    ADD CONSTRAINT record_allergy_pkey PRIMARY KEY (id);


--
-- TOC entry 3281 (class 2606 OID 17153)
-- Name: record_diagnosis record_diagnosis_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_diagnosis
    ADD CONSTRAINT record_diagnosis_pkey PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 17751)
-- Name: record_hospitalcard record_hospitalcard_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_hospitalcard
    ADD CONSTRAINT record_hospitalcard_pkey PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 17169)
-- Name: record_hospitalcardrecord record_hospitalcardrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_hospitalcardrecord
    ADD CONSTRAINT record_hospitalcardrecord_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 17131)
-- Name: record record_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 17781)
-- Name: record_positiondiagnosis record_positiondiagnosis_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_positiondiagnosis
    ADD CONSTRAINT record_positiondiagnosis_pkey PRIMARY KEY (id);


--
-- TOC entry 3341 (class 2606 OID 17762)
-- Name: record_record record_record_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_record
    ADD CONSTRAINT record_record_pkey PRIMARY KEY (id);


--
-- TOC entry 3345 (class 2606 OID 17773)
-- Name: record_recorddiagnosis record_recorddiagnosis_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_recorddiagnosis
    ADD CONSTRAINT record_recorddiagnosis_pkey PRIMARY KEY (id);


--
-- TOC entry 3294 (class 2606 OID 17281)
-- Name: record_service record_service_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_service
    ADD CONSTRAINT record_service_pkey PRIMARY KEY (id);


--
-- TOC entry 3332 (class 2606 OID 17740)
-- Name: record_vaccination record_vaccination_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_vaccination
    ADD CONSTRAINT record_vaccination_pkey PRIMARY KEY (id);


--
-- TOC entry 3323 (class 2606 OID 17710)
-- Name: service_hospitalservice service_hospitalservice_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_hospitalservice
    ADD CONSTRAINT service_hospitalservice_pkey PRIMARY KEY (id);


--
-- TOC entry 3292 (class 2606 OID 17270)
-- Name: service service_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);


--
-- TOC entry 3326 (class 2606 OID 17718)
-- Name: service_positionservice service_positionservice_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_positionservice
    ADD CONSTRAINT service_positionservice_pkey PRIMARY KEY (id);


--
-- TOC entry 3317 (class 2606 OID 17699)
-- Name: service_recordservice service_recordservice_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_recordservice
    ADD CONSTRAINT service_recordservice_pkey PRIMARY KEY (id);


--
-- TOC entry 3315 (class 2606 OID 17688)
-- Name: service_service service_service_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_service
    ADD CONSTRAINT service_service_pkey PRIMARY KEY (id);


--
-- TOC entry 3243 (class 2606 OID 17006)
-- Name: two_factor_phonedevice two_factor_phonedevice_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.two_factor_phonedevice
    ADD CONSTRAINT two_factor_phonedevice_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 17142)
-- Name: vaccination vaccination_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.vaccination
    ADD CONSTRAINT vaccination_pkey PRIMARY KEY (id);


--
-- TOC entry 3195 (class 1259 OID 16937)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3200 (class 1259 OID 16874)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3203 (class 1259 OID 16875)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3190 (class 1259 OID 16860)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3211 (class 1259 OID 16890)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3214 (class 1259 OID 16889)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3217 (class 1259 OID 16904)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3220 (class 1259 OID 16903)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3208 (class 1259 OID 16931)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3223 (class 1259 OID 16927)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3226 (class 1259 OID 16928)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3238 (class 1259 OID 16998)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3241 (class 1259 OID 16997)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3310 (class 1259 OID 17793)
-- Name: doctor_doctor_id_department_id_125fc7cd; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX doctor_doctor_id_department_id_125fc7cd ON public.doctor_doctor USING btree (id_department_id);


--
-- TOC entry 3311 (class 1259 OID 17792)
-- Name: doctor_doctor_id_position_id_9db1ee70; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX doctor_doctor_id_position_id_9db1ee70 ON public.doctor_doctor USING btree (id_position_id);


--
-- TOC entry 3249 (class 1259 OID 17053)
-- Name: doctor_id_department_id_0d5d2396; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX doctor_id_department_id_0d5d2396 ON public.doctor USING btree (id_department_id);


--
-- TOC entry 3250 (class 1259 OID 17054)
-- Name: doctor_id_position_id_e26fbff7; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX doctor_id_position_id_e26fbff7 ON public.doctor USING btree (id_position_id);


--
-- TOC entry 3267 (class 1259 OID 17180)
-- Name: hospital_card_department_id_48ac8810; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX hospital_card_department_id_48ac8810 ON public.hospital_card USING btree (department_id);


--
-- TOC entry 3268 (class 1259 OID 17181)
-- Name: hospital_card_doctor_id_3451e072; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX hospital_card_doctor_id_3451e072 ON public.hospital_card USING btree (doctor_id);


--
-- TOC entry 3301 (class 1259 OID 17340)
-- Name: hospital_service_doctor_id_17e8548e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX hospital_service_doctor_id_17e8548e ON public.hospital_service USING btree (doctor_id);


--
-- TOC entry 3302 (class 1259 OID 17341)
-- Name: hospital_service_hospital_card_id_4231d314; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX hospital_service_hospital_card_id_4231d314 ON public.hospital_service USING btree (hospital_card_id);


--
-- TOC entry 3305 (class 1259 OID 17342)
-- Name: hospital_service_service_id_0625012e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX hospital_service_service_id_0625012e ON public.hospital_service USING btree (service_id);


--
-- TOC entry 3229 (class 1259 OID 16959)
-- Name: otp_static_staticdevice_user_id_7f9cff2b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX otp_static_staticdevice_user_id_7f9cff2b ON public.otp_static_staticdevice USING btree (user_id);


--
-- TOC entry 3230 (class 1259 OID 16967)
-- Name: otp_static_statictoken_device_id_74b7c7d1; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX otp_static_statictoken_device_id_74b7c7d1 ON public.otp_static_statictoken USING btree (device_id);


--
-- TOC entry 3233 (class 1259 OID 16965)
-- Name: otp_static_statictoken_token_d0a51866; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX otp_static_statictoken_token_d0a51866 ON public.otp_static_statictoken USING btree (token);


--
-- TOC entry 3234 (class 1259 OID 16966)
-- Name: otp_static_statictoken_token_d0a51866_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX otp_static_statictoken_token_d0a51866_like ON public.otp_static_statictoken USING btree (token varchar_pattern_ops);


--
-- TOC entry 3237 (class 1259 OID 16986)
-- Name: otp_totp_totpdevice_user_id_0fb18292; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX otp_totp_totpdevice_user_id_0fb18292 ON public.otp_totp_totpdevice USING btree (user_id);


--
-- TOC entry 3255 (class 1259 OID 17258)
-- Name: patient_allergy_allergy_id_0c93b05e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX patient_allergy_allergy_id_0c93b05e ON public.patient_allergy USING btree (allergy_id);


--
-- TOC entry 3256 (class 1259 OID 17259)
-- Name: patient_allergy_patient_id_83d966bc; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX patient_allergy_patient_id_83d966bc ON public.patient_allergy USING btree (patient_id);


--
-- TOC entry 3259 (class 1259 OID 17087)
-- Name: patient_vaccination_patient_id_4bdc5f3f; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX patient_vaccination_patient_id_4bdc5f3f ON public.patient_vaccination USING btree (patient_id);


--
-- TOC entry 3262 (class 1259 OID 17257)
-- Name: patient_vaccination_vaccination_id_d4d545d0; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX patient_vaccination_vaccination_id_d4d545d0 ON public.patient_vaccination USING btree (vaccination_id);


--
-- TOC entry 3283 (class 1259 OID 17228)
-- Name: position_diagnosis_diagnosis_id_1beb5686; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX position_diagnosis_diagnosis_id_1beb5686 ON public.position_diagnosis USING btree (diagnosis_id);


--
-- TOC entry 3286 (class 1259 OID 17229)
-- Name: position_diagnosis_position_id_f405f85a; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX position_diagnosis_position_id_f405f85a ON public.position_diagnosis USING btree (position_id);


--
-- TOC entry 3299 (class 1259 OID 17323)
-- Name: position_service_position_id_84243ee0; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX position_service_position_id_84243ee0 ON public.position_service USING btree (position_id);


--
-- TOC entry 3300 (class 1259 OID 17324)
-- Name: position_service_service_id_8a101a99; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX position_service_service_id_8a101a99 ON public.position_service USING btree (service_id);


--
-- TOC entry 3278 (class 1259 OID 17215)
-- Name: record_diagnosis_diagnosis_id_6e808f09; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_diagnosis_diagnosis_id_6e808f09 ON public.record_diagnosis USING btree (diagnosis_id);


--
-- TOC entry 3279 (class 1259 OID 17216)
-- Name: record_diagnosis_doctor_id_7aa7ed91; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_diagnosis_doctor_id_7aa7ed91 ON public.record_diagnosis USING btree (doctor_id);


--
-- TOC entry 3282 (class 1259 OID 17217)
-- Name: record_diagnosis_record_id_842b0ea9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_diagnosis_record_id_842b0ea9 ON public.record_diagnosis USING btree (record_id);


--
-- TOC entry 3271 (class 1259 OID 17197)
-- Name: record_doctor_id_c4496a33; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_doctor_id_c4496a33 ON public.record USING btree (doctor_id);


--
-- TOC entry 3272 (class 1259 OID 17198)
-- Name: record_hospital_card_id_f83e823b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_hospital_card_id_f83e823b ON public.record USING btree (hospital_card_id);


--
-- TOC entry 3333 (class 1259 OID 17847)
-- Name: record_hospitalcard_department_id_d33577c6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_hospitalcard_department_id_d33577c6 ON public.record_hospitalcard USING btree (department_id);


--
-- TOC entry 3334 (class 1259 OID 17846)
-- Name: record_hospitalcard_doctor_id_f2b0303b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_hospitalcard_doctor_id_f2b0303b ON public.record_hospitalcard USING btree (doctor_id);


--
-- TOC entry 3287 (class 1259 OID 17240)
-- Name: record_hospitalcardrecord_hospital_card_id_17ff765b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_hospitalcardrecord_hospital_card_id_17ff765b ON public.record_hospitalcardrecord USING btree (hospital_card_id);


--
-- TOC entry 3290 (class 1259 OID 17241)
-- Name: record_hospitalcardrecord_record_id_fdd5fc45; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_hospitalcardrecord_record_id_fdd5fc45 ON public.record_hospitalcardrecord USING btree (record_id);


--
-- TOC entry 3273 (class 1259 OID 17199)
-- Name: record_patient_id_397f3732; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_patient_id_397f3732 ON public.record USING btree (patient_id);


--
-- TOC entry 3347 (class 1259 OID 17895)
-- Name: record_positiondiagnosis_diagnosis_id_0b69765f; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_positiondiagnosis_diagnosis_id_0b69765f ON public.record_positiondiagnosis USING btree (diagnosis_id);


--
-- TOC entry 3350 (class 1259 OID 17894)
-- Name: record_positiondiagnosis_position_id_611b2a97; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_positiondiagnosis_position_id_611b2a97 ON public.record_positiondiagnosis USING btree (position_id);


--
-- TOC entry 3337 (class 1259 OID 17864)
-- Name: record_record_doctor_id_a36f4155; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_record_doctor_id_a36f4155 ON public.record_record USING btree (doctor_id);


--
-- TOC entry 3338 (class 1259 OID 17865)
-- Name: record_record_hospital_card_id_0af83442; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_record_hospital_card_id_0af83442 ON public.record_record USING btree (hospital_card_id);


--
-- TOC entry 3339 (class 1259 OID 17863)
-- Name: record_record_patient_id_5450df44; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_record_patient_id_5450df44 ON public.record_record USING btree (patient_id);


--
-- TOC entry 3342 (class 1259 OID 17882)
-- Name: record_recorddiagnosis_diagnosis_id_db521f6e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_recorddiagnosis_diagnosis_id_db521f6e ON public.record_recorddiagnosis USING btree (diagnosis_id);


--
-- TOC entry 3343 (class 1259 OID 17883)
-- Name: record_recorddiagnosis_doctor_id_e96fea37; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_recorddiagnosis_doctor_id_e96fea37 ON public.record_recorddiagnosis USING btree (doctor_id);


--
-- TOC entry 3346 (class 1259 OID 17881)
-- Name: record_recorddiagnosis_record_id_b5b2239f; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_recorddiagnosis_record_id_b5b2239f ON public.record_recorddiagnosis USING btree (record_id);


--
-- TOC entry 3295 (class 1259 OID 17311)
-- Name: record_service_record_id_ed47c13e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_service_record_id_ed47c13e ON public.record_service USING btree (record_id);


--
-- TOC entry 3296 (class 1259 OID 17312)
-- Name: record_service_service_id_9c4dfde3; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX record_service_service_id_9c4dfde3 ON public.record_service USING btree (service_id);


--
-- TOC entry 3320 (class 1259 OID 17823)
-- Name: service_hospitalservice_doctor_id_6c02b288; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX service_hospitalservice_doctor_id_6c02b288 ON public.service_hospitalservice USING btree (doctor_id);


--
-- TOC entry 3321 (class 1259 OID 17821)
-- Name: service_hospitalservice_hospital_card_id_2b25416d; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX service_hospitalservice_hospital_card_id_2b25416d ON public.service_hospitalservice USING btree (hospital_card_id);


--
-- TOC entry 3324 (class 1259 OID 17822)
-- Name: service_hospitalservice_service_id_6821b73e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX service_hospitalservice_service_id_6821b73e ON public.service_hospitalservice USING btree (service_id);


--
-- TOC entry 3327 (class 1259 OID 17834)
-- Name: service_positionservice_position_id_09ecb20c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX service_positionservice_position_id_09ecb20c ON public.service_positionservice USING btree (position_id);


--
-- TOC entry 3328 (class 1259 OID 17835)
-- Name: service_positionservice_service_id_f8b19122; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX service_positionservice_service_id_f8b19122 ON public.service_positionservice USING btree (service_id);


--
-- TOC entry 3318 (class 1259 OID 17804)
-- Name: service_recordservice_record_id_a2c84144; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX service_recordservice_record_id_a2c84144 ON public.service_recordservice USING btree (record_id);


--
-- TOC entry 3319 (class 1259 OID 17805)
-- Name: service_recordservice_service_id_9a4ba5b9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX service_recordservice_service_id_9a4ba5b9 ON public.service_recordservice USING btree (service_id);


--
-- TOC entry 3244 (class 1259 OID 17012)
-- Name: two_factor_phonedevice_user_id_54718003; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX two_factor_phonedevice_user_id_54718003 ON public.two_factor_phonedevice USING btree (user_id);


--
-- TOC entry 3353 (class 2606 OID 16869)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3352 (class 2606 OID 16864)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3351 (class 2606 OID 16855)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3355 (class 2606 OID 16884)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3354 (class 2606 OID 16879)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3357 (class 2606 OID 16898)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3356 (class 2606 OID 16893)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3358 (class 2606 OID 16917)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3359 (class 2606 OID 16922)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3390 (class 2606 OID 17787)
-- Name: doctor_doctor doctor_doctor_id_department_id_125fc7cd_fk_doctor_department_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor_doctor
    ADD CONSTRAINT doctor_doctor_id_department_id_125fc7cd_fk_doctor_department_id FOREIGN KEY (id_department_id) REFERENCES public.doctor_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3389 (class 2606 OID 17782)
-- Name: doctor_doctor doctor_doctor_id_position_id_9db1ee70_fk_doctor_position_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor_doctor
    ADD CONSTRAINT doctor_doctor_id_position_id_9db1ee70_fk_doctor_position_id FOREIGN KEY (id_position_id) REFERENCES public.doctor_position(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3364 (class 2606 OID 17043)
-- Name: doctor doctor_id_department_id_0d5d2396_fk_department_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_id_department_id_0d5d2396_fk_department_id FOREIGN KEY (id_department_id) REFERENCES public.department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3365 (class 2606 OID 17048)
-- Name: doctor doctor_id_position_id_e26fbff7_fk_position_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_id_position_id_e26fbff7_fk_position_id FOREIGN KEY (id_position_id) REFERENCES public."position"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3370 (class 2606 OID 17170)
-- Name: hospital_card hospital_card_department_id_48ac8810_fk_department_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.hospital_card
    ADD CONSTRAINT hospital_card_department_id_48ac8810_fk_department_id FOREIGN KEY (department_id) REFERENCES public.department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3371 (class 2606 OID 17175)
-- Name: hospital_card hospital_card_doctor_id_3451e072_fk_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.hospital_card
    ADD CONSTRAINT hospital_card_doctor_id_3451e072_fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3386 (class 2606 OID 17325)
-- Name: hospital_service hospital_service_doctor_id_17e8548e_fk_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.hospital_service
    ADD CONSTRAINT hospital_service_doctor_id_17e8548e_fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3387 (class 2606 OID 17330)
-- Name: hospital_service hospital_service_hospital_card_id_4231d314_fk_hospital_card_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.hospital_service
    ADD CONSTRAINT hospital_service_hospital_card_id_4231d314_fk_hospital_card_id FOREIGN KEY (hospital_card_id) REFERENCES public.hospital_card(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3388 (class 2606 OID 17335)
-- Name: hospital_service hospital_service_service_id_0625012e_fk_service_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.hospital_service
    ADD CONSTRAINT hospital_service_service_id_0625012e_fk_service_id FOREIGN KEY (service_id) REFERENCES public.service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3360 (class 2606 OID 16954)
-- Name: otp_static_staticdevice otp_static_staticdevice_user_id_7f9cff2b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.otp_static_staticdevice
    ADD CONSTRAINT otp_static_staticdevice_user_id_7f9cff2b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3361 (class 2606 OID 16960)
-- Name: otp_static_statictoken otp_static_statictok_device_id_74b7c7d1_fk_otp_stati; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.otp_static_statictoken
    ADD CONSTRAINT otp_static_statictok_device_id_74b7c7d1_fk_otp_stati FOREIGN KEY (device_id) REFERENCES public.otp_static_staticdevice(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3362 (class 2606 OID 16981)
-- Name: otp_totp_totpdevice otp_totp_totpdevice_user_id_0fb18292_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.otp_totp_totpdevice
    ADD CONSTRAINT otp_totp_totpdevice_user_id_0fb18292_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3366 (class 2606 OID 17247)
-- Name: patient_allergy patient_allergy_allergy_id_0c93b05e_fk_allergy_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.patient_allergy
    ADD CONSTRAINT patient_allergy_allergy_id_0c93b05e_fk_allergy_id FOREIGN KEY (allergy_id) REFERENCES public.allergy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3367 (class 2606 OID 17252)
-- Name: patient_allergy patient_allergy_patient_id_83d966bc_fk_patient_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.patient_allergy
    ADD CONSTRAINT patient_allergy_patient_id_83d966bc_fk_patient_id FOREIGN KEY (patient_id) REFERENCES public.patient(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3368 (class 2606 OID 17082)
-- Name: patient_vaccination patient_vaccination_patient_id_4bdc5f3f_fk_patient_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.patient_vaccination
    ADD CONSTRAINT patient_vaccination_patient_id_4bdc5f3f_fk_patient_id FOREIGN KEY (patient_id) REFERENCES public.patient(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3369 (class 2606 OID 17242)
-- Name: patient_vaccination patient_vaccination_vaccination_id_d4d545d0_fk_vaccination_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.patient_vaccination
    ADD CONSTRAINT patient_vaccination_vaccination_id_d4d545d0_fk_vaccination_id FOREIGN KEY (vaccination_id) REFERENCES public.vaccination(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3378 (class 2606 OID 17218)
-- Name: position_diagnosis position_diagnosis_diagnosis_id_1beb5686_fk_diagnosis_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.position_diagnosis
    ADD CONSTRAINT position_diagnosis_diagnosis_id_1beb5686_fk_diagnosis_id FOREIGN KEY (diagnosis_id) REFERENCES public.diagnosis(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3379 (class 2606 OID 17223)
-- Name: position_diagnosis position_diagnosis_position_id_f405f85a_fk_position_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.position_diagnosis
    ADD CONSTRAINT position_diagnosis_position_id_f405f85a_fk_position_id FOREIGN KEY (position_id) REFERENCES public."position"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3384 (class 2606 OID 17313)
-- Name: position_service position_service_position_id_84243ee0_fk_position_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.position_service
    ADD CONSTRAINT position_service_position_id_84243ee0_fk_position_id FOREIGN KEY (position_id) REFERENCES public."position"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3385 (class 2606 OID 17318)
-- Name: position_service position_service_service_id_8a101a99_fk_service_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.position_service
    ADD CONSTRAINT position_service_service_id_8a101a99_fk_service_id FOREIGN KEY (service_id) REFERENCES public.service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3375 (class 2606 OID 17200)
-- Name: record_diagnosis record_diagnosis_diagnosis_id_6e808f09_fk_diagnosis_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_diagnosis
    ADD CONSTRAINT record_diagnosis_diagnosis_id_6e808f09_fk_diagnosis_id FOREIGN KEY (diagnosis_id) REFERENCES public.diagnosis(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3376 (class 2606 OID 17205)
-- Name: record_diagnosis record_diagnosis_doctor_id_7aa7ed91_fk_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_diagnosis
    ADD CONSTRAINT record_diagnosis_doctor_id_7aa7ed91_fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3377 (class 2606 OID 17210)
-- Name: record_diagnosis record_diagnosis_record_id_842b0ea9_fk_record_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_diagnosis
    ADD CONSTRAINT record_diagnosis_record_id_842b0ea9_fk_record_id FOREIGN KEY (record_id) REFERENCES public.record(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3372 (class 2606 OID 17182)
-- Name: record record_doctor_id_c4496a33_fk_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_doctor_id_c4496a33_fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3373 (class 2606 OID 17187)
-- Name: record record_hospital_card_id_f83e823b_fk_hospital_card_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_hospital_card_id_f83e823b_fk_hospital_card_id FOREIGN KEY (hospital_card_id) REFERENCES public.hospital_card(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3399 (class 2606 OID 17841)
-- Name: record_hospitalcard record_hospitalcard_department_id_d33577c6_fk_doctor_de; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_hospitalcard
    ADD CONSTRAINT record_hospitalcard_department_id_d33577c6_fk_doctor_de FOREIGN KEY (department_id) REFERENCES public.doctor_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3398 (class 2606 OID 17836)
-- Name: record_hospitalcard record_hospitalcard_doctor_id_f2b0303b_fk_doctor_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_hospitalcard
    ADD CONSTRAINT record_hospitalcard_doctor_id_f2b0303b_fk_doctor_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3380 (class 2606 OID 17230)
-- Name: record_hospitalcardrecord record_hospitalcardr_hospital_card_id_17ff765b_fk_hospital_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_hospitalcardrecord
    ADD CONSTRAINT record_hospitalcardr_hospital_card_id_17ff765b_fk_hospital_ FOREIGN KEY (hospital_card_id) REFERENCES public.hospital_card(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3381 (class 2606 OID 17235)
-- Name: record_hospitalcardrecord record_hospitalcardrecord_record_id_fdd5fc45_fk_record_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_hospitalcardrecord
    ADD CONSTRAINT record_hospitalcardrecord_record_id_fdd5fc45_fk_record_id FOREIGN KEY (record_id) REFERENCES public.record(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3374 (class 2606 OID 17192)
-- Name: record record_patient_id_397f3732_fk_patient_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_patient_id_397f3732_fk_patient_id FOREIGN KEY (patient_id) REFERENCES public.patient(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3407 (class 2606 OID 17889)
-- Name: record_positiondiagnosis record_positiondiagn_diagnosis_id_0b69765f_fk_record_di; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_positiondiagnosis
    ADD CONSTRAINT record_positiondiagn_diagnosis_id_0b69765f_fk_record_di FOREIGN KEY (diagnosis_id) REFERENCES public.record_diagnosis(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3406 (class 2606 OID 17884)
-- Name: record_positiondiagnosis record_positiondiagn_position_id_611b2a97_fk_doctor_po; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_positiondiagnosis
    ADD CONSTRAINT record_positiondiagn_position_id_611b2a97_fk_doctor_po FOREIGN KEY (position_id) REFERENCES public.doctor_position(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3401 (class 2606 OID 17853)
-- Name: record_record record_record_doctor_id_a36f4155_fk_doctor_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_record
    ADD CONSTRAINT record_record_doctor_id_a36f4155_fk_doctor_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3402 (class 2606 OID 17858)
-- Name: record_record record_record_hospital_card_id_0af83442_fk_record_ho; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_record
    ADD CONSTRAINT record_record_hospital_card_id_0af83442_fk_record_ho FOREIGN KEY (hospital_card_id) REFERENCES public.record_hospitalcard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3400 (class 2606 OID 17848)
-- Name: record_record record_record_patient_id_5450df44_fk_patient_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_record
    ADD CONSTRAINT record_record_patient_id_5450df44_fk_patient_id FOREIGN KEY (patient_id) REFERENCES public.patient(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3404 (class 2606 OID 17871)
-- Name: record_recorddiagnosis record_recorddiagnos_diagnosis_id_db521f6e_fk_record_di; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_recorddiagnosis
    ADD CONSTRAINT record_recorddiagnos_diagnosis_id_db521f6e_fk_record_di FOREIGN KEY (diagnosis_id) REFERENCES public.record_diagnosis(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3405 (class 2606 OID 17876)
-- Name: record_recorddiagnosis record_recorddiagnosis_doctor_id_e96fea37_fk_doctor_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_recorddiagnosis
    ADD CONSTRAINT record_recorddiagnosis_doctor_id_e96fea37_fk_doctor_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3403 (class 2606 OID 17866)
-- Name: record_recorddiagnosis record_recorddiagnosis_record_id_b5b2239f_fk_record_record_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_recorddiagnosis
    ADD CONSTRAINT record_recorddiagnosis_record_id_b5b2239f_fk_record_record_id FOREIGN KEY (record_id) REFERENCES public.record_record(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3382 (class 2606 OID 17301)
-- Name: record_service record_service_record_id_ed47c13e_fk_record_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_service
    ADD CONSTRAINT record_service_record_id_ed47c13e_fk_record_id FOREIGN KEY (record_id) REFERENCES public.record(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3383 (class 2606 OID 17306)
-- Name: record_service record_service_service_id_9c4dfde3_fk_service_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.record_service
    ADD CONSTRAINT record_service_service_id_9c4dfde3_fk_service_id FOREIGN KEY (service_id) REFERENCES public.service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3393 (class 2606 OID 17806)
-- Name: service_hospitalservice service_hospitalserv_hospital_card_id_2b25416d_fk_record_ho; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_hospitalservice
    ADD CONSTRAINT service_hospitalserv_hospital_card_id_2b25416d_fk_record_ho FOREIGN KEY (hospital_card_id) REFERENCES public.record_hospitalcard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3394 (class 2606 OID 17811)
-- Name: service_hospitalservice service_hospitalserv_service_id_6821b73e_fk_service_s; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_hospitalservice
    ADD CONSTRAINT service_hospitalserv_service_id_6821b73e_fk_service_s FOREIGN KEY (service_id) REFERENCES public.service_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3395 (class 2606 OID 17816)
-- Name: service_hospitalservice service_hospitalservice_doctor_id_6c02b288_fk_doctor_doctor_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_hospitalservice
    ADD CONSTRAINT service_hospitalservice_doctor_id_6c02b288_fk_doctor_doctor_id FOREIGN KEY (doctor_id) REFERENCES public.doctor_doctor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3396 (class 2606 OID 17824)
-- Name: service_positionservice service_positionserv_position_id_09ecb20c_fk_doctor_po; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_positionservice
    ADD CONSTRAINT service_positionserv_position_id_09ecb20c_fk_doctor_po FOREIGN KEY (position_id) REFERENCES public.doctor_position(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3397 (class 2606 OID 17829)
-- Name: service_positionservice service_positionserv_service_id_f8b19122_fk_service_s; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_positionservice
    ADD CONSTRAINT service_positionserv_service_id_f8b19122_fk_service_s FOREIGN KEY (service_id) REFERENCES public.service_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3391 (class 2606 OID 17794)
-- Name: service_recordservice service_recordservice_record_id_a2c84144_fk_record_record_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_recordservice
    ADD CONSTRAINT service_recordservice_record_id_a2c84144_fk_record_record_id FOREIGN KEY (record_id) REFERENCES public.record_record(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3392 (class 2606 OID 17799)
-- Name: service_recordservice service_recordservice_service_id_9a4ba5b9_fk_service_service_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.service_recordservice
    ADD CONSTRAINT service_recordservice_service_id_9a4ba5b9_fk_service_service_id FOREIGN KEY (service_id) REFERENCES public.service_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3363 (class 2606 OID 17013)
-- Name: two_factor_phonedevice two_factor_phonedevice_user_id_54718003_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.two_factor_phonedevice
    ADD CONSTRAINT two_factor_phonedevice_user_id_54718003_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-04-09 11:32:12

--
-- PostgreSQL database dump complete
--

