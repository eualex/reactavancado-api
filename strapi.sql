--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Debian 13.4-1.pgdg100+1)
-- Dumped by pg_dump version 13.4

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

ALTER TABLE IF EXISTS ONLY public.landing_pages_components DROP CONSTRAINT IF EXISTS landing_page_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches_components DROP CONSTRAINT IF EXISTS components_page_section_tech_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews_components DROP CONSTRAINT IF EXISTS components_page_section_review_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_modules_components DROP CONSTRAINT IF EXISTS components_page_section_module_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs_components DROP CONSTRAINT IF EXISTS components_page_section_faq_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_concepts_components DROP CONSTRAINT IF EXISTS components_page_section_concept_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT IF EXISTS components_page_pricing_box_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_headers_components DROP CONSTRAINT IF EXISTS components_page_header_id_fk;
ALTER TABLE IF EXISTS ONLY public.authors_components DROP CONSTRAINT IF EXISTS author_id_fk;
ALTER TABLE IF EXISTS ONLY public."users-permissions_user" DROP CONSTRAINT IF EXISTS "users-permissions_user_username_unique";
ALTER TABLE IF EXISTS ONLY public."users-permissions_user" DROP CONSTRAINT IF EXISTS "users-permissions_user_pkey";
ALTER TABLE IF EXISTS ONLY public."users-permissions_role" DROP CONSTRAINT IF EXISTS "users-permissions_role_type_unique";
ALTER TABLE IF EXISTS ONLY public."users-permissions_role" DROP CONSTRAINT IF EXISTS "users-permissions_role_pkey";
ALTER TABLE IF EXISTS ONLY public."users-permissions_permission" DROP CONSTRAINT IF EXISTS "users-permissions_permission_pkey";
ALTER TABLE IF EXISTS ONLY public.upload_file DROP CONSTRAINT IF EXISTS upload_file_pkey;
ALTER TABLE IF EXISTS ONLY public.upload_file_morph DROP CONSTRAINT IF EXISTS upload_file_morph_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_webhooks DROP CONSTRAINT IF EXISTS strapi_webhooks_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_users_roles DROP CONSTRAINT IF EXISTS strapi_users_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_role DROP CONSTRAINT IF EXISTS strapi_role_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_role DROP CONSTRAINT IF EXISTS strapi_role_name_unique;
ALTER TABLE IF EXISTS ONLY public.strapi_role DROP CONSTRAINT IF EXISTS strapi_role_code_unique;
ALTER TABLE IF EXISTS ONLY public.strapi_permission DROP CONSTRAINT IF EXISTS strapi_permission_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_administrator DROP CONSTRAINT IF EXISTS strapi_administrator_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_administrator DROP CONSTRAINT IF EXISTS strapi_administrator_email_unique;
ALTER TABLE IF EXISTS ONLY public.landing_pages DROP CONSTRAINT IF EXISTS landing_pages_pkey;
ALTER TABLE IF EXISTS ONLY public.landing_pages_components DROP CONSTRAINT IF EXISTS landing_pages_components_pkey;
ALTER TABLE IF EXISTS ONLY public.i18n_locales DROP CONSTRAINT IF EXISTS i18n_locales_pkey;
ALTER TABLE IF EXISTS ONLY public.i18n_locales DROP CONSTRAINT IF EXISTS i18n_locales_code_unique;
ALTER TABLE IF EXISTS ONLY public.core_store DROP CONSTRAINT IF EXISTS core_store_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_tech_icons DROP CONSTRAINT IF EXISTS components_page_tech_icons_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_social_links DROP CONSTRAINT IF EXISTS components_page_social_links_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches DROP CONSTRAINT IF EXISTS components_page_section_teches_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches_components DROP CONSTRAINT IF EXISTS components_page_section_teches_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews DROP CONSTRAINT IF EXISTS components_page_section_reviews_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews_components DROP CONSTRAINT IF EXISTS components_page_section_reviews_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_modules DROP CONSTRAINT IF EXISTS components_page_section_modules_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_modules_components DROP CONSTRAINT IF EXISTS components_page_section_modules_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs DROP CONSTRAINT IF EXISTS components_page_section_faqs_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs_components DROP CONSTRAINT IF EXISTS components_page_section_faqs_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_concepts DROP CONSTRAINT IF EXISTS components_page_section_concepts_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_concepts_components DROP CONSTRAINT IF EXISTS components_page_section_concepts_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_agenda DROP CONSTRAINT IF EXISTS components_page_section_agenda_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_aboutuses DROP CONSTRAINT IF EXISTS components_page_section_aboutuses_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_aboutuses__authors DROP CONSTRAINT IF EXISTS components_page_section_aboutuses__authors_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_about_projects DROP CONSTRAINT IF EXISTS components_page_section_about_projects_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_reviews DROP CONSTRAINT IF EXISTS components_page_reviews_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_questions DROP CONSTRAINT IF EXISTS components_page_questions_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_pricing_boxes DROP CONSTRAINT IF EXISTS components_page_pricing_boxes_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT IF EXISTS components_page_pricing_boxes_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_modules DROP CONSTRAINT IF EXISTS components_page_modules_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_headers DROP CONSTRAINT IF EXISTS components_page_headers_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_headers_components DROP CONSTRAINT IF EXISTS components_page_headers_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_concepts DROP CONSTRAINT IF EXISTS components_page_concepts_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_buttons DROP CONSTRAINT IF EXISTS components_page_buttons_pkey;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_pkey;
ALTER TABLE IF EXISTS ONLY public.authors_components DROP CONSTRAINT IF EXISTS authors_components_pkey;
ALTER TABLE IF EXISTS public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.upload_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_role ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.landing_pages_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.landing_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.i18n_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.core_store ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_tech_icons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_social_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_teches_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_teches ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_reviews_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_reviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_modules_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_modules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_faqs_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_faqs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_concepts_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_concepts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_agenda ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_aboutuses__authors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_aboutuses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_about_projects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_reviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_questions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_pricing_boxes_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_pricing_boxes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_modules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_headers_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_headers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_concepts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_buttons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.authors_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.authors ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public."users-permissions_user_id_seq";
DROP TABLE IF EXISTS public."users-permissions_user";
DROP SEQUENCE IF EXISTS public."users-permissions_role_id_seq";
DROP TABLE IF EXISTS public."users-permissions_role";
DROP SEQUENCE IF EXISTS public."users-permissions_permission_id_seq";
DROP TABLE IF EXISTS public."users-permissions_permission";
DROP SEQUENCE IF EXISTS public.upload_file_morph_id_seq;
DROP TABLE IF EXISTS public.upload_file_morph;
DROP SEQUENCE IF EXISTS public.upload_file_id_seq;
DROP TABLE IF EXISTS public.upload_file;
DROP SEQUENCE IF EXISTS public.strapi_webhooks_id_seq;
DROP TABLE IF EXISTS public.strapi_webhooks;
DROP SEQUENCE IF EXISTS public.strapi_users_roles_id_seq;
DROP TABLE IF EXISTS public.strapi_users_roles;
DROP SEQUENCE IF EXISTS public.strapi_role_id_seq;
DROP TABLE IF EXISTS public.strapi_role;
DROP SEQUENCE IF EXISTS public.strapi_permission_id_seq;
DROP TABLE IF EXISTS public.strapi_permission;
DROP SEQUENCE IF EXISTS public.strapi_administrator_id_seq;
DROP TABLE IF EXISTS public.strapi_administrator;
DROP SEQUENCE IF EXISTS public.landing_pages_id_seq;
DROP SEQUENCE IF EXISTS public.landing_pages_components_id_seq;
DROP TABLE IF EXISTS public.landing_pages_components;
DROP TABLE IF EXISTS public.landing_pages;
DROP SEQUENCE IF EXISTS public.i18n_locales_id_seq;
DROP TABLE IF EXISTS public.i18n_locales;
DROP SEQUENCE IF EXISTS public.core_store_id_seq;
DROP TABLE IF EXISTS public.core_store;
DROP SEQUENCE IF EXISTS public.components_page_tech_icons_id_seq;
DROP TABLE IF EXISTS public.components_page_tech_icons;
DROP SEQUENCE IF EXISTS public.components_page_social_links_id_seq;
DROP TABLE IF EXISTS public.components_page_social_links;
DROP SEQUENCE IF EXISTS public.components_page_section_teches_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_teches_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_teches_components;
DROP TABLE IF EXISTS public.components_page_section_teches;
DROP SEQUENCE IF EXISTS public.components_page_section_reviews_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_reviews_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_reviews_components;
DROP TABLE IF EXISTS public.components_page_section_reviews;
DROP SEQUENCE IF EXISTS public.components_page_section_modules_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_modules_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_modules_components;
DROP TABLE IF EXISTS public.components_page_section_modules;
DROP SEQUENCE IF EXISTS public.components_page_section_faqs_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_faqs_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_faqs_components;
DROP TABLE IF EXISTS public.components_page_section_faqs;
DROP SEQUENCE IF EXISTS public.components_page_section_concepts_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_concepts_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_concepts_components;
DROP TABLE IF EXISTS public.components_page_section_concepts;
DROP SEQUENCE IF EXISTS public.components_page_section_agenda_id_seq;
DROP TABLE IF EXISTS public.components_page_section_agenda;
DROP SEQUENCE IF EXISTS public.components_page_section_aboutuses_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_aboutuses__authors_id_seq;
DROP TABLE IF EXISTS public.components_page_section_aboutuses__authors;
DROP TABLE IF EXISTS public.components_page_section_aboutuses;
DROP SEQUENCE IF EXISTS public.components_page_section_about_projects_id_seq;
DROP TABLE IF EXISTS public.components_page_section_about_projects;
DROP SEQUENCE IF EXISTS public.components_page_reviews_id_seq;
DROP TABLE IF EXISTS public.components_page_reviews;
DROP SEQUENCE IF EXISTS public.components_page_questions_id_seq;
DROP TABLE IF EXISTS public.components_page_questions;
DROP SEQUENCE IF EXISTS public.components_page_pricing_boxes_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_pricing_boxes_components_id_seq;
DROP TABLE IF EXISTS public.components_page_pricing_boxes_components;
DROP TABLE IF EXISTS public.components_page_pricing_boxes;
DROP SEQUENCE IF EXISTS public.components_page_modules_id_seq;
DROP TABLE IF EXISTS public.components_page_modules;
DROP SEQUENCE IF EXISTS public.components_page_headers_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_headers_components_id_seq;
DROP TABLE IF EXISTS public.components_page_headers_components;
DROP TABLE IF EXISTS public.components_page_headers;
DROP SEQUENCE IF EXISTS public.components_page_concepts_id_seq;
DROP TABLE IF EXISTS public.components_page_concepts;
DROP SEQUENCE IF EXISTS public.components_page_buttons_id_seq;
DROP TABLE IF EXISTS public.components_page_buttons;
DROP SEQUENCE IF EXISTS public.authors_id_seq;
DROP SEQUENCE IF EXISTS public.authors_components_id_seq;
DROP TABLE IF EXISTS public.authors_components;
DROP TABLE IF EXISTS public.authors;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255),
    role character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    description text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- Name: authors_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.authors_components OWNER TO postgres;

--
-- Name: authors_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authors_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_components_id_seq OWNER TO postgres;

--
-- Name: authors_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authors_components_id_seq OWNED BY public.authors_components.id;


--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO postgres;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: components_page_buttons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    label character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_buttons OWNER TO postgres;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_buttons_id_seq OWNER TO postgres;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;


