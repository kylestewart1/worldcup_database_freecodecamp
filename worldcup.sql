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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (21, 2018, 'Final', 32, 33, 4, 2);
INSERT INTO public.games VALUES (22, 2018, 'Third Place', 34, 35, 2, 0);
INSERT INTO public.games VALUES (23, 2018, 'Semi-Final', 33, 35, 2, 1);
INSERT INTO public.games VALUES (24, 2018, 'Semi-Final', 32, 34, 1, 0);
INSERT INTO public.games VALUES (25, 2018, 'Quarter-Final', 33, 36, 3, 2);
INSERT INTO public.games VALUES (26, 2018, 'Quarter-Final', 35, 37, 2, 0);
INSERT INTO public.games VALUES (27, 2018, 'Quarter-Final', 34, 38, 2, 1);
INSERT INTO public.games VALUES (28, 2018, 'Quarter-Final', 32, 39, 2, 0);
INSERT INTO public.games VALUES (29, 2018, 'Eighth-Final', 35, 40, 2, 1);
INSERT INTO public.games VALUES (30, 2018, 'Eighth-Final', 37, 41, 1, 0);
INSERT INTO public.games VALUES (31, 2018, 'Eighth-Final', 34, 42, 3, 2);
INSERT INTO public.games VALUES (32, 2018, 'Eighth-Final', 38, 43, 2, 0);
INSERT INTO public.games VALUES (33, 2018, 'Eighth-Final', 33, 44, 2, 1);
INSERT INTO public.games VALUES (34, 2018, 'Eighth-Final', 36, 45, 2, 1);
INSERT INTO public.games VALUES (35, 2018, 'Eighth-Final', 39, 46, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Eighth-Final', 32, 47, 4, 3);
INSERT INTO public.games VALUES (37, 2014, 'Final', 48, 47, 1, 0);
INSERT INTO public.games VALUES (38, 2014, 'Third Place', 49, 38, 3, 0);
INSERT INTO public.games VALUES (39, 2014, 'Semi-Final', 47, 49, 1, 0);
INSERT INTO public.games VALUES (40, 2014, 'Semi-Final', 48, 38, 7, 1);
INSERT INTO public.games VALUES (41, 2014, 'Quarter-Final', 49, 50, 1, 0);
INSERT INTO public.games VALUES (42, 2014, 'Quarter-Final', 47, 34, 1, 0);
INSERT INTO public.games VALUES (43, 2014, 'Quarter-Final', 38, 40, 2, 1);
INSERT INTO public.games VALUES (44, 2014, 'Quarter-Final', 48, 32, 1, 0);
INSERT INTO public.games VALUES (45, 2014, 'Eighth-Final', 38, 51, 2, 1);
INSERT INTO public.games VALUES (46, 2014, 'Eighth-Final', 40, 39, 2, 0);
INSERT INTO public.games VALUES (47, 2014, 'Eighth-Final', 32, 52, 2, 0);
INSERT INTO public.games VALUES (48, 2014, 'Eighth-Final', 48, 53, 2, 1);
INSERT INTO public.games VALUES (49, 2014, 'Eighth-Final', 49, 43, 2, 1);
INSERT INTO public.games VALUES (50, 2014, 'Eighth-Final', 50, 54, 2, 1);
INSERT INTO public.games VALUES (51, 2014, 'Eighth-Final', 47, 41, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Eighth-Final', 34, 55, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (32, 'France');
INSERT INTO public.teams VALUES (33, 'Croatia');
INSERT INTO public.teams VALUES (34, 'Belgium');
INSERT INTO public.teams VALUES (35, 'England');
INSERT INTO public.teams VALUES (36, 'Russia');
INSERT INTO public.teams VALUES (37, 'Sweden');
INSERT INTO public.teams VALUES (38, 'Brazil');
INSERT INTO public.teams VALUES (39, 'Uruguay');
INSERT INTO public.teams VALUES (40, 'Colombia');
INSERT INTO public.teams VALUES (41, 'Switzerland');
INSERT INTO public.teams VALUES (42, 'Japan');
INSERT INTO public.teams VALUES (43, 'Mexico');
INSERT INTO public.teams VALUES (44, 'Denmark');
INSERT INTO public.teams VALUES (45, 'Spain');
INSERT INTO public.teams VALUES (46, 'Portugal');
INSERT INTO public.teams VALUES (47, 'Argentina');
INSERT INTO public.teams VALUES (48, 'Germany');
INSERT INTO public.teams VALUES (49, 'Netherlands');
INSERT INTO public.teams VALUES (50, 'Costa Rica');
INSERT INTO public.teams VALUES (51, 'Chile');
INSERT INTO public.teams VALUES (52, 'Nigeria');
INSERT INTO public.teams VALUES (53, 'Algeria');
INSERT INTO public.teams VALUES (54, 'Greece');
INSERT INTO public.teams VALUES (55, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 52, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 55, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

