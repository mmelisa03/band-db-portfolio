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

--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.album (album_id, title, release_date, cover_url) FROM stdin;
5	Demo EP	2025-03-01	https://drive.google.com/uc?export=view&id=1dYk2cz-wdRjgOs80mhBqZx1pfd0sm0ir
8	Demo EP	2025-03-01	https://drive.google.com/uc?export=view&id=1dYk2cz-wdRjgOs80mhBqZx1pfd0sm0ir
9	Demo EP	2025-03-01	https://drive.google.com/uc?export=view&id=1dYk2cz-wdRjgOs80mhBqZx1pfd0sm0ir
\.


--
-- Data for Name: band; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.band (band_id, band_name, genre, formation_year) FROM stdin;
1	neversleep.	emo hard-core	2023
8	neversleep.	Emo-Hardcore	2023
9	neversleep.	Emo-Hardcore	2023
\.


--
-- Data for Name: band_member; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.band_member (member_id, name, instrument, bio, photo_url) FROM stdin;
7	Mason Edmunds	Lead Vocals	\N	https://picsum.photos/200
8	Alan Bryan	Guitarist/Producer	\N	https://picsum/200
9	Mason Edmunds	Lead Vocals	\N	https://picsum.photos/200
10	Alan Bryan	Guitarist/Producer	\N	https://picsum/200
\.


--
-- Data for Name: fan; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.fan (fan_id, name, email, join_date) FROM stdin;
\.


--
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.blog_post (post_id, title, content, post_date, image_url, fan_id) FROM stdin;
\.


--
-- Data for Name: song; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.song (song_id, album_id, title, duration, lyrics, release_date) FROM stdin;
34	\N	Apt. 213	00:04:26	\N	2024-05-17
35	\N	idk	00:03:10	\N	2024-06-14
36	\N	Cabaret	00:04:07	\N	2024-07-31
37	\N	Bleeding Love	00:03:41	\N	2024-09-27
38	\N	Prototype	00:03:40	\N	2024-10-25
39	\N	Loser	00:03:59	\N	2024-11-29
40	\N	Christmas Gives Me a Stomachache	00:04:32	\N	2024-12-25
43	5	Over It	00:03:30	\N	2025-02-28
41	5	Wake Me Up	00:04:16	\N	2025-02-28
42	5	Nightmare	00:03:34	\N	2025-02-28
44	5	Carry My Name	00:03:29	\N	2025-02-28
\.