--
-- Name: components_page_concepts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_concepts (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_concepts OWNER TO postgres;

--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_concepts_id_seq OWNER TO postgres;

--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_concepts_id_seq OWNED BY public.components_page_concepts.id;


--
-- Name: components_page_headers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_headers (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_headers OWNER TO postgres;

--
-- Name: components_page_headers_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_headers_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_header_id integer NOT NULL
);


ALTER TABLE public.components_page_headers_components OWNER TO postgres;

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_components_id_seq OWNER TO postgres;

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_headers_components_id_seq OWNED BY public.components_page_headers_components.id;


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_id_seq OWNER TO postgres;

--
-- Name: components_page_headers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_headers_id_seq OWNED BY public.components_page_headers.id;


--
-- Name: components_page_modules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_modules (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    description text
);


ALTER TABLE public.components_page_modules OWNER TO postgres;

--
-- Name: components_page_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_modules_id_seq OWNER TO postgres;

--
-- Name: components_page_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_modules_id_seq OWNED BY public.components_page_modules.id;


--
-- Name: components_page_pricing_boxes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_pricing_boxes (
    id integer NOT NULL,
    "totalPrice" integer,
    "numberInstallments" integer,
    "priceInstallment" integer,
    benefits text
);


ALTER TABLE public.components_page_pricing_boxes OWNER TO postgres;

--
-- Name: components_page_pricing_boxes_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_pricing_boxes_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_pricing_box_id integer NOT NULL
);


ALTER TABLE public.components_page_pricing_boxes_components OWNER TO postgres;

--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_pricing_boxes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_pricing_boxes_components_id_seq OWNER TO postgres;

--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_pricing_boxes_components_id_seq OWNED BY public.components_page_pricing_boxes_components.id;


--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_pricing_boxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_pricing_boxes_id_seq OWNER TO postgres;

--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_pricing_boxes_id_seq OWNED BY public.components_page_pricing_boxes.id;


--
-- Name: components_page_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_questions (
    id integer NOT NULL,
    question text,
    answer text
);


ALTER TABLE public.components_page_questions OWNER TO postgres;

--
-- Name: components_page_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_questions_id_seq OWNER TO postgres;

--
-- Name: components_page_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_questions_id_seq OWNED BY public.components_page_questions.id;


--
-- Name: components_page_reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_reviews (
    id integer NOT NULL,
    name character varying(255),
    text text
);


ALTER TABLE public.components_page_reviews OWNER TO postgres;

--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_reviews_id_seq OWNER TO postgres;

--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_reviews_id_seq OWNED BY public.components_page_reviews.id;


