--
-- PostgreSQL database dump
--

\restrict 4W3FVwKr3hz8D7JyKWk3BRypRM7lB6Nzdw0zsc0gjd3EskSgg3wG1XwIB7Ss0Vu

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

INSERT INTO backend.app_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, cnp, phone, correspondence_address, county, city, user_type, occupation, specialization_1, specialization_2, department, is_snmf_member, minors_count, cmv, stamp_code, cuim, academic_title, institution_name, institution_address, institution_county, institution_city, consent_email, consent_sms, consent_postal, status) VALUES (1, 'pbkdf2_sha256$1200000$HS7t0fUQPSOX9PD5CHT09i$PJQudw375/zl+RXQPYcn2myt2PddWoY1XPKfpavLx1Y=', '2026-04-16 22:24:52.601848+03', true, 'medichub', '', '', 'durimel14008@gmail.com', true, true, '2026-03-31 10:41:50.758221+03', '', '', '', '', '', '', '', '', NULL, NULL, false, 0, NULL, '', '', NULL, '', NULL, NULL, NULL, true, false, false, 'Activ');
INSERT INTO backend.app_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, cnp, phone, correspondence_address, county, city, user_type, occupation, specialization_1, specialization_2, department, is_snmf_member, minors_count, cmv, stamp_code, cuim, academic_title, institution_name, institution_address, institution_county, institution_city, consent_email, consent_sms, consent_postal, status) VALUES (2, 'pbkdf2_sha256$1200000$zpkBBVkncdbKt5cB5ebEHQ$gkGUt7eGkfjPcc8EyU/98wfoMjGQ+fyuTA/c0nwa4jY=', '2026-04-16 22:26:14.421907+03', false, 'elena_gageanu', 'Gigi Elena', 'Gageanu ', 'elena.gageanu@medichub.ro', false, true, '2026-03-31 10:49:26+03', '1234567890123', '0745641521', 'Constanta', 'Constanta', 'Constanta', 'Normal', 'Medic', 'Medicina de Familie', 'Boli Infectioase', NULL, false, 0, '000000', '000000', '1111111111', 'Conferentiar', 'CMI MH', 'Vladimirescu,22, Bucuresti', 'Bucuresti', 'Sector 2', true, true, false, 'Activ');


--
-- Name: app_customuser_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_customuser_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 4W3FVwKr3hz8D7JyKWk3BRypRM7lB6Nzdw0zsc0gjd3EskSgg3wG1XwIB7Ss0Vu

--
-- PostgreSQL database dump
--

\restrict 7xJcXsec1f08wkIIpc5hQ1kQrjvxFOgom9513AldB1qQlvedK3H7jFBvfqN3tlK

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

INSERT INTO backend.app_course (id_course, name, date_start, date_end, rating, number_credits) VALUES (1, 'Managementul Diabetului Zaharat Tip 2', '2026-01-10', '2026-12-31', 4.9, 12);
INSERT INTO backend.app_course (id_course, name, date_start, date_end, rating, number_credits) VALUES (2, 'Urgențe Pediatrice în Practica Medicului de Familie', '2026-02-15', '2026-11-20', 4.7, 8);
INSERT INTO backend.app_course (id_course, name, date_start, date_end, rating, number_credits) VALUES (3, 'Interpretarea EKG în Cabinetele de Medicină de Familie', '2026-03-01', '2026-12-01', 4.8, 10);


--
-- Name: app_course_id_course_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_course_id_course_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict 7xJcXsec1f08wkIIpc5hQ1kQrjvxFOgom9513AldB1qQlvedK3H7jFBvfqN3tlK

--
-- PostgreSQL database dump
--

\restrict cDN0MdRM2jocp1EsTwECGyujatk2en6V3XztUQsBItSSwFXZeYVBkPL7mHWWHGQ

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

INSERT INTO backend.app_event (event_id, name, event_date, location, emc_points, delivery_mode) VALUES (1, 'Congresul Național de Cardiologie - Ediția XIV', '2026-04-24 09:00:00+03', 'Hotel Caro, București / Online', 12, 'hybrid');
INSERT INTO backend.app_event (event_id, name, event_date, location, emc_points, delivery_mode) VALUES (2, 'Webinar: Noutăți în Vaccinarea Antigripală 2026', '2026-05-12 18:30:00+03', 'Platforma Zoom MedicHub', 4, 'online');
INSERT INTO backend.app_event (event_id, name, event_date, location, emc_points, delivery_mode) VALUES (3, 'Workshop: Ecografie Abdominală de Bază', '2026-06-05 10:00:00+03', 'Centrul de Training MedicHub, București', 6, 'physical');


--
-- Name: app_event_event_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_event_event_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict cDN0MdRM2jocp1EsTwECGyujatk2en6V3XztUQsBItSSwFXZeYVBkPL7mHWWHGQ

--
-- PostgreSQL database dump
--

\restrict Xj756HT3j7D0nZTDAdIyzsGSMHzW6LL3hTVkVTZbp7gqbJUerCneWMKbtHLKCnI

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

