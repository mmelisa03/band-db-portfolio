--
-- PostgreSQL database dump
--

-- Dumped from database version 14.18 (Homebrew)
-- Dumped by pg_dump version 14.18 (Homebrew)

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
-- Name: album; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.album (
    album_id integer NOT NULL,
    title character varying(150) NOT NULL,
    release_date date,
    cover_url text
);


ALTER TABLE public.album OWNER TO melisaedmunds;

--
-- Name: album_album_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.album_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_album_id_seq OWNER TO melisaedmunds;

--
-- Name: album_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.album_album_id_seq OWNED BY public.album.album_id;


--
-- Name: band; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.band (
    band_id integer NOT NULL,
    band_name character varying(100) NOT NULL,
    genre character varying(50),
    formation_year integer
);


ALTER TABLE public.band OWNER TO melisaedmunds;

--
-- Name: band_band_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.band_band_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.band_band_id_seq OWNER TO melisaedmunds;

--
-- Name: band_band_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.band_band_id_seq OWNED BY public.band.band_id;


--
-- Name: band_member; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.band_member (
    member_id integer NOT NULL,
    name character varying(100) NOT NULL,
    instrument character varying(100),
    bio text,
    photo_url text
);


ALTER TABLE public.band_member OWNER TO melisaedmunds;

--
-- Name: band_member_member_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.band_member_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.band_member_member_id_seq OWNER TO melisaedmunds;

--
-- Name: band_member_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.band_member_member_id_seq OWNED BY public.band_member.member_id;


--
-- Name: blog_post; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.blog_post (
    post_id integer NOT NULL,
    title text NOT NULL,
    content text NOT NULL,
    post_date date DEFAULT CURRENT_DATE,
    image_url text,
    fan_id integer
);


ALTER TABLE public.blog_post OWNER TO melisaedmunds;

--
-- Name: blog_post_post_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.blog_post_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_post_id_seq OWNER TO melisaedmunds;

--
-- Name: blog_post_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.blog_post_post_id_seq OWNED BY public.blog_post.post_id;


--
-- Name: fan; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.fan (
    fan_id integer NOT NULL,
    name text,
    email text NOT NULL,
    join_date date DEFAULT CURRENT_DATE
);


ALTER TABLE public.fan OWNER TO melisaedmunds;

--
-- Name: fan_fan_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.fan_fan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fan_fan_id_seq OWNER TO melisaedmunds;

--
-- Name: fan_fan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.fan_fan_id_seq OWNED BY public.fan.fan_id;


--
-- Name: lyrics; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.lyrics (
    lyrics_id integer NOT NULL,
    song_id integer,
    full_lyrics text NOT NULL
);


ALTER TABLE public.lyrics OWNER TO melisaedmunds;

--
-- Name: lyrics_lyrics_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.lyrics_lyrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lyrics_lyrics_id_seq OWNER TO melisaedmunds;

--
-- Name: lyrics_lyrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.lyrics_lyrics_id_seq OWNED BY public.lyrics.lyrics_id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.media (
    media_id integer NOT NULL,
    title character varying(150) NOT NULL,
    media_type character varying(50),
    url text NOT NULL,
    description text,
    song_id integer
);


ALTER TABLE public.media OWNER TO melisaedmunds;

--
-- Name: media_media_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.media_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_media_id_seq OWNER TO melisaedmunds;

--
-- Name: media_media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.media_media_id_seq OWNED BY public.media.media_id;