--
-- Name: components_page_section_about_projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_about_projects (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_section_about_projects OWNER TO postgres;

--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_about_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_about_projects_id_seq OWNER TO postgres;

--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_about_projects_id_seq OWNED BY public.components_page_section_about_projects.id;


--
-- Name: components_page_section_aboutuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_aboutuses (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_aboutuses OWNER TO postgres;

--
-- Name: components_page_section_aboutuses__authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_aboutuses__authors (
    id integer NOT NULL,
    components_page_section_aboutus_id integer,
    author_id integer
);


ALTER TABLE public.components_page_section_aboutuses__authors OWNER TO postgres;

--
-- Name: components_page_section_aboutuses__authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_aboutuses__authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_aboutuses__authors_id_seq OWNER TO postgres;

--
-- Name: components_page_section_aboutuses__authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_aboutuses__authors_id_seq OWNED BY public.components_page_section_aboutuses__authors.id;


--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_aboutuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_aboutuses_id_seq OWNER TO postgres;

--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_aboutuses_id_seq OWNED BY public.components_page_section_aboutuses.id;


--
-- Name: components_page_section_agenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_agenda (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_section_agenda OWNER TO postgres;

--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_agenda_id_seq OWNER TO postgres;

--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_agenda_id_seq OWNED BY public.components_page_section_agenda.id;


--
-- Name: components_page_section_concepts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_concepts (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_concepts OWNER TO postgres;

--
-- Name: components_page_section_concepts_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_concepts_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_concept_id integer NOT NULL
);


ALTER TABLE public.components_page_section_concepts_components OWNER TO postgres;

--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_concepts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_concepts_components_id_seq OWNER TO postgres;

--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_concepts_components_id_seq OWNED BY public.components_page_section_concepts_components.id;


--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_concepts_id_seq OWNER TO postgres;

--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_concepts_id_seq OWNED BY public.components_page_section_concepts.id;


--
-- Name: components_page_section_faqs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_faqs (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_faqs OWNER TO postgres;

--
-- Name: components_page_section_faqs_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_faqs_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_faq_id integer NOT NULL
);


ALTER TABLE public.components_page_section_faqs_components OWNER TO postgres;

--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_faqs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_faqs_components_id_seq OWNER TO postgres;

--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_faqs_components_id_seq OWNED BY public.components_page_section_faqs_components.id;


--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_faqs_id_seq OWNER TO postgres;

--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_faqs_id_seq OWNED BY public.components_page_section_faqs.id;


--
-- Name: components_page_section_modules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_modules (
    id integer NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.components_page_section_modules OWNER TO postgres;

--
-- Name: components_page_section_modules_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_modules_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_module_id integer NOT NULL
);


ALTER TABLE public.components_page_section_modules_components OWNER TO postgres;

--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_modules_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_modules_components_id_seq OWNER TO postgres;

--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_modules_components_id_seq OWNED BY public.components_page_section_modules_components.id;


--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_modules_id_seq OWNER TO postgres;

--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_modules_id_seq OWNED BY public.components_page_section_modules.id;


--
-- Name: components_page_section_reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_reviews (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_reviews OWNER TO postgres;

--
-- Name: components_page_section_reviews_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_reviews_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_review_id integer NOT NULL
);


ALTER TABLE public.components_page_section_reviews_components OWNER TO postgres;

--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_reviews_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_reviews_components_id_seq OWNER TO postgres;

--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_reviews_components_id_seq OWNED BY public.components_page_section_reviews_components.id;


--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_reviews_id_seq OWNER TO postgres;

--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_reviews_id_seq OWNED BY public.components_page_section_reviews.id;


--
-- Name: components_page_section_teches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_teches (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_teches OWNER TO postgres;

--
-- Name: components_page_section_teches_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_section_teches_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    components_page_section_tech_id integer NOT NULL
);


ALTER TABLE public.components_page_section_teches_components OWNER TO postgres;

--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_teches_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_teches_components_id_seq OWNER TO postgres;

--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_teches_components_id_seq OWNED BY public.components_page_section_teches_components.id;


--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_section_teches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_teches_id_seq OWNER TO postgres;

--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_section_teches_id_seq OWNED BY public.components_page_section_teches.id;


--
-- Name: components_page_social_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_social_links (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_social_links OWNER TO postgres;

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_social_links_id_seq OWNER TO postgres;

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_social_links_id_seq OWNED BY public.components_page_social_links.id;


--
-- Name: components_page_tech_icons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components_page_tech_icons (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_tech_icons OWNER TO postgres;

--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_page_tech_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_tech_icons_id_seq OWNER TO postgres;

--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_page_tech_icons_id_seq OWNED BY public.components_page_tech_icons.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.i18n_locales OWNER TO postgres;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locales_id_seq OWNER TO postgres;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- Name: landing_pages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.landing_pages (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    title character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer
);


ALTER TABLE public.landing_pages OWNER TO postgres;

--
-- Name: landing_pages_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.landing_pages_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    landing_page_id integer NOT NULL
);


ALTER TABLE public.landing_pages_components OWNER TO postgres;

--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.landing_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_pages_components_id_seq OWNER TO postgres;

--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.landing_pages_components_id_seq OWNED BY public.landing_pages_components.id;


--
-- Name: landing_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.landing_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_pages_id_seq OWNER TO postgres;

--
-- Name: landing_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.landing_pages_id_seq OWNED BY public.landing_pages.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


ALTER TABLE public.strapi_administrator OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO postgres;

--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO postgres;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO postgres;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO postgres;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO postgres;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO postgres;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO postgres;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    created_by integer,
    updated_by integer
);


ALTER TABLE public.upload_file OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "confirmationToken" character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_user" OWNER TO postgres;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: authors_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors_components ALTER COLUMN id SET DEFAULT nextval('public.authors_components_id_seq'::regclass);


--
-- Name: components_page_buttons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);


--
-- Name: components_page_concepts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_concepts_id_seq'::regclass);


--
-- Name: components_page_headers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_headers ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_id_seq'::regclass);


--
-- Name: components_page_headers_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_components_id_seq'::regclass);


--
-- Name: components_page_modules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_modules_id_seq'::regclass);


--
-- Name: components_page_pricing_boxes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_pricing_boxes ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_id_seq'::regclass);


--
-- Name: components_page_pricing_boxes_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_components_id_seq'::regclass);


--
-- Name: components_page_questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_questions ALTER COLUMN id SET DEFAULT nextval('public.components_page_questions_id_seq'::regclass);


--
-- Name: components_page_reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_reviews_id_seq'::regclass);


--
-- Name: components_page_section_about_projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_about_projects ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_about_projects_id_seq'::regclass);


--
-- Name: components_page_section_aboutuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_aboutuses ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_aboutuses_id_seq'::regclass);


--
-- Name: components_page_section_aboutuses__authors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_aboutuses__authors ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_aboutuses__authors_id_seq'::regclass);


--
-- Name: components_page_section_agenda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_agenda ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_agenda_id_seq'::regclass);


--
-- Name: components_page_section_concepts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_id_seq'::regclass);


--
-- Name: components_page_section_concepts_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_concepts_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_components_id_seq'::regclass);


--
-- Name: components_page_section_faqs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_id_seq'::regclass);


--
-- Name: components_page_section_faqs_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_faqs_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_components_id_seq'::regclass);


--
-- Name: components_page_section_modules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_id_seq'::regclass);


--
-- Name: components_page_section_modules_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_modules_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_components_id_seq'::regclass);


--
-- Name: components_page_section_reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_id_seq'::regclass);


--
-- Name: components_page_section_reviews_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_reviews_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_components_id_seq'::regclass);


--
-- Name: components_page_section_teches id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_teches ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_id_seq'::regclass);


--
-- Name: components_page_section_teches_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_teches_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_components_id_seq'::regclass);


--
-- Name: components_page_social_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_social_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_social_links_id_seq'::regclass);


--
-- Name: components_page_tech_icons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_tech_icons ALTER COLUMN id SET DEFAULT nextval('public.components_page_tech_icons_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- Name: landing_pages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.landing_pages ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_id_seq'::regclass);


--
-- Name: landing_pages_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.landing_pages_components ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_components_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authors (id, name, role, created_at, updated_at, description, published_at, created_by, updated_by) FROM stdin;
4	Willian Justen	Instrutor	2020-07-18 01:14:17.25+00	2020-07-18 01:14:17.25+00	Desenvolvedor Front-end há mais de 10 anos, tendo trabalhado em grandes empresas como Toptal, Globo.com e Huge. Tenho um blog com mais de 200 mil views por mês, além de ter diversos cursos na Udemy, alcançando a incrível marca de mais de 200 mil alunos!	2020-07-18 01:14:17.25+00	\N	\N
5	Guilherme Louro	Instrutor	2020-07-18 01:14:54.114+00	2020-07-18 01:14:54.114+00	Desenvolvedor Fullstack há muitos anos, com conhecimento em diversas linguagens de programação. Já liderou grandes projetos e trabalha atualmente na Personare, um dos maiores portais de autoconhecimento do Brasil. Nas horas vagas é o criador e mantenedor do Netfla, site de notícias do Flamengo com mais de meio milhão de views por mês!	2020-07-18 01:14:54.114+00	\N	\N
7	Marcos Oliveira	Designer	2020-07-18 02:58:45.155+00	2020-07-18 02:58:45.155+00	Front-End e UI Designer há alguns anos. Atualmente trabalha na Lukin Co. Já participou de diversos tipos de projetos, na área da saúde, streaming e varejo. Sempre dividido entre design e programação. No tempo livre sempre está envolvido com a comunidade, organizando eventos e meetups.	2020-07-18 02:58:45.155+00	\N	\N
\.


--
-- Data for Name: authors_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authors_components (id, field, "order", component_type, component_id, author_id) FROM stdin;
8	socialLinks	1	components_page_social_links	8	4
9	socialLinks	2	components_page_social_links	9	4
10	socialLinks	1	components_page_social_links	10	5
11	socialLinks	2	components_page_social_links	11	5
15	socialLinks	1	components_page_social_links	15	7
16	socialLinks	2	components_page_social_links	16	7
17	socialLinks	3	components_page_social_links	17	7
\.


--
-- Data for Name: components_page_buttons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_buttons (id, label, url) FROM stdin;
1	Comprar	https://www.udemy.com/course/react-avancado/?couponCode=MODULO1
2	Comprar o curso	https://www.udemy.com/course/react-avancado/?couponCode=MODULO1
\.


--
-- Data for Name: components_page_concepts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_concepts (id, title) FROM stdin;
1	Boas práticas com ReactJS
2	Boas práticas com Styled
3	Boas práticas com Testes
4	Server Side Rendering (SSR)
5	Static Site Generation (SSG)
6	Rotas simples e dinâmicas
7	Funcionamento do GraphQL
8	Queries e Mutations
9	Filtros e paginações
10	Criar componentes do zero
11	Utilizar componentes third-party
12	Utilizar Storybook
13	Criar APIs rapidamente
14	Envio de emails automatizado
15	Autenticação de usuários
16	Fluxo de pagamentos
17	Criação de pipelines em CI
18	Deploy automatizado
\.


--
-- Data for Name: components_page_headers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_headers (id, title, description) FROM stdin;
1	React Avançado	Crie aplicações reais com NextJS, Strapi, GraphQL e mais!
\.


--
-- Data for Name: components_page_headers_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_headers_components (id, field, "order", component_type, component_id, components_page_header_id) FROM stdin;
1	button	1	components_page_buttons	1	1
\.


--
-- Data for Name: components_page_modules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_modules (id, title, subtitle, description) FROM stdin;
1	Módulo 1	Introdução e Arquitetura do Projeto	<p>Iremos conhecer a <i>Stack</i> utilizada no curso, tendo explicação de cada uma das escolhas, assim como mostrando os prós e contras de cada uma delas</p><p>Iremos construir nosso boilerplate do zero, aprendendo a configurar as ferramentas de qualidade de código, como <i>Eslint</i>, <i>Prettier</i>, <i>Git hooks</i> e <i>TypeScript</i>. Assim como também configurar o <i>Styled Components</i> para funcionar com <i>SSR</i> e <i>PWA</i>.</p>
2	Módulo 2	Strapi e GraphQL	<p>Vamos iniciar nosso backend/CMS com o Strapi, aprender mais sobre sua API, como o content type builder, single types, custom components. Além de aprender a criar controllers customizados, serviços, instalar plugins de documentação e também do GraphQL, onde iremos aprender como funciona, como criar queries, filtros, mutations e mais.</p><p>Para finalizar, aprenderemos como customizar o CMS para que ele tenha a cara da loja e se torne uma solução mais interessante para o cliente.</p>
3	Módulo 3	Criando o Frontend	<p>Essa que será uma das maiores etapas, é onde vamos aprender a pegar um layout diretamente do Figma e vamos transformá-los em diferentes componentes e estilos.</p><p>Faremos todos os componentes com styled components, com testes, cenários no Storybook e pensando na responsividade. Com os componentes prontos, construiremos as páginas, ajustando o que for necessário para que tudo se encaixe perfeitamente.</p>
4	Módulo 4	Sistema de Pagamento e Área do Cliente	<p>Conheceremos algumas soluções de pagamento do mercado, vendo suas vantagens, desvantagens e APIs.</p><p>Criaremos toda a parte final do fluxo de pagamentos, conectando a nossa loja a um gateway de pagamento, salvando as compras em nosso banco de dados. Além de desenvolvermos a área do cliente, para que o cliente possa editar seus dados, ver compras realizadas e sua wishlist.</p>
5	Módulo 5	Testes de Integração	<p>Neste módulo iremos aprender a importância dos testes de integração e como garantir ainda mais qualidade no nosso projeto.</p><p>Vamos criar testes para todos os fluxos que um usuário normal pode executar em nosso site, desde a navegação normal até uma compra efetuada.</p>
6	Módulo 6	CI e Deploy	<p>Normalmente a maioria dos cursos termina na criação do projeto, mas nunca ensina como fazer para realmente deixar em produção.</p><p>Aqui nós iremos aprender quais as necessidades do projeto e quais as soluçoes que podemos utilizar. Além disso, iremos criar uma pipeline em um CI para que tenhamos todo o processo de deploy o mais automatizado possível</p>
\.


--
-- Data for Name: components_page_pricing_boxes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_pricing_boxes (id, "totalPrice", "numberInstallments", "priceInstallment", benefits) FROM stdin;
1	415	6	48	<ul><li>Acesso aos <strong>6 módulos</strong> assim que lançados</li><li>Código de <strong>todo o projeto</strong> separado em commits</li><li>Contato <strong>direto</strong> com os instrutores via Slack</li><li><strong>Lives exclusivas</strong> durante o curso</li></ul>
\.


--
-- Data for Name: components_page_pricing_boxes_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_pricing_boxes_components (id, field, "order", component_type, component_id, components_page_pricing_box_id) FROM stdin;
1	button	1	components_page_buttons	2	1
\.


--
-- Data for Name: components_page_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_questions (id, question, answer) FROM stdin;
1	O que preciso saber para o curso?	<p>Um conhecimento básico de JavaScript/React é necessário para maior entendimento do curso, mas todo o conteúdo será explicado em detalhes e todas as perguntas/dúvidas serão respondidas.</p>
2	Onde os vídeos serão publicados?	<p>Os vídeos serão publicados na Udemy, com o mesmo funcionamento que já existe, vídeos offline, autoplay, acelerar em 2x, aplicativo nativo e mais.</p>
3	Quanto tempo tenho para fazer o curso?	<p>O curso é vitalício, faça quantas vezes quiser e quando quiser, nada de bloqueios ou pressa.</p>
4	Esse curso tem certificado?	<p>Sim, o curso terá certificado e você poderá baixá-lo diretamente da Udemy ao término do curso.</p>
5	Quais outros cursos você tem?	<p>Tenho alguns cursos gratuitos e pagos, você pode acessar todos os cursos <a href="https://willianjusten.com.br/cursos">nesse link.</a></p>
6	Posso usar o projeto para o meu Portfólio?	<p>Definitivamente! A ideia é que vocês tenham um projeto de verdade que possam utilizar como bem entenderem.</p>
\.


--
-- Data for Name: components_page_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_reviews (id, name, text) FROM stdin;
1	Henrique Albert Schmaiske	O Curso foi incrível! Gostei muito das explicações, bem claras e objetivas! Deixo a sugestão para um próximo Curso: NextJS mostrando fazer um Ecommerce. Compraria sem nem olhar o preço.
2	Alexandre Teixeira	Esse já é o terceiro curso do Will que faço, e a didática do cara é incrível! Além disso, o cara segue trazendo o que tem de mais moderno no mercado de forma bem explicada e com aplicações práticas.
3	Daniel P. de Oliveira	É incrível a forma como foi passado o conteúdo do curso, dá para ver que o Will tem um domínio impressionante sobre as ferramentas e tecnologias passadas, e mesmo eu tendo pouco conhecimento em React consegui acompanhar o curso sem muitas dificuldades. Espero que tenha mais cursos nessa linha, com certeza comprarei! Obrigado Will!
4	Mileine Souto	Sensacional! A didática do instrutor é excelente para estruturar o curso e dar o ritmo das aulas. Foi uma experiência muito enriquecedora (e divertida) construir um blog seguindo o passo-a-passo dos vídeos. Não sabia nada sobre Gatsby, GraphQL ou Netlify CMS mas consegui acompanhar todo o processo sem grandes dificuldades. Além disso, foi ótimo aprender um pouquinho mais sobre algumas práticas de desenvolvimento, como temas em React, estilização CSS in JS com styled-components e utilização do Algolia como solução de busca. Recomendo! =)
\.


--
-- Data for Name: components_page_section_about_projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_about_projects (id, title, description) FROM stdin;
1	O que iremos construir	<p>Iremos criar um e-commerce de jogos, incluindo toda a parte de pagamentos e área do cliente. Os clientes poderão fazer buscas, filtrar, adicionar ao carrinho e comprar seus jogos favoritos.</p><p>Teremos também um <strong>CMS completamente customizado</strong> para que os administradores possam adicionar produtos, categorias, plataformas, criar promoções, editar partes do site, além de emails automatizados para às vendas de cada produto.</p><p>Para criar tudo isso, iremos utilizar ferramentas muito famosas no mercado de trabalho, como ReactJS, Next, Apollo e outras coisas mais. Sempre prezando pela qualidade do código, ou seja, teremos <strong>testes em tudo!</strong></p>
\.


--
-- Data for Name: components_page_section_aboutuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_aboutuses (id, title) FROM stdin;
1	Quem somos nós
\.


--
-- Data for Name: components_page_section_aboutuses__authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_aboutuses__authors (id, components_page_section_aboutus_id, author_id) FROM stdin;
1	1	4
2	1	5
3	1	6
4	1	7
\.


--
-- Data for Name: components_page_section_agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_agenda (id, title, description) FROM stdin;
1	Agenda pré-lançamento	<p>Esse é um curso extremamente vivo, estaremos lançando os módulos conforme vamos terminando. Com isso, além de permitir que vocês iniciem o curso mais rápido, também irá facilitar que tenhamos um feedback mais constante sobre tudo, deixando nosso curso ainda melhor.</p><p>Para agradecer as pessoas que nos apoiarem desde o início, conforme os módulos forem sendo lançados, o desconto vai diminuindo. <strong>Ou seja, quanto mais cedo você comprar, mais barato irá pagar</strong>. Segue a agenda:</p>
\.


--
-- Data for Name: components_page_section_concepts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_concepts (id, title) FROM stdin;
1	Conceitos que você irá aprender
\.


--
-- Data for Name: components_page_section_concepts_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_concepts_components (id, field, "order", component_type, component_id, components_page_section_concept_id) FROM stdin;
1	concepts	1	components_page_concepts	1	1
2	concepts	2	components_page_concepts	2	1
3	concepts	3	components_page_concepts	3	1
4	concepts	4	components_page_concepts	4	1
5	concepts	5	components_page_concepts	5	1
6	concepts	6	components_page_concepts	6	1
7	concepts	7	components_page_concepts	7	1
8	concepts	8	components_page_concepts	8	1
9	concepts	9	components_page_concepts	9	1
10	concepts	10	components_page_concepts	10	1
11	concepts	11	components_page_concepts	11	1
12	concepts	12	components_page_concepts	12	1
13	concepts	13	components_page_concepts	13	1
14	concepts	14	components_page_concepts	14	1
15	concepts	15	components_page_concepts	15	1
16	concepts	16	components_page_concepts	16	1
17	concepts	17	components_page_concepts	17	1
18	concepts	18	components_page_concepts	18	1
\.


--
-- Data for Name: components_page_section_faqs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_faqs (id, title) FROM stdin;
1	FAQ
\.


--
-- Data for Name: components_page_section_faqs_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_faqs_components (id, field, "order", component_type, component_id, components_page_section_faq_id) FROM stdin;
1	questions	1	components_page_questions	1	1
2	questions	2	components_page_questions	2	1
3	questions	3	components_page_questions	3	1
4	questions	4	components_page_questions	4	1
5	questions	5	components_page_questions	5	1
6	questions	6	components_page_questions	6	1
\.


--
-- Data for Name: components_page_section_modules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_modules (id, title) FROM stdin;
1	Módulos deste curso
\.


--
-- Data for Name: components_page_section_modules_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_modules_components (id, field, "order", component_type, component_id, components_page_section_module_id) FROM stdin;
1	modules	1	components_page_modules	1	1
2	modules	2	components_page_modules	2	1
3	modules	3	components_page_modules	3	1
4	modules	4	components_page_modules	4	1
5	modules	5	components_page_modules	5	1
6	modules	6	components_page_modules	6	1
\.


--
-- Data for Name: components_page_section_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_reviews (id, title) FROM stdin;
1	Junte-se a mais de 200 mil alunos
\.


--
-- Data for Name: components_page_section_reviews_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_reviews_components (id, field, "order", component_type, component_id, components_page_section_review_id) FROM stdin;
1	reviews	1	components_page_reviews	1	1
2	reviews	2	components_page_reviews	2	1
3	reviews	3	components_page_reviews	3	1
4	reviews	4	components_page_reviews	4	1
\.


--
-- Data for Name: components_page_section_teches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_teches (id, title) FROM stdin;
1	Tecnologias utilizadas
\.


--
-- Data for Name: components_page_section_teches_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_section_teches_components (id, field, "order", component_type, component_id, components_page_section_tech_id) FROM stdin;
1	techIcons	1	components_page_tech_icons	1	1
2	techIcons	2	components_page_tech_icons	2	1
3	techIcons	3	components_page_tech_icons	3	1
4	techIcons	4	components_page_tech_icons	4	1
5	techIcons	5	components_page_tech_icons	5	1
6	techIcons	6	components_page_tech_icons	6	1
7	techIcons	7	components_page_tech_icons	7	1
8	techIcons	8	components_page_tech_icons	8	1
9	techIcons	9	components_page_tech_icons	9	1
10	techIcons	10	components_page_tech_icons	10	1
\.


--
-- Data for Name: components_page_social_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_social_links (id, title, url) FROM stdin;
8	Twitter	https://twitter.com/Willian_justen
9	Github	https://github.com/willianjusten
10	Twitter	https://twitter.com/guilhermelouro
11	Github	https://github.com/guilouro
12	Twitter	https://twitter.com/vmaarcosp
13	Dribbble	http://vmarcosp.dribbble.com/
14	Github	https://github.com/vmarcosp
15	Twitter	https://twitter.com/vmaarcosp
16	Dribbble	http://vmarcosp.dribbble.com/
17	Github	https://github.com/vmarcosp
\.


--
-- Data for Name: components_page_tech_icons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components_page_tech_icons (id, title) FROM stdin;
1	TypeScript
2	React
3	NextJS
4	Strapi
5	Apollo
6	GraphQL
7	Jest
8	Testing Library
9	Storybook
10	Cypress
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
61	model_def_page.button	{"uid":"page.button","collectionName":"components_page_buttons","info":{"name":"button","icon":"external-link-alt"},"options":{"timestamps":false},"attributes":{"label":{"type":"string","required":true,"default":"Comprar","maxLength":20},"url":{"type":"string","required":true}}}	object	\N	\N
62	model_def_page.concepts	{"uid":"page.concepts","collectionName":"components_page_concepts","info":{"name":"concepts","icon":"align-center"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true}}}	object	\N	\N
63	model_def_page.header	{"uid":"page.header","collectionName":"components_page_headers","info":{"name":"header","icon":"heading"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","private":false,"required":true},"description":{"type":"text","private":false,"required":true},"button":{"type":"component","repeatable":false,"component":"page.button"},"image":{"model":"file","via":"related","allowedTypes":["images","videos"],"plugin":"upload","required":true,"pluginOptions":{}}}}	object	\N	\N
64	model_def_page.modules	{"uid":"page.modules","collectionName":"components_page_modules","info":{"name":"modules","icon":"newspaper"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"subtitle":{"type":"string","required":true},"description":{"type":"richtext","required":true}}}	object	\N	\N
66	model_def_page.questions	{"uid":"page.questions","collectionName":"components_page_questions","info":{"name":"questions","icon":"question"},"options":{"timestamps":false},"attributes":{"question":{"type":"text","required":true},"answer":{"type":"richtext","required":true}}}	object	\N	\N
67	model_def_page.reviews	{"uid":"page.reviews","collectionName":"components_page_reviews","info":{"name":"reviews","icon":"star-half-alt"},"options":{"timestamps":false},"attributes":{"name":{"type":"string","required":true},"text":{"type":"text","required":true},"photo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
68	model_def_page.section-about-project	{"uid":"page.section-about-project","collectionName":"components_page_section_about_projects","info":{"name":"sectionAboutProject","icon":"info"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"description":{"type":"richtext","required":true},"image":{"model":"file","via":"related","allowedTypes":["images","videos"],"plugin":"upload","required":true,"pluginOptions":{}}}}	object	\N	\N
69	model_def_page.section-about-us	{"uid":"page.section-about-us","collectionName":"components_page_section_aboutuses","info":{"name":"sectionAboutUs","icon":"user-astronaut"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"authors":{"unique":true,"collection":"authors","attribute":"author","column":"id","isVirtual":true}}}	object	\N	\N
70	model_def_page.section-agenda	{"uid":"page.section-agenda","collectionName":"components_page_section_agenda","info":{"name":"sectionAgenda","icon":"calendar-alt"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"description":{"type":"richtext","required":true}}}	object	\N	\N
71	model_def_page.section-concepts	{"uid":"page.section-concepts","collectionName":"components_page_section_concepts","info":{"name":"sectionConcepts","icon":"align-justify"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"concepts":{"type":"component","repeatable":true,"component":"page.concepts","required":true}}}	object	\N	\N
72	model_def_page.section-faq	{"uid":"page.section-faq","collectionName":"components_page_section_faqs","info":{"name":"sectionFaq","icon":"question-circle"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"questions":{"type":"component","repeatable":true,"component":"page.questions","required":true,"min":2}}}	object	\N	\N
73	model_def_page.section-modules	{"uid":"page.section-modules","collectionName":"components_page_section_modules","info":{"name":"sectionModules","icon":"atlas"},"options":{"timestamps":false},"attributes":{}}	object	\N	\N
74	model_def_page.section-reviews	{"uid":"page.section-reviews","collectionName":"components_page_section_reviews","info":{"name":"sectionReviews","icon":"star"},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"reviews":{"type":"component","repeatable":true,"component":"page.reviews","required":true,"min":4}}}	object	\N	\N
75	model_def_page.section-tech	{"uid":"page.section-tech","collectionName":"components_page_section_teches","info":{"name":"sectionTech","icon":"toolbox","description":""},"options":{"timestamps":false},"attributes":{"title":{"type":"string","required":true},"techIcons":{"type":"component","repeatable":true,"component":"page.tech-icons","required":true,"max":10,"min":5}}}	object	\N	\N
76	model_def_page.social-links	{"uid":"page.social-links","collectionName":"components_page_social_links","info":{"name":"socialLinks","icon":"network-wired"},"options":{"timestamps":false},"attributes":{"title":{"type":"enumeration","enum":["Github","Twitter","Dribble","Linkedin","Facebook"],"required":true,"default":"Twitter"},"url":{"type":"string","required":true}}}	object	\N	\N
77	model_def_page.tech-icons	{"uid":"page.tech-icons","collectionName":"components_page_tech_icons","info":{"name":"techIcons","icon":"tools"},"options":{"timestamps":false},"attributes":{"icon":{"collection":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"title":{"type":"string","required":true}}}	object	\N	\N
81	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
80	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
82	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
84	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
94	plugin_content_manager_configuration_components::page.concepts	{"uid":"page.concepts","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object		
91	plugin_content_manager_configuration_components::page.modules	{"uid":"page.modules","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"description","size":12}]],"editRelations":[]},"isComponent":true}	object		
89	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
85	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
86	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
87	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
93	plugin_content_manager_configuration_components::page.pricing-box	{"uid":"page.pricing-box","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"totalPrice":{"edit":{"label":"TotalPrice","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TotalPrice","searchable":true,"sortable":true}},"numberInstallments":{"edit":{"label":"NumberInstallments","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NumberInstallments","searchable":true,"sortable":true}},"priceInstallment":{"edit":{"label":"PriceInstallment","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PriceInstallment","searchable":true,"sortable":true}},"benefits":{"edit":{"label":"Benefits","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Benefits","searchable":false,"sortable":false}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}}},"layouts":{"list":["id","totalPrice","numberInstallments","priceInstallment"],"edit":[[{"name":"totalPrice","size":4},{"name":"numberInstallments","size":4},{"name":"priceInstallment","size":4}],[{"name":"benefits","size":12}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object		
99	plugin_content_manager_configuration_components::page.section-modules	{"uid":"page.section-modules","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}}},"layouts":{"list":["id"],"edit":[],"editRelations":[]},"isComponent":true}	object		
117	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
104	plugin_content_manager_configuration_components::page.questions	{"uid":"page.questions","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"question":{"edit":{"label":"Question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Question","searchable":true,"sortable":true}},"answer":{"edit":{"label":"Answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Answer","searchable":false,"sortable":false}}},"layouts":{"list":["id","question"],"edit":[[{"name":"question","size":6}],[{"name":"answer","size":12}]],"editRelations":[]},"isComponent":true}	object		
92	plugin_content_manager_configuration_components::page.header	{"uid":"page.header","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"button":{"edit":{"label":"Button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Button","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","image"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"button","size":12}],[{"name":"image","size":6}]],"editRelations":[]},"isComponent":true}	object		
111	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
119	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
95	plugin_content_manager_configuration_components::page.button	{"uid":"page.button","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"label":{"edit":{"label":"Label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Label","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","url"],"edit":[[{"name":"label","size":6},{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}	object		
105	plugin_content_manager_configuration_components::page.social-links	{"uid":"page.social-links","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","url"],"edit":[[{"name":"title","size":6},{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}	object		
120	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
96	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
108	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
109	plugin_content_manager_configuration_content_types::application::landing-page.landing-page	{"uid":"application::landing-page.landing-page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}},"header":{"edit":{"label":"Header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Header","searchable":false,"sortable":false}},"sectionAboutProject":{"edit":{"label":"SectionAboutProject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionAboutProject","searchable":false,"sortable":false}},"sectionTech":{"edit":{"label":"SectionTech","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionTech","searchable":false,"sortable":false}},"sectionConcepts":{"edit":{"label":"SectionConcepts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionConcepts","searchable":false,"sortable":false}},"sectionModules":{"edit":{"label":"SectionModules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionModules","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"modules":{"edit":{"label":"Modules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Modules","searchable":false,"sortable":false}},"sectionAgenda":{"edit":{"label":"SectionAgenda","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionAgenda","searchable":false,"sortable":false}},"pricingBox":{"edit":{"label":"PricingBox","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PricingBox","searchable":false,"sortable":false}},"sectionAboutUs":{"edit":{"label":"SectionAboutUs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionAboutUs","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","title","created_at"],"editRelations":[],"edit":[[{"name":"logo","size":6}],[{"name":"header","size":12}],[{"name":"sectionAboutProject","size":12}],[{"name":"sectionTech","size":12}],[{"name":"sectionConcepts","size":12}],[{"name":"sectionModules","size":12}],[{"name":"title","size":6}],[{"name":"modules","size":12}],[{"name":"sectionAgenda","size":12}],[{"name":"pricingBox","size":12}],[{"name":"sectionAboutUs","size":12}]]}}	object		
103	plugin_content_manager_configuration_components::page.reviews	{"uid":"page.reviews","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"photo":{"edit":{"label":"Photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Photo","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","text","photo"],"edit":[[{"name":"name","size":6},{"name":"text","size":6}],[{"name":"photo","size":6}]],"editRelations":[]},"isComponent":true}	object		
110	plugin_content_manager_configuration_content_types::application::authors.authors	{"uid":"application::authors.authors","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"photo":{"edit":{"label":"Photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Photo","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Role","searchable":true,"sortable":true}},"socialLinks":{"edit":{"label":"SocialLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SocialLinks","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"sectionReviews":{"edit":{"label":"SectionReviews","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionReviews","searchable":false,"sortable":false}},"sectionFaq":{"edit":{"label":"SectionFaq","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SectionFaq","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","photo","name","role"],"editRelations":[],"edit":[[{"name":"photo","size":6},{"name":"name","size":6}],[{"name":"role","size":6}],[{"name":"socialLinks","size":12}],[{"name":"description","size":6}],[{"name":"sectionReviews","size":12}],[{"name":"sectionFaq","size":12}]]}}	object		
112	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
100	plugin_content_manager_configuration_components::page.section-faq	{"uid":"page.section-faq","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"questions":{"edit":{"label":"Questions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Questions","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"questions","size":12}]],"editRelations":[]},"isComponent":true}	object		
98	plugin_content_manager_configuration_components::page.section-reviews	{"uid":"page.section-reviews","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"reviews":{"edit":{"label":"Reviews","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Reviews","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"reviews","size":12}]],"editRelations":[]},"isComponent":true}	object		
114	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
118	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
101	plugin_content_manager_configuration_components::page.section-concepts	{"uid":"page.section-concepts","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"concepts":{"edit":{"label":"Concepts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Concepts","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"concepts","size":12}]],"editRelations":[]},"isComponent":true}	object		
106	plugin_content_manager_configuration_components::page.tech-icons	{"uid":"page.tech-icons","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","title"],"edit":[[{"name":"icon","size":6},{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object		
113	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
116	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
102	plugin_content_manager_configuration_components::page.section-agenda	{"uid":"page.section-agenda","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}]],"editRelations":[]},"isComponent":true}	object		
107	plugin_content_manager_configuration_components::page.section-tech	{"uid":"page.section-tech","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"techIcons":{"edit":{"label":"TechIcons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TechIcons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"techIcons","size":12}]],"editRelations":[]},"isComponent":true}	object		
121	plugin_i18n_default_locale	"en"	string		
60	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
65	model_def_page.pricing-box	{"uid":"page.pricing-box","collectionName":"components_page_pricing_boxes","info":{"name":"pricingBox","icon":"dollar-sign"},"options":{"timestamps":false},"attributes":{"totalPrice":{"type":"integer","required":true,"default":415},"numberInstallments":{"type":"integer","required":true},"priceInstallment":{"type":"integer","required":true},"benefits":{"type":"richtext","default":"Create items as bullet list","required":true},"button":{"type":"component","repeatable":false,"component":"page.button","required":true}}}	object	\N	\N
90	plugin_content_manager_configuration_components::page.section-about-us	{"uid":"page.section-about-us","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"authors":{"edit":{"label":"Authors","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Authors","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","authors"],"edit":[[{"name":"title","size":6},{"name":"authors","size":6}]],"editRelations":[]},"isComponent":true}	object		
78	model_def_application::authors.authors	{"uid":"application::authors.authors","collectionName":"authors","kind":"collectionType","info":{"name":"authors","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"photo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"name":{"type":"string","required":true},"role":{"type":"string","required":true},"socialLinks":{"type":"component","repeatable":true,"component":"page.social-links","required":true},"description":{"type":"text","required":true},"sectionReviews":{"type":"component","repeatable":false,"component":"page.section-reviews","required":true},"sectionFaq":{"type":"component","repeatable":false,"component":"page.section-faq","required":true},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
79	model_def_application::landing-page.landing-page	{"uid":"application::landing-page.landing-page","collectionName":"landing_pages","kind":"singleType","info":{"name":"landingPage","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"header":{"type":"component","repeatable":false,"component":"page.header"},"sectionAboutProject":{"type":"component","repeatable":false,"component":"page.section-about-project"},"sectionTech":{"type":"component","repeatable":false,"component":"page.section-tech"},"sectionConcepts":{"type":"component","repeatable":false,"component":"page.section-concepts","required":true},"sectionModules":{"type":"component","repeatable":false,"component":"page.section-modules","required":true},"title":{"type":"string","required":true},"modules":{"type":"component","repeatable":true,"component":"page.modules","required":true,"min":2},"sectionAgenda":{"type":"component","repeatable":false,"component":"page.section-agenda","required":true},"pricingBox":{"type":"component","repeatable":false,"component":"page.pricing-box","required":true},"sectionAboutUs":{"type":"component","repeatable":false,"component":"page.section-about-us","required":true},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
83	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
88	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
115	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
97	plugin_content_manager_configuration_components::page.section-about-project	{"uid":"page.section-about-project","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","image"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}],[{"name":"image","size":6}]],"editRelations":[]},"isComponent":true}	object		
\.


--
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	1	2021-08-23 12:27:14.653+00	2021-08-23 13:37:25.017+00
\.


--
-- Data for Name: landing_pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.landing_pages (id, created_at, updated_at, title, published_at, created_by, updated_by) FROM stdin;
1	2020-07-18 01:41:34.291+00	2020-07-18 01:41:34.291+00	\N	2020-07-18 01:41:34.291+00	\N	\N
\.


--
-- Data for Name: landing_pages_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.landing_pages_components (id, field, "order", component_type, component_id, landing_page_id) FROM stdin;
1	header	1	components_page_headers	1	1
2	sectionAboutProject	1	components_page_section_about_projects	1	1
3	sectionTech	1	components_page_section_teches	1	1
4	sectionConcepts	1	components_page_section_concepts	1	1
5	sectionModules	1	components_page_section_modules	1	1
6	sectionAgenda	1	components_page_section_agenda	1	1
7	pricingBox	1	components_page_pricing_boxes	1	1
8	sectionAboutUs	1	components_page_section_aboutuses	1	1
9	sectionReviews	1	components_page_section_reviews	1	1
10	sectionFaq	1	components_page_section_faqs	1	1
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
1	Alex	Araujo	\N	allex.araujo088@gmail.com	$2a$10$1LzREPow8PuC66AlV1BTkO0C62a6wVngF6dV88fEzt1gmcYqBhaAi	\N	\N	t	\N	en
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
6	plugins::content-manager.explorer.delete	application::authors.authors	{}	[]	2	2021-08-23 12:27:17.656+00	2021-08-23 12:27:17.678+00
9	plugins::content-manager.explorer.create	application::authors.authors	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2	2021-08-23 12:27:17.657+00	2021-08-23 12:27:17.679+00
1	plugins::content-manager.explorer.read	application::authors.authors	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2	2021-08-23 12:27:17.653+00	2021-08-23 12:27:17.677+00
3	plugins::content-manager.explorer.update	application::authors.authors	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2	2021-08-23 12:27:17.654+00	2021-08-23 12:27:17.679+00
5	plugins::content-manager.explorer.publish	application::authors.authors	{}	[]	2	2021-08-23 12:27:17.653+00	2021-08-23 12:27:17.679+00
2	plugins::content-manager.explorer.publish	application::landing-page.landing-page	{}	[]	2	2021-08-23 12:27:17.653+00	2021-08-23 12:27:17.684+00
117	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2021-08-23 13:49:08.624+00	2021-08-23 13:49:08.648+00
4	plugins::content-manager.explorer.delete	application::landing-page.landing-page	{}	[]	2	2021-08-23 12:27:17.653+00	2021-08-23 12:27:17.688+00
12	plugins::upload.assets.update	\N	{}	[]	2	2021-08-23 12:27:17.741+00	2021-08-23 12:27:17.769+00
18	plugins::content-manager.explorer.delete	application::authors.authors	{}	["admin::is-creator"]	3	2021-08-23 12:27:17.816+00	2021-08-23 12:27:17.833+00
19	plugins::upload.assets.create	\N	{}	[]	3	2021-08-23 12:27:17.817+00	2021-08-23 12:27:17.839+00
22	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2021-08-23 12:27:17.817+00	2021-08-23 12:27:17.838+00
24	plugins::content-manager.explorer.delete	application::landing-page.landing-page	{}	["admin::is-creator"]	3	2021-08-23 12:27:17.816+00	2021-08-23 12:27:17.843+00
27	plugins::upload.assets.download	\N	{}	[]	3	2021-08-23 12:27:17.884+00	2021-08-23 12:27:17.895+00
28	plugins::upload.assets.copy-link	\N	{}	[]	3	2021-08-23 12:27:17.887+00	2021-08-23 12:27:17.899+00
32	plugins::content-manager.explorer.create	application::authors.authors	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	1	2021-08-23 12:27:17.985+00	2021-08-23 12:27:18.013+00
31	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-23 12:27:17.984+00	2021-08-23 12:27:18.013+00
34	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-23 12:27:17.989+00	2021-08-23 12:27:18.018+00
46	plugins::upload.assets.create	\N	{}	[]	1	2021-08-23 12:27:18.069+00	2021-08-23 12:27:18.095+00
48	plugins::upload.assets.update	\N	{}	[]	1	2021-08-23 12:27:18.069+00	2021-08-23 12:27:18.094+00
51	plugins::i18n.locale.create	\N	{}	[]	1	2021-08-23 12:27:18.145+00	2021-08-23 12:27:18.18+00
52	plugins::i18n.locale.read	\N	{}	[]	1	2021-08-23 12:27:18.149+00	2021-08-23 12:27:18.185+00
55	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2021-08-23 12:27:18.167+00	2021-08-23 12:27:18.203+00
57	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2021-08-23 12:27:18.167+00	2021-08-23 12:27:18.203+00
65	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2021-08-23 12:27:18.257+00	2021-08-23 12:27:18.282+00
76	admin::users.create	\N	{}	[]	1	2021-08-23 12:27:18.332+00	2021-08-23 12:27:18.359+00
26	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2021-08-23 12:27:17.873+00	2021-08-23 12:27:17.887+00
37	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-23 12:27:17.99+00	2021-08-23 12:27:18.019+00
44	plugins::content-type-builder.read	\N	{}	[]	1	2021-08-23 12:27:18.065+00	2021-08-23 12:27:18.089+00
53	plugins::i18n.locale.update	\N	{}	[]	1	2021-08-23 12:27:18.155+00	2021-08-23 12:27:18.195+00
63	plugins::users-permissions.providers.update	\N	{}	[]	1	2021-08-23 12:27:18.252+00	2021-08-23 12:27:18.278+00
72	admin::webhooks.read	\N	{}	[]	1	2021-08-23 12:27:18.321+00	2021-08-23 12:27:18.346+00
80	admin::roles.read	\N	{}	[]	1	2021-08-23 12:27:18.386+00	2021-08-23 12:27:18.404+00
119	plugins::content-manager.explorer.create	application::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "title", "modules.title", "modules.subtitle", "modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionModules"]}	[]	1	2021-08-23 13:49:08.624+00	2021-08-23 13:49:08.953+00
21	plugins::content-manager.explorer.read	application::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "title", "modules.title", "modules.subtitle", "modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionModules"]}	["admin::is-creator"]	3	2021-08-23 12:27:17.817+00	2021-08-23 12:27:18.614+00
17	plugins::content-manager.explorer.update	application::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "title", "modules.title", "modules.subtitle", "modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionModules"]}	["admin::is-creator"]	3	2021-08-23 12:27:17.813+00	2021-08-23 12:27:18.618+00
10	plugins::content-manager.explorer.create	application::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "title", "modules.title", "modules.subtitle", "modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionModules"]}	[]	2	2021-08-23 12:27:17.657+00	2021-08-23 12:27:18.618+00
13	plugins::upload.assets.create	\N	{}	[]	2	2021-08-23 12:27:17.74+00	2021-08-23 12:27:17.774+00
16	plugins::content-manager.explorer.read	application::authors.authors	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	["admin::is-creator"]	3	2021-08-23 12:27:17.813+00	2021-08-23 12:27:17.832+00
43	plugins::email.settings.read	\N	{}	[]	1	2021-08-23 12:27:18.065+00	2021-08-23 12:27:18.089+00
54	plugins::i18n.locale.delete	\N	{}	[]	1	2021-08-23 12:27:18.161+00	2021-08-23 12:27:18.195+00
64	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2021-08-23 12:27:18.252+00	2021-08-23 12:27:18.278+00
73	admin::webhooks.delete	\N	{}	[]	1	2021-08-23 12:27:18.324+00	2021-08-23 12:27:18.351+00
8	plugins::content-manager.explorer.update	application::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "title", "modules.title", "modules.subtitle", "modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionModules"]}	[]	2	2021-08-23 12:27:17.656+00	2021-08-23 12:27:18.624+00
121	plugins::content-manager.explorer.update	application::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "title", "modules.title", "modules.subtitle", "modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionModules"]}	[]	1	2021-08-23 13:49:08.625+00	2021-08-23 13:49:08.959+00
14	plugins::upload.assets.copy-link	\N	{}	[]	2	2021-08-23 12:27:17.748+00	2021-08-23 12:27:17.778+00
25	plugins::content-manager.explorer.create	application::authors.authors	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	["admin::is-creator"]	3	2021-08-23 12:27:17.816+00	2021-08-23 12:27:17.843+00
30	plugins::content-manager.explorer.read	application::authors.authors	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	1	2021-08-23 12:27:17.984+00	2021-08-23 12:27:18.013+00
50	plugins::upload.assets.copy-link	\N	{}	[]	1	2021-08-23 12:27:18.137+00	2021-08-23 12:27:18.173+00
60	plugins::users-permissions.roles.update	\N	{}	[]	1	2021-08-23 12:27:18.243+00	2021-08-23 12:27:18.269+00
71	admin::webhooks.create	\N	{}	[]	1	2021-08-23 12:27:18.32+00	2021-08-23 12:27:18.346+00
82	admin::roles.delete	\N	{}	[]	1	2021-08-23 12:27:18.397+00	2021-08-23 12:27:18.414+00
118	plugins::content-manager.explorer.delete	application::landing-page.landing-page	{}	[]	1	2021-08-23 13:49:08.624+00	2021-08-23 13:49:08.654+00
15	plugins::upload.assets.download	\N	{}	[]	2	2021-08-23 12:27:17.752+00	2021-08-23 12:27:17.778+00
38	plugins::content-manager.explorer.update	application::authors.authors	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	1	2021-08-23 12:27:17.99+00	2021-08-23 12:27:18.019+00
45	plugins::upload.read	\N	{}	[]	1	2021-08-23 12:27:18.068+00	2021-08-23 12:27:18.095+00
56	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2021-08-23 12:27:18.168+00	2021-08-23 12:27:18.203+00
66	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2021-08-23 12:27:18.256+00	2021-08-23 12:27:18.283+00
77	admin::users.read	\N	{}	[]	1	2021-08-23 12:27:18.333+00	2021-08-23 12:27:18.359+00
23	plugins::content-manager.explorer.create	application::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "title", "modules.title", "modules.subtitle", "modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionModules"]}	["admin::is-creator"]	3	2021-08-23 12:27:17.817+00	2021-08-23 12:27:18.618+00
122	plugins::content-manager.explorer.publish	application::landing-page.landing-page	{}	[]	1	2021-08-23 13:49:08.625+00	2021-08-23 13:49:08.654+00
11	plugins::upload.read	\N	{}	[]	2	2021-08-23 12:27:17.732+00	2021-08-23 12:27:17.757+00
20	plugins::content-manager.explorer.update	application::authors.authors	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	["admin::is-creator"]	3	2021-08-23 12:27:17.818+00	2021-08-23 12:27:17.843+00
49	plugins::upload.settings.read	\N	{}	[]	1	2021-08-23 12:27:18.137+00	2021-08-23 12:27:18.166+00
59	plugins::users-permissions.roles.read	\N	{}	[]	1	2021-08-23 12:27:18.238+00	2021-08-23 12:27:18.261+00
69	admin::marketplace.plugins.install	\N	{}	[]	1	2021-08-23 12:27:18.307+00	2021-08-23 12:27:18.327+00
79	admin::roles.create	\N	{}	[]	1	2021-08-23 12:27:18.369+00	2021-08-23 12:27:18.392+00
120	plugins::content-manager.explorer.delete	application::authors.authors	{}	[]	1	2021-08-23 13:49:08.625+00	2021-08-23 13:49:08.661+00
47	plugins::upload.assets.download	\N	{}	[]	1	2021-08-23 12:27:18.069+00	2021-08-23 12:27:18.101+00
58	plugins::users-permissions.roles.create	\N	{}	[]	1	2021-08-23 12:27:18.173+00	2021-08-23 12:27:18.209+00
68	admin::marketplace.read	\N	{}	[]	1	2021-08-23 12:27:18.261+00	2021-08-23 12:27:18.286+00
75	admin::users.update	\N	{}	[]	1	2021-08-23 12:27:18.332+00	2021-08-23 12:27:18.355+00
67	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2021-08-23 12:27:18.261+00	2021-08-23 12:27:18.29+00
78	admin::users.delete	\N	{}	[]	1	2021-08-23 12:27:18.331+00	2021-08-23 12:27:18.359+00
7	plugins::content-manager.explorer.read	application::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "title", "modules.title", "modules.subtitle", "modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionModules"]}	[]	2	2021-08-23 12:27:17.657+00	2021-08-23 12:27:18.613+00
61	plugins::users-permissions.roles.delete	\N	{}	[]	1	2021-08-23 12:27:18.243+00	2021-08-23 12:27:18.269+00
70	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2021-08-23 12:27:18.32+00	2021-08-23 12:27:18.347+00
81	admin::roles.update	\N	{}	[]	1	2021-08-23 12:27:18.397+00	2021-08-23 12:27:18.411+00
115	plugins::content-manager.explorer.read	application::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "title", "modules.title", "modules.subtitle", "modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionModules"]}	[]	1	2021-08-23 13:49:08.619+00	2021-08-23 13:49:08.965+00
62	plugins::users-permissions.providers.read	\N	{}	[]	1	2021-08-23 12:27:18.246+00	2021-08-23 12:27:18.273+00
74	admin::webhooks.update	\N	{}	[]	1	2021-08-23 12:27:18.324+00	2021-08-23 12:27:18.351+00
116	plugins::content-manager.explorer.publish	application::authors.authors	{}	[]	1	2021-08-23 13:49:08.623+00	2021-08-23 13:49:08.648+00
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2021-08-23 12:27:17.543+00	2021-08-23 12:27:17.543+00
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2021-08-23 12:27:17.598+00	2021-08-23 12:27:17.598+00
3	Author	strapi-author	Authors can manage the content they have created.	2021-08-23 12:27:17.622+00	2021-08-23 12:27:17.622+00
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_at, updated_at, created_by, updated_by) FROM stdin;
7	guilherme	Um homem sorridente com uma camisa do Flamengo		396	396	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_guilherme_5278e405b4.png", "hash": "thumbnail_guilherme_5278e405b4", "mime": "image/png", "path": null, "size": 60.89, "width": 156, "height": 156}}	guilherme_5278e405b4	.png	image/png	92.72	/uploads/guilherme_5278e405b4.png	\N	local	\N	2020-07-16 23:48:19.754+00	2020-07-16 23:55:37.345+00	\N	\N
2	typescript			128	129	\N	typescript_8c2d3e5d4f	.svg	image/svg+xml	1.84	/uploads/typescript_8c2d3e5d4f.svg	\N	local	\N	2020-07-16 19:56:51.155+00	2020-07-16 19:56:51.155+00	\N	\N
3	douglas-lopes			50	50	\N	douglas_lopes_5c3cea8c4a	.jpeg	image/jpeg	1.14	/uploads/douglas_lopes_5c3cea8c4a.jpeg	\N	local	\N	2020-07-16 23:48:19.706+00	2020-07-16 23:48:19.706+00	\N	\N
4	henrique-albert			50	50	\N	henrique_albert_934b240c41	.jpeg	image/jpeg	1.11	/uploads/henrique_albert_934b240c41.jpeg	\N	local	\N	2020-07-16 23:48:19.706+00	2020-07-16 23:48:19.706+00	\N	\N
5	jorge-ramos			50	50	\N	jorge_ramos_995906fcff	.jpeg	image/jpeg	1.00	/uploads/jorge_ramos_995906fcff.jpeg	\N	local	\N	2020-07-16 23:48:19.706+00	2020-07-16 23:48:19.706+00	\N	\N
9	karoline-medeiros			50	50	\N	karoline_medeiros_cecb15095a	.jpeg	image/jpeg	1.53	/uploads/karoline_medeiros_cecb15095a.jpeg	\N	local	\N	2020-07-16 23:48:19.821+00	2020-07-16 23:48:19.821+00	\N	\N
10	lianker-lopes			50	50	\N	lianker_lopes_c90c9e2872	.jpeg	image/jpeg	1.42	/uploads/lianker_lopes_c90c9e2872.jpeg	\N	local	\N	2020-07-16 23:48:19.824+00	2020-07-16 23:48:19.824+00	\N	\N
11	luiz-claudio-silva			50	50	\N	luiz_claudio_silva_6e178a2283	.jpeg	image/jpeg	1.44	/uploads/luiz_claudio_silva_6e178a2283.jpeg	\N	local	\N	2020-07-16 23:48:19.829+00	2020-07-16 23:48:19.829+00	\N	\N
12	mileine-souto			50	50	\N	mileine_souto_992539f184	.jpeg	image/jpeg	1.22	/uploads/mileine_souto_992539f184.jpeg	\N	local	\N	2020-07-16 23:48:19.847+00	2020-07-16 23:48:19.847+00	\N	\N
13	alane-ribeiro			50	50	\N	alane_ribeiro_da08475e76	.jpeg	image/jpeg	1.42	/uploads/alane_ribeiro_da08475e76.jpeg	\N	local	\N	2020-07-16 23:48:19.889+00	2020-07-16 23:48:19.889+00	\N	\N
14	reviewer			300	300	{"thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_reviewer_17f000c1cd.jpeg", "hash": "thumbnail_reviewer_17f000c1cd", "mime": "image/jpeg", "path": null, "size": 1.26, "width": 156, "height": 156}}	reviewer_17f000c1cd	.jpeg	image/jpeg	2.64	/uploads/reviewer_17f000c1cd.jpeg	\N	local	\N	2020-07-16 23:48:19.891+00	2020-07-16 23:48:19.891+00	\N	\N
15	alexandre-teixeira			50	50	\N	alexandre_teixeira_3477db86cc	.jpeg	image/jpeg	1.14	/uploads/alexandre_teixeira_3477db86cc.jpeg	\N	local	\N	2020-07-16 23:48:19.935+00	2020-07-16 23:48:19.935+00	\N	\N
16	daniel-oliveira			50	50	\N	daniel_oliveira_22ceef05a5	.jpeg	image/jpeg	1.11	/uploads/daniel_oliveira_22ceef05a5.jpeg	\N	local	\N	2020-07-16 23:48:19.935+00	2020-07-16 23:48:19.935+00	\N	\N
17	ariel-dalton			50	50	\N	ariel_dalton_d3d50ca590	.jpeg	image/jpeg	1.05	/uploads/ariel_dalton_d3d50ca590.jpeg	\N	local	\N	2020-07-16 23:48:19.938+00	2020-07-16 23:48:19.938+00	\N	\N
18	cypress			130	129	\N	cypress_3aa76eb266	.svg	image/svg+xml	1.73	/uploads/cypress_3aa76eb266.svg	\N	local	\N	2020-07-16 23:48:19.979+00	2020-07-16 23:48:19.979+00	\N	\N
19	graphql			129	128	\N	graphql_20c1bf23e2	.svg	image/svg+xml	2.84	/uploads/graphql_20c1bf23e2.svg	\N	local	\N	2020-07-16 23:48:19.987+00	2020-07-16 23:48:19.987+00	\N	\N
20	jest			123	123	\N	jest_da49922029	.svg	image/svg+xml	2.78	/uploads/jest_da49922029.svg	\N	local	\N	2020-07-16 23:48:20.024+00	2020-07-16 23:48:20.024+00	\N	\N
21	nextjs			131	128	\N	nextjs_722bbe18a3	.svg	image/svg+xml	1.29	/uploads/nextjs_722bbe18a3.svg	\N	local	\N	2020-07-16 23:48:20.028+00	2020-07-16 23:48:20.028+00	\N	\N
22	react			131	129	\N	react_791425b954	.svg	image/svg+xml	2.23	/uploads/react_791425b954.svg	\N	local	\N	2020-07-16 23:48:20.029+00	2020-07-16 23:48:20.029+00	\N	\N
23	rtl			128	129	\N	rtl_e863b3c932	.svg	image/svg+xml	9.62	/uploads/rtl_e863b3c932.svg	\N	local	\N	2020-07-16 23:48:20.099+00	2020-07-16 23:48:20.099+00	\N	\N
24	storybook			128	129	\N	storybook_d7b6134b45	.svg	image/svg+xml	2.56	/uploads/storybook_d7b6134b45.svg	\N	local	\N	2020-07-16 23:48:20.099+00	2020-07-16 23:48:20.099+00	\N	\N
25	typescript			128	129	\N	typescript_b6c016631d	.svg	image/svg+xml	1.84	/uploads/typescript_b6c016631d.svg	\N	local	\N	2020-07-16 23:48:20.155+00	2020-07-16 23:48:20.155+00	\N	\N
26	strapi			128	129	\N	strapi_442d7d4708	.svg	image/svg+xml	1.17	/uploads/strapi_442d7d4708.svg	\N	local	\N	2020-07-16 23:48:20.157+00	2020-07-16 23:48:20.157+00	\N	\N
27	apollo			130	128	\N	apollo_e2a8694530	.svg	image/svg+xml	1.54	/uploads/apollo_e2a8694530.svg	\N	local	\N	2020-07-16 23:48:20.162+00	2020-07-16 23:48:20.162+00	\N	\N
31	icon-192			192	192	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_icon_192_8eab90e746.png", "hash": "thumbnail_icon_192_8eab90e746", "mime": "image/png", "path": null, "size": 25.02, "width": 156, "height": 156}}	icon_192_8eab90e746	.png	image/png	12.48	/uploads/icon_192_8eab90e746.png	\N	local	\N	2020-07-16 23:48:20.306+00	2020-07-16 23:48:20.306+00	\N	\N
32	cover			1200	630	{"large": {"ext": ".png", "url": "/uploads/large_cover_c95ba36736.png", "hash": "large_cover_c95ba36736", "mime": "image/png", "path": null, "size": 81.3, "width": 1000, "height": 525}, "small": {"ext": ".png", "url": "/uploads/small_cover_c95ba36736.png", "hash": "small_cover_c95ba36736", "mime": "image/png", "path": null, "size": 34.47, "width": 500, "height": 263}, "medium": {"ext": ".png", "url": "/uploads/medium_cover_c95ba36736.png", "hash": "medium_cover_c95ba36736", "mime": "image/png", "path": null, "size": 56.47, "width": 750, "height": 394}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_cover_c95ba36736.png", "hash": "thumbnail_cover_c95ba36736", "mime": "image/png", "path": null, "size": 14.51, "width": 245, "height": 129}}	cover_c95ba36736	.png	image/png	39.65	/uploads/cover_c95ba36736.png	\N	local	\N	2020-07-16 23:48:20.585+00	2020-07-16 23:48:20.585+00	\N	\N
8	marcos	Um homem segurando um microfone enquanto palestra		252	251	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_marcos_4c630b4166.png", "hash": "thumbnail_marcos_4c630b4166", "mime": "image/png", "path": null, "size": 61.3, "width": 157, "height": 156}}	marcos_4c630b4166	.png	image/png	143.00	/uploads/marcos_4c630b4166.png	\N	local	\N	2020-07-16 23:48:19.772+00	2020-07-16 23:56:31.81+00	\N	\N
29	hero-illustration	Ilustração de um programador com várias telas de código a sua frente		427	373	\N	hero_illustration_86997ad966	.svg	image/svg+xml	12.61	/uploads/hero_illustration_86997ad966.svg	\N	local	\N	2020-07-16 23:48:20.219+00	2020-07-16 23:58:30.447+00	\N	\N
30	logo	React Avançado		256	56	\N	logo_74e2fdc755	.svg	image/svg+xml	7.11	/uploads/logo_74e2fdc755.svg	\N	local	\N	2020-07-16 23:48:20.291+00	2020-07-16 23:57:33.027+00	\N	\N
33	icon-512			512	512	{"small": {"ext": ".png", "url": "/uploads/small_icon_512_34fb6cb7f6.png", "hash": "small_icon_512_34fb6cb7f6", "mime": "image/png", "path": null, "size": 132.82, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_icon_512_34fb6cb7f6.png", "hash": "thumbnail_icon_512_34fb6cb7f6", "mime": "image/png", "path": null, "size": 21.97, "width": 156, "height": 156}}	icon_512_34fb6cb7f6	.png	image/png	52.12	/uploads/icon_512_34fb6cb7f6.png	\N	local	\N	2020-07-16 23:48:20.755+00	2020-07-16 23:48:20.755+00	\N	\N
6	willian	Um homem sorridente com um gato em cima da cabeça		250	250	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_willian_3f15d1601b.png", "hash": "thumbnail_willian_3f15d1601b", "mime": "image/png", "path": null, "size": 53.4, "width": 156, "height": 156}}	willian_3f15d1601b	.png	image/png	38.54	/uploads/willian_3f15d1601b.png	\N	local	\N	2020-07-16 23:48:19.723+00	2020-07-16 23:54:50.534+00	\N	\N
28	project	Tela com um ecommerce na frente e um CMS atrás		586	447	{"small": {"ext": ".png", "url": "/uploads/small_project_440f25b520.png", "hash": "small_project_440f25b520", "mime": "image/png", "path": null, "size": 192.52, "width": 500, "height": 381}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_project_440f25b520.png", "hash": "thumbnail_project_440f25b520", "mime": "image/png", "path": null, "size": 41.41, "width": 205, "height": 156}}	project_440f25b520	.png	image/png	74.28	/uploads/project_440f25b520.png	\N	local	\N	2020-07-16 23:48:20.166+00	2020-07-18 01:20:43.259+00	\N	\N
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
6	6	4	authors	photo	1
7	7	5	authors	photo	1
8	8	6	authors	photo	1
60	8	7	authors	photo	1
78	29	1	components_page_headers	image	1
79	28	1	components_page_section_about_projects	image	1
80	2	1	components_page_tech_icons	icon	1
81	22	2	components_page_tech_icons	icon	1
82	21	3	components_page_tech_icons	icon	1
83	26	4	components_page_tech_icons	icon	1
84	27	5	components_page_tech_icons	icon	1
85	19	6	components_page_tech_icons	icon	1
86	20	7	components_page_tech_icons	icon	1
87	23	8	components_page_tech_icons	icon	1
88	24	9	components_page_tech_icons	icon	1
89	18	10	components_page_tech_icons	icon	1
90	4	1	components_page_reviews	photo	1
91	15	2	components_page_reviews	photo	1
92	16	3	components_page_reviews	photo	1
93	12	4	components_page_reviews	photo	1
94	30	1	landing_pages	logo	1
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
31	content-type-builder	builder	getreservednames	f		1	\N	\N
32	content-type-builder	builder	getreservednames	f		2	\N	\N
33	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
34	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
35	content-type-builder	componentcategories	editcategory	f		1	\N	\N
36	content-type-builder	componentcategories	editcategory	f		2	\N	\N
37	content-type-builder	components	createcomponent	f		1	\N	\N
38	content-type-builder	components	createcomponent	f		2	\N	\N
39	content-type-builder	components	deletecomponent	f		1	\N	\N
40	content-type-builder	components	deletecomponent	f		2	\N	\N
41	content-type-builder	components	getcomponent	f		1	\N	\N
42	content-type-builder	components	getcomponent	f		2	\N	\N
43	content-type-builder	components	getcomponents	f		1	\N	\N
44	content-type-builder	components	getcomponents	f		2	\N	\N
45	content-type-builder	components	updatecomponent	f		1	\N	\N
46	content-type-builder	components	updatecomponent	f		2	\N	\N
47	content-type-builder	connections	getconnections	f		1	\N	\N
49	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
48	content-type-builder	connections	getconnections	f		2	\N	\N
50	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
51	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
52	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
53	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
54	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
55	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
56	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
57	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
58	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
59	email	email	send	f		1	\N	\N
60	email	email	send	f		2	\N	\N
63	upload	upload	count	f		1	\N	\N
64	upload	upload	count	f		2	\N	\N
65	upload	upload	destroy	f		1	\N	\N
66	upload	upload	destroy	f		2	\N	\N
67	upload	upload	find	f		1	\N	\N
68	upload	upload	find	f		2	\N	\N
69	upload	upload	findone	f		1	\N	\N
70	upload	upload	findone	f		2	\N	\N
71	upload	upload	getsettings	f		1	\N	\N
72	upload	upload	getsettings	f		2	\N	\N
73	upload	upload	search	f		1	\N	\N
74	upload	upload	search	f		2	\N	\N
75	upload	upload	updatesettings	f		1	\N	\N
76	upload	upload	updatesettings	f		2	\N	\N
77	upload	upload	upload	f		1	\N	\N
78	upload	upload	upload	f		2	\N	\N
79	users-permissions	auth	callback	f		1	\N	\N
80	users-permissions	auth	callback	t		2	\N	\N
81	users-permissions	auth	connect	t		1	\N	\N
82	users-permissions	auth	connect	t		2	\N	\N
83	users-permissions	auth	emailconfirmation	f		1	\N	\N
84	users-permissions	auth	emailconfirmation	t		2	\N	\N
85	users-permissions	auth	forgotpassword	f		1	\N	\N
86	users-permissions	auth	forgotpassword	t		2	\N	\N
87	users-permissions	auth	register	f		1	\N	\N
88	users-permissions	auth	register	t		2	\N	\N
89	users-permissions	auth	resetpassword	f		1	\N	\N
162	application	landing-page	update	f		2	\N	\N
90	users-permissions	auth	resetpassword	f		2	\N	\N
100	users-permissions	user	destroyall	f		2	\N	\N
110	users-permissions	userspermissions	createrole	f		2	\N	\N
120	users-permissions	userspermissions	getpermissions	f		2	\N	\N
130	users-permissions	userspermissions	getroutes	f		2	\N	\N
140	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
91	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
101	users-permissions	user	find	f		1	\N	\N
121	users-permissions	userspermissions	getpolicies	f		1	\N	\N
131	users-permissions	userspermissions	index	f		1	\N	\N
141	users-permissions	userspermissions	updateproviders	f		1	\N	\N
92	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
102	users-permissions	user	find	f		2	\N	\N
122	users-permissions	userspermissions	getpolicies	f		2	\N	\N
132	users-permissions	userspermissions	index	f		2	\N	\N
142	users-permissions	userspermissions	updateproviders	f		2	\N	\N
93	users-permissions	user	count	f		1	\N	\N
103	users-permissions	user	findone	f		1	\N	\N
113	users-permissions	userspermissions	deleterole	f		1	\N	\N
123	users-permissions	userspermissions	getproviders	f		1	\N	\N
143	users-permissions	userspermissions	updaterole	f		1	\N	\N
94	users-permissions	user	count	f		2	\N	\N
104	users-permissions	user	findone	f		2	\N	\N
114	users-permissions	userspermissions	deleterole	f		2	\N	\N
124	users-permissions	userspermissions	getproviders	f		2	\N	\N
144	users-permissions	userspermissions	updaterole	f		2	\N	\N
95	users-permissions	user	create	f		1	\N	\N
105	users-permissions	user	me	t		1	\N	\N
115	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
125	users-permissions	userspermissions	getrole	f		1	\N	\N
135	users-permissions	userspermissions	searchusers	f		1	\N	\N
157	application	landing-page	delete	f		1	\N	\N
96	users-permissions	user	create	f		2	\N	\N
107	users-permissions	user	update	f		1	\N	\N
116	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
127	users-permissions	userspermissions	getroles	f		1	\N	\N
136	users-permissions	userspermissions	searchusers	f		2	\N	\N
158	application	landing-page	delete	f		2	\N	\N
97	users-permissions	user	destroy	f		1	\N	\N
106	users-permissions	user	me	t		2	\N	\N
117	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
126	users-permissions	userspermissions	getrole	f		2	\N	\N
137	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
159	application	landing-page	find	f		1	\N	\N
98	users-permissions	user	destroy	f		2	\N	\N
108	users-permissions	user	update	f		2	\N	\N
118	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
128	users-permissions	userspermissions	getroles	f		2	\N	\N
138	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
160	application	landing-page	find	f		2	\N	\N
99	users-permissions	user	destroyall	f		1	\N	\N
109	users-permissions	userspermissions	createrole	f		1	\N	\N
119	users-permissions	userspermissions	getpermissions	f		1	\N	\N
129	users-permissions	userspermissions	getroutes	f		1	\N	\N
139	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
161	application	landing-page	update	f		1	\N	\N
177	application	authors	create	f		2	\N	\N
178	application	authors	findone	f		1	\N	\N
179	application	authors	create	f		1	\N	\N
181	application	authors	findone	f		2	\N	\N
180	application	authors	count	f		2	\N	\N
183	application	authors	find	f		1	\N	\N
182	application	authors	delete	f		1	\N	\N
186	application	authors	find	f		2	\N	\N
184	application	authors	count	f		1	\N	\N
185	application	authors	delete	f		2	\N	\N
187	application	authors	update	f		2	\N	\N
188	application	authors	update	f		1	\N	\N
189	content-manager	collection-types	bulkdelete	f		1	\N	\N
190	content-manager	collection-types	bulkdelete	f		2	\N	\N
191	content-manager	collection-types	create	f		1	\N	\N
192	content-manager	collection-types	create	f		2	\N	\N
194	content-manager	collection-types	delete	f		1	\N	\N
193	content-manager	collection-types	delete	f		2	\N	\N
195	content-manager	collection-types	find	f		2	\N	\N
196	content-manager	collection-types	find	f		1	\N	\N
197	content-manager	collection-types	findone	f		1	\N	\N
203	content-manager	collection-types	unpublish	f		1	\N	\N
212	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
225	content-manager	single-types	createorupdate	f		2	\N	\N
234	content-manager	uid	checkuidavailability	f		2	\N	\N
243	i18n	iso-locales	listisolocales	f		1	\N	\N
200	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
209	content-manager	components	findcomponents	f		1	\N	\N
219	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
230	content-manager	single-types	publish	f		2	\N	\N
239	email	email	getsettings	f		2	\N	\N
248	i18n	locales	deletelocale	f		2	\N	\N
199	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
208	content-manager	components	findcomponentconfiguration	f		2	\N	\N
218	content-manager	content-types	findcontenttypessettings	f		2	\N	\N
228	content-manager	single-types	find	f		2	\N	\N
238	email	email	test	f		1	\N	\N
250	i18n	locales	listlocales	f		2	\N	\N
201	content-manager	collection-types	publish	f		1	\N	\N
205	content-manager	collection-types	update	f		2	\N	\N
204	content-manager	collection-types	unpublish	f		2	\N	\N
210	content-manager	components	findcomponents	f		2	\N	\N
214	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
217	content-manager	content-types	findcontenttypessettings	f		1	\N	\N
220	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
223	content-manager	single-types	createorupdate	f		1	\N	\N
227	content-manager	single-types	find	f		1	\N	\N
229	content-manager	single-types	publish	f		1	\N	\N
233	content-manager	uid	checkuidavailability	f		1	\N	\N
237	email	email	getsettings	f		1	\N	\N
240	email	email	test	f		2	\N	\N
244	i18n	iso-locales	listisolocales	f		2	\N	\N
247	i18n	locales	deletelocale	f		1	\N	\N
249	i18n	locales	listlocales	f		1	\N	\N
202	content-manager	collection-types	publish	f		2	\N	\N
206	content-manager	collection-types	update	f		1	\N	\N
211	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
213	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
221	content-manager	relations	find	f		2	\N	\N
222	content-manager	relations	find	f		1	\N	\N
231	content-manager	single-types	unpublish	f		2	\N	\N
232	content-manager	single-types	unpublish	f		1	\N	\N
241	i18n	content-types	getnonlocalizedattributes	f		2	\N	\N
242	i18n	content-types	getnonlocalizedattributes	f		1	\N	\N
251	i18n	locales	updatelocale	f		2	\N	\N
252	i18n	locales	updatelocale	f		1	\N	\N
207	content-manager	components	findcomponentconfiguration	f		1	\N	\N
216	content-manager	content-types	findcontenttypes	f		2	\N	\N
226	content-manager	single-types	delete	f		2	\N	\N
236	content-manager	uid	generateuid	f		2	\N	\N
246	i18n	locales	createlocale	f		2	\N	\N
198	content-manager	collection-types	findone	f		2	\N	\N
215	content-manager	content-types	findcontenttypes	f		1	\N	\N
224	content-manager	single-types	delete	f		1	\N	\N
235	content-manager	uid	generateuid	f		1	\N	\N
245	i18n	locales	createlocale	f		1	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", confirmed, blocked, role, created_at, updated_at, "confirmationToken", created_by, updated_by) FROM stdin;
\.


--
-- Name: authors_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_components_id_seq', 17, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_id_seq', 7, true);


--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 2, true);


--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_concepts_id_seq', 18, true);


--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_headers_components_id_seq', 1, true);


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_headers_id_seq', 1, true);


--
-- Name: components_page_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_modules_id_seq', 6, true);


--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_pricing_boxes_components_id_seq', 1, true);


--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_pricing_boxes_id_seq', 1, true);


--
-- Name: components_page_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_questions_id_seq', 6, true);


--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_reviews_id_seq', 4, true);


--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_about_projects_id_seq', 1, true);


--
-- Name: components_page_section_aboutuses__authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_aboutuses__authors_id_seq', 4, true);


--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_aboutuses_id_seq', 1, true);


--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_agenda_id_seq', 1, true);


--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_concepts_components_id_seq', 18, true);


--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_concepts_id_seq', 1, true);


--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_faqs_components_id_seq', 6, true);


--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_faqs_id_seq', 1, true);


--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_modules_components_id_seq', 6, true);


--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_modules_id_seq', 1, true);


--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_reviews_components_id_seq', 4, true);


--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_reviews_id_seq', 1, true);


--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_teches_components_id_seq', 10, true);


--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_section_teches_id_seq', 1, true);


--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_social_links_id_seq', 17, true);


--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_page_tech_icons_id_seq', 10, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_store_id_seq', 121, true);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);