INSERT INTO backend.app_magazine (magazine_id, title, category, edition_number, edition_year, publication_date) VALUES (1, 'Ginecologia.ro', 'Ginecologie', 4, 2025, '2025-12-11');
INSERT INTO backend.app_magazine (magazine_id, title, category, edition_number, edition_year, publication_date) VALUES (2, 'Medic.ro', 'Medicină Generală', 168, 2026, '2026-03-01');
INSERT INTO backend.app_magazine (magazine_id, title, category, edition_number, edition_year, publication_date) VALUES (3, 'Pediatria.ro', 'Pediatrie', 12, 2026, '2026-01-20');


--
-- Name: app_magazine_magazine_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_magazine_magazine_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict Xj756HT3j7D0nZTDAdIyzsGSMHzW6LL3hTVkVTZbp7gqbJUerCneWMKbtHLKCnI

--
-- PostgreSQL database dump
--

\restrict jQ4jav3AqMcCP40A3vCEmFo8odyuABS4grFZPRFUaGuvXCSqCiDKbHVdvhq0q1J

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

INSERT INTO backend.app_usercourse (id, progress, registration_date, course_id, user_id) VALUES (1, 100, '2026-01-15 08:00:00+02', 1, 2);
INSERT INTO backend.app_usercourse (id, progress, registration_date, course_id, user_id) VALUES (2, 45, '2026-03-01 13:30:00+02', 2, 2);
INSERT INTO backend.app_usercourse (id, progress, registration_date, course_id, user_id) VALUES (3, 10, '2026-03-25 09:00:00+02', 3, 2);


--
-- Name: app_usercourse_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_usercourse_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

\unrestrict jQ4jav3AqMcCP40A3vCEmFo8odyuABS4grFZPRFUaGuvXCSqCiDKbHVdvhq0q1J

--
-- PostgreSQL database dump
--

\restrict FxnA9J2LI9Kaho0yv11M3lxnOANAbOTpqWm6bjqjtHb3NQbYnv3dbgXd75YNdv7

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

INSERT INTO backend.app_userevent (id, enrollment_date, event_id, user_id) VALUES (1, '2026-03-31 11:00:00+03', 1, 2);
INSERT INTO backend.app_userevent (id, enrollment_date, event_id, user_id) VALUES (2, '2026-03-31 11:05:00+03', 2, 2);


--
-- Name: app_userevent_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_userevent_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

\unrestrict FxnA9J2LI9Kaho0yv11M3lxnOANAbOTpqWm6bjqjtHb3NQbYnv3dbgXd75YNdv7

--
-- PostgreSQL database dump
--

\restrict ek6pw5MbgOMQXygYmUAvMzI1OAD5y5vdjnABTchLN18AzK5PjSg61NFxxJbPBLK

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

INSERT INTO backend.app_usermagazine (id, access_granted_date, magazine_id, user_id) VALUES (1, '2026-03-31 11:10:00+03', 1, 2);
INSERT INTO backend.app_usermagazine (id, access_granted_date, magazine_id, user_id) VALUES (2, '2026-03-31 11:10:00+03', 2, 2);
INSERT INTO backend.app_usermagazine (id, access_granted_date, magazine_id, user_id) VALUES (3, '2026-03-31 11:10:00+03', 3, 2);


--
-- Name: app_usermagazine_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_usermagazine_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

\unrestrict ek6pw5MbgOMQXygYmUAvMzI1OAD5y5vdjnABTchLN18AzK5PjSg61NFxxJbPBLK

--
-- PostgreSQL database dump
--

\restrict coy6Z1MmCAlrySaybxbhEXkf93Yb6FJqb66XtYdDhZwpVE4wvIwLKtny6unRcO4

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

INSERT INTO backend.app_transaction (id, category, product_name, transaction_reference, status, date, payment_method, amount, currency, user_id) VALUES (1, 'ABONAMENT', 'Abonament Combo: Medic.ro + Ginecologia.ro', '#MH-2026-9981', 'completed', '2026-03-06 14:20:00+02', 'Card Bancar (**** 4421)', 450.00, 'RON', 2);


--
-- Name: app_transaction_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_transaction_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict coy6Z1MmCAlrySaybxbhEXkf93Yb6FJqb66XtYdDhZwpVE4wvIwLKtny6unRcO4

--
-- PostgreSQL database dump
--

\restrict pwHOfWfXqPuRLZImY8fJBbSMh2WqFDBebDTfKcdJbD6resKnvxSLhstYMftu5Mc

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

INSERT INTO backend.app_certificate (certificate_id, name, issue_date, user_id, course_id) VALUES (1, 'Managementul Diabetului Zaharat Tip 2', '2026-02-10', 2, 1);


--
-- Name: app_certificate_certificate_id_seq; Type: SEQUENCE SET; Schema: backend; Owner: medichubadmin
--

SELECT pg_catalog.setval('backend.app_certificate_certificate_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict pwHOfWfXqPuRLZImY8fJBbSMh2WqFDBebDTfKcdJbD6resKnvxSLhstYMftu5Mc

