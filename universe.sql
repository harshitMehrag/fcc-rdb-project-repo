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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass_in_solar_mass numeric(10,6),
    diameter_in_light_years numeric(10,5),
    description text,
    has_life boolean,
    is_spherical boolean
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
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass_in_solar_mass numeric(10,6),
    diameter_in_light_years numeric(10,5),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
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
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass_in_solar_mass numeric(10,6),
    diameter_in_light_years numeric(10,5),
    description text,
    has_life boolean,
    is_spherical boolean,
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
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass_in_solar_mass numeric(10,6),
    diameter_in_light_years numeric(10,5),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Stellar', NULL);
INSERT INTO public.blackhole VALUES (2, 'Stellar1', NULL);
INSERT INTO public.blackhole VALUES (3, 'Stellar2', NULL);
INSERT INTO public.blackhole VALUES (4, 'Stellar3', NULL);
INSERT INTO public.blackhole VALUES (5, 'Stellar4', NULL);
INSERT INTO public.blackhole VALUES (6, 'Stellar5', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 14045, 54, 244.200000, 452.20000, 'Our Galaxy', true, true);
INSERT INTO public.galaxy VALUES (2, 'milky way', 14035, 54, 241.200000, 252.20000, 'Our Galaxy of earth', true, true);
INSERT INTO public.galaxy VALUES (3, 'Virgo', 13025, 52, 261.200000, 282.20000, 'Our Galaxy Far Far Away', true, true);
INSERT INTO public.galaxy VALUES (4, 'Girspilio', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', true, true);
INSERT INTO public.galaxy VALUES (5, 'Oprsiio', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', true, true);
INSERT INTO public.galaxy VALUES (6, 'Korsigi', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', true, true);
INSERT INTO public.galaxy VALUES (7, 'Klrsgi', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', true, true);
INSERT INTO public.galaxy VALUES (8, 'Lofoprthet', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', true, true);
INSERT INTO public.galaxy VALUES (9, 'Wesghet', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (10, 'Esghet', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (11, 'Yukgni', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (12, 'Tyhni', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (13, 'Aspnloi', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (14, 'Bholoi', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (15, 'Hanoi', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (16, 'Hasadoi', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (17, 'Vastoi', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (18, 'Bastoi', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (19, 'Nastoi', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);
INSERT INTO public.galaxy VALUES (20, 'Xastoi', 13025, 52, 261.200000, 222.20000, 'Our Galaxy Far Far Away', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Titan', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 1);
INSERT INTO public.moon VALUES (4, 'Titan1', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 2);
INSERT INTO public.moon VALUES (5, 'Titan3', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 2);
INSERT INTO public.moon VALUES (6, 'Titan4', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 2);
INSERT INTO public.moon VALUES (7, 'Dione', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 2);
INSERT INTO public.moon VALUES (8, 'Dione2', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 2);
INSERT INTO public.moon VALUES (9, 'Dione3', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 2);
INSERT INTO public.moon VALUES (10, 'Dione4', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 2);
INSERT INTO public.moon VALUES (11, 'Eucalydus', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 3);
INSERT INTO public.moon VALUES (12, 'Eucalydus2', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 3);
INSERT INTO public.moon VALUES (13, 'Eucalydus3', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 3);
INSERT INTO public.moon VALUES (14, 'Eucalydus4', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 3);
INSERT INTO public.moon VALUES (15, 'Phoebe', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 3);
INSERT INTO public.moon VALUES (16, 'PhoebeNo', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 3);
INSERT INTO public.moon VALUES (17, 'Phoebe5', 2254, 236, 31.665000, 6.23200, 'Moon of Saturn', false, true, 4);
INSERT INTO public.moon VALUES (18, 'Eauropa', 2254, 236, 31.665000, 6.23200, 'Moon of Jupiter', false, true, 2);
INSERT INTO public.moon VALUES (19, 'Europa', 2254, 236, 31.665000, 6.23200, 'Moon of Jupiter', false, true, 2);
INSERT INTO public.moon VALUES (20, 'Europa2', 5234, 56, 31.665000, 6.23200, 'Moon of Jupiter', false, true, 2);
INSERT INTO public.moon VALUES (21, 'Europa3', 5934, 56, 93.665000, 6.23200, 'Moon of Jupiter', false, true, 2);
INSERT INTO public.moon VALUES (1, 'Europa9', 5934, 56, 93.665000, 6.23200, 'Moon of Jupiter', false, true, 2);
INSERT INTO public.moon VALUES (2, 'Buropa', 5934, 56, 93.665000, 6.23200, 'Moon of Jupiter', false, true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Earth', 4534, 0, 23.663000, 6.23200, 'Our Planet', false, false, 2);
INSERT INTO public.planet VALUES (3, 'Marss', 45374, 46, 23.663000, 6.23200, 'XXXXsdasd', false, false, 3);
INSERT INTO public.planet VALUES (4, 'Venus', 87374, 46, 23.663000, 6.23200, 'Solar System', false, false, 3);
INSERT INTO public.planet VALUES (5, 'VenusX', 8274, 46, 23.663000, 6.23200, 'Solar System', false, false, 5);
INSERT INTO public.planet VALUES (6, 'BenusX', 8274, 46, 23.663000, 6.23200, 'Non Solar System', false, true, 5);
INSERT INTO public.planet VALUES (7, 'Hnush', 8274, 46, 23.663000, 6.23200, 'Non Solar System', false, true, 5);
INSERT INTO public.planet VALUES (8, 'Rabbig', 8274, 46, 23.663000, 6.23200, 'Non Solar System', false, true, 3);
INSERT INTO public.planet VALUES (9, 'Hukil', 8274, 46, 23.663000, 6.23200, 'Non Solar System', false, true, 2);
INSERT INTO public.planet VALUES (10, 'Noukice', 8274, 46, 23.663000, 6.23200, 'Non Solar System', false, true, 2);
INSERT INTO public.planet VALUES (11, 'Mercury', 8254, 46, 33.663000, 6.23200, 'Solar System', false, true, 1);
INSERT INTO public.planet VALUES (12, 'Jupiter', 45254, 236, 33.663000, 6.23200, 'Solar System', false, true, 4);
INSERT INTO public.planet VALUES (1, 'EarthX', 45254, 236, 33.663000, 6.23200, 'Solar System', false, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Atik', 45111, 855, 20.633000, 0.23200, 'A star in far far away galaxy', false, false, 1);
INSERT INTO public.star VALUES (2, 'Auva', 45511, 255, 20.663000, 0.23200, 'A star in far far away galaxy', false, false, 2);
INSERT INTO public.star VALUES (3, 'Zepto', 45541, 245, 23.663000, 6.23200, 'A star in far far away galaxy', false, false, 3);
INSERT INTO public.star VALUES (4, 'Potgol', 45541, 245, 23.663000, 6.23200, 'A star in far far away galaxy', false, false, 4);
INSERT INTO public.star VALUES (5, 'Poufos', 45541, 245, 23.663000, 6.23200, 'A star in far far away galaxy', false, false, 4);
INSERT INTO public.star VALUES (6, 'Yufog', 45541, 245, 23.663000, 6.23200, 'A star in far far away galaxy', false, false, 5);
INSERT INTO public.star VALUES (7, 'Ariel', 45541, 245, 23.663000, 6.23200, 'A star in far far away galaxy', false, false, 5);
INSERT INTO public.star VALUES (8, 'Avaglo', 45541, 245, 23.663000, 6.23200, 'A star in far far away galaxy', false, false, 6);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: blackhole unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

