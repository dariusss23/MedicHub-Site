--
-- PostgreSQL database dump
--

\restrict N1ooSc8y7DxLNp6krzFOV7XzpQww6Va0mYoSzgRbirRbiRVvCBL8AtemLi0aZiW

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: app_customuser; Type: TABLE DATA; Schema: backend; Owner: medichubadmin
--

INSERT INTO backend.app_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, cnp, phone, correspondence_address, county, city, user_type, occupation, specialization_1, specialization_2, department, is_snmf_member, minors_count, cmv, stamp_code, cuim, academic_title, institution_name, institution_address, institution_county, institution_city, consent_email, consent_sms, consent_postal, status) VALUES (1, 'pbkdf2_sha256$1200000$HS7t0fUQPSOX9PD5CHT09i$PJQudw375/zl+RXQPYcn2myt2PddWoY1XPKfpavLx1Y=', '2026-03-31 10:42:43.664801+03', true, 'medichub', '', '', 'durimel14008@gmail.com', true, true, '2026-03-31 10:41:50.758221+03', '', '', '', '', '', '', '', '', NULL, NULL, false, 0, NULL, '', '', NULL, '', NULL, NULL, NULL, true, false, false, 'Activ');
INSERT INTO backend.app_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, cnp, phone, correspondence_address, county, city, user_type, occupation, specialization_1, specialization_2, department, is_snmf_member, minors_count, cmv, stamp_code, cuim, academic_title, institution_name, institution_address, institution_county, institution_city, consent_email, consent_sms, consent_postal, status) VALUES (2, 'elena', NULL, false, 'elena_gageanu', 'Gigi Elena', 'Gageanu', 'elena.gageanu@medichub.ro', false, true, '2026-03-31 10:49:26+03', '1234567890123', '0745641521', 'Constanta', 'Constanta', 'Constanta', 'Normal', 'Medic', 'Medicina de Familie', 'Boli Infectioase', NULL, false, 0, '000000', '000000', '1111111111', 'Conferentiar', 'CMI MH', 'Vladimirescu,22, Bucuresti', 'Bucuresti', 'Sector 2', true, true, false, 'Activ');


--
-- Name: app_customuser_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_customuser_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

\unrestrict N1ooSc8y7DxLNp6krzFOV7XzpQww6Va0mYoSzgRbirRbiRVvCBL8AtemLi0aZiW

--
-- PostgreSQL database dump
--

\restrict plJ9eeBOPNTY1nvHFtcvZ4IejJHHnHyIkZCSCkCRhdlCH0kltycezeFHx370Cwa

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: app_course; Type: TABLE DATA; Schema: backend; Owner: medichubadmin
--



--
-- Name: app_course_id_course_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_course_id_course_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict plJ9eeBOPNTY1nvHFtcvZ4IejJHHnHyIkZCSCkCRhdlCH0kltycezeFHx370Cwa

--
-- PostgreSQL database dump
--

\restrict US0XhgS8veLjL1FR8cXcP51YCOUxwTB3CyfQTT3EoMjf0LKch0X2uGvSvD1xeTJ

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: app_event; Type: TABLE DATA; Schema: backend; Owner: medichubadmin
--



--
-- Name: app_event_event_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_event_event_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict US0XhgS8veLjL1FR8cXcP51YCOUxwTB3CyfQTT3EoMjf0LKch0X2uGvSvD1xeTJ

--
-- PostgreSQL database dump
--

\restrict FtoqcurXofG9SZC15wZNclmgaCWfynuYg2GM7m9itpLg56cdBqolcR2ymtfBLB7

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: app_magazine; Type: TABLE DATA; Schema: backend; Owner: medichubadmin
--



--
-- Name: app_magazine_magazine_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_magazine_magazine_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict FtoqcurXofG9SZC15wZNclmgaCWfynuYg2GM7m9itpLg56cdBqolcR2ymtfBLB7

--
-- PostgreSQL database dump
--

\restrict rXEUcf5WmzEqPcqe2ZT6f2SaxlEJcWnxHIXyzQlJJAwvbhQJRbU2iTI0sVGkRI0

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: app_usercourse; Type: TABLE DATA; Schema: backend; Owner: medichubadmin
--



--
-- Name: app_usercourse_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_usercourse_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict rXEUcf5WmzEqPcqe2ZT6f2SaxlEJcWnxHIXyzQlJJAwvbhQJRbU2iTI0sVGkRI0

--
-- PostgreSQL database dump
--

\restrict i83IVieuBE4xeiHu0UqMIc9aNWnyVPH91sjiGb6UxXWtmav8XdlldpBznTuNqrf

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: app_userevent; Type: TABLE DATA; Schema: backend; Owner: medichubadmin
--



--
-- Name: app_userevent_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_userevent_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict i83IVieuBE4xeiHu0UqMIc9aNWnyVPH91sjiGb6UxXWtmav8XdlldpBznTuNqrf

--
-- PostgreSQL database dump
--

\restrict GpbkxK5zSNFkAsvZpdg9Tdf7prFYf4Ew4eeP3pVCwdEDPXSYAh1iQk13CI0sRbx

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: app_usermagazine; Type: TABLE DATA; Schema: backend; Owner: medichubadmin
--



--
-- Name: app_usermagazine_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_usermagazine_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict GpbkxK5zSNFkAsvZpdg9Tdf7prFYf4Ew4eeP3pVCwdEDPXSYAh1iQk13CI0sRbx

--
-- PostgreSQL database dump
--

\restrict s1N047QBJ9WaEMbm2efEc8O1Rx0LATggxiyjX2laIuYJupOlHhsMlmM6eOEay3V

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: app_transaction; Type: TABLE DATA; Schema: backend; Owner: medichubadmin
--



--
-- Name: app_transaction_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_transaction_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict s1N047QBJ9WaEMbm2efEc8O1Rx0LATggxiyjX2laIuYJupOlHhsMlmM6eOEay3V

--
-- PostgreSQL database dump
--

\restrict y6Xzw86BywsKl0CrIqiGjE2FDq4exhPbQMARLdlRze8QawkpVz8TIzqutyaZYcD

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: app_certificate; Type: TABLE DATA; Schema: backend; Owner: medichubadmin
--



--
-- Name: app_certificate_certificate_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_certificate_certificate_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict y6Xzw86BywsKl0CrIqiGjE2FDq4exhPbQMARLdlRze8QawkpVz8TIzqutyaZYcD