--
-- Data for Name: lyrics; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.lyrics (lyrics_id, song_id, full_lyrics) FROM stdin;
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.media (media_id, title, media_type, url, description, song_id) FROM stdin;
4	neversleep. Linktree	linktree	https://linktr.ee/neversleep.band	Central hub for neversleep.'s music, videos, and social media links.	\N
5	neversleep. Linktree	linktree	https://linktr.ee/neversleep.band	Central hub for neversleep.'s music, videos, and social media links.	\N
6	YouTube	social	https://youtube.com/@neversleep.videos	Official YouTube channel	\N
7	TikTok	social	https://tiktok.com/@neversleep.band	Follow neversleep. on TikTok	\N
8	Instagram	social	https://instagram.com/neversleep.band	Follow neversleep. on Instagram	\N
9	Spotify	music_platform	https://open.spotify.com/artist/1eOwf6maQxSNFp0x6k7Uey?si=NMz7bwW8RXCD61ofJHr_Tw&nd=1&dlsi=1efa0f6ff48c4b1c	neversleep. on Spotify	\N
10	Apple Music	music_platform	https://music.apple.com/us/artist/neversleep/1741459322	neversleep. on Apple Music	\N
11	Cabaret (Official Video)	video	https://www.youtube.com/watch?v=1-ad4a3l1Jg	Official video for Cabaret	36
12	Apt. 213 (Official Video)	video	https://www.youtube.com/watch?v=oL1aUwFWuxo	Official video for Apt. 213	34
13	Protocol (Official Video)	video	https://www.youtube.com/watch?v=FIYggPv9dNQ	Official video for Protocol	\N
14	Loser (Official Video)	video	https://www.youtube.com/watch?v=RK5cbhotFgE	Official video for Loser	39
15	idk (Official Video)	video	https://www.youtube.com/watch?v=ew7ctuiVu-U	Official video for idk	35
16	Bleeding Love (Official Video)	video	https://www.youtube.com/watch?v=Y0qEJHZIwnw	Official video for Bleeding Love	37
17	Christmas Gives Me a Stomachache (Official Video)	video	https://www.youtube.com/watch?v=1T5mJfUQf_U	Official video for Christmas Gives Me a Stomachache	40
18	Wake Me Up (Official Video)	video	https://www.youtube.com/watch?v=T-5g6f2jUXw	Official video for Wake Me Up	41
19	Carry My Name (Official Video)	video	https://www.youtube.com/watch?v=YvmpooHrnuw	Official video for Carry My Name	44
20	Nightmare (Official Video)	video	https://www.youtube.com/watch?v=qxCACNl9PA8	Official video for Nightmare	42
21	Over It (Official Video)	video	https://www.youtube.com/watch?v=Ck2KuMd62wY	Official video for Over It	43
22	Spotify	music_platform	https://open.spotify.com/track/7bxxmGeaNgtuaVEYmMjvax?si=5b1076d23b104e00	Loser	\N
23	Spotify	music_platform	https://open.spotify.com/track/05wobzRbvdcoC0E2MgCtgc?si=bfc595ff1f7f42ab	Apt. 213	\N
24	Spotify	music_platform	https://open.spotify.com/track/1575w4XTnxQ7K0CuZWtCuf?si=a6be427578c24bad	idk	\N
25	Spotify	music_platform	https://open.spotify.com/track/6IjC4Y05WNgG449UKNJFbW?si=fafb0e203fcf4409	Over It	\N
26	Spotify	music_platform	https://open.spotify.com/track/7n8b0mgXsd4GvJTRfuuYoT?si=f15af5bbed274455	Wake Me Up	\N
27	Spotify	music_platform	https://open.spotify.com/track/0LxQ4JfG8H374VQINNDorW?si=eba97dd4e1c8445f	Bleeding Love	\N
28	Spotify	music_platform	https://open.spotify.com/track/6m8VVMEJRP7wQDZZd0zved?si=b60c73fae165463e	Cabaret	\N
29	Spotify	music_platform	https://open.spotify.com/track/0n6WiKpMwgEMQ33OvDEsA9?si=3e45e17ecca442ef	Carry My Name	\N
30	Spotify	music_platform	https://open.spotify.com/track/7ruROPzZQ1dFh56DZ0q6x6?si=9ff8a93243264899	Prototype	\N
31	Spotify	music_platform	https://open.spotify.com/track/25tEjVteZFQFykJYRFEzVY?si=d7a43a3ff1a340eb	Nightmare	\N
32	Spotify	music_platform	https://open.spotify.com/artist/1eOwf6maQxSNFp0x6k7Uey/discography/all	Christmas Gives Me a Stomachache	\N
33	Spotify	music_platform	https://open.spotify.com/artist/1eOwf6maQxSNFp0x6k7Uey/discography/all	Acoustic / Christmas	\N
34	Apple Music	music_platform	https://music.apple.com/us/song/carry-my-name/1796573619	Carry My Name	\N
35	Apple Music	music_platform	https://music.apple.com/us/song/over-it/1796573618	Over It	\N
36	Apple Music	music_platform	https://music.apple.com/us/song/nightmare/1796573617	Nightmare	\N
37	Apple Music	music_platform	https://music.apple.com/us/song/wake-me-up/1796573616	Wake Me Up	\N
38	Apple Music	music_platform	https://music.apple.com/us/song/christmas-gives-me-a-stomachache/1785570295	Christmas Gives Me a Stomachache	\N
39	Apple Music	music_platform	https://music.apple.com/us/song/loser/1780519637	Loser	\N
40	Apple Music	music_platform	https://music.apple.com/us/song/prototype/1772966929	Prototype	\N
41	Apple Music	music_platform	https://music.apple.com/us/song/bleeding-love/1768616041	Bleeding Love	\N
42	Apple Music	music_platform	https://music.apple.com/us/song/cabaret/1758523817	Cabaret	\N
43	Apple Music	music_platform	https://music.apple.com/us/song/idk/1749251878	idk	\N
44	Apple Music	music_platform	https://music.apple.com/us/song/apt-213/1741500946	Apt. 213	\N
45	Apple Music	music_platform	https://music.apple.com/us/song/christmas-gives-me-a-stomachache-acoustic/1792027428	Christmas Gives Me a Stomachache (Acoustic)	\N
\.


--
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.message (message_id, name, email, subject, message, sent_at) FROM stdin;
\.


--
-- Data for Name: show; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.show (show_id, venue, city, date, ticket_url, description) FROM stdin;
1	The Echo	Los Angeles, CA	2025-06-15	\N	w/special guests Dead Stereo and Ivory Ritual
2	Bottom Lounge	Chicago, IL	2025-07-03	\N	All ages welcome - Doors open at 7pm
\.


--
-- Data for Name: photo_gallery; Type: TABLE DATA; Schema: public; Owner: melisaedmunds
--

COPY public.photo_gallery (photo_id, title, url, caption, upload_date, show_id, fan_id) FROM stdin;
\.


--
-- Name: album_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.album_album_id_seq', 9, true);


--
-- Name: band_band_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.band_band_id_seq', 9, true);


--
-- Name: band_member_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.band_member_member_id_seq', 10, true);


--
-- Name: blog_post_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.blog_post_post_id_seq', 1, false);


--
-- Name: fan_fan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.fan_fan_id_seq', 1, false);


--
-- Name: lyrics_lyrics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.lyrics_lyrics_id_seq', 1, false);


--
-- Name: media_media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.media_media_id_seq', 45, true);


--
-- Name: message_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.message_message_id_seq', 1, false);


--
-- Name: photo_gallery_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.photo_gallery_photo_id_seq', 1, false);


--
-- Name: show_show_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.show_show_id_seq', 2, true);


--
-- Name: song_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: melisaedmunds
--

SELECT pg_catalog.setval('public.song_song_id_seq', 55, true);


--
-- PostgreSQL database dump complete
--