--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.landing_pages_components_id_seq', 10, true);


--
-- Name: landing_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.landing_pages_id_seq', 1, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 3, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 122, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 33, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 94, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 252, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);


--
-- Name: authors_components authors_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_components_pkey PRIMARY KEY (id);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: components_page_buttons components_page_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_page_concepts components_page_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_concepts
    ADD CONSTRAINT components_page_concepts_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers_components components_page_headers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers components_page_headers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_headers
    ADD CONSTRAINT components_page_headers_pkey PRIMARY KEY (id);


--
-- Name: components_page_modules components_page_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_modules
    ADD CONSTRAINT components_page_modules_pkey PRIMARY KEY (id);


--
-- Name: components_page_pricing_boxes_components components_page_pricing_boxes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_pricing_boxes components_page_pricing_boxes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_pricing_boxes
    ADD CONSTRAINT components_page_pricing_boxes_pkey PRIMARY KEY (id);


--
-- Name: components_page_questions components_page_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_questions
    ADD CONSTRAINT components_page_questions_pkey PRIMARY KEY (id);


--
-- Name: components_page_reviews components_page_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_reviews
    ADD CONSTRAINT components_page_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_about_projects components_page_section_about_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_about_projects
    ADD CONSTRAINT components_page_section_about_projects_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_aboutuses__authors components_page_section_aboutuses__authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_aboutuses__authors
    ADD CONSTRAINT components_page_section_aboutuses__authors_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_aboutuses components_page_section_aboutuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_aboutuses
    ADD CONSTRAINT components_page_section_aboutuses_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_agenda components_page_section_agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_agenda
    ADD CONSTRAINT components_page_section_agenda_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_concepts_components components_page_section_concepts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concepts_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_concepts components_page_section_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_concepts
    ADD CONSTRAINT components_page_section_concepts_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_faqs_components components_page_section_faqs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_faqs components_page_section_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_faqs
    ADD CONSTRAINT components_page_section_faqs_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_modules_components components_page_section_modules_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_modules_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_modules components_page_section_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_modules
    ADD CONSTRAINT components_page_section_modules_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_reviews_components components_page_section_reviews_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_reviews components_page_section_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_reviews
    ADD CONSTRAINT components_page_section_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_teches_components components_page_section_teches_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_teches components_page_section_teches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_teches
    ADD CONSTRAINT components_page_section_teches_pkey PRIMARY KEY (id);


