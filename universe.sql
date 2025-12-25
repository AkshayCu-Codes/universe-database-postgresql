--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: element; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.element (
    element_id integer NOT NULL,
    name character varying(50) NOT NULL,
    atomic_number integer NOT NULL,
    is_natural boolean NOT NULL
);


ALTER TABLE public.element OWNER TO freecodecamp;

--
-- Name: element_element_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.element_element_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.element_element_id_seq OWNER TO freecodecamp;

--
-- Name: element_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.element_element_id_seq OWNED BY public.element.element_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_type character varying(50) NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_life boolean,
    description text
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
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    diameter integer NOT NULL,
    is_spherical boolean NOT NULL,
    surface text
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
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    planet_type character varying(50),
    is_spherical boolean NOT NULL,
    has_life boolean,
    distance_from_star integer NOT NULL
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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    temperature integer NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric
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
-- Name: element element_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.element ALTER COLUMN element_id SET DEFAULT nextval('public.element_element_id_seq'::regclass);


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
-- Data for Name: element; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.element VALUES (1, 'Hydrogen', 1, true);
INSERT INTO public.element VALUES (2, 'Helium', 2, true);
INSERT INTO public.element VALUES (3, 'Carbon', 6, true);
INSERT INTO public.element VALUES (4, 'Nitrogen', 7, true);
INSERT INTO public.element VALUES (5, 'Oxygen', 8, true);
INSERT INTO public.element VALUES (6, 'Iron', 26, true);
INSERT INTO public.element VALUES (7, 'Gold', 79, true);
INSERT INTO public.element VALUES (8, 'Uranium', 92, true);
INSERT INTO public.element VALUES (9, 'Plutonium', 94, false);
INSERT INTO public.element VALUES (10, 'Unobtainium', 200, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, true, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, false, 'Nearest major galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3000000, false, 'Local group galaxy');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 23000000, false, 'M51 system');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Elliptical', 31000000, false, 'Bright core');
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'Spiral', 17000000, false, 'Dust lane across core');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 3474, true, 'Rocky');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 22, false, 'Dusty');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 12, false, 'Dusty');
INSERT INTO public.moon VALUES (4, 'Io', 5, 3643, true, 'Volcanic');
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3121, true, 'Icy');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5262, true, 'Rocky');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 4821, true, 'Cratered');
INSERT INTO public.moon VALUES (8, 'Titan', 6, 5150, true, 'Methane lakes');
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 504, true, 'Icy geysers');
INSERT INTO public.moon VALUES (10, 'Mimas', 6, 396, true, 'Cratered');
INSERT INTO public.moon VALUES (11, 'Triton', 8, 2707, true, 'Retrograde');
INSERT INTO public.moon VALUES (12, 'Proteus', 8, 420, false, 'Irregular');
INSERT INTO public.moon VALUES (13, 'Nereid', 8, 340, false, 'Elliptical');
INSERT INTO public.moon VALUES (14, 'Charon', 3, 1212, true, 'Icy');
INSERT INTO public.moon VALUES (15, 'Oberon', 7, 1523, true, 'Rocky');
INSERT INTO public.moon VALUES (16, 'Titania', 7, 1577, true, 'Bright surface');
INSERT INTO public.moon VALUES (17, 'Ariel', 7, 1158, true, 'Smooth');
INSERT INTO public.moon VALUES (18, 'Umbriel', 7, 1169, true, 'Dark');
INSERT INTO public.moon VALUES (19, 'Miranda', 7, 471, true, 'Fragmented');
INSERT INTO public.moon VALUES (20, 'Dysnomia', 10, 700, false, 'Unknown');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Terrestrial', true, false, 57);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Terrestrial', true, false, 108);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Terrestrial', true, true, 150);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Terrestrial', true, false, 228);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Gas Giant', true, false, 779);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Gas Giant', true, false, 1427);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Ice Giant', true, false, 2871);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Ice Giant', true, false, 4495);
INSERT INTO public.planet VALUES (9, 'Proxima b', 2, 'Exoplanet', true, false, 4);
INSERT INTO public.planet VALUES (10, 'Sirius b', 3, 'Dwarf', true, false, 20);
INSERT INTO public.planet VALUES (11, 'Vega I', 4, 'Exoplanet', true, false, 25);
INSERT INTO public.planet VALUES (12, 'Betelgeuse I', 5, 'Gas Giant', true, false, 60);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 5500, true, 4600);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 1, 5790, true, 5000);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 9940, true, 300);
INSERT INTO public.star VALUES (4, 'Vega', 1, 9600, true, 455);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1, 3500, false, 800);
INSERT INTO public.star VALUES (6, 'Rigel', 1, 11000, true, 800);


--
-- Name: element_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.element_element_id_seq', 10, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: element element_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.element
    ADD CONSTRAINT element_name_key UNIQUE (name);


--
-- Name: element element_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.element
    ADD CONSTRAINT element_pkey PRIMARY KEY (element_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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