--
-- Name: message; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.message (
    message_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    subject character varying(150),
    message text NOT NULL,
    sent_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.message OWNER TO melisaedmunds;

--
-- Name: message_message_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.message_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.message_message_id_seq OWNER TO melisaedmunds;

--
-- Name: message_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.message_message_id_seq OWNED BY public.message.message_id;


--
-- Name: photo_gallery; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.photo_gallery (
    photo_id integer NOT NULL,
    title text,
    url text NOT NULL,
    caption text,
    upload_date date DEFAULT CURRENT_DATE,
    show_id integer,
    fan_id integer
);


ALTER TABLE public.photo_gallery OWNER TO melisaedmunds;

--
-- Name: photo_gallery_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.photo_gallery_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photo_gallery_photo_id_seq OWNER TO melisaedmunds;

--
-- Name: photo_gallery_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.photo_gallery_photo_id_seq OWNED BY public.photo_gallery.photo_id;


--
-- Name: show; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.show (
    show_id integer NOT NULL,
    venue character varying(150) NOT NULL,
    city character varying(100),
    date date NOT NULL,
    ticket_url text,
    description text
);


ALTER TABLE public.show OWNER TO melisaedmunds;

--
-- Name: show_show_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.show_show_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.show_show_id_seq OWNER TO melisaedmunds;

--
-- Name: show_show_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.show_show_id_seq OWNED BY public.show.show_id;


--
-- Name: song; Type: TABLE; Schema: public; Owner: melisaedmunds
--

CREATE TABLE public.song (
    song_id integer NOT NULL,
    album_id integer,
    title character varying(150) NOT NULL,
    duration time without time zone,
    lyrics text,
    release_date date
);


ALTER TABLE public.song OWNER TO melisaedmunds;

--
-- Name: song_song_id_seq; Type: SEQUENCE; Schema: public; Owner: melisaedmunds
--

CREATE SEQUENCE public.song_song_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.song_song_id_seq OWNER TO melisaedmunds;

--
-- Name: song_song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: melisaedmunds
--

ALTER SEQUENCE public.song_song_id_seq OWNED BY public.song.song_id;


--
-- Name: album album_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.album ALTER COLUMN album_id SET DEFAULT nextval('public.album_album_id_seq'::regclass);


--
-- Name: band band_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.band ALTER COLUMN band_id SET DEFAULT nextval('public.band_band_id_seq'::regclass);


--
-- Name: band_member member_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.band_member ALTER COLUMN member_id SET DEFAULT nextval('public.band_member_member_id_seq'::regclass);


--
-- Name: blog_post post_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.blog_post ALTER COLUMN post_id SET DEFAULT nextval('public.blog_post_post_id_seq'::regclass);


--
-- Name: fan fan_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.fan ALTER COLUMN fan_id SET DEFAULT nextval('public.fan_fan_id_seq'::regclass);


--
-- Name: lyrics lyrics_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.lyrics ALTER COLUMN lyrics_id SET DEFAULT nextval('public.lyrics_lyrics_id_seq'::regclass);


--
-- Name: media media_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.media ALTER COLUMN media_id SET DEFAULT nextval('public.media_media_id_seq'::regclass);


--
-- Name: message message_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.message ALTER COLUMN message_id SET DEFAULT nextval('public.message_message_id_seq'::regclass);


--
-- Name: photo_gallery photo_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.photo_gallery ALTER COLUMN photo_id SET DEFAULT nextval('public.photo_gallery_photo_id_seq'::regclass);


--
-- Name: show show_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.show ALTER COLUMN show_id SET DEFAULT nextval('public.show_show_id_seq'::regclass);


--
-- Name: song song_id; Type: DEFAULT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.song ALTER COLUMN song_id SET DEFAULT nextval('public.song_song_id_seq'::regclass);


--
-- Name: album album_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);


--
-- Name: band_member band_member_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.band_member
    ADD CONSTRAINT band_member_pkey PRIMARY KEY (member_id);


--
-- Name: band band_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.band
    ADD CONSTRAINT band_pkey PRIMARY KEY (band_id);


--
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (post_id);


--
-- Name: fan fan_email_key; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.fan
    ADD CONSTRAINT fan_email_key UNIQUE (email);


--
-- Name: fan fan_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.fan
    ADD CONSTRAINT fan_pkey PRIMARY KEY (fan_id);


--
-- Name: lyrics lyrics_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.lyrics
    ADD CONSTRAINT lyrics_pkey PRIMARY KEY (lyrics_id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (media_id);


--
-- Name: message message_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (message_id);


--
-- Name: photo_gallery photo_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.photo_gallery
    ADD CONSTRAINT photo_gallery_pkey PRIMARY KEY (photo_id);


--
-- Name: show show_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.show
    ADD CONSTRAINT show_pkey PRIMARY KEY (show_id);


--
-- Name: song song_pkey; Type: CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_pkey PRIMARY KEY (song_id);


--
-- Name: blog_post blog_post_fan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_fan_id_fkey FOREIGN KEY (fan_id) REFERENCES public.fan(fan_id) ON DELETE SET NULL;


--
-- Name: lyrics lyrics_song_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.lyrics
    ADD CONSTRAINT lyrics_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.song(song_id) ON DELETE CASCADE;


--
-- Name: media media_song_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.song(song_id) ON DELETE CASCADE;


--
-- Name: photo_gallery photo_gallery_fan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.photo_gallery
    ADD CONSTRAINT photo_gallery_fan_id_fkey FOREIGN KEY (fan_id) REFERENCES public.fan(fan_id) ON DELETE SET NULL;


--
-- Name: photo_gallery photo_gallery_show_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.photo_gallery
    ADD CONSTRAINT photo_gallery_show_id_fkey FOREIGN KEY (show_id) REFERENCES public.show(show_id) ON DELETE SET NULL;


--
-- Name: song song_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: melisaedmunds
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album(album_id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

