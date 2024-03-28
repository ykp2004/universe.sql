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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30),
    no_star integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    size integer,
    distance_from_earth numeric(7,2),
    description text,
    age integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    age integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer,
    description text,
    age integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'con1', 10);
INSERT INTO public.constellation VALUES (2, 'con2', 20);
INSERT INTO public.constellation VALUES (3, 'con3', 30);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 10, 10000.00, 'Description of galaxy 1', 10);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 20, 20000.00, 'Description of galaxy 2', 20);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 30, 30000.00, 'Description of galaxy 3', 30);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 40, 40000.00, 'Description of galaxy 4', 40);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 50, 50000.00, 'Description of galaxy 5', 50);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 60, 60000.00, 'Description of galaxy 6', 60);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 10, 'description of moon 1');
INSERT INTO public.moon VALUES (2, 'moon2', 2, 20, 'description of moon 2');
INSERT INTO public.moon VALUES (3, 'moon3', 3, 30, 'description of moon 3');
INSERT INTO public.moon VALUES (4, 'moon4', 4, 40, 'description of moon 4');
INSERT INTO public.moon VALUES (5, 'moon5', 5, 50, 'description of moon 5');
INSERT INTO public.moon VALUES (6, 'moon6', 6, 60, 'description of moon 6');
INSERT INTO public.moon VALUES (7, 'moon7', 7, 70, 'description of moon 7');
INSERT INTO public.moon VALUES (8, 'moon8', 8, 80, 'description of moon 8');
INSERT INTO public.moon VALUES (9, 'moon9', 9, 90, 'description of moon 9');
INSERT INTO public.moon VALUES (10, 'moon10', 10, 100, 'description of moon 10');
INSERT INTO public.moon VALUES (11, 'moon11', 11, 110, 'description of moon 11');
INSERT INTO public.moon VALUES (12, 'moon12', 12, 120, 'description of moon 12');
INSERT INTO public.moon VALUES (13, 'moon13', 11, 130, 'description of moon 13');
INSERT INTO public.moon VALUES (14, 'moon14', 10, 140, 'description of moon 14');
INSERT INTO public.moon VALUES (15, 'moon15', 9, 150, 'description of moon 15');
INSERT INTO public.moon VALUES (16, 'moon16', 8, 160, 'description of moon 16');
INSERT INTO public.moon VALUES (17, 'moon17', 7, 170, 'description of moon 17');
INSERT INTO public.moon VALUES (18, 'moon18', 6, 180, 'description of moon 18');
INSERT INTO public.moon VALUES (19, 'moon19', 5, 190, 'description of moon 19');
INSERT INTO public.moon VALUES (20, 'moon20', 4, 200, 'description of moon 20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', true, true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', true, true, 2);
INSERT INTO public.planet VALUES (3, 'planet3', true, true, 3);
INSERT INTO public.planet VALUES (4, 'planet4', true, true, 4);
INSERT INTO public.planet VALUES (5, 'planet5', true, true, 5);
INSERT INTO public.planet VALUES (6, 'planet6', true, true, 6);
INSERT INTO public.planet VALUES (7, 'planet7', true, true, 6);
INSERT INTO public.planet VALUES (8, 'planet8', true, true, 5);
INSERT INTO public.planet VALUES (9, 'planet9', true, true, 4);
INSERT INTO public.planet VALUES (10, 'planet10', true, true, 3);
INSERT INTO public.planet VALUES (11, 'planet11', true, true, 2);
INSERT INTO public.planet VALUES (12, 'planet12', true, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 'description of star 1', 10);
INSERT INTO public.star VALUES (2, 'star2', 2, 'description of star 2', 20);
INSERT INTO public.star VALUES (3, 'star3', 3, 'description of star 3', 30);
INSERT INTO public.star VALUES (4, 'star4', 4, 'description of star 4', 40);
INSERT INTO public.star VALUES (5, 'star5', 5, 'description of star 5', 50);
INSERT INTO public.star VALUES (6, 'star6', 6, 'description of star 6', 60);


--
-- Name: constellation con_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT con_id UNIQUE (constellation_id);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