--
-- Name: components_page_social_links components_page_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_social_links
    ADD CONSTRAINT components_page_social_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_tech_icons components_page_tech_icons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_tech_icons
    ADD CONSTRAINT components_page_tech_icons_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- Name: landing_pages_components landing_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_components_pkey PRIMARY KEY (id);


--
-- Name: landing_pages landing_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: authors_components author_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT author_id_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: components_page_headers_components components_page_header_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_header_id_fk FOREIGN KEY (components_page_header_id) REFERENCES public.components_page_headers(id) ON DELETE CASCADE;


--
-- Name: components_page_pricing_boxes_components components_page_pricing_box_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_box_id_fk FOREIGN KEY (components_page_pricing_box_id) REFERENCES public.components_page_pricing_boxes(id) ON DELETE CASCADE;


--
-- Name: components_page_section_concepts_components components_page_section_concept_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concept_id_fk FOREIGN KEY (components_page_section_concept_id) REFERENCES public.components_page_section_concepts(id) ON DELETE CASCADE;


--
-- Name: components_page_section_faqs_components components_page_section_faq_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faq_id_fk FOREIGN KEY (components_page_section_faq_id) REFERENCES public.components_page_section_faqs(id) ON DELETE CASCADE;


--
-- Name: components_page_section_modules_components components_page_section_module_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_module_id_fk FOREIGN KEY (components_page_section_module_id) REFERENCES public.components_page_section_modules(id) ON DELETE CASCADE;


--
-- Name: components_page_section_reviews_components components_page_section_review_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_review_id_fk FOREIGN KEY (components_page_section_review_id) REFERENCES public.components_page_section_reviews(id) ON DELETE CASCADE;


--
-- Name: components_page_section_teches_components components_page_section_tech_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_tech_id_fk FOREIGN KEY (components_page_section_tech_id) REFERENCES public.components_page_section_teches(id) ON DELETE CASCADE;


--
-- Name: landing_pages_components landing_page_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_page_id_fk FOREIGN KEY (landing_page_id) REFERENCES public.landing_pages(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

