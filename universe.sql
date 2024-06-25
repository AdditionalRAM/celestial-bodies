--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: astronomical_event; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomical_event (
    astronomical_event_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    date date,
    description text
);


ALTER TABLE public.astronomical_event OWNER TO freecodecamp;

--
-- Name: astronomical_events_event_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomical_events_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomical_events_event_id_seq OWNER TO freecodecamp;

--
-- Name: astronomical_events_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomical_events_event_id_seq OWNED BY public.astronomical_event.astronomical_event_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_light_years numeric,
    galaxy_type text,
    number_of_stars_billion integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discovery_year integer,
    planet_id integer,
    radius_km numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_habitable boolean,
    has_rings boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    temperature_kelvin integer NOT NULL,
    galaxy_id integer,
    mass_solar_masses numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astronomical_event astronomical_event_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event ALTER COLUMN astronomical_event_id SET DEFAULT nextval('public.astronomical_events_event_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astronomical_event; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomical_event VALUES (1, 'First Moon Landing', 'Historical', '1969-07-20', 'Neil Armstrong and Buzz Aldrin land on the Moon during Apollo 11.');
INSERT INTO public.astronomical_event VALUES (2, 'Heliocentrism by Aristarchus', 'Historical', '0280-01-01 BC', 'Aristarchus suggests a heliocentric model placing the Sun at the center of the solar system.');
INSERT INTO public.astronomical_event VALUES (3, 'Eratosthenes Measures Earth', 'Historical', '0270-01-01 BC', 'Eratosthenes accurately estimates Earth''s circumference using sunlight angles.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf Galaxy', 25000, 'Dwarf Irregular', NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 26000, 'Barred Spiral', 100);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 163000, 'Irregular', 10);
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic Cloud', 200000, 'Irregular', 7);
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 2537000, 'Spiral', 1000);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 2723000, 'Spiral', 40);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 0, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', 1877, 4, 12.4);
INSERT INTO public.moon VALUES (3, 'Phobos', 1877, 4, 22.5);
INSERT INTO public.moon VALUES (4, 'Adrastea', 1979, 5, 16);
INSERT INTO public.moon VALUES (5, 'Aitne', 2001, 5, 3);
INSERT INTO public.moon VALUES (6, 'Amalthea', 1892, 5, 134);
INSERT INTO public.moon VALUES (7, 'Ananke', 1951, 5, 20);
INSERT INTO public.moon VALUES (8, 'Aoede', 2003, 5, 4);
INSERT INTO public.moon VALUES (9, 'Arche', 2002, 5, 3);
INSERT INTO public.moon VALUES (10, 'Autonoe', 2001, 5, 4);
INSERT INTO public.moon VALUES (11, 'Callirrhoe', 2000, 5, 10);
INSERT INTO public.moon VALUES (12, 'Titan', NULL, 6, 2576);
INSERT INTO public.moon VALUES (13, 'Rhea', NULL, 6, 764);
INSERT INTO public.moon VALUES (14, 'Iapetus', NULL, 6, 735);
INSERT INTO public.moon VALUES (15, 'Enceladus', NULL, 6, 252);
INSERT INTO public.moon VALUES (16, 'Mimas', NULL, 6, 198);
INSERT INTO public.moon VALUES (17, 'Triton', 1846, 8, 1353.4);
INSERT INTO public.moon VALUES (18, 'Proteus', 1989, 8, 210);
INSERT INTO public.moon VALUES (19, 'Charon', 1978, 9, 606);
INSERT INTO public.moon VALUES (20, 'Luna', NULL, 1, 3475);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, false, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', true, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', true, NULL, 3);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', true, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'CM Draconis', 3500, 2, 0.2);
INSERT INTO public.star VALUES (3, 'R Doradus', 2700, 3, 0.6);
INSERT INTO public.star VALUES (4, 'Beta Hydri', 5500, 4, 1.1);
INSERT INTO public.star VALUES (5, 'Alpheratz', 12000, 5, 2.2);
INSERT INTO public.star VALUES (6, 'Delta Trianguli', 7000, 6, 2.5);
INSERT INTO public.star VALUES (1, 'Sun', 5800, 1, 1);


--
-- Name: astronomical_events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomical_events_event_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomical_event astronomical_events_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_events_pkey PRIMARY KEY (astronomical_event_id);


--
-- Name: astronomical_event event_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT event_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

