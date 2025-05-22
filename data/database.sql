--
-- PostgreSQL database dump
--

-- Dumped from database version 13.20
-- Dumped by pg_dump version 13.20

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

DROP TABLE public.teams;
DROP TABLE public.results;
DROP TABLE public.rankings;
DROP TABLE public.matches;
DROP TABLE public.fun_facts;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: fun_facts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fun_facts (
    fact_id integer NOT NULL,
    team_id integer NOT NULL,
    fun_fact text,
    value integer NOT NULL
);


--
-- Name: matches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.matches (
    match_id integer NOT NULL,
    tournament text,
    match_date text
);


--
-- Name: rankings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rankings (
    team_id integer NOT NULL,
    algorithm text,
    as_of_date text,
    rank integer
);


--
-- Name: results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.results (
    match_id integer NOT NULL,
    team_id integer NOT NULL,
    opponent_id integer NOT NULL,
    points_for integer,
    points_against integer
);


--
-- Name: teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text
);


--
-- Data for Name: fun_facts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fun_facts (fact_id, team_id, fun_fact, value) FROM stdin;
1	30	The team that played the most games	32
2	6	The team with the largest point differential	130
3	49	The team with the smallest point differential	-119
4	235	The team with the most points	373
\.


--
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.matches (match_id, tournament, match_date) FROM stdin;
1	DIII-Grand-Prix-2025	2025-02-08
2	DIII-Grand-Prix-2025	2025-02-08
3	DIII-Grand-Prix-2025	2025-02-08
4	DIII-Grand-Prix-2025	2025-02-09
5	DIII-Grand-Prix-2025	2025-02-09
6	DIII-Grand-Prix-2025	2025-02-09
7	D-III-River-City-Showdown-2025	2025-03-01
8	D-III-River-City-Showdown-2025	2025-03-01
9	D-III-River-City-Showdown-2025	2025-03-01
10	D-III-River-City-Showdown-2025	2025-03-01
11	D-III-River-City-Showdown-2025	2025-03-02
12	D-III-River-City-Showdown-2025	2025-03-02
13	Huckin-in-the-Hills-XI	2025-03-01
14	Huckin-in-the-Hills-XI	2025-03-01
15	Huckin-in-the-Hills-XI	2025-03-01
16	Huckin-in-the-Hills-XI	2025-03-02
17	Huckin-in-the-Hills-XI	2025-03-02
18	Spring-Spook	2025-03-15
19	Spring-Spook	2025-03-15
20	Spring-Spook	2025-03-16
21	Spring-Spook	2025-03-16
22	Spring-Spook	2025-03-16
23	T-Town-Throwdown-XX	2025-01-25
24	T-Town-Throwdown-XX	2025-01-25
25	T-Town-Throwdown-XX	2025-01-25
26	T-Town-Throwdown-XX	2025-01-25
27	T-Town-Throwdown-XX	2025-01-26
28	T-Town-Throwdown-XX	2025-01-26
29	T-Town-Throwdown-XX	2025-01-26
30	T-Town-Throwdown-XX	2025-01-26
31	Queen-City-Tune-Up-2025	2025-02-15
32	Queen-City-Tune-Up-2025	2025-02-15
33	Queen-City-Tune-Up-2025	2025-02-15
34	Queen-City-Tune-Up-2025	2025-02-16
35	Queen-City-Tune-Up-2025	2025-02-16
36	Mardi-Gras-XXXVII	2025-02-22
37	Mardi-Gras-XXXVII	2025-02-22
38	Mardi-Gras-XXXVII	2025-02-22
39	Mardi-Gras-XXXVII	2025-02-22
40	Huck-Finn-2025	2025-03-29
41	Huck-Finn-2025	2025-03-29
42	Huck-Finn-2025	2025-03-29
43	Huck-Finn-2025	2025-03-29
44	Huck-Finn-2025	2025-03-30
45	Huck-Finn-2025	2025-03-30
46	Huck-Finn-2025	2025-03-30
47	T-Town-Throwdown-XX	2025-01-25
48	T-Town-Throwdown-XX	2025-01-25
49	T-Town-Throwdown-XX	2025-01-25
50	T-Town-Throwdown-XX	2025-01-25
51	T-Town-Throwdown-XX	2025-01-26
52	T-Town-Throwdown-XX	2025-01-26
53	T-Town-Throwdown-XX	2025-01-26
54	2025-Annual-Magic-City-Invite	2025-03-22
55	2025-Annual-Magic-City-Invite	2025-03-22
56	2025-Annual-Magic-City-Invite	2025-03-22
57	2025-Annual-Magic-City-Invite	2025-03-22
58	2025-Annual-Magic-City-Invite	2025-03-23
59	2025-Annual-Magic-City-Invite	2025-03-23
60	2025-Annual-Magic-City-Invite	2025-03-23
61	T-Town-Throwdown-XX	2025-01-25
62	T-Town-Throwdown-XX	2025-01-25
63	T-Town-Throwdown-XX	2025-01-25
64	T-Town-Throwdown-XX	2025-01-26
65	T-Town-Throwdown-XX	2025-01-26
66	2025-Annual-Magic-City-Invite	2025-03-22
67	2025-Annual-Magic-City-Invite	2025-03-22
68	2025-Annual-Magic-City-Invite	2025-03-22
69	2025-Annual-Magic-City-Invite	2025-03-22
70	2025-Annual-Magic-City-Invite	2025-03-23
71	2025-Annual-Magic-City-Invite	2025-03-23
72	2025-Annual-Magic-City-Invite	2025-03-23
73	Florida-Warm-Up-2025	2025-01-31
74	Florida-Warm-Up-2025	2025-01-31
75	Florida-Warm-Up-2025	2025-01-31
76	Florida-Warm-Up-2025	2025-02-01
77	Florida-Warm-Up-2025	2025-02-01
78	Florida-Warm-Up-2025	2025-02-01
79	Florida-Warm-Up-2025	2025-02-02
80	Queen-City-Tune-Up-2025	2025-02-15
81	Queen-City-Tune-Up-2025	2025-02-15
82	Queen-City-Tune-Up-2025	2025-02-15
83	Queen-City-Tune-Up-2025	2025-02-16
84	Queen-City-Tune-Up-2025	2025-02-16
85	Mid-Atlantic-Warm-Up-2025	2025-01-25
86	Mid-Atlantic-Warm-Up-2025	2025-01-25
87	Mid-Atlantic-Warm-Up-2025	2025-01-25
88	Mid-Atlantic-Warm-Up-2025	2025-01-25
89	Mid-Atlantic-Warm-Up-2025	2025-01-26
90	Mid-Atlantic-Warm-Up-2025	2025-01-26
91	Monument-Melee-2025	2025-02-22
92	Monument-Melee-2025	2025-02-22
93	Monument-Melee-2025	2025-02-22
94	Monument-Melee-2025	2025-02-23
95	Monument-Melee-2025	2025-02-23
96	Monument-Melee-2025	2025-02-23
97	Atlantic-Coast-Open-2025	2025-03-22
98	Atlantic-Coast-Open-2025	2025-03-22
99	Atlantic-Coast-Open-2025	2025-03-22
100	Atlantic-Coast-Open-2025	2025-03-22
101	Atlantic-Coast-Open-2025	2025-03-23
102	Atlantic-Coast-Open-2025	2025-03-23
103	Atlantic-Coast-Open-2025	2025-03-23
104	Monument-Melee-2025	2025-02-22
105	Monument-Melee-2025	2025-02-22
106	Monument-Melee-2025	2025-02-22
107	Monument-Melee-2025	2025-02-23
108	Monument-Melee-2025	2025-02-23
109	Atlantic-Coast-Open-2025	2025-03-22
110	Atlantic-Coast-Open-2025	2025-03-22
111	Atlantic-Coast-Open-2025	2025-03-22
112	Atlantic-Coast-Open-2025	2025-03-22
113	Atlantic-Coast-Open-2025	2025-03-23
114	Atlantic-Coast-Open-2025	2025-03-23
115	Grand-Northeast-Kickoff-2025	2025-03-08
116	Grand-Northeast-Kickoff-2025	2025-03-08
117	Grand-Northeast-Kickoff-2025	2025-03-08
118	Grand-Northeast-Kickoff-2025	2025-03-08
119	Grand-Northeast-Kickoff-2025	2025-03-09
120	Grand-Northeast-Kickoff-2025	2025-03-09
121	Grand-Northeast-Kickoff-2025	2025-03-09
122	New-England-Open-2025	2025-03-29
123	New-England-Open-2025	2025-03-29
124	New-England-Open-2025	2025-03-29
125	New-England-Open-2025	2025-03-29
126	New-England-Open-2025	2025-03-30
127	New-England-Open-2025	2025-03-30
128	New-England-Open-2025	2025-03-30
129	Huckfest-2025	2025-03-29
130	Huckfest-2025	2025-03-29
131	Huckfest-2025	2025-03-29
132	Huckfest-2025	2025-03-29
133	Huckfest-2025	2025-03-30
134	Huckfest-2025	2025-03-30
135	Huckfest-2025	2025-03-30
136	Carolina-Kickoff-mens-2025	2025-02-01
137	Carolina-Kickoff-mens-2025	2025-02-01
138	Carolina-Kickoff-mens-2025	2025-02-01
139	Carolina-Kickoff-mens-2025	2025-02-02
140	Carolina-Kickoff-mens-2025	2025-02-02
141	Carolina-Kickoff-mens-2025	2025-02-02
142	Easterns-Qualifier-2025	2025-02-22
143	Easterns-Qualifier-2025	2025-02-22
144	Easterns-Qualifier-2025	2025-02-22
145	Easterns-Qualifier-2025	2025-02-22
146	Easterns-Qualifier-2025	2025-02-23
147	Easterns-Qualifier-2025	2025-02-23
148	Easterns-Qualifier-2025	2025-02-23
149	Atlantic-Coast-Open-2025	2025-03-22
150	Atlantic-Coast-Open-2025	2025-03-22
151	Atlantic-Coast-Open-2025	2025-03-22
152	Atlantic-Coast-Open-2025	2025-03-23
153	Atlantic-Coast-Open-2025	2025-03-23
154	Atlantic-Coast-Open-2025	2025-03-23
155	Needle-in-a-Ho-Stack-2025	2025-03-29
156	Needle-in-a-Ho-Stack-2025	2025-03-29
157	Needle-in-a-Ho-Stack-2025	2025-03-29
158	Needle-in-a-Ho-Stack-2025	2025-03-30
159	Needle-in-a-Ho-Stack-2025	2025-03-30
160	Needle-in-a-Ho-Stack-2025	2025-03-30
161	New-Year-Fest-2025	2025-01-25
162	New-Year-Fest-2025	2025-01-25
163	New-Year-Fest-2025	2025-01-25
164	New-Year-Fest-2025	2025-01-25
165	New-Year-Fest-2025	2025-01-26
166	New-Year-Fest-2025	2025-01-26
167	Vice-Presidents-Day-Invite-2025	2025-02-15
168	Vice-Presidents-Day-Invite-2025	2025-02-15
169	Vice-Presidents-Day-Invite-2025	2025-02-15
170	Vice-Presidents-Day-Invite-2025	2025-02-16
171	Vice-Presidents-Day-Invite-2025	2025-02-16
172	Vice-Presidents-Day-Invite-2025	2025-02-16
173	Sinvite-2025	2025-03-29
174	Sinvite-2025	2025-03-29
175	Sinvite-2025	2025-03-29
176	Sinvite-2025	2025-03-29
177	Sinvite-2025	2025-03-30
178	Sinvite-2025	2025-03-30
179	Vice-Presidents-Day-Invite-2025	2025-02-15
180	Vice-Presidents-Day-Invite-2025	2025-02-15
181	Vice-Presidents-Day-Invite-2025	2025-02-15
182	Vice-Presidents-Day-Invite-2025	2025-02-16
183	Vice-Presidents-Day-Invite-2025	2025-02-16
184	Mens-Centex-2025	2025-03-15
185	Mens-Centex-2025	2025-03-15
186	Mens-Centex-2025	2025-03-15
187	Mens-Centex-2025	2025-03-15
188	Mens-Centex-2025	2025-03-16
189	Mens-Centex-2025	2025-03-16
190	Mens-Centex-2025	2025-03-16
191	New-Year-Fest-2025	2025-01-25
192	New-Year-Fest-2025	2025-01-25
193	New-Year-Fest-2025	2025-01-26
194	New-Year-Fest-2025	2025-01-26
195	Mardi-Gras-XXXVII	2025-02-22
196	Mardi-Gras-XXXVII	2025-02-22
197	Mardi-Gras-XXXVII	2025-02-22
198	Mens-Centex-2025	2025-03-15
199	Mens-Centex-2025	2025-03-15
200	Mens-Centex-2025	2025-03-15
201	Mens-Centex-2025	2025-03-15
202	Mens-Centex-2025	2025-03-16
203	Mens-Centex-2025	2025-03-16
204	Mens-Centex-2025	2025-03-16
205	Garden-State-2025	2025-03-01
206	Garden-State-2025	2025-03-01
207	Garden-State-2025	2025-03-01
208	Garden-State-2025	2025-03-02
209	Garden-State-2025	2025-03-02
210	Northeast-Classic-2025	2025-03-29
211	Northeast-Classic-2025	2025-03-29
212	Northeast-Classic-2025	2025-03-29
213	Northeast-Classic-2025	2025-03-29
214	Northeast-Classic-2025	2025-03-30
215	Northeast-Classic-2025	2025-03-30
216	Butler-Spring-Fling-2025	2025-03-23
217	Butler-Spring-Fling-2025	2025-03-23
218	Butler-Spring-Fling-2025	2025-03-23
219	Corny-Classic-College-2025	2025-03-29
220	Corny-Classic-College-2025	2025-03-29
221	Corny-Classic-College-2025	2025-03-29
222	Corny-Classic-College-2025	2025-03-30
223	Corny-Classic-College-2025	2025-03-30
224	Corny-Classic-College-2025	2025-03-30
225	Corny-Classic-College-2025	2025-03-30
226	Queen-City-Tune-Up-2025	2025-02-15
227	Queen-City-Tune-Up-2025	2025-02-15
228	Queen-City-Tune-Up-2025	2025-02-15
229	Queen-City-Tune-Up-2025	2025-02-16
230	Queen-City-Tune-Up-2025	2025-02-16
231	Easterns-Qualifier-2025	2025-02-22
232	Easterns-Qualifier-2025	2025-02-22
233	Easterns-Qualifier-2025	2025-02-22
234	Easterns-Qualifier-2025	2025-02-22
235	Easterns-Qualifier-2025	2025-02-23
236	Easterns-Qualifier-2025	2025-02-23
237	Easterns-Qualifier-2025	2025-02-23
238	Tally-Classic-XIX	2025-03-15
239	Tally-Classic-XIX	2025-03-15
240	Tally-Classic-XIX	2025-03-15
241	Tally-Classic-XIX	2025-03-15
242	Mardi-Gras-XXXVII	2025-02-22
243	Mardi-Gras-XXXVII	2025-02-22
244	Mardi-Gras-XXXVII	2025-02-22
245	Mardi-Gras-XXXVII	2025-02-22
246	Florida-Warm-Up-2025-Weekend-2	2025-03-01
247	Florida-Warm-Up-2025-Weekend-2	2025-03-01
248	Florida-Warm-Up-2025-Weekend-2	2025-03-02
249	Florida-Warm-Up-2025-Weekend-2	2025-03-02
250	Florida-Warm-Up-2025-Weekend-2	2025-03-02
251	Tally-Classic-XIX	2025-03-15
252	Tally-Classic-XIX	2025-03-15
253	Florida-Warm-Up-2025-Weekend-2	2025-03-01
254	Florida-Warm-Up-2025-Weekend-2	2025-03-01
255	Florida-Warm-Up-2025-Weekend-2	2025-03-02
256	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
257	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
258	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
259	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
260	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
261	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
262	Grand-Rapids-Invite-2025	2025-03-15
263	Grand-Rapids-Invite-2025	2025-03-15
264	Grand-Rapids-Invite-2025	2025-03-15
265	Grand-Rapids-Invite-2025	2025-03-16
266	Grand-Rapids-Invite-2025	2025-03-16
267	Grand-Rapids-Invite-2025	2025-03-16
268	Corny-Classic-College-2025	2025-03-29
269	Corny-Classic-College-2025	2025-03-29
270	Corny-Classic-College-2025	2025-03-29
271	Corny-Classic-College-2025	2025-03-29
272	Corny-Classic-College-2025	2025-03-30
273	Corny-Classic-College-2025	2025-03-30
274	Grand-Northeast-Kickoff-2025	2025-03-08
275	Grand-Northeast-Kickoff-2025	2025-03-08
276	Grand-Northeast-Kickoff-2025	2025-03-08
277	Grand-Northeast-Kickoff-2025	2025-03-08
278	Grand-Northeast-Kickoff-2025	2025-03-09
279	Grand-Northeast-Kickoff-2025	2025-03-09
280	PBR-State-Open	2025-03-22
281	PBR-State-Open	2025-03-22
282	PBR-State-Open	2025-03-22
283	PBR-State-Open	2025-03-23
284	PBR-State-Open	2025-03-23
285	PBR-State-Open	2025-03-23
286	Easterns-2025	2025-03-29
287	Easterns-2025	2025-03-29
288	Easterns-2025	2025-03-29
289	Easterns-2025	2025-03-29
290	Easterns-2025	2025-03-30
291	Easterns-2025	2025-03-30
292	Easterns-2025	2025-03-30
293	Big-D-in-Little-D-2025	2025-02-01
294	Big-D-in-Little-D-2025	2025-02-01
295	Big-D-in-Little-D-2025	2025-02-01
296	Big-D-in-Little-D-2025	2025-02-02
297	Big-D-in-Little-D-2025	2025-02-02
298	Mens-Centex-2025	2025-03-15
299	Mens-Centex-2025	2025-03-15
300	Mens-Centex-2025	2025-03-15
301	Mens-Centex-2025	2025-03-15
302	Mens-Centex-2025	2025-03-16
303	Mens-Centex-2025	2025-03-16
304	Mens-Centex-2025	2025-03-16
305	Huckfest-2025	2025-03-29
306	Huckfest-2025	2025-03-29
307	Huckfest-2025	2025-03-29
308	Huckfest-2025	2025-03-29
309	Huckfest-2025	2025-03-30
310	PBR-State-Open	2025-03-22
311	PBR-State-Open	2025-03-22
312	PBR-State-Open	2025-03-22
313	PBR-State-Open	2025-03-23
314	PBR-State-Open	2025-03-23
315	T-Town-Throwdown-XX	2025-01-25
316	T-Town-Throwdown-XX	2025-01-25
317	T-Town-Throwdown-XX	2025-01-25
318	T-Town-Throwdown-XX	2025-01-26
319	T-Town-Throwdown-XX	2025-01-26
320	T-Town-Throwdown-XX	2025-01-26
321	Bulldog-Brawl	2025-02-08
322	Bulldog-Brawl	2025-02-08
323	Bulldog-Brawl	2025-02-08
324	Bulldog-Brawl	2025-02-08
325	Bulldog-Brawl	2025-02-09
326	Bulldog-Brawl	2025-02-09
327	Bulldog-Brawl	2025-02-09
328	Tally-Classic-XIX	2025-03-15
329	Tally-Classic-XIX	2025-03-15
330	Tally-Classic-XIX	2025-03-15
331	Big-Sky-Brawl-2025	2025-03-01
332	Big-Sky-Brawl-2025	2025-03-01
333	Big-Sky-Brawl-2025	2025-03-01
334	Big-Sky-Brawl-2025	2025-03-02
335	Big-Sky-Brawl-2025	2025-03-02
336	Big-Sky-Brawl-2025	2025-03-02
337	Mens-Centex-2025	2025-03-15
338	Mens-Centex-2025	2025-03-15
339	Mens-Centex-2025	2025-03-15
340	Mens-Centex-2025	2025-03-16
341	Mens-Centex-2025	2025-03-16
342	East-Coast-Invite-2025	2025-03-29
343	East-Coast-Invite-2025	2025-03-29
344	East-Coast-Invite-2025	2025-03-29
345	East-Coast-Invite-2025	2025-03-29
346	East-Coast-Invite-2025	2025-03-30
347	East-Coast-Invite-2025	2025-03-30
348	East-Coast-Invite-2025	2025-03-30
349	Mid-Atlantic-Warm-Up-2025	2025-01-25
350	Mid-Atlantic-Warm-Up-2025	2025-01-25
351	Mid-Atlantic-Warm-Up-2025	2025-01-25
352	Mid-Atlantic-Warm-Up-2025	2025-01-25
353	Mid-Atlantic-Warm-Up-2025	2025-01-26
354	Mid-Atlantic-Warm-Up-2025	2025-01-26
355	Mid-Atlantic-Warm-Up-2025	2025-01-26
356	UMass-Invite-2025	2025-03-01
357	UMass-Invite-2025	2025-03-01
358	UMass-Invite-2025	2025-03-01
359	UMass-Invite-2025	2025-03-01
360	UMass-Invite-2025	2025-03-02
361	PBR-State-Open	2025-03-22
362	PBR-State-Open	2025-03-22
363	PBR-State-Open	2025-03-23
364	PBR-State-Open	2025-03-23
365	Ocean-State-Invite-2025	2025-03-29
366	Ocean-State-Invite-2025	2025-03-29
367	Ocean-State-Invite-2025	2025-03-29
368	Ocean-State-Invite-2025	2025-03-29
369	Ocean-State-Invite-2025	2025-03-30
370	Garden-State-2025	2025-03-01
371	Garden-State-2025	2025-03-01
372	Garden-State-2025	2025-03-01
373	Garden-State-2025	2025-03-01
374	Garden-State-2025	2025-03-02
375	Garden-State-2025	2025-03-02
376	Garden-State-2025	2025-03-02
377	PBR-State-Open	2025-03-22
378	PBR-State-Open	2025-03-23
379	PBR-State-Open	2025-03-23
380	New-England-Open-2025	2025-03-29
381	New-England-Open-2025	2025-03-29
382	New-England-Open-2025	2025-03-29
383	New-England-Open-2025	2025-03-29
384	New-England-Open-2025	2025-03-30
385	New-England-Open-2025	2025-03-30
386	New-England-Open-2025	2025-03-30
387	Corny-Classic-College-2025	2025-03-29
388	Corny-Classic-College-2025	2025-03-29
389	Corny-Classic-College-2025	2025-03-30
390	Corny-Classic-College-2025	2025-03-30
391	D-III-River-City-Showdown-2025	2025-03-01
392	D-III-River-City-Showdown-2025	2025-03-01
393	D-III-River-City-Showdown-2025	2025-03-01
394	D-III-River-City-Showdown-2025	2025-03-01
395	D-III-River-City-Showdown-2025	2025-03-02
396	D-III-River-City-Showdown-2025	2025-03-02
397	D-III-River-City-Showdown-2025	2025-03-02
398	PBR-State-Open	2025-03-22
399	PBR-State-Open	2025-03-22
400	New-England-Open-2025	2025-03-29
401	New-England-Open-2025	2025-03-29
402	New-England-Open-2025	2025-03-29
403	New-England-Open-2025	2025-03-29
404	New-England-Open-2025	2025-03-30
405	Santa-Barbara-Invite-2025	2025-01-24
406	Santa-Barbara-Invite-2025	2025-01-24
407	Santa-Barbara-Invite-2025	2025-01-25
408	Santa-Barbara-Invite-2025	2025-01-25
409	Santa-Barbara-Invite-2025	2025-01-25
410	Santa-Barbara-Invite-2025	2025-01-25
411	Florida-Warm-Up-2025	2025-01-31
412	Florida-Warm-Up-2025	2025-01-31
413	Florida-Warm-Up-2025	2025-01-31
414	Florida-Warm-Up-2025	2025-01-31
415	Florida-Warm-Up-2025	2025-02-01
416	Florida-Warm-Up-2025	2025-02-01
417	Florida-Warm-Up-2025	2025-02-01
418	Florida-Warm-Up-2025	2025-02-01
419	Northwest-Challenge-2025-mens	2025-03-21
420	Northwest-Challenge-2025-mens	2025-03-21
421	Northwest-Challenge-2025-mens	2025-03-21
422	Northwest-Challenge-2025-mens	2025-03-22
423	Northwest-Challenge-2025-mens	2025-03-22
424	Northwest-Challenge-2025-mens	2025-03-22
425	New-Year-Fest-2025	2025-01-25
426	New-Year-Fest-2025	2025-01-25
427	New-Year-Fest-2025	2025-01-25
428	New-Year-Fest-2025	2025-01-25
429	Snow-Melt-2025	2025-02-28
430	Snow-Melt-2025	2025-03-01
431	Snow-Melt-2025	2025-03-01
432	Snow-Melt-2025	2025-03-01
433	Snow-Melt-2025	2025-03-01
434	Sinvite-2025	2025-03-29
435	Sinvite-2025	2025-03-29
436	Sinvite-2025	2025-03-29
437	Santa-Barbara-Invite-2025	2025-01-25
438	Santa-Barbara-Invite-2025	2025-01-25
439	Santa-Barbara-Invite-2025	2025-01-26
440	Santa-Barbara-Invite-2025	2025-01-26
441	Santa-Barbara-Invite-2025	2025-01-26
442	Stanford-Invite-2025-Mens	2025-03-08
443	Stanford-Invite-2025-Mens	2025-03-08
444	Stanford-Invite-2025-Mens	2025-03-08
445	Stanford-Invite-2025-Mens	2025-03-09
446	Stanford-Invite-2025-Mens	2025-03-09
447	Stanford-Invite-2025-Mens	2025-03-09
448	Northwest-Challenge-2025-mens	2025-03-22
449	Northwest-Challenge-2025-mens	2025-03-22
450	Northwest-Challenge-2025-mens	2025-03-22
451	Northwest-Challenge-2025-mens	2025-03-23
452	Northwest-Challenge-2025-mens	2025-03-23
453	Northwest-Challenge-2025-mens	2025-03-23
454	Stanford-Open-Mens	2025-02-08
455	Stanford-Open-Mens	2025-02-08
456	Stanford-Open-Mens	2025-02-08
457	Stanford-Open-Mens	2025-02-09
458	Stanford-Open-Mens	2025-02-09
459	Stanford-Open-Mens	2025-02-09
460	Stanford-Invite-2025-Mens	2025-03-08
461	Stanford-Invite-2025-Mens	2025-03-08
462	Stanford-Invite-2025-Mens	2025-03-08
463	Stanford-Invite-2025-Mens	2025-03-09
464	Stanford-Invite-2025-Mens	2025-03-09
465	Northwest-Challenge-D3	2025-03-29
466	Northwest-Challenge-D3	2025-03-29
467	Florida-Warm-Up-2025	2025-01-31
468	Florida-Warm-Up-2025	2025-01-31
469	Florida-Warm-Up-2025	2025-01-31
470	Florida-Warm-Up-2025	2025-02-01
471	Florida-Warm-Up-2025	2025-02-01
472	Florida-Warm-Up-2025	2025-02-01
473	Florida-Warm-Up-2025	2025-02-02
474	Florida-Warm-Up-2025	2025-02-02
475	Smoky-Mountain-Invite-2025	2025-03-01
476	Smoky-Mountain-Invite-2025	2025-03-01
477	Smoky-Mountain-Invite-2025	2025-03-01
478	Smoky-Mountain-Invite-2025	2025-03-01
479	Smoky-Mountain-Invite-2025	2025-03-02
480	Smoky-Mountain-Invite-2025	2025-03-02
481	Smoky-Mountain-Invite-2025	2025-03-02
482	Easterns-2025	2025-03-29
483	Easterns-2025	2025-03-29
484	Easterns-2025	2025-03-29
485	Easterns-2025	2025-03-29
486	Easterns-2025	2025-03-30
487	Easterns-2025	2025-03-30
488	Easterns-2025	2025-03-30
489	Garden-State-2025	2025-03-01
490	Garden-State-2025	2025-03-01
491	Garden-State-2025	2025-03-01
492	Garden-State-2025	2025-03-02
493	Grand-Northeast-Kickoff-2025	2025-03-08
494	Grand-Northeast-Kickoff-2025	2025-03-08
495	Grand-Northeast-Kickoff-2025	2025-03-09
496	Grand-Northeast-Kickoff-2025	2025-03-09
497	Grand-Northeast-Kickoff-2025	2025-03-09
498	Huckin-in-the-Hills-XI	2025-03-01
499	Huckin-in-the-Hills-XI	2025-03-01
500	Huckin-in-the-Hills-XI	2025-03-02
501	Huckin-in-the-Hills-XI	2025-03-02
502	Butler-Spring-Fling-2025	2025-03-23
503	Butler-Spring-Fling-2025	2025-03-23
504	Corny-Classic-College-2025	2025-03-29
505	Corny-Classic-College-2025	2025-03-29
506	Corny-Classic-College-2025	2025-03-29
507	Corny-Classic-College-2025	2025-03-29
508	Pres-Day-Quals-men	2025-02-01
509	Pres-Day-Quals-men	2025-02-01
510	Pres-Day-Quals-men	2025-02-01
511	Pres-Day-Quals-men	2025-02-02
512	Pres-Day-Quals-men	2025-02-02
513	Pac-Con-2025	2025-01-25
514	Pac-Con-2025	2025-01-25
515	Pac-Con-2025	2025-01-25
516	Pac-Con-2025	2025-01-26
517	Pac-Con-2025	2025-01-26
518	Pac-Con-2025	2025-01-26
519	Stanford-Open-Mens	2025-02-08
520	Stanford-Open-Mens	2025-02-08
521	Stanford-Open-Mens	2025-02-09
522	Stanford-Open-Mens	2025-02-09
523	Stanford-Open-Mens	2025-02-09
524	Silicon-Valley-Rally-2025	2025-03-15
525	Silicon-Valley-Rally-2025	2025-03-15
526	Silicon-Valley-Rally-2025	2025-03-15
527	Silicon-Valley-Rally-2025	2025-03-15
528	Silicon-Valley-Rally-2025	2025-03-16
529	Silicon-Valley-Rally-2025	2025-03-16
530	Pres-Day-Quals-men	2025-02-01
531	Pres-Day-Quals-men	2025-02-01
532	Pres-Day-Quals-men	2025-02-01
533	Pres-Day-Quals-men	2025-02-02
534	Pres-Day-Quals-men	2025-02-02
535	Pres-Day-Quals-men	2025-02-02
536	Vice-Presidents-Day-Invite-2025	2025-02-15
537	Vice-Presidents-Day-Invite-2025	2025-02-15
538	Vice-Presidents-Day-Invite-2025	2025-02-16
539	Vice-Presidents-Day-Invite-2025	2025-02-16
540	Santa-Barbara-Invite-2025	2025-01-25
541	Santa-Barbara-Invite-2025	2025-01-25
542	Santa-Barbara-Invite-2025	2025-01-26
543	Santa-Barbara-Invite-2025	2025-01-26
544	Santa-Barbara-Invite-2025	2025-01-26
545	Presidents-Day-Invite-2025	2025-02-15
546	Presidents-Day-Invite-2025	2025-02-15
547	Presidents-Day-Invite-2025	2025-02-16
548	Presidents-Day-Invite-2025	2025-02-16
549	Presidents-Day-Invite-2025	2025-02-16
550	Presidents-Day-Invite-2025	2025-02-16
551	Presidents-Day-Invite-2025	2025-02-17
552	Presidents-Day-Invite-2025	2025-02-17
553	Stanford-Invite-2025-Mens	2025-03-08
554	Stanford-Invite-2025-Mens	2025-03-08
555	Stanford-Invite-2025-Mens	2025-03-09
556	Stanford-Invite-2025-Mens	2025-03-09
557	Easterns-2025	2025-03-29
558	Easterns-2025	2025-03-29
559	Easterns-2025	2025-03-29
560	Easterns-2025	2025-03-29
561	Easterns-2025	2025-03-30
562	Easterns-2025	2025-03-30
563	Easterns-2025	2025-03-30
564	Santa-Barbara-Invite-2025	2025-01-25
565	Santa-Barbara-Invite-2025	2025-01-26
566	Pres-Day-Quals-men	2025-02-01
567	Pres-Day-Quals-men	2025-02-01
568	Pres-Day-Quals-men	2025-02-01
569	Pres-Day-Quals-men	2025-02-02
570	Pres-Day-Quals-men	2025-02-02
571	Stanford-Open-Mens	2025-02-08
572	Stanford-Open-Mens	2025-02-08
573	Stanford-Open-Mens	2025-02-09
574	Stanford-Open-Mens	2025-02-09
575	Pres-Day-Quals-men	2025-02-01
576	Pres-Day-Quals-men	2025-02-01
577	Pres-Day-Quals-men	2025-02-01
578	Pres-Day-Quals-men	2025-02-02
579	Pres-Day-Quals-men	2025-02-02
580	Stanford-Open-Mens	2025-02-08
581	Stanford-Open-Mens	2025-02-09
582	Stanford-Open-Mens	2025-02-09
583	Stanford-Open-Mens	2025-02-09
584	Southwest-Showdown-2025	2025-03-29
585	Southwest-Showdown-2025	2025-03-29
586	Southwest-Showdown-2025	2025-03-29
587	Southwest-Showdown-2025	2025-03-30
588	Southwest-Showdown-2025	2025-03-30
589	Santa-Barbara-Invite-2025	2025-01-25
819	Grand-Rapids-Invite-2025	2025-03-16
590	Santa-Barbara-Invite-2025	2025-01-25
591	Santa-Barbara-Invite-2025	2025-01-26
592	Presidents-Day-Invite-2025	2025-02-15
593	Presidents-Day-Invite-2025	2025-02-15
594	Presidents-Day-Invite-2025	2025-02-15
595	Presidents-Day-Invite-2025	2025-02-16
596	Presidents-Day-Invite-2025	2025-02-16
597	Presidents-Day-Invite-2025	2025-02-16
598	Presidents-Day-Invite-2025	2025-02-16
599	Presidents-Day-Invite-2025	2025-02-17
600	Presidents-Day-Invite-2025	2025-02-17
601	Stanford-Invite-2025-Mens	2025-03-08
602	Stanford-Invite-2025-Mens	2025-03-08
603	Stanford-Invite-2025-Mens	2025-03-08
604	Stanford-Invite-2025-Mens	2025-03-08
605	Stanford-Invite-2025-Mens	2025-03-09
606	Stanford-Invite-2025-Mens	2025-03-09
607	Easterns-2025	2025-03-29
608	Easterns-2025	2025-03-29
609	Easterns-2025	2025-03-29
610	Easterns-2025	2025-03-29
611	Easterns-2025	2025-03-30
612	Easterns-2025	2025-03-30
613	Pres-Day-Quals-men	2025-02-01
614	Pres-Day-Quals-men	2025-02-01
615	Pres-Day-Quals-men	2025-02-02
616	Stanford-Open-Mens	2025-02-08
617	Stanford-Open-Mens	2025-02-09
618	Stanford-Open-Mens	2025-02-09
619	Stanford-Open-Mens	2025-02-09
620	Snow-Melt-2025	2025-03-01
621	Snow-Melt-2025	2025-03-01
622	Snow-Melt-2025	2025-03-01
623	Snow-Melt-2025	2025-03-02
624	Snow-Melt-2025	2025-03-02
625	Snow-Melt-2025	2025-03-02
626	Silicon-Valley-Rally-2025	2025-03-15
627	Silicon-Valley-Rally-2025	2025-03-15
628	Silicon-Valley-Rally-2025	2025-03-15
629	Silicon-Valley-Rally-2025	2025-03-16
630	Silicon-Valley-Rally-2025	2025-03-16
631	Pres-Day-Quals-men	2025-02-01
632	Pres-Day-Quals-men	2025-02-02
633	Pres-Day-Quals-men	2025-02-02
634	Pres-Day-Quals-men	2025-02-02
635	Presidents-Day-Invite-2025	2025-02-15
636	Presidents-Day-Invite-2025	2025-02-16
637	Presidents-Day-Invite-2025	2025-02-16
638	Presidents-Day-Invite-2025	2025-02-16
639	Presidents-Day-Invite-2025	2025-02-17
640	Presidents-Day-Invite-2025	2025-02-17
641	Pres-Day-Quals-men	2025-02-01
642	Pres-Day-Quals-men	2025-02-01
643	Pres-Day-Quals-men	2025-02-02
644	Vice-Presidents-Day-Invite-2025	2025-02-15
645	Vice-Presidents-Day-Invite-2025	2025-02-15
646	Vice-Presidents-Day-Invite-2025	2025-02-15
647	Vice-Presidents-Day-Invite-2025	2025-02-16
648	Vice-Presidents-Day-Invite-2025	2025-02-16
649	Santa-Barbara-Invite-2025	2025-01-25
650	Santa-Barbara-Invite-2025	2025-01-25
651	Santa-Barbara-Invite-2025	2025-01-25
652	Santa-Barbara-Invite-2025	2025-01-26
653	Presidents-Day-Invite-2025	2025-02-15
654	Presidents-Day-Invite-2025	2025-02-15
655	Presidents-Day-Invite-2025	2025-02-16
656	Presidents-Day-Invite-2025	2025-02-16
657	Presidents-Day-Invite-2025	2025-02-17
658	Stanford-Invite-2025-Mens	2025-03-08
659	Stanford-Invite-2025-Mens	2025-03-08
660	Stanford-Invite-2025-Mens	2025-03-09
661	Stanford-Invite-2025-Mens	2025-03-09
662	Northwest-Challenge-2025-mens	2025-03-22
663	Northwest-Challenge-2025-mens	2025-03-22
664	Northwest-Challenge-2025-mens	2025-03-22
665	Northwest-Challenge-2025-mens	2025-03-22
666	Northwest-Challenge-2025-mens	2025-03-23
667	Northwest-Challenge-2025-mens	2025-03-23
668	Pres-Day-Quals-men	2025-02-01
669	Pres-Day-Quals-men	2025-02-01
670	Pres-Day-Quals-men	2025-02-02
671	Pres-Day-Quals-men	2025-02-02
672	Sinvite-2025	2025-03-29
673	Sinvite-2025	2025-03-29
674	Sinvite-2025	2025-03-29
675	Sinvite-2025	2025-03-30
676	Santa-Barbara-Invite-2025	2025-01-26
677	Presidents-Day-Invite-2025	2025-02-15
678	Presidents-Day-Invite-2025	2025-02-15
679	Presidents-Day-Invite-2025	2025-02-16
680	Presidents-Day-Invite-2025	2025-02-16
681	Presidents-Day-Invite-2025	2025-02-16
682	Presidents-Day-Invite-2025	2025-02-17
683	Stanford-Invite-2025-Mens	2025-03-08
684	Stanford-Invite-2025-Mens	2025-03-08
685	Stanford-Invite-2025-Mens	2025-03-08
686	Stanford-Invite-2025-Mens	2025-03-09
687	Stanford-Invite-2025-Mens	2025-03-09
688	Northwest-Challenge-2025-mens	2025-03-22
689	Northwest-Challenge-2025-mens	2025-03-22
690	Northwest-Challenge-2025-mens	2025-03-23
691	Northwest-Challenge-2025-mens	2025-03-23
692	Northwest-Challenge-2025-mens	2025-03-23
693	Pres-Day-Quals-men	2025-02-01
694	Pres-Day-Quals-men	2025-02-01
695	Southwest-Showdown-2025	2025-03-29
696	Southwest-Showdown-2025	2025-03-29
697	Southwest-Showdown-2025	2025-03-29
698	Southwest-Showdown-2025	2025-03-30
699	Southwest-Showdown-2025	2025-03-30
700	Santa-Barbara-Invite-2025	2025-01-25
701	Santa-Barbara-Invite-2025	2025-01-25
702	Santa-Barbara-Invite-2025	2025-01-26
703	Santa-Barbara-Invite-2025	2025-01-26
704	Presidents-Day-Invite-2025	2025-02-15
705	Presidents-Day-Invite-2025	2025-02-16
706	Presidents-Day-Invite-2025	2025-02-16
707	Presidents-Day-Invite-2025	2025-02-16
708	Stanford-Invite-2025-Mens	2025-03-08
709	Stanford-Invite-2025-Mens	2025-03-08
710	Stanford-Invite-2025-Mens	2025-03-08
711	Stanford-Invite-2025-Mens	2025-03-09
712	Stanford-Invite-2025-Mens	2025-03-09
713	Northwest-Challenge-2025-mens	2025-03-22
714	Northwest-Challenge-2025-mens	2025-03-23
715	Pres-Day-Quals-men	2025-02-01
716	Stanford-Open-Mens	2025-02-08
717	Stanford-Open-Mens	2025-02-08
718	Stanford-Open-Mens	2025-02-09
719	Stanford-Open-Mens	2025-02-09
720	Silicon-Valley-Rally-2025	2025-03-15
721	Silicon-Valley-Rally-2025	2025-03-15
722	Silicon-Valley-Rally-2025	2025-03-16
723	Florida-Warm-Up-2025	2025-01-31
724	Florida-Warm-Up-2025	2025-01-31
725	Florida-Warm-Up-2025	2025-02-01
726	Florida-Warm-Up-2025	2025-02-01
727	Florida-Warm-Up-2025	2025-02-02
728	Florida-Warm-Up-2025	2025-02-02
729	Smoky-Mountain-Invite-2025	2025-03-01
730	Smoky-Mountain-Invite-2025	2025-03-01
731	Smoky-Mountain-Invite-2025	2025-03-01
732	Smoky-Mountain-Invite-2025	2025-03-01
733	Smoky-Mountain-Invite-2025	2025-03-02
734	Smoky-Mountain-Invite-2025	2025-03-02
735	Smoky-Mountain-Invite-2025	2025-03-02
736	Easterns-2025	2025-03-29
737	Easterns-2025	2025-03-29
738	Easterns-2025	2025-03-29
739	Easterns-2025	2025-03-30
740	Easterns-2025	2025-03-30
741	Midwest-Throwdown-2025	2025-03-01
742	Midwest-Throwdown-2025	2025-03-01
743	Midwest-Throwdown-2025	2025-03-01
744	Midwest-Throwdown-2025	2025-03-02
745	Midwest-Throwdown-2025	2025-03-02
746	Carolina-Kickoff-mens-2025	2025-02-01
747	Carolina-Kickoff-mens-2025	2025-02-01
748	Carolina-Kickoff-mens-2025	2025-02-01
749	Carolina-Kickoff-mens-2025	2025-02-02
750	Carolina-Kickoff-mens-2025	2025-02-02
751	Gopher-Dome-2025	2025-02-08
752	Gopher-Dome-2025	2025-02-08
753	Gopher-Dome-2025	2025-02-08
754	Gopher-Dome-2025	2025-02-08
755	Gopher-Dome-2025	2025-02-08
756	D-III-River-City-Showdown-2025	2025-03-01
757	D-III-River-City-Showdown-2025	2025-03-01
758	D-III-River-City-Showdown-2025	2025-03-02
759	D-III-River-City-Showdown-2025	2025-03-02
760	D-III-River-City-Showdown-2025	2025-03-02
761	Salt-City-Classic	2025-03-22
762	Salt-City-Classic	2025-03-22
763	Salt-City-Classic	2025-03-22
764	Salt-City-Classic	2025-03-22
765	Salt-City-Classic	2025-03-23
766	Salt-City-Classic	2025-03-23
767	Salt-City-Classic	2025-03-23
768	Mid-Atlantic-Warm-Up-2025	2025-01-25
769	Mid-Atlantic-Warm-Up-2025	2025-01-25
770	Mid-Atlantic-Warm-Up-2025	2025-01-25
771	Mid-Atlantic-Warm-Up-2025	2025-01-26
772	Mid-Atlantic-Warm-Up-2025	2025-01-26
773	Queen-City-Tune-Up-2025	2025-02-15
774	Queen-City-Tune-Up-2025	2025-02-15
775	Queen-City-Tune-Up-2025	2025-02-16
776	East-Coast-Invite-2025	2025-03-29
777	East-Coast-Invite-2025	2025-03-29
778	East-Coast-Invite-2025	2025-03-29
779	East-Coast-Invite-2025	2025-03-29
780	East-Coast-Invite-2025	2025-03-30
781	East-Coast-Invite-2025	2025-03-30
782	East-Coast-Invite-2025	2025-03-30
783	Meltdown-2025	2025-03-22
784	Meltdown-2025	2025-03-22
785	Meltdown-2025	2025-03-22
786	Meltdown-2025	2025-03-22
787	Meltdown-2025	2025-03-23
788	Meltdown-2025	2025-03-23
789	Old-Capitol-Open-2025	2025-03-29
790	Old-Capitol-Open-2025	2025-03-29
791	Old-Capitol-Open-2025	2025-03-29
792	Old-Capitol-Open-2025	2025-03-30
793	Carolina-Kickoff-mens-2025	2025-02-01
794	Carolina-Kickoff-mens-2025	2025-02-01
795	Carolina-Kickoff-mens-2025	2025-02-01
796	Carolina-Kickoff-mens-2025	2025-02-02
797	Carolina-Kickoff-mens-2025	2025-02-02
798	Oak-Creek-Challenge-2025	2025-03-01
799	Oak-Creek-Challenge-2025	2025-03-01
800	Oak-Creek-Challenge-2025	2025-03-01
801	Oak-Creek-Challenge-2025	2025-03-02
802	Oak-Creek-Challenge-2025	2025-03-02
803	Oak-Creek-Challenge-2025	2025-03-02
804	East-Coast-Invite-2025	2025-03-29
805	East-Coast-Invite-2025	2025-03-29
806	East-Coast-Invite-2025	2025-03-29
807	East-Coast-Invite-2025	2025-03-29
808	East-Coast-Invite-2025	2025-03-30
809	East-Coast-Invite-2025	2025-03-30
810	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
811	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
812	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
813	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
814	Grand-Rapids-Invite-2025	2025-03-15
815	Grand-Rapids-Invite-2025	2025-03-15
816	Grand-Rapids-Invite-2025	2025-03-15
817	Grand-Rapids-Invite-2025	2025-03-15
818	Grand-Rapids-Invite-2025	2025-03-16
820	Grand-Rapids-Invite-2025	2025-03-16
821	Needle-in-a-Ho-Stack-2025	2025-03-29
822	Needle-in-a-Ho-Stack-2025	2025-03-29
823	Needle-in-a-Ho-Stack-2025	2025-03-29
824	Needle-in-a-Ho-Stack-2025	2025-03-29
825	Needle-in-a-Ho-Stack-2025	2025-03-30
826	Needle-in-a-Ho-Stack-2025	2025-03-30
827	Needle-in-a-Ho-Stack-2025	2025-03-30
828	Garden-State-2025	2025-03-01
829	Garden-State-2025	2025-03-01
830	Garden-State-2025	2025-03-01
831	Garden-State-2025	2025-03-01
832	Garden-State-2025	2025-03-02
833	Garden-State-2025	2025-03-02
834	Ocean-State-Invite-2025	2025-03-29
835	Ocean-State-Invite-2025	2025-03-29
836	Ocean-State-Invite-2025	2025-03-29
837	Ocean-State-Invite-2025	2025-03-30
838	Ocean-State-Invite-2025	2025-03-30
839	Florida-Warm-Up-2025	2025-01-31
840	Florida-Warm-Up-2025	2025-01-31
841	Florida-Warm-Up-2025	2025-01-31
842	Florida-Warm-Up-2025	2025-02-01
843	Florida-Warm-Up-2025	2025-02-02
844	Florida-Warm-Up-2025	2025-02-02
845	Joint-Summit-2025	2025-03-01
846	Joint-Summit-2025	2025-03-01
847	Joint-Summit-2025	2025-03-01
848	Joint-Summit-2025	2025-03-01
849	Joint-Summit-2025	2025-03-02
850	Joint-Summit-2025	2025-03-02
851	Tally-Classic-XIX	2025-03-15
852	Tally-Classic-XIX	2025-03-15
853	Tally-Classic-XIX	2025-03-15
854	Southerns-2025	2025-03-15
855	Southerns-2025	2025-03-15
856	Southerns-2025	2025-03-15
857	Southerns-2025	2025-03-15
858	Southerns-2025	2025-03-15
859	Needle-in-a-Ho-Stack-2025	2025-03-29
860	Needle-in-a-Ho-Stack-2025	2025-03-29
861	Needle-in-a-Ho-Stack-2025	2025-03-29
862	Needle-in-a-Ho-Stack-2025	2025-03-30
863	Needle-in-a-Ho-Stack-2025	2025-03-30
864	Queen-City-Tune-Up-2025	2025-02-15
865	Queen-City-Tune-Up-2025	2025-02-15
866	Queen-City-Tune-Up-2025	2025-02-15
867	Queen-City-Tune-Up-2025	2025-02-16
868	Mens-Centex-2025	2025-03-15
869	Mens-Centex-2025	2025-03-15
870	Mens-Centex-2025	2025-03-15
871	Mens-Centex-2025	2025-03-15
872	Mens-Centex-2025	2025-03-16
873	Mens-Centex-2025	2025-03-16
874	Mens-Centex-2025	2025-03-16
875	Huck-Finn-2025	2025-03-29
876	Huck-Finn-2025	2025-03-29
877	Huck-Finn-2025	2025-03-29
878	Huck-Finn-2025	2025-03-29
879	Huck-Finn-2025	2025-03-30
880	Huck-Finn-2025	2025-03-30
881	Huck-Finn-2025	2025-03-30
882	Stanford-Open-Mens	2025-02-08
883	Stanford-Open-Mens	2025-02-08
884	Silicon-Valley-Rally-2025	2025-03-15
885	Mid-Atlantic-Warm-Up-2025	2025-01-25
886	Mid-Atlantic-Warm-Up-2025	2025-01-25
887	Mid-Atlantic-Warm-Up-2025	2025-01-25
888	Mid-Atlantic-Warm-Up-2025	2025-01-25
889	Mid-Atlantic-Warm-Up-2025	2025-01-26
890	Mid-Atlantic-Warm-Up-2025	2025-01-26
891	Mid-Atlantic-Warm-Up-2025	2025-01-26
892	Easterns-2025	2025-03-29
893	Easterns-2025	2025-03-29
894	Easterns-2025	2025-03-29
895	Easterns-2025	2025-03-29
896	Easterns-2025	2025-03-30
897	Easterns-2025	2025-03-30
898	Mid-Atlantic-Warm-Up-2025	2025-01-25
899	Mid-Atlantic-Warm-Up-2025	2025-01-25
900	Mid-Atlantic-Warm-Up-2025	2025-01-25
901	Mid-Atlantic-Warm-Up-2025	2025-01-26
902	Mid-Atlantic-Warm-Up-2025	2025-01-26
903	Mid-Atlantic-Warm-Up-2025	2025-01-26
904	Huck-Finn-2025	2025-03-29
905	Huck-Finn-2025	2025-03-29
906	Huck-Finn-2025	2025-03-29
907	Huck-Finn-2025	2025-03-29
908	Huck-Finn-2025	2025-03-30
909	Huck-Finn-2025	2025-03-30
910	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
911	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
912	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
913	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
914	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
915	Spring-Spook	2025-03-15
916	Spring-Spook	2025-03-15
917	Spring-Spook	2025-03-16
918	Spring-Spook	2025-03-16
919	Spring-Spook	2025-03-16
920	DIII-Grand-Prix-2025	2025-02-08
921	DIII-Grand-Prix-2025	2025-02-08
922	DIII-Grand-Prix-2025	2025-02-09
923	DIII-Grand-Prix-2025	2025-02-09
924	DIII-Grand-Prix-2025	2025-02-09
925	Southwest-Showdown-2025	2025-03-29
926	Southwest-Showdown-2025	2025-03-29
927	Southwest-Showdown-2025	2025-03-30
928	Southwest-Showdown-2025	2025-03-30
929	Southwest-Showdown-2025	2025-03-30
930	New-England-Open-2025	2025-03-29
931	New-England-Open-2025	2025-03-29
932	New-England-Open-2025	2025-03-30
933	New-England-Open-2025	2025-03-30
934	New-England-Open-2025	2025-03-30
935	Bulldog-Brawl	2025-02-08
936	Bulldog-Brawl	2025-02-08
937	Bulldog-Brawl	2025-02-08
938	Bulldog-Brawl	2025-02-08
939	Bulldog-Brawl	2025-02-09
940	Bulldog-Brawl	2025-02-09
941	Bulldog-Brawl	2025-02-09
942	Joint-Summit-2025	2025-03-01
943	Joint-Summit-2025	2025-03-01
944	Joint-Summit-2025	2025-03-01
945	Joint-Summit-2025	2025-03-01
946	Joint-Summit-2025	2025-03-02
947	Tally-Classic-XIX	2025-03-15
948	Tally-Classic-XIX	2025-03-15
949	Joint-Summit-2025	2025-03-01
950	Joint-Summit-2025	2025-03-01
951	Joint-Summit-2025	2025-03-01
952	Joint-Summit-2025	2025-03-02
953	Joint-Summit-2025	2025-03-02
954	Huckin-in-the-Hills-XI	2025-03-01
955	Huckin-in-the-Hills-XI	2025-03-02
956	Huckin-in-the-Hills-XI	2025-03-02
957	Bring-The-Huckus-2025	2025-02-22
958	Bring-The-Huckus-2025	2025-02-22
959	Bring-The-Huckus-2025	2025-02-22
960	Bring-The-Huckus-2025	2025-02-22
961	Bring-The-Huckus-2025	2025-02-23
962	Bring-The-Huckus-2025	2025-02-23
963	Bring-The-Huckus-2025	2025-02-23
964	Grand-Northeast-Kickoff-2025	2025-03-09
965	Grand-Northeast-Kickoff-2025	2025-03-09
966	Grand-Northeast-Kickoff-2025	2025-03-09
967	First-State-Invite	2025-03-08
968	First-State-Invite	2025-03-08
969	First-State-Invite	2025-03-08
970	Northeast-Classic-2025	2025-03-29
971	Northeast-Classic-2025	2025-03-29
972	Northeast-Classic-2025	2025-03-29
973	Northeast-Classic-2025	2025-03-30
974	Northeast-Classic-2025	2025-03-30
975	Northeast-Classic-2025	2025-03-30
976	Presidents-Day-Invite-2025	2025-02-15
977	Presidents-Day-Invite-2025	2025-02-15
978	Presidents-Day-Invite-2025	2025-02-16
979	Presidents-Day-Invite-2025	2025-02-16
980	Presidents-Day-Invite-2025	2025-02-17
981	Presidents-Day-Invite-2025	2025-02-17
982	Smoky-Mountain-Invite-2025	2025-03-01
983	Smoky-Mountain-Invite-2025	2025-03-01
984	Smoky-Mountain-Invite-2025	2025-03-01
985	Smoky-Mountain-Invite-2025	2025-03-02
986	Smoky-Mountain-Invite-2025	2025-03-02
987	Easterns-2025	2025-03-29
988	Easterns-2025	2025-03-29
989	Easterns-2025	2025-03-29
990	Easterns-2025	2025-03-30
991	Easterns-2025	2025-03-30
992	DIII-Grand-Prix-2025	2025-02-08
993	DIII-Grand-Prix-2025	2025-02-08
994	DIII-Grand-Prix-2025	2025-02-08
995	DIII-Grand-Prix-2025	2025-02-09
996	DIII-Grand-Prix-2025	2025-02-09
997	Snow-Melt-2025	2025-03-01
998	Snow-Melt-2025	2025-03-01
999	Snow-Melt-2025	2025-03-02
1000	Snow-Melt-2025	2025-03-02
1001	Snow-Melt-2025	2025-03-02
1002	Mens-Centex-2025	2025-03-15
1003	Mens-Centex-2025	2025-03-15
1004	Mens-Centex-2025	2025-03-15
1005	Mens-Centex-2025	2025-03-16
1006	Snow-Melt-2025	2025-03-01
1007	Snow-Melt-2025	2025-03-01
1008	Snow-Melt-2025	2025-03-01
1009	Snow-Melt-2025	2025-03-01
1010	Snow-Melt-2025	2025-03-02
1011	Snow-Melt-2025	2025-03-02
1012	Snow-Melt-2025	2025-03-02
1013	DIII-Grand-Prix-2025	2025-02-08
1014	DIII-Grand-Prix-2025	2025-02-08
1015	DIII-Grand-Prix-2025	2025-02-08
1016	DIII-Grand-Prix-2025	2025-02-09
1017	DIII-Grand-Prix-2025	2025-02-09
1018	Snow-Melt-2025	2025-03-01
1019	Snow-Melt-2025	2025-03-02
1020	Snow-Melt-2025	2025-03-02
1021	Old-Capitol-Open-2025	2025-03-29
1022	Old-Capitol-Open-2025	2025-03-29
1023	Old-Capitol-Open-2025	2025-03-29
1024	Old-Capitol-Open-2025	2025-03-30
1025	Old-Capitol-Open-2025	2025-03-30
1026	Old-Capitol-Open-2025	2025-03-30
1027	Snow-Melt-2025	2025-03-01
1028	Snow-Melt-2025	2025-03-01
1029	Snow-Melt-2025	2025-03-01
1030	Snow-Melt-2025	2025-03-02
1031	Santa-Barbara-Invite-2025	2025-01-25
1032	Santa-Barbara-Invite-2025	2025-01-25
1033	Presidents-Day-Invite-2025	2025-02-15
1034	Presidents-Day-Invite-2025	2025-02-16
1035	Presidents-Day-Invite-2025	2025-02-17
1036	Presidents-Day-Invite-2025	2025-02-17
1037	Huck-Finn-2025	2025-03-29
1038	Huck-Finn-2025	2025-03-29
1039	Huck-Finn-2025	2025-03-29
1040	Huck-Finn-2025	2025-03-29
1041	Huck-Finn-2025	2025-03-30
1042	Huck-Finn-2025	2025-03-30
1043	Snow-Melt-2025	2025-03-01
1044	Snow-Melt-2025	2025-03-02
1045	Snow-Melt-2025	2025-03-02
1046	Free-State-Classic-2025	2025-03-29
1047	Free-State-Classic-2025	2025-03-29
1048	Free-State-Classic-2025	2025-03-29
1049	Free-State-Classic-2025	2025-03-29
1050	Free-State-Classic-2025	2025-03-30
1051	Free-State-Classic-2025	2025-03-30
1052	Free-State-Classic-2025	2025-03-30
1053	New-Year-Fest-2025	2025-01-25
1054	New-Year-Fest-2025	2025-01-25
1055	New-Year-Fest-2025	2025-01-26
1056	Mardi-Gras-XXXVII	2025-02-22
1057	Mardi-Gras-XXXVII	2025-02-22
1058	Mardi-Gras-XXXVII	2025-02-22
1059	Mardi-Gras-XXXVII	2025-02-22
1060	Mens-Centex-2025	2025-03-15
1061	Mens-Centex-2025	2025-03-15
1062	Mens-Centex-2025	2025-03-15
1063	Mens-Centex-2025	2025-03-15
1064	Mens-Centex-2025	2025-03-16
1065	Mens-Centex-2025	2025-03-16
1066	Mens-Centex-2025	2025-03-16
1067	NJ-Warmup-2025	2025-02-08
1068	NJ-Warmup-2025	2025-02-08
1069	NJ-Warmup-2025	2025-02-08
1070	NJ-Warmup-2025	2025-02-08
1071	UMass-Invite-2025	2025-03-01
1072	UMass-Invite-2025	2025-03-01
1073	UMass-Invite-2025	2025-03-01
1074	UMass-Invite-2025	2025-03-02
1075	UMass-Invite-2025	2025-03-02
1076	UMass-Invite-2025	2025-03-02
1077	East-Coast-Invite-2025	2025-03-29
1078	East-Coast-Invite-2025	2025-03-29
1079	East-Coast-Invite-2025	2025-03-29
1080	East-Coast-Invite-2025	2025-03-29
1081	East-Coast-Invite-2025	2025-03-30
1082	East-Coast-Invite-2025	2025-03-30
1083	East-Coast-Invite-2025	2025-03-30
1084	NJ-Warmup-2025	2025-02-08
1085	NJ-Warmup-2025	2025-02-08
1086	NJ-Warmup-2025	2025-02-08
1087	UMass-Invite-2025	2025-03-01
1088	UMass-Invite-2025	2025-03-01
1089	UMass-Invite-2025	2025-03-01
1090	UMass-Invite-2025	2025-03-01
1091	UMass-Invite-2025	2025-03-02
1092	UMass-Invite-2025	2025-03-02
1093	UMass-Invite-2025	2025-03-02
1094	East-Coast-Invite-2025	2025-03-29
1095	East-Coast-Invite-2025	2025-03-29
1096	East-Coast-Invite-2025	2025-03-29
1097	East-Coast-Invite-2025	2025-03-29
1098	East-Coast-Invite-2025	2025-03-30
1099	East-Coast-Invite-2025	2025-03-30
1100	Garden-State-2025	2025-03-01
1101	Garden-State-2025	2025-03-01
1102	Garden-State-2025	2025-03-02
1103	Ocean-State-Invite-2025	2025-03-29
1104	Ocean-State-Invite-2025	2025-03-29
1105	Ocean-State-Invite-2025	2025-03-30
1106	Ocean-State-Invite-2025	2025-03-30
1107	Bring-The-Huckus-2025	2025-02-22
1108	Bring-The-Huckus-2025	2025-02-22
1109	Bring-The-Huckus-2025	2025-02-22
1110	Bring-The-Huckus-2025	2025-02-23
1111	Bring-The-Huckus-2025	2025-02-23
1112	New-England-Open-2025	2025-03-29
1113	New-England-Open-2025	2025-03-29
1114	New-England-Open-2025	2025-03-29
1115	New-England-Open-2025	2025-03-30
1116	New-England-Open-2025	2025-03-30
1117	New-England-Open-2025	2025-03-30
1118	Florida-Warm-Up-2025	2025-01-31
1119	Florida-Warm-Up-2025	2025-01-31
1120	Florida-Warm-Up-2025	2025-01-31
1121	Florida-Warm-Up-2025	2025-02-01
1122	Florida-Warm-Up-2025	2025-02-01
1123	Florida-Warm-Up-2025	2025-02-01
1124	Florida-Warm-Up-2025	2025-02-02
1125	Florida-Warm-Up-2025	2025-02-02
1126	Oak-Creek-Challenge-2025	2025-03-01
1127	Oak-Creek-Challenge-2025	2025-03-01
1128	Oak-Creek-Challenge-2025	2025-03-01
1129	Oak-Creek-Challenge-2025	2025-03-02
1130	Oak-Creek-Challenge-2025	2025-03-02
1131	Oak-Creek-Challenge-2025	2025-03-02
1132	East-Coast-Invite-2025	2025-03-29
1133	East-Coast-Invite-2025	2025-03-30
1134	East-Coast-Invite-2025	2025-03-30
1135	East-Coast-Invite-2025	2025-03-30
1136	Garden-State-2025	2025-03-01
1137	Garden-State-2025	2025-03-02
1138	Garden-State-2025	2025-03-02
1139	Natalies-Animal-Rescue-2025	2025-03-15
1140	Natalies-Animal-Rescue-2025	2025-03-15
1141	Natalies-Animal-Rescue-2025	2025-03-15
1142	Natalies-Animal-Rescue-2025	2025-03-15
1143	Natalies-Animal-Rescue-2025	2025-03-16
1144	Natalies-Animal-Rescue-2025	2025-03-16
1145	Natalies-Animal-Rescue-2025	2025-03-16
1146	Northeast-Classic-2025	2025-03-29
1147	Northeast-Classic-2025	2025-03-29
1148	Northeast-Classic-2025	2025-03-29
1149	Northeast-Classic-2025	2025-03-29
1150	Northeast-Classic-2025	2025-03-30
1151	Northeast-Classic-2025	2025-03-30
1152	Northeast-Classic-2025	2025-03-30
1153	Dust-Bowl-2025	2025-02-22
1154	Dust-Bowl-2025	2025-02-22
1155	Dust-Bowl-2025	2025-02-22
1156	Dust-Bowl-2025	2025-02-23
1157	Dust-Bowl-2025	2025-02-23
1158	Dust-Bowl-2025	2025-02-23
1159	Dust-Bowl-2025	2025-02-23
1160	Huckfest-2025	2025-03-29
1161	Huckfest-2025	2025-03-29
1162	Huckfest-2025	2025-03-29
1163	Huckfest-2025	2025-03-30
1164	Huckfest-2025	2025-03-30
1165	Mid-Atlantic-Warm-Up-2025	2025-01-25
1166	Mid-Atlantic-Warm-Up-2025	2025-01-25
1167	Mid-Atlantic-Warm-Up-2025	2025-01-26
1168	Mid-Atlantic-Warm-Up-2025	2025-01-26
1169	Mid-Atlantic-Warm-Up-2025	2025-01-26
1170	Easterns-Qualifier-2025	2025-02-22
1171	Easterns-Qualifier-2025	2025-02-22
1172	Easterns-Qualifier-2025	2025-02-22
1173	Easterns-Qualifier-2025	2025-02-23
1174	Easterns-Qualifier-2025	2025-02-23
1175	Mens-Centex-2025	2025-03-15
1176	Mens-Centex-2025	2025-03-15
1177	Mens-Centex-2025	2025-03-15
1178	Mens-Centex-2025	2025-03-15
1179	Mens-Centex-2025	2025-03-16
1180	Mens-Centex-2025	2025-03-16
1181	Jersey-Devil-2025	2025-03-22
1182	Jersey-Devil-2025	2025-03-22
1183	Jersey-Devil-2025	2025-03-22
1184	Jersey-Devil-2025	2025-03-22
1185	Jersey-Devil-2025	2025-03-23
1186	Jersey-Devil-2025	2025-03-23
1187	Jersey-Devil-2025	2025-03-23
1188	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1189	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1190	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1191	Grand-Rapids-Invite-2025	2025-03-15
1192	Grand-Rapids-Invite-2025	2025-03-15
1193	Grand-Rapids-Invite-2025	2025-03-15
1194	Grand-Rapids-Invite-2025	2025-03-16
1195	Grand-Rapids-Invite-2025	2025-03-16
1196	Huck-Finn-2025	2025-03-29
1197	Huck-Finn-2025	2025-03-29
1198	Huck-Finn-2025	2025-03-30
1199	Huck-Finn-2025	2025-03-30
1200	Huck-Finn-2025	2025-03-30
1201	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1202	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1203	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1204	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1205	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1206	D-III-River-City-Showdown-2025	2025-02-28
1207	D-III-River-City-Showdown-2025	2025-03-01
1208	D-III-River-City-Showdown-2025	2025-03-01
1209	D-III-River-City-Showdown-2025	2025-03-01
1210	D-III-River-City-Showdown-2025	2025-03-02
1211	D-III-River-City-Showdown-2025	2025-03-02
1212	D-III-River-City-Showdown-2025	2025-03-02
1213	Easterns-2025	2025-03-29
1214	Easterns-2025	2025-03-29
1215	Easterns-2025	2025-03-29
1216	Easterns-2025	2025-03-29
1217	Easterns-2025	2025-03-30
1218	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
1219	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
1220	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
1221	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
1222	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
1223	Corny-Classic-College-2025	2025-03-29
1224	Corny-Classic-College-2025	2025-03-29
1225	Corny-Classic-College-2025	2025-03-30
1226	Corny-Classic-College-2025	2025-03-30
1227	Corny-Classic-College-2025	2025-03-30
1228	Corny-Classic-College-2025	2025-03-30
1229	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
1230	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
1231	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
1232	Bring-The-Huckus-2025	2025-02-22
1233	Bring-The-Huckus-2025	2025-02-22
1234	Bring-The-Huckus-2025	2025-02-22
1235	Bring-The-Huckus-2025	2025-02-22
1236	Bring-The-Huckus-2025	2025-02-23
1237	Bring-The-Huckus-2025	2025-02-23
1238	First-State-Invite	2025-03-08
1239	First-State-Invite	2025-03-08
1240	First-State-Invite	2025-03-08
1241	East-Coast-Invite-2025	2025-03-29
1242	East-Coast-Invite-2025	2025-03-29
1243	East-Coast-Invite-2025	2025-03-29
1244	East-Coast-Invite-2025	2025-03-30
1245	East-Coast-Invite-2025	2025-03-30
1246	East-Coast-Invite-2025	2025-03-30
1247	Bring-The-Huckus-2025	2025-02-22
1248	Bring-The-Huckus-2025	2025-02-22
1249	Bring-The-Huckus-2025	2025-02-22
1250	Bring-The-Huckus-2025	2025-02-22
1251	Bring-The-Huckus-2025	2025-02-23
1252	Huckin-in-the-Hills-XI	2025-03-01
1253	Huckin-in-the-Hills-XI	2025-03-01
1254	Huckin-in-the-Hills-XI	2025-03-01
1255	Huckin-in-the-Hills-XI	2025-03-02
1256	Huckin-in-the-Hills-XI	2025-03-02
1257	New-Year-Fest-2025	2025-01-25
1258	New-Year-Fest-2025	2025-01-26
1259	New-Year-Fest-2025	2025-01-26
1260	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1261	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1262	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1263	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1264	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1265	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1266	Snow-Melt-2025	2025-03-01
1267	Snow-Melt-2025	2025-03-01
1268	New-Year-Fest-2025	2025-01-25
1269	New-Year-Fest-2025	2025-01-25
1270	New-Year-Fest-2025	2025-01-26
1271	Midwest-Throwdown-2025	2025-03-01
1272	Midwest-Throwdown-2025	2025-03-01
1273	Midwest-Throwdown-2025	2025-03-01
1274	Midwest-Throwdown-2025	2025-03-02
1275	Midwest-Throwdown-2025	2025-03-02
1276	Midwest-Throwdown-2025	2025-03-02
1277	Old-Capitol-Open-2025	2025-03-29
1278	Old-Capitol-Open-2025	2025-03-29
1279	Old-Capitol-Open-2025	2025-03-30
1280	Bring-The-Huckus-2025	2025-02-22
1281	Bring-The-Huckus-2025	2025-02-22
1282	Bring-The-Huckus-2025	2025-02-23
1283	Bring-The-Huckus-2025	2025-02-23
1284	Atlantic-Coast-Open-2025	2025-03-22
1285	Atlantic-Coast-Open-2025	2025-03-22
1286	Atlantic-Coast-Open-2025	2025-03-22
1287	Atlantic-Coast-Open-2025	2025-03-23
1288	Atlantic-Coast-Open-2025	2025-03-23
1289	Easterns-2025	2025-03-29
1290	Easterns-2025	2025-03-29
1291	Easterns-2025	2025-03-29
1292	Easterns-2025	2025-03-29
1293	Easterns-2025	2025-03-30
1294	Bring-The-Huckus-2025	2025-02-22
1295	Bring-The-Huckus-2025	2025-02-22
1296	Bring-The-Huckus-2025	2025-02-23
1297	Bring-The-Huckus-2025	2025-02-23
1298	Bring-The-Huckus-2025	2025-02-23
1299	Huckin-in-the-Hills-XI	2025-03-01
1300	Huckin-in-the-Hills-XI	2025-03-01
1301	Huckin-in-the-Hills-XI	2025-03-02
1302	Natalies-Animal-Rescue-2025	2025-03-15
1303	Natalies-Animal-Rescue-2025	2025-03-15
1304	Natalies-Animal-Rescue-2025	2025-03-15
1305	Natalies-Animal-Rescue-2025	2025-03-16
1306	Natalies-Animal-Rescue-2025	2025-03-16
1307	Carolina-Kickoff-mens-2025	2025-01-31
1308	Carolina-Kickoff-mens-2025	2025-02-01
1309	Carolina-Kickoff-mens-2025	2025-02-02
1310	Carolina-Kickoff-mens-2025	2025-02-02
1311	Easterns-Qualifier-2025	2025-02-22
1312	Easterns-Qualifier-2025	2025-02-22
1313	Easterns-Qualifier-2025	2025-02-22
1314	Easterns-Qualifier-2025	2025-02-22
1315	Easterns-Qualifier-2025	2025-02-23
1316	Easterns-Qualifier-2025	2025-02-23
1317	Atlantic-Coast-Open-2025	2025-03-22
1318	Atlantic-Coast-Open-2025	2025-03-22
1319	Atlantic-Coast-Open-2025	2025-03-22
1320	Atlantic-Coast-Open-2025	2025-03-22
1321	Atlantic-Coast-Open-2025	2025-03-23
1322	Atlantic-Coast-Open-2025	2025-03-23
1323	Atlantic-Coast-Open-2025	2025-03-23
1324	Mid-Atlantic-Warm-Up-2025	2025-01-25
1325	Mid-Atlantic-Warm-Up-2025	2025-01-25
1326	Mid-Atlantic-Warm-Up-2025	2025-01-26
1327	Mid-Atlantic-Warm-Up-2025	2025-01-26
1328	Monument-Melee-2025	2025-02-22
1329	Monument-Melee-2025	2025-02-22
1330	Monument-Melee-2025	2025-02-23
1331	Monument-Melee-2025	2025-02-23
1332	Monument-Melee-2025	2025-02-23
1333	Atlantic-Coast-Open-2025	2025-03-22
1334	Atlantic-Coast-Open-2025	2025-03-22
1335	Atlantic-Coast-Open-2025	2025-03-23
1336	Atlantic-Coast-Open-2025	2025-03-23
1337	Atlantic-Coast-Open-2025	2025-03-23
1338	Needle-in-a-Ho-Stack-2025	2025-03-29
1339	Needle-in-a-Ho-Stack-2025	2025-03-29
1340	Needle-in-a-Ho-Stack-2025	2025-03-29
1341	Needle-in-a-Ho-Stack-2025	2025-03-29
1342	Needle-in-a-Ho-Stack-2025	2025-03-30
1343	Needle-in-a-Ho-Stack-2025	2025-03-30
1344	Needle-in-a-Ho-Stack-2025	2025-03-30
1345	Joint-Summit-2025	2025-03-01
1346	Joint-Summit-2025	2025-03-02
1347	Joint-Summit-2025	2025-03-02
1348	Needle-in-a-Ho-Stack-2025	2025-03-29
1349	Needle-in-a-Ho-Stack-2025	2025-03-29
1350	Needle-in-a-Ho-Stack-2025	2025-03-29
1351	Needle-in-a-Ho-Stack-2025	2025-03-30
1352	Needle-in-a-Ho-Stack-2025	2025-03-30
1353	Needle-in-a-Ho-Stack-2025	2025-03-30
1354	Grand-Rapids-Invite-2025	2025-03-15
1355	Grand-Rapids-Invite-2025	2025-03-15
1356	Grand-Rapids-Invite-2025	2025-03-15
1357	Grand-Rapids-Invite-2025	2025-03-16
1358	Grand-Rapids-Invite-2025	2025-03-16
1359	King-of-the-Hill-2025	2025-03-29
1360	King-of-the-Hill-2025	2025-03-29
1361	King-of-the-Hill-2025	2025-03-29
1362	King-of-the-Hill-2025	2025-03-29
1363	Carolina-Kickoff-mens-2025	2025-02-01
1364	Carolina-Kickoff-mens-2025	2025-02-01
1365	Carolina-Kickoff-mens-2025	2025-02-01
1366	Carolina-Kickoff-mens-2025	2025-02-02
1367	Carolina-Kickoff-mens-2025	2025-02-02
1368	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1369	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1370	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1371	D-III-River-City-Showdown-2025	2025-03-01
1372	D-III-River-City-Showdown-2025	2025-03-01
1373	D-III-River-City-Showdown-2025	2025-03-02
1374	D-III-River-City-Showdown-2025	2025-03-02
1375	D-III-River-City-Showdown-2025	2025-03-02
1376	Easterns-2025	2025-03-29
1377	Easterns-2025	2025-03-29
1378	Easterns-2025	2025-03-30
1379	Easterns-2025	2025-03-30
1380	Easterns-2025	2025-03-30
1381	Needle-in-a-Ho-Stack-2025	2025-03-23
1382	Needle-in-a-Ho-Stack-2025	2025-03-29
1383	Needle-in-a-Ho-Stack-2025	2025-03-29
1384	Needle-in-a-Ho-Stack-2025	2025-03-30
1385	Needle-in-a-Ho-Stack-2025	2025-03-30
1386	Florida-Warm-Up-2025	2025-01-31
1387	Florida-Warm-Up-2025	2025-02-01
1388	Florida-Warm-Up-2025	2025-02-02
1389	Easterns-Qualifier-2025	2025-02-22
1390	Easterns-Qualifier-2025	2025-02-22
1391	Easterns-Qualifier-2025	2025-02-22
1392	Easterns-Qualifier-2025	2025-02-22
1393	Easterns-Qualifier-2025	2025-02-23
1394	Easterns-Qualifier-2025	2025-02-23
1395	Easterns-Qualifier-2025	2025-02-23
1396	Huck-Finn-2025	2025-03-29
1397	Huck-Finn-2025	2025-03-29
1398	Huck-Finn-2025	2025-03-29
1399	Huck-Finn-2025	2025-03-30
1400	Huck-Finn-2025	2025-03-30
1401	Huck-Finn-2025	2025-03-30
1402	Florida-Warm-Up-2025	2025-01-31
1403	Florida-Warm-Up-2025	2025-01-31
1404	Florida-Warm-Up-2025	2025-01-31
1405	Florida-Warm-Up-2025	2025-02-01
1406	Florida-Warm-Up-2025	2025-02-01
1407	Florida-Warm-Up-2025	2025-02-01
1408	Mardi-Gras-XXXVII	2025-02-22
1409	Mardi-Gras-XXXVII	2025-02-22
1410	Tally-Classic-XIX	2025-03-15
1411	Tally-Classic-XIX	2025-03-15
1412	Florida-Warm-Up-2025	2025-01-31
1413	Florida-Warm-Up-2025	2025-01-31
1414	Florida-Warm-Up-2025	2025-01-31
1415	Florida-Warm-Up-2025	2025-02-01
1416	Florida-Warm-Up-2025	2025-02-02
1417	Mardi-Gras-XXXVII	2025-02-22
1418	Mardi-Gras-XXXVII	2025-02-22
1419	Tally-Classic-XIX	2025-03-15
1420	Tally-Classic-XIX	2025-03-15
1421	Tally-Classic-XIX	2025-03-15
1422	Atlantic-Coast-Open-2025	2025-03-22
1423	Atlantic-Coast-Open-2025	2025-03-22
1424	Atlantic-Coast-Open-2025	2025-03-23
1425	Atlantic-Coast-Open-2025	2025-03-23
1426	Tally-Classic-XIX	2025-03-15
1427	Tally-Classic-XIX	2025-03-15
1428	Tally-Classic-XIX	2025-03-15
1429	Tally-Classic-XIX	2025-03-15
1430	Florida-Warm-Up-2025-Weekend-2	2025-03-01
1431	Florida-Warm-Up-2025-Weekend-2	2025-03-01
1432	Florida-Warm-Up-2025-Weekend-2	2025-03-02
1433	Tally-Classic-XIX	2025-03-15
1434	Tally-Classic-XIX	2025-03-15
1435	Tally-Classic-XIX	2025-03-15
1436	Tally-Classic-XIX	2025-03-15
1437	D-III-River-City-Showdown-2025	2025-03-01
1438	D-III-River-City-Showdown-2025	2025-03-01
1439	D-III-River-City-Showdown-2025	2025-03-01
1440	D-III-River-City-Showdown-2025	2025-03-02
1441	D-III-River-City-Showdown-2025	2025-03-02
1442	Easterns-2025	2025-03-29
1443	Easterns-2025	2025-03-29
1444	Easterns-2025	2025-03-30
1445	Easterns-2025	2025-03-30
1446	Mid-Atlantic-Warm-Up-2025	2025-01-25
1447	Mid-Atlantic-Warm-Up-2025	2025-01-26
1448	Mid-Atlantic-Warm-Up-2025	2025-01-26
1449	Monument-Melee-2025	2025-02-22
1450	Monument-Melee-2025	2025-02-22
1451	Monument-Melee-2025	2025-02-22
1452	Monument-Melee-2025	2025-02-23
1453	Atlantic-Coast-Open-2025	2025-03-22
1454	Atlantic-Coast-Open-2025	2025-03-22
1455	Atlantic-Coast-Open-2025	2025-03-22
1456	Atlantic-Coast-Open-2025	2025-03-23
1457	Monument-Melee-2025	2025-02-22
1458	Monument-Melee-2025	2025-02-23
1459	Monument-Melee-2025	2025-02-23
1460	Monument-Melee-2025	2025-02-23
1461	Atlantic-Coast-Open-2025	2025-03-22
1462	Atlantic-Coast-Open-2025	2025-03-22
1463	Atlantic-Coast-Open-2025	2025-03-22
1464	Atlantic-Coast-Open-2025	2025-03-22
1465	Atlantic-Coast-Open-2025	2025-03-23
1466	Monument-Melee-2025	2025-02-22
1467	Monument-Melee-2025	2025-02-22
1468	Monument-Melee-2025	2025-02-23
1469	Atlantic-Coast-Open-2025	2025-03-22
1470	Atlantic-Coast-Open-2025	2025-03-23
1471	Fishbowl-2025	2025-03-29
1472	Fishbowl-2025	2025-03-29
1473	Fishbowl-2025	2025-03-29
1474	Fishbowl-2025	2025-03-29
1475	Fishbowl-2025	2025-03-30
1476	Fishbowl-2025	2025-03-30
1477	Carolina-Kickoff-mens-2025	2025-02-01
1478	Carolina-Kickoff-mens-2025	2025-02-01
1479	Easterns-Qualifier-2025	2025-02-22
1480	Easterns-Qualifier-2025	2025-02-22
1481	Easterns-Qualifier-2025	2025-02-22
1482	Easterns-Qualifier-2025	2025-02-23
1483	Easterns-Qualifier-2025	2025-02-23
1484	East-Coast-Invite-2025	2025-03-29
1485	East-Coast-Invite-2025	2025-03-29
1486	East-Coast-Invite-2025	2025-03-29
1487	East-Coast-Invite-2025	2025-03-29
1488	East-Coast-Invite-2025	2025-03-30
1489	Monument-Melee-2025	2025-02-22
1490	Florida-Warm-Up-2025	2025-01-31
1491	Florida-Warm-Up-2025	2025-01-31
1492	Florida-Warm-Up-2025	2025-02-01
1493	Florida-Warm-Up-2025	2025-02-01
1494	Florida-Warm-Up-2025	2025-02-01
1495	Florida-Warm-Up-2025	2025-02-02
1496	Smoky-Mountain-Invite-2025	2025-03-01
1497	Smoky-Mountain-Invite-2025	2025-03-01
1498	Smoky-Mountain-Invite-2025	2025-03-02
1499	Smoky-Mountain-Invite-2025	2025-03-02
1500	Smoky-Mountain-Invite-2025	2025-03-02
1501	Easterns-2025	2025-03-29
1502	Easterns-2025	2025-03-29
1503	Easterns-2025	2025-03-30
1504	Easterns-2025	2025-03-30
1505	Southerns-2025	2025-03-15
1506	Southerns-2025	2025-03-15
1507	Southerns-2025	2025-03-15
1508	Southerns-2025	2025-03-15
1509	Needle-in-a-Ho-Stack-2025	2025-03-29
1510	Needle-in-a-Ho-Stack-2025	2025-03-30
1511	Needle-in-a-Ho-Stack-2025	2025-03-30
1512	Mardi-Gras-XXXVII	2025-02-22
1513	Mardi-Gras-XXXVII	2025-02-22
1514	Mardi-Gras-XXXVII	2025-02-22
1515	Southerns-2025	2025-03-15
1516	Southerns-2025	2025-03-15
1517	Needle-in-a-Ho-Stack-2025	2025-03-29
1518	Needle-in-a-Ho-Stack-2025	2025-03-29
1519	Joint-Summit-2025	2025-03-01
1520	Joint-Summit-2025	2025-03-01
1521	Joint-Summit-2025	2025-03-01
1522	Joint-Summit-2025	2025-03-02
1523	Carolina-Kickoff-mens-2025	2025-02-01
1524	Carolina-Kickoff-mens-2025	2025-02-02
1525	Carolina-Kickoff-mens-2025	2025-02-02
1526	Carolina-Kickoff-mens-2025	2025-02-02
1527	Smoky-Mountain-Invite-2025	2025-03-01
1528	Smoky-Mountain-Invite-2025	2025-03-01
1529	Smoky-Mountain-Invite-2025	2025-03-01
1530	Smoky-Mountain-Invite-2025	2025-03-01
1531	Smoky-Mountain-Invite-2025	2025-03-02
1532	Smoky-Mountain-Invite-2025	2025-03-02
1533	Easterns-2025	2025-03-29
1534	Easterns-2025	2025-03-29
1535	Easterns-2025	2025-03-30
1536	Easterns-2025	2025-03-30
1537	Southerns-2025	2025-03-15
1538	Southerns-2025	2025-03-15
1539	Needle-in-a-Ho-Stack-2025	2025-03-30
1540	Needle-in-a-Ho-Stack-2025	2025-03-30
1541	PLU-BBQ-men	2025-03-01
1542	PLU-BBQ-men	2025-03-01
1543	PLU-BBQ-men	2025-03-02
1544	PLU-BBQ-men	2025-03-02
1545	Northwest-Challenge-2025-mens	2025-03-22
1546	Northwest-Challenge-2025-mens	2025-03-23
1547	Northwest-Challenge-2025-mens	2025-03-23
1548	Northwest-Challenge-2025-mens	2025-03-23
1549	Meltdown-2025	2025-03-22
1550	Meltdown-2025	2025-03-22
1551	Meltdown-2025	2025-03-22
1552	Meltdown-2025	2025-03-23
1553	Meltdown-2025	2025-03-23
1554	King-of-the-Hill-2025	2025-03-29
1555	King-of-the-Hill-2025	2025-03-29
1556	King-of-the-Hill-2025	2025-03-29
1557	Pres-Day-Quals-men	2025-02-01
1558	Pres-Day-Quals-men	2025-02-02
1559	Pres-Day-Quals-men	2025-02-02
1560	Vice-Presidents-Day-Invite-2025	2025-02-15
1561	Vice-Presidents-Day-Invite-2025	2025-02-15
1562	Vice-Presidents-Day-Invite-2025	2025-02-16
1563	Vice-Presidents-Day-Invite-2025	2025-02-16
1564	New-Year-Fest-2025	2025-01-25
1565	Grand-Rapids-Invite-2025	2025-03-15
1566	Grand-Rapids-Invite-2025	2025-03-15
1567	Grand-Rapids-Invite-2025	2025-03-15
1568	Grand-Rapids-Invite-2025	2025-03-16
1569	Grand-Rapids-Invite-2025	2025-03-16
1570	Corny-Classic-College-2025	2025-03-29
1571	Corny-Classic-College-2025	2025-03-29
1572	Corny-Classic-College-2025	2025-03-30
1573	Corny-Classic-College-2025	2025-03-30
1574	Dust-Bowl-2025	2025-02-22
1575	Dust-Bowl-2025	2025-02-22
1576	Dust-Bowl-2025	2025-02-22
1577	Dust-Bowl-2025	2025-02-23
1578	Dust-Bowl-2025	2025-02-23
1579	Dust-Bowl-2025	2025-02-23
1580	Old-Capitol-Open-2025	2025-03-29
1581	Old-Capitol-Open-2025	2025-03-29
1582	Old-Capitol-Open-2025	2025-03-29
1583	Old-Capitol-Open-2025	2025-03-30
1584	Old-Capitol-Open-2025	2025-03-30
1585	Old-Capitol-Open-2025	2025-03-29
1586	Old-Capitol-Open-2025	2025-03-29
1587	Old-Capitol-Open-2025	2025-03-29
1588	T-Town-Throwdown-XX	2025-01-25
1589	T-Town-Throwdown-XX	2025-01-25
1590	T-Town-Throwdown-XX	2025-01-25
1591	T-Town-Throwdown-XX	2025-01-26
1592	T-Town-Throwdown-XX	2025-01-26
1593	Bulldog-Brawl	2025-02-08
1594	Bulldog-Brawl	2025-02-08
1595	Bulldog-Brawl	2025-02-08
1596	Bulldog-Brawl	2025-02-09
1597	Bulldog-Brawl	2025-02-09
1598	Dust-Bowl-2025	2025-02-22
1599	Dust-Bowl-2025	2025-02-22
1600	Dust-Bowl-2025	2025-02-22
1601	Dust-Bowl-2025	2025-02-23
1602	Mens-Centex-2025	2025-03-15
1603	Mens-Centex-2025	2025-03-15
1604	Mens-Centex-2025	2025-03-15
1605	Mens-Centex-2025	2025-03-16
1606	Mens-Centex-2025	2025-03-16
1607	MIT-Invite	2025-03-09
1608	MIT-Invite	2025-03-09
1609	MIT-Invite	2025-03-09
1610	MIT-Invite	2025-03-09
1611	Tally-Classic-XIX	2025-03-15
1612	East-Coast-Invite-2025	2025-03-29
1613	East-Coast-Invite-2025	2025-03-29
1614	East-Coast-Invite-2025	2025-03-30
1615	East-Coast-Invite-2025	2025-03-30
1616	East-Coast-Invite-2025	2025-03-30
1617	MIT-Invite	2025-03-09
1618	MIT-Invite	2025-03-09
1619	MIT-Invite	2025-03-09
1620	Tally-Classic-XIX	2025-03-15
1621	Tally-Classic-XIX	2025-03-15
1622	Tally-Classic-XIX	2025-03-15
1623	New-England-Open-2025	2025-03-29
1624	New-England-Open-2025	2025-03-29
1625	New-England-Open-2025	2025-03-29
1626	New-England-Open-2025	2025-03-30
1627	New-England-Open-2025	2025-03-30
1628	Bring-The-Huckus-2025	2025-02-22
1629	Bring-The-Huckus-2025	2025-02-22
1630	Bring-The-Huckus-2025	2025-02-23
1631	Bring-The-Huckus-2025	2025-02-23
1632	Bring-The-Huckus-2025	2025-02-23
1633	Garden-State-2025	2025-03-01
1634	Garden-State-2025	2025-03-01
1635	Garden-State-2025	2025-03-02
1636	Northeast-Classic-2025	2025-03-29
1637	Northeast-Classic-2025	2025-03-29
1638	Northeast-Classic-2025	2025-03-30
1639	Northeast-Classic-2025	2025-03-30
1640	Northeast-Classic-2025	2025-03-30
1641	Butler-Spring-Fling-2025	2025-03-23
1642	King-of-the-Hill-2025	2025-03-29
1643	King-of-the-Hill-2025	2025-03-29
1644	Bring-The-Huckus-2025	2025-02-22
1645	Bring-The-Huckus-2025	2025-02-22
1646	Bring-The-Huckus-2025	2025-02-23
1647	Northeast-Classic-2025	2025-03-29
1648	Northeast-Classic-2025	2025-03-29
1649	Northeast-Classic-2025	2025-03-29
1650	Northeast-Classic-2025	2025-03-30
1651	Northeast-Classic-2025	2025-03-30
1652	Santa-Barbara-Invite-2025	2025-01-25
1653	Santa-Barbara-Invite-2025	2025-01-26
1654	Mens-Centex-2025	2025-03-15
1655	Mens-Centex-2025	2025-03-16
1656	Mens-Centex-2025	2025-03-16
1657	Corny-Classic-College-2025	2025-03-30
1658	T-Town-Throwdown-XX	2025-01-25
1659	T-Town-Throwdown-XX	2025-01-25
1660	T-Town-Throwdown-XX	2025-01-26
1661	Midwest-Throwdown-2025	2025-03-01
1662	Midwest-Throwdown-2025	2025-03-01
1663	Midwest-Throwdown-2025	2025-03-01
1664	Midwest-Throwdown-2025	2025-03-02
1665	Midwest-Throwdown-2025	2025-03-02
1666	Midwest-Throwdown-2025	2025-03-02
1667	Midwest-Throwdown-2025	2025-03-02
1668	Old-Capitol-Open-2025	2025-03-29
1669	Old-Capitol-Open-2025	2025-03-29
1670	Old-Capitol-Open-2025	2025-03-30
1671	Old-Capitol-Open-2025	2025-03-30
1672	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1673	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1674	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1675	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1676	Midwest-Throwdown-2025	2025-03-01
1677	Midwest-Throwdown-2025	2025-03-01
1678	Midwest-Throwdown-2025	2025-03-01
1679	Midwest-Throwdown-2025	2025-03-02
1680	Midwest-Throwdown-2025	2025-03-02
1681	Midwest-Throwdown-2025	2025-03-02
1682	Corny-Classic-College-2025	2025-03-29
1683	Corny-Classic-College-2025	2025-03-29
1684	Corny-Classic-College-2025	2025-03-29
1685	Corny-Classic-College-2025	2025-03-29
1686	Corny-Classic-College-2025	2025-03-30
1687	Corny-Classic-College-2025	2025-03-30
1688	Corny-Classic-College-2025	2025-03-30
1689	Corny-Classic-College-2025	2025-03-29
1690	Corny-Classic-College-2025	2025-03-29
1691	Corny-Classic-College-2025	2025-03-30
1692	Corny-Classic-College-2025	2025-03-30
1693	Meltdown-2025	2025-03-22
1694	Meltdown-2025	2025-03-22
1695	Meltdown-2025	2025-03-22
1696	Meltdown-2025	2025-03-23
1697	Meltdown-2025	2025-03-23
1698	Bulldog-Brawl	2025-02-08
1699	Bulldog-Brawl	2025-02-08
1700	Bulldog-Brawl	2025-02-09
1701	Bulldog-Brawl	2025-02-09
1702	Bulldog-Brawl	2025-02-09
1703	Easterns-Qualifier-2025	2025-02-22
1704	Easterns-Qualifier-2025	2025-02-22
1705	Easterns-Qualifier-2025	2025-02-23
1706	Easterns-Qualifier-2025	2025-02-23
1707	Huck-Finn-2025	2025-03-29
1708	Huck-Finn-2025	2025-03-30
1709	Huck-Finn-2025	2025-03-30
1710	Midwest-Throwdown-2025	2025-03-01
1711	Midwest-Throwdown-2025	2025-03-01
1712	Midwest-Throwdown-2025	2025-03-02
1713	Midwest-Throwdown-2025	2025-03-02
1714	Midwest-Throwdown-2025	2025-03-02
1715	Midwest-Throwdown-2025	2025-03-02
1716	Mens-Centex-2025	2025-03-15
1717	Mens-Centex-2025	2025-03-15
1718	Mens-Centex-2025	2025-03-15
1719	Mens-Centex-2025	2025-03-15
1720	Mens-Centex-2025	2025-03-16
1721	Mens-Centex-2025	2025-03-16
1722	Old-Capitol-Open-2025	2025-03-29
1723	Old-Capitol-Open-2025	2025-03-29
1724	Old-Capitol-Open-2025	2025-03-29
1725	Old-Capitol-Open-2025	2025-03-30
1726	Old-Capitol-Open-2025	2025-03-30
1727	Old-Capitol-Open-2025	2025-03-30
1728	Midwest-Throwdown-2025	2025-03-01
1729	Midwest-Throwdown-2025	2025-03-01
1730	Midwest-Throwdown-2025	2025-03-02
1731	Midwest-Throwdown-2025	2025-03-02
1732	Midwest-Throwdown-2025	2025-03-02
1733	Midwest-Throwdown-2025	2025-03-02
1734	Mens-Centex-2025	2025-03-15
1735	Mens-Centex-2025	2025-03-15
1736	Mens-Centex-2025	2025-03-16
1737	Huck-Finn-2025	2025-03-29
1738	Huck-Finn-2025	2025-03-29
1739	Huck-Finn-2025	2025-03-29
1740	Huck-Finn-2025	2025-03-30
1741	Huck-Finn-2025	2025-03-30
1742	Old-Capitol-Open-2025	2025-03-29
1743	Old-Capitol-Open-2025	2025-03-30
1744	Old-Capitol-Open-2025	2025-03-30
1745	Old-Capitol-Open-2025	2025-03-29
1746	Old-Capitol-Open-2025	2025-03-29
1747	Old-Capitol-Open-2025	2025-03-30
1748	Old-Capitol-Open-2025	2025-03-30
1749	Salt-City-Classic	2025-03-22
1750	Salt-City-Classic	2025-03-22
1751	Salt-City-Classic	2025-03-22
1752	Salt-City-Classic	2025-03-22
1753	Salt-City-Classic	2025-03-23
1754	Northeast-Classic-2025	2025-03-29
1755	Northeast-Classic-2025	2025-03-29
1756	Northeast-Classic-2025	2025-03-29
1757	Northeast-Classic-2025	2025-03-29
1758	Northeast-Classic-2025	2025-03-30
1759	Northeast-Classic-2025	2025-03-30
1760	T-Town-Throwdown-XX	2025-01-25
1761	T-Town-Throwdown-XX	2025-01-25
1762	T-Town-Throwdown-XX	2025-01-26
1763	Mardi-Gras-XXXVII	2025-02-22
1764	Mardi-Gras-XXXVII	2025-02-22
1765	Mardi-Gras-XXXVII	2025-02-22
1766	Tally-Classic-XIX	2025-03-15
1767	Mid-Atlantic-Warm-Up-2025	2025-01-25
1768	Mid-Atlantic-Warm-Up-2025	2025-01-26
1769	Mid-Atlantic-Warm-Up-2025	2025-01-26
1770	Queen-City-Tune-Up-2025	2025-02-15
1771	Queen-City-Tune-Up-2025	2025-02-15
1772	Queen-City-Tune-Up-2025	2025-02-15
1773	Easterns-Qualifier-2025	2025-02-22
1774	Easterns-Qualifier-2025	2025-02-22
1775	Easterns-Qualifier-2025	2025-02-22
1776	Easterns-Qualifier-2025	2025-02-23
1777	Easterns-Qualifier-2025	2025-02-23
1778	Easterns-2025	2025-03-29
1779	Easterns-2025	2025-03-30
1780	Easterns-2025	2025-03-30
1781	Easterns-2025	2025-03-30
1782	Fishbowl-2025	2025-03-29
1783	Fishbowl-2025	2025-03-29
1784	Fishbowl-2025	2025-03-29
1785	Fishbowl-2025	2025-03-29
1786	Fishbowl-2025	2025-03-30
1787	Dust-Bowl-2025	2025-02-22
1788	Dust-Bowl-2025	2025-02-22
1789	Dust-Bowl-2025	2025-02-22
1790	Dust-Bowl-2025	2025-02-23
1791	Free-State-Classic-2025	2025-03-29
1792	Free-State-Classic-2025	2025-03-29
1793	Free-State-Classic-2025	2025-03-29
1794	Free-State-Classic-2025	2025-03-30
1795	Free-State-Classic-2025	2025-03-30
1796	Mid-Atlantic-Warm-Up-2025	2025-01-26
1797	Monument-Melee-2025	2025-02-22
1798	Monument-Melee-2025	2025-02-22
1799	Oak-Creek-Challenge-2025	2025-03-01
1800	Oak-Creek-Challenge-2025	2025-03-01
1801	Oak-Creek-Challenge-2025	2025-03-01
1802	Oak-Creek-Challenge-2025	2025-03-02
1803	East-Coast-Invite-2025	2025-03-29
1804	East-Coast-Invite-2025	2025-03-29
1805	East-Coast-Invite-2025	2025-03-29
1806	East-Coast-Invite-2025	2025-03-30
1807	Dust-Bowl-2025	2025-02-22
1808	Dust-Bowl-2025	2025-02-22
1809	Dust-Bowl-2025	2025-02-23
1810	Free-State-Classic-2025	2025-03-29
1811	Free-State-Classic-2025	2025-03-29
1812	Free-State-Classic-2025	2025-03-29
1813	Free-State-Classic-2025	2025-03-30
1814	Dust-Bowl-2025	2025-02-22
1815	Dust-Bowl-2025	2025-02-22
1816	Dust-Bowl-2025	2025-02-22
1817	Free-State-Classic-2025	2025-03-29
1818	Free-State-Classic-2025	2025-03-30
1819	Bulldog-Brawl	2025-02-08
1820	Bulldog-Brawl	2025-02-08
1821	Bulldog-Brawl	2025-02-08
1822	Bulldog-Brawl	2025-02-08
1823	Bulldog-Brawl	2025-02-09
1824	Bulldog-Brawl	2025-02-09
1825	Easterns-Qualifier-2025	2025-02-22
1826	Easterns-Qualifier-2025	2025-02-22
1827	Easterns-Qualifier-2025	2025-02-22
1828	Easterns-Qualifier-2025	2025-02-23
1829	Easterns-Qualifier-2025	2025-02-23
1830	Tally-Classic-XIX	2025-03-15
1831	Tally-Classic-XIX	2025-03-15
1832	Tally-Classic-XIX	2025-03-15
1833	Huckin-in-the-Hills-XI	2025-03-02
1834	Huckin-in-the-Hills-XI	2025-03-02
1835	Spring-Spook	2025-03-15
1836	Spring-Spook	2025-03-15
1837	Spring-Spook	2025-03-16
1838	Spring-Spook	2025-03-16
1839	Spring-Spook	2025-03-16
1840	Huck-Finn-2025	2025-03-29
1841	Huck-Finn-2025	2025-03-29
1842	Huck-Finn-2025	2025-03-29
1843	Huck-Finn-2025	2025-03-30
1844	Huck-Finn-2025	2025-03-30
1845	Huck-Finn-2025	2025-03-30
1846	D-III-River-City-Showdown-2025	2025-03-01
1847	D-III-River-City-Showdown-2025	2025-03-01
1848	D-III-River-City-Showdown-2025	2025-03-01
1849	D-III-River-City-Showdown-2025	2025-03-02
1850	D-III-River-City-Showdown-2025	2025-03-02
1851	Meltdown-2025	2025-03-22
1852	Meltdown-2025	2025-03-22
1853	Meltdown-2025	2025-03-23
1854	Meltdown-2025	2025-03-23
1855	Midwest-Throwdown-2025	2025-03-01
1856	Midwest-Throwdown-2025	2025-03-01
1857	Midwest-Throwdown-2025	2025-03-02
1858	Corny-Classic-College-2025	2025-03-29
1859	Corny-Classic-College-2025	2025-03-29
1860	Corny-Classic-College-2025	2025-03-30
1861	NJ-Warmup-2025	2025-02-08
1862	NJ-Warmup-2025	2025-02-08
1863	NJ-Warmup-2025	2025-02-08
1864	Oak-Creek-Challenge-2025	2025-03-01
1865	Oak-Creek-Challenge-2025	2025-03-01
1866	Oak-Creek-Challenge-2025	2025-03-02
1867	Oak-Creek-Challenge-2025	2025-03-02
1868	Atlantic-Coast-Open-2025	2025-03-22
1869	Atlantic-Coast-Open-2025	2025-03-22
1870	Atlantic-Coast-Open-2025	2025-03-22
1871	Atlantic-Coast-Open-2025	2025-03-23
1872	Bring-The-Huckus-2025	2025-02-22
1873	Bring-The-Huckus-2025	2025-02-22
1874	Bring-The-Huckus-2025	2025-02-23
1875	Jersey-Devil-2025	2025-03-22
1876	Jersey-Devil-2025	2025-03-22
1877	Jersey-Devil-2025	2025-03-22
1878	Jersey-Devil-2025	2025-03-23
1879	Jersey-Devil-2025	2025-03-23
1880	DIII-Grand-Prix-2025	2025-02-08
1881	DIII-Grand-Prix-2025	2025-02-09
1882	Snow-Melt-2025	2025-03-01
1883	Easterns-2025	2025-03-29
1884	Easterns-2025	2025-03-29
1885	Easterns-2025	2025-03-30
1886	Easterns-2025	2025-03-30
1887	Easterns-2025	2025-03-30
1888	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1889	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1890	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1891	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1892	Oak-Creek-Challenge-2025	2025-03-01
1893	Oak-Creek-Challenge-2025	2025-03-01
1894	Oak-Creek-Challenge-2025	2025-03-02
1895	Oak-Creek-Challenge-2025	2025-03-02
1896	Oak-Creek-Challenge-2025	2025-03-02
1897	Atlantic-Coast-Open-2025	2025-03-22
1898	Atlantic-Coast-Open-2025	2025-03-22
1899	Atlantic-Coast-Open-2025	2025-03-23
1900	Bulldog-Brawl	2025-02-08
1901	Bulldog-Brawl	2025-02-08
1902	Bulldog-Brawl	2025-02-08
1903	Bulldog-Brawl	2025-02-09
1904	Corny-Classic-College-2025	2025-03-29
1905	Corny-Classic-College-2025	2025-03-29
1906	Corny-Classic-College-2025	2025-03-30
1907	Florida-Warm-Up-2025	2025-01-31
1908	Florida-Warm-Up-2025	2025-01-31
1909	Florida-Warm-Up-2025	2025-02-01
1910	Florida-Warm-Up-2025	2025-02-02
1911	Florida-Warm-Up-2025	2025-02-02
1912	Easterns-Qualifier-2025	2025-02-22
1913	Easterns-Qualifier-2025	2025-02-22
1914	Easterns-Qualifier-2025	2025-02-23
1915	Easterns-Qualifier-2025	2025-02-23
1916	D-III-River-City-Showdown-2025	2025-03-01
1917	D-III-River-City-Showdown-2025	2025-03-01
1918	D-III-River-City-Showdown-2025	2025-03-02
1919	Atlantic-Coast-Open-2025	2025-03-22
1920	Atlantic-Coast-Open-2025	2025-03-23
1921	Easterns-2025	2025-03-29
1922	Easterns-2025	2025-03-30
1923	Florida-Warm-Up-2025-Weekend-2	2025-03-02
1924	2025-Annual-Magic-City-Invite	2025-03-22
1925	2025-Annual-Magic-City-Invite	2025-03-22
1926	2025-Annual-Magic-City-Invite	2025-03-22
1927	2025-Annual-Magic-City-Invite	2025-03-23
1928	2025-Annual-Magic-City-Invite	2025-03-23
1929	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
1930	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
1931	Spring-Spook	2025-03-15
1932	Spring-Spook	2025-03-16
1933	Spring-Spook	2025-03-16
1934	Florida-Warm-Up-2025	2025-02-01
1935	Florida-Warm-Up-2025	2025-02-01
1936	Florida-Warm-Up-2025	2025-02-01
1937	Florida-Warm-Up-2025	2025-02-02
1938	Easterns-2025	2025-03-29
1939	Easterns-2025	2025-03-29
1940	Easterns-2025	2025-03-29
1941	Easterns-2025	2025-03-29
1942	Easterns-2025	2025-03-30
1943	Mid-Atlantic-Warm-Up-2025	2025-01-25
1944	Mid-Atlantic-Warm-Up-2025	2025-01-25
1945	Mid-Atlantic-Warm-Up-2025	2025-01-25
1946	Mid-Atlantic-Warm-Up-2025	2025-01-26
1947	Queen-City-Tune-Up-2025	2025-02-15
1948	Queen-City-Tune-Up-2025	2025-02-15
1949	Queen-City-Tune-Up-2025	2025-02-16
1950	Queen-City-Tune-Up-2025	2025-02-16
1951	Grand-Rapids-Invite-2025	2025-03-15
1952	Grand-Rapids-Invite-2025	2025-03-15
1953	Grand-Rapids-Invite-2025	2025-03-16
1954	Grand-Rapids-Invite-2025	2025-03-16
1955	Grand-Rapids-Invite-2025	2025-03-15
1956	Grand-Rapids-Invite-2025	2025-03-15
1957	Grand-Rapids-Invite-2025	2025-03-15
1958	Grand-Rapids-Invite-2025	2025-03-16
1959	Grand-Rapids-Invite-2025	2025-03-16
1960	Grand-Rapids-Invite-2025	2025-03-16
1961	King-of-the-Hill-2025	2025-03-29
1962	King-of-the-Hill-2025	2025-03-29
1963	King-of-the-Hill-2025	2025-03-29
1964	D-III-River-City-Showdown-2025	2025-03-01
1965	Grand-Rapids-Invite-2025	2025-03-15
1966	Grand-Rapids-Invite-2025	2025-03-15
1967	Grand-Rapids-Invite-2025	2025-03-16
1968	Grand-Rapids-Invite-2025	2025-03-16
1969	Corny-Classic-College-2025	2025-03-29
1970	Corny-Classic-College-2025	2025-03-30
1971	Corny-Classic-College-2025	2025-03-30
1972	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1973	2025-Commonwealth-Cup-Weekend-1	2025-02-15
1974	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1975	2025-Commonwealth-Cup-Weekend-1	2025-02-16
1976	Grand-Rapids-Invite-2025	2025-03-15
1977	Grand-Rapids-Invite-2025	2025-03-15
1978	Grand-Rapids-Invite-2025	2025-03-16
1979	King-of-the-Hill-2025	2025-03-29
1980	UMass-Invite-2025	2025-03-01
1981	UMass-Invite-2025	2025-03-01
1982	UMass-Invite-2025	2025-03-01
1983	UMass-Invite-2025	2025-03-02
1984	Mens-Centex-2025	2025-03-15
1985	Mens-Centex-2025	2025-03-15
1986	Mens-Centex-2025	2025-03-16
1987	Easterns-2025	2025-03-29
1988	Easterns-2025	2025-03-29
1989	Easterns-2025	2025-03-30
1990	Grand-Northeast-Kickoff-2025	2025-03-08
1991	Grand-Northeast-Kickoff-2025	2025-03-09
1992	Florida-Warm-Up-2025	2025-01-31
1993	Florida-Warm-Up-2025	2025-02-01
1994	Florida-Warm-Up-2025	2025-02-01
1995	Florida-Warm-Up-2025	2025-02-01
1996	Florida-Warm-Up-2025	2025-02-02
1997	Smoky-Mountain-Invite-2025	2025-03-01
1998	Smoky-Mountain-Invite-2025	2025-03-01
1999	Smoky-Mountain-Invite-2025	2025-03-01
2000	Smoky-Mountain-Invite-2025	2025-03-02
2001	Easterns-2025	2025-03-29
2002	Easterns-2025	2025-03-29
2003	Easterns-2025	2025-03-29
2004	Easterns-2025	2025-03-30
2005	Easterns-2025	2025-03-30
2006	Meltdown-2025	2025-03-22
2007	Meltdown-2025	2025-03-23
2008	Meltdown-2025	2025-03-23
2009	Gopher-Dome-2025	2025-02-08
2010	Gopher-Dome-2025	2025-02-08
2011	Gopher-Dome-2025	2025-02-08
2012	Gopher-Dome-2025	2025-02-12
2013	Midwest-Throwdown-2025	2025-03-01
2014	Midwest-Throwdown-2025	2025-03-01
2015	Midwest-Throwdown-2025	2025-03-01
2016	Midwest-Throwdown-2025	2025-03-02
2017	Midwest-Throwdown-2025	2025-03-02
2018	Old-Capitol-Open-2025	2025-03-29
2019	Old-Capitol-Open-2025	2025-03-30
2020	Old-Capitol-Open-2025	2025-03-30
2021	Old-Capitol-Open-2025	2025-03-30
2022	Gopher-Dome-2025	2025-02-08
2023	Gopher-Dome-2025	2025-02-08
2024	Gopher-Dome-2025	2025-02-08
2025	Old-Capitol-Open-2025	2025-03-29
2026	Old-Capitol-Open-2025	2025-03-30
2027	Old-Capitol-Open-2025	2025-03-30
2028	Old-Capitol-Open-2025	2025-03-29
2029	Old-Capitol-Open-2025	2025-03-29
2030	Old-Capitol-Open-2025	2025-03-30
2031	Old-Capitol-Open-2025	2025-03-30
2032	Mardi-Gras-XXXVII	2025-02-22
2033	Mardi-Gras-XXXVII	2025-02-22
2034	Mardi-Gras-XXXVII	2025-02-22
2035	Mardi-Gras-XXXVII	2025-02-22
2036	2025-Annual-Magic-City-Invite	2025-03-22
2037	2025-Annual-Magic-City-Invite	2025-03-22
2038	2025-Annual-Magic-City-Invite	2025-03-23
2039	T-Town-Throwdown-XX	2025-01-25
2040	T-Town-Throwdown-XX	2025-01-25
2041	T-Town-Throwdown-XX	2025-01-26
2042	Bulldog-Brawl	2025-02-08
2043	Bulldog-Brawl	2025-02-09
2044	Bulldog-Brawl	2025-02-09
2045	Mardi-Gras-XXXVII	2025-02-22
2046	Mardi-Gras-XXXVII	2025-02-22
2047	Mens-Centex-2025	2025-03-15
2048	Mens-Centex-2025	2025-03-16
2049	Huck-Finn-2025	2025-03-29
2050	Huck-Finn-2025	2025-03-29
2051	Huck-Finn-2025	2025-03-29
2052	Huck-Finn-2025	2025-03-29
2053	Huck-Finn-2025	2025-03-30
2054	Bulldog-Brawl	2025-02-08
2055	Bulldog-Brawl	2025-02-08
2056	Bulldog-Brawl	2025-02-09
2057	Mardi-Gras-XXXVII	2025-02-22
2058	Mardi-Gras-XXXVII	2025-02-22
2059	Mardi-Gras-XXXVII	2025-02-22
2060	2025-Annual-Magic-City-Invite	2025-03-22
2061	2025-Annual-Magic-City-Invite	2025-03-23
2062	2025-Annual-Magic-City-Invite	2025-03-23
2063	Midwest-Throwdown-2025	2025-03-01
2064	Midwest-Throwdown-2025	2025-03-01
2065	Midwest-Throwdown-2025	2025-03-02
2066	Midwest-Throwdown-2025	2025-03-02
2067	Mens-Centex-2025	2025-03-15
2068	Mens-Centex-2025	2025-03-15
2069	Mens-Centex-2025	2025-03-15
2070	Mens-Centex-2025	2025-03-16
2071	Mens-Centex-2025	2025-03-16
2072	Huck-Finn-2025	2025-03-29
2073	Huck-Finn-2025	2025-03-29
2074	Huck-Finn-2025	2025-03-29
2075	Huck-Finn-2025	2025-03-30
2076	Huck-Finn-2025	2025-03-30
2077	Huck-Finn-2025	2025-03-30
2078	Bulldog-Brawl	2025-02-08
2079	Dust-Bowl-2025	2025-02-22
2080	Dust-Bowl-2025	2025-02-22
2081	Dust-Bowl-2025	2025-02-22
2082	Dust-Bowl-2025	2025-02-23
2083	Dust-Bowl-2025	2025-02-23
2084	Huck-Finn-2025	2025-03-29
2085	Huck-Finn-2025	2025-03-30
2086	Corny-Classic-College-2025	2025-03-29
2087	Corny-Classic-College-2025	2025-03-29
2088	Corny-Classic-College-2025	2025-03-30
2089	Bring-The-Huckus-2025	2025-02-22
2090	Bring-The-Huckus-2025	2025-02-22
2091	Bring-The-Huckus-2025	2025-02-23
2092	MIT-Invite	2025-03-09
2093	MIT-Invite	2025-03-09
2094	PBR-State-Open	2025-03-22
2095	MIT-Invite	2025-03-09
2096	Big-Sky-Brawl-2025	2025-03-01
2097	Big-Sky-Brawl-2025	2025-03-01
2098	Big-Sky-Brawl-2025	2025-03-02
2099	Needle-in-a-Ho-Stack-2025	2025-03-29
2100	Needle-in-a-Ho-Stack-2025	2025-03-30
2101	Mid-Atlantic-Warm-Up-2025	2025-01-25
2102	Mid-Atlantic-Warm-Up-2025	2025-01-25
2103	Mid-Atlantic-Warm-Up-2025	2025-01-25
2104	D-III-River-City-Showdown-2025	2025-03-01
2105	Dust-Bowl-2025	2025-02-22
2106	Dust-Bowl-2025	2025-02-22
2107	Dust-Bowl-2025	2025-02-22
2108	Dust-Bowl-2025	2025-02-23
2109	Old-Capitol-Open-2025	2025-03-29
2110	Old-Capitol-Open-2025	2025-03-30
2111	Stanford-Open-Mens	2025-02-09
2112	Grand-Northeast-Kickoff-2025	2025-03-08
2113	Jersey-Devil-2025	2025-03-22
2114	Carolina-Kickoff-mens-2025	2025-02-01
2115	Carolina-Kickoff-mens-2025	2025-02-02
2116	Carolina-Kickoff-mens-2025	2025-02-02
2117	Queen-City-Tune-Up-2025	2025-02-15
2118	Queen-City-Tune-Up-2025	2025-02-15
2119	Queen-City-Tune-Up-2025	2025-02-16
2120	Queen-City-Tune-Up-2025	2025-02-16
2121	Smoky-Mountain-Invite-2025	2025-03-01
2122	Smoky-Mountain-Invite-2025	2025-03-01
2123	Smoky-Mountain-Invite-2025	2025-03-01
2124	Smoky-Mountain-Invite-2025	2025-03-02
2125	Smoky-Mountain-Invite-2025	2025-03-02
2126	Easterns-2025	2025-03-29
2127	Easterns-2025	2025-03-29
2128	Easterns-2025	2025-03-30
2129	Carolina-Kickoff-mens-2025	2025-02-01
2130	Carolina-Kickoff-mens-2025	2025-02-01
2131	Carolina-Kickoff-mens-2025	2025-02-02
2132	Carolina-Kickoff-mens-2025	2025-02-02
2133	Queen-City-Tune-Up-2025	2025-02-15
2134	Queen-City-Tune-Up-2025	2025-02-15
2135	Queen-City-Tune-Up-2025	2025-02-16
2136	Easterns-Qualifier-2025	2025-02-22
2137	Easterns-Qualifier-2025	2025-02-23
2138	Easterns-2025	2025-03-29
2139	Easterns-2025	2025-03-29
2140	Easterns-2025	2025-03-29
2141	Easterns-2025	2025-03-30
2142	2025-Commonwealth-Cup-Weekend-1	2025-02-15
2143	2025-Commonwealth-Cup-Weekend-1	2025-02-16
2144	2025-Commonwealth-Cup-Weekend-1	2025-02-16
2145	Needle-in-a-Ho-Stack-2025	2025-03-29
2146	Needle-in-a-Ho-Stack-2025	2025-03-30
2147	D-III-River-City-Showdown-2025	2025-03-02
2148	2025-Commonwealth-Cup-Weekend-1	2025-02-15
2149	2025-Commonwealth-Cup-Weekend-1	2025-02-16
2150	Joint-Summit-2025	2025-03-01
2151	Carolina-Kickoff-mens-2025	2025-02-01
2152	Carolina-Kickoff-mens-2025	2025-02-02
2153	Carolina-Kickoff-mens-2025	2025-02-02
2154	Carolina-Kickoff-mens-2025	2025-02-02
2155	Queen-City-Tune-Up-2025	2025-02-15
2156	Queen-City-Tune-Up-2025	2025-02-16
2157	Atlantic-Coast-Open-2025	2025-03-23
2158	Atlantic-Coast-Open-2025	2025-03-23
2159	Carolina-Kickoff-mens-2025	2025-02-01
2160	Carolina-Kickoff-mens-2025	2025-02-01
2161	Queen-City-Tune-Up-2025	2025-02-15
2162	Queen-City-Tune-Up-2025	2025-02-16
2163	Easterns-Qualifier-2025	2025-02-22
2164	Easterns-Qualifier-2025	2025-02-22
2165	Easterns-Qualifier-2025	2025-02-23
2166	Easterns-2025	2025-03-29
2167	Easterns-2025	2025-03-30
2168	Tally-Classic-XIX	2025-03-15
2169	Corny-Classic-College-2025	2025-03-29
2170	Corny-Classic-College-2025	2025-03-30
2171	Corny-Classic-College-2025	2025-03-30
2172	Big-D-in-Little-D-2025	2025-02-01
2173	Big-D-in-Little-D-2025	2025-02-01
2174	Big-D-in-Little-D-2025	2025-02-01
2175	Big-D-in-Little-D-2025	2025-02-01
2176	Big-D-in-Little-D-2025	2025-02-02
2177	Dust-Bowl-2025	2025-02-22
2178	Dust-Bowl-2025	2025-02-23
2179	Mens-Centex-2025	2025-03-15
2180	Presidents-Day-Invite-2025	2025-02-15
2181	Presidents-Day-Invite-2025	2025-02-16
2182	Presidents-Day-Invite-2025	2025-02-16
2183	Presidents-Day-Invite-2025	2025-02-16
2184	Presidents-Day-Invite-2025	2025-02-17
2185	Smoky-Mountain-Invite-2025	2025-03-01
2186	Smoky-Mountain-Invite-2025	2025-03-01
2187	Smoky-Mountain-Invite-2025	2025-03-01
2188	Smoky-Mountain-Invite-2025	2025-03-02
2189	Smoky-Mountain-Invite-2025	2025-03-02
2190	Easterns-2025	2025-03-29
2191	Easterns-2025	2025-03-29
2192	Easterns-2025	2025-03-30
2193	Easterns-2025	2025-03-30
2194	New-England-Open-2025	2025-03-29
2195	New-England-Open-2025	2025-03-29
2196	New-England-Open-2025	2025-03-30
2197	Jersey-Devil-2025	2025-03-22
2198	Jersey-Devil-2025	2025-03-22
2199	Jersey-Devil-2025	2025-03-22
2200	Jersey-Devil-2025	2025-03-23
2201	New-England-Open-2025	2025-03-29
2202	New-England-Open-2025	2025-03-30
2203	New-Year-Fest-2025	2025-01-26
2204	Sinvite-2025	2025-03-29
2205	Sinvite-2025	2025-03-30
2206	Sinvite-2025	2025-03-30
2207	Dust-Bowl-2025	2025-02-22
2208	Dust-Bowl-2025	2025-02-22
2209	Dust-Bowl-2025	2025-02-22
2210	Dust-Bowl-2025	2025-02-23
2211	Meltdown-2025	2025-03-22
2212	Meltdown-2025	2025-03-22
2213	Meltdown-2025	2025-03-22
2214	Meltdown-2025	2025-03-22
2215	Meltdown-2025	2025-03-23
2216	Meltdown-2025	2025-03-23
2217	Old-Capitol-Open-2025	2025-03-29
2218	Old-Capitol-Open-2025	2025-03-29
2219	Stanford-Invite-2025-Mens	2025-03-08
2220	Stanford-Invite-2025-Mens	2025-03-08
2221	Stanford-Invite-2025-Mens	2025-03-09
2222	Stanford-Invite-2025-Mens	2025-03-09
2223	Huck-Finn-2025	2025-03-29
2224	Huck-Finn-2025	2025-03-29
2225	Huck-Finn-2025	2025-03-29
2226	Huck-Finn-2025	2025-03-30
2227	Easterns-Qualifier-2025	2025-02-22
2228	Easterns-Qualifier-2025	2025-02-22
2229	Easterns-Qualifier-2025	2025-02-23
2230	Easterns-Qualifier-2025	2025-02-23
2231	Grand-Rapids-Invite-2025	2025-03-15
2232	Grand-Rapids-Invite-2025	2025-03-16
2233	Grand-Rapids-Invite-2025	2025-03-16
2234	Huck-Finn-2025	2025-03-29
2235	Huck-Finn-2025	2025-03-30
2236	Corny-Classic-College-2025	2025-03-30
2237	Tally-Classic-XIX	2025-03-15
2238	NJ-Warmup-2025	2025-02-08
2239	NJ-Warmup-2025	2025-02-08
2240	NJ-Warmup-2025	2025-02-08
2241	East-Coast-Invite-2025	2025-03-29
2242	East-Coast-Invite-2025	2025-03-29
2243	East-Coast-Invite-2025	2025-03-30
2244	East-Coast-Invite-2025	2025-03-30
2245	D-III-River-City-Showdown-2025	2025-03-02
2246	D-III-River-City-Showdown-2025	2025-03-02
2247	Spring-Spook	2025-03-15
2248	Spring-Spook	2025-03-16
2249	DIII-Grand-Prix-2025	2025-02-08
2250	DIII-Grand-Prix-2025	2025-02-08
2251	DIII-Grand-Prix-2025	2025-02-08
2252	DIII-Grand-Prix-2025	2025-02-09
2253	Southwest-Showdown-2025	2025-03-29
2254	Southwest-Showdown-2025	2025-03-30
2255	2025-Commonwealth-Cup-Weekend-1	2025-02-16
2256	Huckin-in-the-Hills-XI	2025-03-01
2257	Grand-Rapids-Invite-2025	2025-03-15
2258	Grand-Rapids-Invite-2025	2025-03-15
2259	Grand-Rapids-Invite-2025	2025-03-16
2260	Grand-Rapids-Invite-2025	2025-03-16
2261	Carolina-Kickoff-mens-2025	2025-02-01
2262	Carolina-Kickoff-mens-2025	2025-02-02
2263	Easterns-Qualifier-2025	2025-02-22
2264	Huck-Finn-2025	2025-03-29
2265	Huck-Finn-2025	2025-03-29
2266	Huck-Finn-2025	2025-03-29
2267	Huck-Finn-2025	2025-03-30
2268	Huck-Finn-2025	2025-03-30
2269	Huckin-in-the-Hills-XI	2025-03-01
2270	Huckin-in-the-Hills-XI	2025-03-01
2271	Huckin-in-the-Hills-XI	2025-03-02
2272	Big-D-in-Little-D-2025	2025-02-01
2273	Big-D-in-Little-D-2025	2025-02-01
2274	Big-D-in-Little-D-2025	2025-02-01
2275	Big-D-in-Little-D-2025	2025-02-02
2276	Big-D-in-Little-D-2025	2025-02-02
2277	Dust-Bowl-2025	2025-02-22
2278	Dust-Bowl-2025	2025-02-22
2279	Dust-Bowl-2025	2025-02-23
2280	Huckfest-2025	2025-03-29
2281	Huckfest-2025	2025-03-29
2282	Huckfest-2025	2025-03-29
2283	Huckfest-2025	2025-03-30
2284	Huckfest-2025	2025-03-30
2285	Dust-Bowl-2025	2025-02-22
2286	Dust-Bowl-2025	2025-02-23
2287	Mens-Centex-2025	2025-03-15
2288	Mens-Centex-2025	2025-03-15
2289	Mens-Centex-2025	2025-03-16
2290	Mens-Centex-2025	2025-03-16
2291	Huck-Finn-2025	2025-03-29
2292	Huck-Finn-2025	2025-03-29
2293	Huck-Finn-2025	2025-03-30
2294	Huck-Finn-2025	2025-03-30
2295	Dust-Bowl-2025	2025-02-22
2296	Dust-Bowl-2025	2025-02-23
2297	Dust-Bowl-2025	2025-02-23
2298	Mens-Centex-2025	2025-03-15
2299	Mens-Centex-2025	2025-03-15
2300	Mens-Centex-2025	2025-03-15
2301	Mens-Centex-2025	2025-03-16
2302	Mens-Centex-2025	2025-03-16
2303	Free-State-Classic-2025	2025-03-29
2304	Free-State-Classic-2025	2025-03-30
2305	Pac-Con-2025	2025-01-25
2306	Pac-Con-2025	2025-01-25
2307	Pac-Con-2025	2025-01-25
2308	Pac-Con-2025	2025-01-26
2309	Pac-Con-2025	2025-01-26
2310	Presidents-Day-Invite-2025	2025-02-16
2311	Presidents-Day-Invite-2025	2025-02-17
2312	Smoky-Mountain-Invite-2025	2025-03-01
2313	Smoky-Mountain-Invite-2025	2025-03-02
2314	Smoky-Mountain-Invite-2025	2025-03-02
2315	Easterns-2025	2025-03-30
2316	Pac-Con-2025	2025-01-25
2317	Pac-Con-2025	2025-01-25
2318	Pac-Con-2025	2025-01-26
2319	Pac-Con-2025	2025-01-26
2320	Pac-Con-2025	2025-01-26
2321	PLU-BBQ-men	2025-03-01
2322	PLU-BBQ-men	2025-03-02
2323	PLU-BBQ-men	2025-03-02
2324	Pac-Con-2025	2025-01-25
2325	Pac-Con-2025	2025-01-25
2326	Pac-Con-2025	2025-01-26
2327	Presidents-Day-Invite-2025	2025-02-16
2328	Smoky-Mountain-Invite-2025	2025-03-01
2329	Smoky-Mountain-Invite-2025	2025-03-01
2330	Northwest-Challenge-2025-mens	2025-03-22
2331	Northwest-Challenge-2025-mens	2025-03-22
2332	Northwest-Challenge-2025-mens	2025-03-22
2333	Northwest-Challenge-2025-mens	2025-03-23
2334	Northwest-Challenge-2025-mens	2025-03-23
2335	Northwest-Challenge-2025-mens	2025-03-23
2336	Pac-Con-2025	2025-01-25
2337	Pac-Con-2025	2025-01-26
2338	Pac-Con-2025	2025-01-26
2339	PLU-BBQ-men	2025-03-02
2340	Salt-City-Classic	2025-03-22
2341	Salt-City-Classic	2025-03-22
2342	Salt-City-Classic	2025-03-22
2343	Salt-City-Classic	2025-03-23
2344	Salt-City-Classic	2025-03-23
2345	DIII-Grand-Prix-2025	2025-02-09
2346	PLU-BBQ-men	2025-03-01
2347	PLU-BBQ-men	2025-03-01
2348	PLU-BBQ-men	2025-03-01
2349	PLU-BBQ-men	2025-03-02
2350	PLU-BBQ-men	2025-03-02
2351	PLU-BBQ-men	2025-03-02
2352	Queen-City-Tune-Up-2025	2025-02-15
2353	Queen-City-Tune-Up-2025	2025-02-16
2354	Smoky-Mountain-Invite-2025	2025-03-02
2355	Smoky-Mountain-Invite-2025	2025-03-02
2356	Easterns-2025	2025-03-29
2357	Garden-State-2025	2025-03-01
2358	Garden-State-2025	2025-03-02
2359	Garden-State-2025	2025-03-02
2360	Jersey-Devil-2025	2025-03-22
2361	Jersey-Devil-2025	2025-03-22
2362	Northeast-Classic-2025	2025-03-29
2363	Northeast-Classic-2025	2025-03-30
2364	Northeast-Classic-2025	2025-03-30
2365	Huckin-in-the-Hills-XI	2025-03-02
2366	Mid-Atlantic-Warm-Up-2025	2025-01-25
2367	Mid-Atlantic-Warm-Up-2025	2025-01-25
2368	NJ-Warmup-2025	2025-02-08
2369	East-Coast-Invite-2025	2025-03-29
2370	East-Coast-Invite-2025	2025-03-30
2371	Garden-State-2025	2025-03-01
2372	Garden-State-2025	2025-03-01
2373	Garden-State-2025	2025-03-01
2374	Garden-State-2025	2025-03-02
2375	Northeast-Classic-2025	2025-03-29
2376	Northeast-Classic-2025	2025-03-29
2377	Northeast-Classic-2025	2025-03-29
2378	Northeast-Classic-2025	2025-03-29
2379	Northeast-Classic-2025	2025-03-30
2380	Northeast-Classic-2025	2025-03-30
2381	Northeast-Classic-2025	2025-03-30
2382	Florida-Warm-Up-2025	2025-01-31
2383	Florida-Warm-Up-2025	2025-02-01
2384	Florida-Warm-Up-2025	2025-02-02
2385	Smoky-Mountain-Invite-2025	2025-03-01
2386	2025-Commonwealth-Cup-Weekend-1	2025-02-15
2387	Grand-Rapids-Invite-2025	2025-03-15
2388	Grand-Rapids-Invite-2025	2025-03-15
2389	Grand-Rapids-Invite-2025	2025-03-16
2390	East-Coast-Invite-2025	2025-03-29
2391	East-Coast-Invite-2025	2025-03-29
2392	East-Coast-Invite-2025	2025-03-30
2393	Stanford-Open-Mens	2025-02-08
2394	Stanford-Open-Mens	2025-02-08
2395	PLU-BBQ-men	2025-03-01
2396	PLU-BBQ-men	2025-03-01
2397	PLU-BBQ-men	2025-03-02
2398	PLU-BBQ-men	2025-03-02
2399	Pac-Con-2025	2025-01-26
2400	PLU-BBQ-men	2025-03-01
2401	PLU-BBQ-men	2025-03-02
2402	PLU-BBQ-men	2025-03-02
2403	NJ-Warmup-2025	2025-02-08
2404	NJ-Warmup-2025	2025-02-08
2405	East-Coast-Invite-2025	2025-03-29
2406	Ocean-State-Invite-2025	2025-03-29
2407	Ocean-State-Invite-2025	2025-03-30
2408	Ocean-State-Invite-2025	2025-03-30
2409	DIII-Grand-Prix-2025	2025-02-09
2410	DIII-Grand-Prix-2025	2025-02-09
2411	D-III-River-City-Showdown-2025	2025-03-01
2412	Northwest-Challenge-D3	2025-03-29
2413	Northwest-Challenge-D3	2025-03-29
2414	Florida-Warm-Up-2025	2025-01-31
2415	Florida-Warm-Up-2025	2025-01-31
2416	Florida-Warm-Up-2025	2025-02-01
2417	Florida-Warm-Up-2025	2025-02-01
2418	Florida-Warm-Up-2025	2025-02-02
2419	Florida-Warm-Up-2025	2025-02-02
2420	Huck-Finn-2025	2025-03-29
2421	Huck-Finn-2025	2025-03-30
2422	Midwest-Throwdown-2025	2025-03-01
2423	Midwest-Throwdown-2025	2025-03-02
2424	Corny-Classic-College-2025	2025-03-29
2425	Corny-Classic-College-2025	2025-03-29
2426	PLU-BBQ-men	2025-03-02
2427	Salt-City-Classic	2025-03-22
2428	Salt-City-Classic	2025-03-22
2429	Salt-City-Classic	2025-03-22
2430	Salt-City-Classic	2025-03-23
2431	Ocean-State-Invite-2025	2025-03-29
2432	Ocean-State-Invite-2025	2025-03-29
2433	Ocean-State-Invite-2025	2025-03-29
2434	Salt-City-Classic	2025-03-22
2435	Salt-City-Classic	2025-03-22
2436	Salt-City-Classic	2025-03-23
2437	Ocean-State-Invite-2025	2025-03-29
2438	Ocean-State-Invite-2025	2025-03-29
2439	Ocean-State-Invite-2025	2025-03-30
2440	Ocean-State-Invite-2025	2025-03-30
2441	Big-D-in-Little-D-2025	2025-02-01
2442	Big-D-in-Little-D-2025	2025-02-01
2443	Big-D-in-Little-D-2025	2025-02-02
2444	Huckfest-2025	2025-03-29
2445	Huckfest-2025	2025-03-29
2446	Huckfest-2025	2025-03-30
2447	Mid-Atlantic-Warm-Up-2025	2025-01-25
2448	Mid-Atlantic-Warm-Up-2025	2025-01-25
2449	Mid-Atlantic-Warm-Up-2025	2025-01-26
2450	D-III-River-City-Showdown-2025	2025-03-02
2451	Mid-Atlantic-Warm-Up-2025	2025-01-25
2452	Mid-Atlantic-Warm-Up-2025	2025-01-26
2453	Oak-Creek-Challenge-2025	2025-03-01
2454	Oak-Creek-Challenge-2025	2025-03-01
2455	Oak-Creek-Challenge-2025	2025-03-02
2456	Oak-Creek-Challenge-2025	2025-03-02
2457	Atlantic-Coast-Open-2025	2025-03-22
2458	Atlantic-Coast-Open-2025	2025-03-22
2459	Atlantic-Coast-Open-2025	2025-03-23
2460	D-III-River-City-Showdown-2025	2025-03-01
2461	Salt-City-Classic	2025-03-22
2462	Salt-City-Classic	2025-03-22
2463	Salt-City-Classic	2025-03-23
2464	Ocean-State-Invite-2025	2025-03-29
2465	Grand-Rapids-Invite-2025	2025-03-15
2466	Grand-Rapids-Invite-2025	2025-03-15
2467	Grand-Rapids-Invite-2025	2025-03-16
2468	Grand-Rapids-Invite-2025	2025-03-16
2469	Grand-Rapids-Invite-2025	2025-03-16
2470	Meltdown-2025	2025-03-22
2471	Meltdown-2025	2025-03-22
2472	Meltdown-2025	2025-03-22
2473	Bring-The-Huckus-2025	2025-02-22
2474	Bring-The-Huckus-2025	2025-02-23
2475	Northeast-Classic-2025	2025-03-29
2476	Northeast-Classic-2025	2025-03-29
2477	Northeast-Classic-2025	2025-03-29
2478	Northeast-Classic-2025	2025-03-30
2479	Northeast-Classic-2025	2025-03-30
2480	Oak-Creek-Challenge-2025	2025-03-01
2481	Oak-Creek-Challenge-2025	2025-03-02
2482	East-Coast-Invite-2025	2025-03-29
2483	East-Coast-Invite-2025	2025-03-29
2484	East-Coast-Invite-2025	2025-03-29
2485	Bulldog-Brawl	2025-02-09
2486	Garden-State-2025	2025-03-01
2487	Garden-State-2025	2025-03-01
2488	First-State-Invite	2025-03-08
2489	Mardi-Gras-XXXVII	2025-02-22
2490	Huckfest-2025	2025-03-29
2491	Huckfest-2025	2025-03-29
2492	Huckfest-2025	2025-03-30
2493	2025-Annual-Magic-City-Invite	2025-03-22
2494	2025-Annual-Magic-City-Invite	2025-03-23
2495	Stanford-Open-Mens	2025-02-08
2496	Stanford-Open-Mens	2025-02-09
2497	Vice-Presidents-Day-Invite-2025	2025-02-15
2498	Southwest-Showdown-2025	2025-03-29
2499	Southwest-Showdown-2025	2025-03-29
2500	Southwest-Showdown-2025	2025-03-30
2501	Southwest-Showdown-2025	2025-03-30
2502	Sinvite-2025	2025-03-29
2503	Vice-Presidents-Day-Invite-2025	2025-02-15
2504	Southwest-Showdown-2025	2025-03-29
2505	Southwest-Showdown-2025	2025-03-30
2506	Pres-Day-Quals-men	2025-02-01
2507	Pres-Day-Quals-men	2025-02-02
2508	Pres-Day-Quals-men	2025-02-02
2509	Stanford-Invite-2025-Mens	2025-03-08
2510	Stanford-Invite-2025-Mens	2025-03-09
2511	Stanford-Invite-2025-Mens	2025-03-09
2512	Stanford-Open-Mens	2025-02-08
2513	PLU-BBQ-men	2025-03-01
2514	PLU-BBQ-men	2025-03-01
2515	PLU-BBQ-men	2025-03-01
2516	Natalies-Animal-Rescue-2025	2025-03-15
2517	Natalies-Animal-Rescue-2025	2025-03-15
2518	Northeast-Classic-2025	2025-03-29
2519	Northeast-Classic-2025	2025-03-29
2520	Northeast-Classic-2025	2025-03-30
2521	Pac-Con-2025	2025-01-25
2522	Bring-The-Huckus-2025	2025-02-23
2523	Northeast-Classic-2025	2025-03-29
2524	Northeast-Classic-2025	2025-03-29
2525	Northeast-Classic-2025	2025-03-29
2526	Northeast-Classic-2025	2025-03-30
2527	Northeast-Classic-2025	2025-03-30
2528	Northeast-Classic-2025	2025-03-30
2529	Carolina-Kickoff-mens-2025	2025-02-02
2530	Queen-City-Tune-Up-2025	2025-02-16
2531	Easterns-Qualifier-2025	2025-02-22
2532	Easterns-Qualifier-2025	2025-02-23
2533	2025-Commonwealth-Cup-Weekend-1	2025-02-16
2534	Needle-in-a-Ho-Stack-2025	2025-03-29
2535	Needle-in-a-Ho-Stack-2025	2025-03-29
2536	Florida-Warm-Up-2025	2025-02-01
2537	Florida-Warm-Up-2025	2025-02-02
2538	Mardi-Gras-XXXVII	2025-02-22
2539	Mardi-Gras-XXXVII	2025-02-22
2540	2025-Annual-Magic-City-Invite	2025-03-22
2541	Stanford-Invite-2025-Mens	2025-03-08
2542	Stanford-Invite-2025-Mens	2025-03-08
2543	Bulldog-Brawl	2025-02-08
2544	Midwest-Throwdown-2025	2025-03-01
2545	Midwest-Throwdown-2025	2025-03-02
2546	Midwest-Throwdown-2025	2025-03-02
2547	Huck-Finn-2025	2025-03-30
2548	Old-Capitol-Open-2025	2025-03-29
2549	Old-Capitol-Open-2025	2025-03-30
2550	Old-Capitol-Open-2025	2025-03-30
2551	Gopher-Dome-2025	2025-02-08
2552	Gopher-Dome-2025	2025-02-08
2553	Midwest-Throwdown-2025	2025-03-01
2554	Midwest-Throwdown-2025	2025-03-01
2555	Midwest-Throwdown-2025	2025-03-02
2556	Midwest-Throwdown-2025	2025-03-02
2557	Meltdown-2025	2025-03-23
2558	Meltdown-2025	2025-03-23
2559	Huck-Finn-2025	2025-03-29
2560	Meltdown-2025	2025-03-22
2561	Meltdown-2025	2025-03-22
2562	Old-Capitol-Open-2025	2025-03-29
2563	Old-Capitol-Open-2025	2025-03-29
2564	Old-Capitol-Open-2025	2025-03-30
2565	Santa-Barbara-Invite-2025	2025-01-25
2566	Santa-Barbara-Invite-2025	2025-01-26
2567	Presidents-Day-Invite-2025	2025-02-15
2568	Presidents-Day-Invite-2025	2025-02-15
2569	Presidents-Day-Invite-2025	2025-02-17
2570	Stanford-Invite-2025-Mens	2025-03-09
2571	Stanford-Open-Mens	2025-02-09
2572	Stanford-Open-Mens	2025-02-09
2573	Big-D-in-Little-D-2025	2025-02-01
2574	Big-D-in-Little-D-2025	2025-02-01
2575	Huckfest-2025	2025-03-29
2576	Huckfest-2025	2025-03-30
2577	Garden-State-2025	2025-03-02
2578	Garden-State-2025	2025-03-02
2579	Northeast-Classic-2025	2025-03-29
2580	Northeast-Classic-2025	2025-03-29
2581	Northeast-Classic-2025	2025-03-30
2582	Northeast-Classic-2025	2025-03-30
2583	Oak-Creek-Challenge-2025	2025-03-01
2584	Oak-Creek-Challenge-2025	2025-03-02
2585	Oak-Creek-Challenge-2025	2025-03-02
2586	Northeast-Classic-2025	2025-03-29
2587	Northeast-Classic-2025	2025-03-29
2588	Northeast-Classic-2025	2025-03-30
2589	Northeast-Classic-2025	2025-03-29
2590	Northeast-Classic-2025	2025-03-30
2591	Easterns-Qualifier-2025	2025-02-23
2592	Salt-City-Classic	2025-03-22
2593	Salt-City-Classic	2025-03-23
2594	East-Coast-Invite-2025	2025-03-29
2595	East-Coast-Invite-2025	2025-03-29
2596	East-Coast-Invite-2025	2025-03-30
2597	East-Coast-Invite-2025	2025-03-30
2598	Northeast-Classic-2025	2025-03-29
2599	Salt-City-Classic	2025-03-22
2600	Salt-City-Classic	2025-03-23
2601	East-Coast-Invite-2025	2025-03-29
2602	East-Coast-Invite-2025	2025-03-30
2603	East-Coast-Invite-2025	2025-03-30
2604	Oak-Creek-Challenge-2025	2025-03-01
2605	Bring-The-Huckus-2025	2025-02-22
2606	Northeast-Classic-2025	2025-03-29
2607	Garden-State-2025	2025-03-01
2608	Easterns-Qualifier-2025	2025-02-22
2609	East-Coast-Invite-2025	2025-03-29
2610	East-Coast-Invite-2025	2025-03-29
2611	East-Coast-Invite-2025	2025-03-30
2612	Mens-Centex-2025	2025-03-15
2613	Huckfest-2025	2025-03-29
2614	Queen-City-Tune-Up-2025	2025-02-15
2615	Queen-City-Tune-Up-2025	2025-02-16
2616	Smoky-Mountain-Invite-2025	2025-03-01
2617	Smoky-Mountain-Invite-2025	2025-03-02
2618	Needle-in-a-Ho-Stack-2025	2025-03-30
2619	Bulldog-Brawl	2025-02-09
2620	Bulldog-Brawl	2025-02-09
2621	T-Town-Throwdown-XX	2025-01-25
2622	T-Town-Throwdown-XX	2025-01-26
2623	T-Town-Throwdown-XX	2025-01-26
2624	Mardi-Gras-XXXVII	2025-02-22
2625	Needle-in-a-Ho-Stack-2025	2025-03-29
2626	T-Town-Throwdown-XX	2025-01-26
2627	Florida-Warm-Up-2025	2025-01-31
2628	Florida-Warm-Up-2025	2025-01-31
2629	Florida-Warm-Up-2025	2025-02-02
2630	Smoky-Mountain-Invite-2025	2025-03-01
2631	Mens-Centex-2025	2025-03-15
2632	Mens-Centex-2025	2025-03-15
2633	Mens-Centex-2025	2025-03-15
2634	Mens-Centex-2025	2025-03-16
2635	Mens-Centex-2025	2025-03-16
2636	Florida-Warm-Up-2025	2025-01-31
2637	Mardi-Gras-XXXVII	2025-02-22
2638	Huck-Finn-2025	2025-03-29
2639	Mens-Centex-2025	2025-03-15
2640	Mens-Centex-2025	2025-03-15
2641	Mens-Centex-2025	2025-03-16
2642	Big-D-in-Little-D-2025	2025-02-01
2643	Big-D-in-Little-D-2025	2025-02-02
2644	Big-D-in-Little-D-2025	2025-02-02
2645	Mardi-Gras-XXXVII	2025-02-22
2646	Mardi-Gras-XXXVII	2025-02-22
2647	Mens-Centex-2025	2025-03-16
2648	Big-D-in-Little-D-2025	2025-02-01
2649	Big-D-in-Little-D-2025	2025-02-02
2650	Big-D-in-Little-D-2025	2025-02-02
2651	Dust-Bowl-2025	2025-02-22
2652	Dust-Bowl-2025	2025-02-22
2653	Mens-Centex-2025	2025-03-16
2654	Dust-Bowl-2025	2025-02-22
2655	Mens-Centex-2025	2025-03-16
2656	Corny-Classic-College-2025	2025-03-30
2657	Grand-Rapids-Invite-2025	2025-03-16
2658	Grand-Rapids-Invite-2025	2025-03-16
2659	Natalies-Animal-Rescue-2025	2025-03-15
2660	Mardi-Gras-XXXVII	2025-02-22
2661	Meltdown-2025	2025-03-22
2662	Meltdown-2025	2025-03-22
2663	Queen-City-Tune-Up-2025	2025-02-15
2664	Queen-City-Tune-Up-2025	2025-02-15
2665	Mens-Centex-2025	2025-03-15
2666	Easterns-2025	2025-03-29
2667	Easterns-2025	2025-03-30
2668	UMass-Invite-2025	2025-03-01
2669	UMass-Invite-2025	2025-03-01
2670	UMass-Invite-2025	2025-03-02
2671	Florida-Warm-Up-2025	2025-01-31
2672	Mens-Centex-2025	2025-03-15
2673	Santa-Barbara-Invite-2025	2025-01-25
2674	Santa-Barbara-Invite-2025	2025-01-25
2675	Santa-Barbara-Invite-2025	2025-01-26
2676	Presidents-Day-Invite-2025	2025-02-15
2677	Presidents-Day-Invite-2025	2025-02-16
2678	Presidents-Day-Invite-2025	2025-02-17
2679	Stanford-Invite-2025-Mens	2025-03-08
2680	Northwest-Challenge-2025-mens	2025-03-22
2681	Northwest-Challenge-2025-mens	2025-03-22
2682	Northwest-Challenge-2025-mens	2025-03-23
2683	Stanford-Open-Mens	2025-02-08
2684	Stanford-Open-Mens	2025-02-09
2685	Bulldog-Brawl	2025-02-09
2686	Presidents-Day-Invite-2025	2025-02-15
2687	Presidents-Day-Invite-2025	2025-02-15
2688	Northwest-Challenge-2025-mens	2025-03-22
2689	Northwest-Challenge-2025-mens	2025-03-22
2690	Northwest-Challenge-2025-mens	2025-03-22
2691	Florida-Warm-Up-2025	2025-01-31
2692	Northwest-Challenge-2025-mens	2025-03-22
2693	Mens-Centex-2025	2025-03-16
2694	King-of-the-Hill-2025	2025-03-29
2695	Corny-Classic-College-2025	2025-03-29
2696	Florida-Warm-Up-2025	2025-02-01
2697	Florida-Warm-Up-2025	2025-02-01
2698	Smoky-Mountain-Invite-2025	2025-03-02
2699	Mid-Atlantic-Warm-Up-2025	2025-01-25
2700	Mid-Atlantic-Warm-Up-2025	2025-01-26
2701	UMass-Invite-2025	2025-03-01
2702	UMass-Invite-2025	2025-03-02
2703	Santa-Barbara-Invite-2025	2025-01-26
2704	Northwest-Challenge-2025-mens	2025-03-22
2705	Northwest-Challenge-2025-mens	2025-03-23
2706	Northwest-Challenge-2025-mens	2025-03-23
2707	Monument-Melee-2025	2025-02-23
2708	Monument-Melee-2025	2025-02-23
2709	Jersey-Devil-2025	2025-03-23
2710	Carolina-Kickoff-mens-2025	2025-02-02
2711	Easterns-Qualifier-2025	2025-02-23
2712	Northwest-Challenge-2025-mens	2025-03-22
2713	Northwest-Challenge-2025-mens	2025-03-23
2714	Monument-Melee-2025	2025-02-22
2715	Florida-Warm-Up-2025	2025-02-01
2716	Stanford-Invite-2025-Mens	2025-03-08
2717	Atlantic-Coast-Open-2025	2025-03-22
2718	Atlantic-Coast-Open-2025	2025-03-22
2719	Fishbowl-2025	2025-03-29
2720	Fishbowl-2025	2025-03-29
2721	Fishbowl-2025	2025-03-30
2722	Fishbowl-2025	2025-03-30
2723	Atlantic-Coast-Open-2025	2025-03-23
2724	PLU-BBQ-men	2025-03-01
2725	PLU-BBQ-men	2025-03-01
2726	Palouse-Open-2025	2025-03-15
2727	Palouse-Open-2025	2025-03-16
2728	Florida-Warm-Up-2025	2025-02-02
2729	Midwest-Throwdown-2025	2025-03-01
2730	Midwest-Throwdown-2025	2025-03-02
2731	Old-Capitol-Open-2025	2025-03-29
2732	Old-Capitol-Open-2025	2025-03-29
2733	Old-Capitol-Open-2025	2025-03-30
2734	Northwest-Challenge-D3	2025-03-29
2735	New-England-Open-2025	2025-03-29
2736	New-England-Open-2025	2025-03-30
2737	New-England-Open-2025	2025-03-30
2738	UMass-Invite-2025	2025-03-02
2739	Meltdown-2025	2025-03-22
2740	Grand-Rapids-Invite-2025	2025-03-15
2741	Grand-Rapids-Invite-2025	2025-03-15
2742	Grand-Rapids-Invite-2025	2025-03-16
2743	Gopher-Dome-2025	2025-02-08
2744	Midwest-Throwdown-2025	2025-03-02
2745	Midwest-Throwdown-2025	2025-03-02
2746	UMass-Invite-2025	2025-03-01
2747	UMass-Invite-2025	2025-03-01
2748	Midwest-Throwdown-2025	2025-03-01
2749	Easterns-2025	2025-03-29
2750	Queen-City-Tune-Up-2025	2025-02-15
2751	Queen-City-Tune-Up-2025	2025-02-16
2752	Huckin-in-the-Hills-XI	2025-03-01
2753	Fishbowl-2025	2025-03-29
2754	Fishbowl-2025	2025-03-30
2755	Fishbowl-2025	2025-03-30
2756	UMass-Invite-2025	2025-03-01
2757	Fishbowl-2025	2025-03-29
2758	New-England-Open-2025	2025-03-29
2759	Stanford-Invite-2025-Mens	2025-03-08
2760	PLU-BBQ-men	2025-03-01
2761	East-Coast-Invite-2025	2025-03-29
2762	Grand-Rapids-Invite-2025	2025-03-15
2763	Grand-Rapids-Invite-2025	2025-03-15
2764	Meltdown-2025	2025-03-22
2765	Old-Capitol-Open-2025	2025-03-29
2766	Old-Capitol-Open-2025	2025-03-30
2767	Midwest-Throwdown-2025	2025-03-01
2768	Grand-Rapids-Invite-2025	2025-03-15
2769	Grand-Rapids-Invite-2025	2025-03-16
2770	Grand-Rapids-Invite-2025	2025-03-16
2771	Midwest-Throwdown-2025	2025-03-02
2772	Old-Capitol-Open-2025	2025-03-30
2773	Old-Capitol-Open-2025	2025-03-29
2774	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-01
2775	The-Dayton-Ultimate-Disc-Experience-DUDE	2025-03-02
\.


--
-- Data for Name: rankings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.rankings (team_id, algorithm, as_of_date, rank) FROM stdin;
1	SWCI	2025-01-26	65
1	ELO	2025-01-26	9
1	Massey	2025-01-26	344
1	USAU	2025-01-26	32
1	SWCI	2025-02-02	128
1	ELO	2025-02-02	47
1	Massey	2025-02-02	351
1	USAU	2025-02-02	70
1	SWCI	2025-02-08	84
1	ELO	2025-02-08	72
1	Massey	2025-02-08	48
1	USAU	2025-02-08	319
1	SWCI	2025-02-09	118
1	ELO	2025-02-09	360
1	Massey	2025-02-09	199
1	USAU	2025-02-09	339
1	SWCI	2025-02-12	118
1	ELO	2025-02-12	352
1	Massey	2025-02-12	143
1	USAU	2025-02-12	339
1	SWCI	2025-02-16	132
1	ELO	2025-02-16	352
1	Massey	2025-02-16	117
1	USAU	2025-02-16	320
1	SWCI	2025-02-17	131
1	ELO	2025-02-17	343
1	Massey	2025-02-17	116
1	USAU	2025-02-17	320
1	SWCI	2025-02-22	159
1	ELO	2025-02-22	339
1	Massey	2025-02-22	142
1	USAU	2025-02-22	301
1	SWCI	2025-02-23	162
1	ELO	2025-02-23	338
1	Massey	2025-02-23	135
1	USAU	2025-02-23	302
1	SWCI	2025-03-02	259
1	ELO	2025-03-02	326
1	Massey	2025-03-02	249
1	USAU	2025-03-02	291
1	SWCI	2025-03-08	265
1	ELO	2025-03-08	376
1	Massey	2025-03-08	208
1	USAU	2025-03-08	285
1	SWCI	2025-03-09	270
1	ELO	2025-03-09	375
1	Massey	2025-03-09	206
1	USAU	2025-03-09	282
1	SWCI	2025-03-15	285
1	ELO	2025-03-15	375
1	Massey	2025-03-15	270
1	USAU	2025-03-15	267
1	SWCI	2025-03-16	287
1	ELO	2025-03-16	374
1	Massey	2025-03-16	212
1	USAU	2025-03-16	265
1	SWCI	2025-03-23	304
1	ELO	2025-03-23	373
1	Massey	2025-03-23	242
1	USAU	2025-03-23	239
1	SWCI	2025-03-29	316
1	ELO	2025-03-29	365
1	Massey	2025-03-29	213
1	USAU	2025-03-29	212
1	SWCI	2025-03-30	315
1	ELO	2025-03-30	364
1	Massey	2025-03-30	212
1	USAU	2025-03-30	218
2	SWCI	2025-01-26	66
2	ELO	2025-01-26	10
2	Massey	2025-01-26	47
2	USAU	2025-01-26	33
2	SWCI	2025-02-02	129
2	ELO	2025-02-02	48
2	Massey	2025-02-02	279
2	USAU	2025-02-02	71
2	SWCI	2025-02-08	16
2	ELO	2025-02-08	73
2	Massey	2025-02-08	5
2	USAU	2025-02-08	31
2	SWCI	2025-02-09	15
2	ELO	2025-02-09	22
2	Massey	2025-02-09	39
2	USAU	2025-02-09	38
2	SWCI	2025-02-12	15
2	ELO	2025-02-12	27
2	Massey	2025-02-12	28
2	USAU	2025-02-12	38
2	SWCI	2025-02-16	16
2	ELO	2025-02-16	28
2	Massey	2025-02-16	28
2	USAU	2025-02-16	36
2	SWCI	2025-02-17	16
2	ELO	2025-02-17	30
2	Massey	2025-02-17	26
2	USAU	2025-02-17	34
2	SWCI	2025-02-22	19
2	ELO	2025-02-22	32
2	Massey	2025-02-22	41
2	USAU	2025-02-22	46
2	SWCI	2025-02-23	20
2	ELO	2025-02-23	32
2	Massey	2025-02-23	36
2	USAU	2025-02-23	46
2	SWCI	2025-03-02	25
2	ELO	2025-03-02	41
2	Massey	2025-03-02	85
2	USAU	2025-03-02	72
2	SWCI	2025-03-08	39
2	ELO	2025-03-08	59
2	Massey	2025-03-08	59
2	USAU	2025-03-08	52
2	SWCI	2025-03-09	69
2	ELO	2025-03-09	60
2	Massey	2025-03-09	59
2	USAU	2025-03-09	56
2	SWCI	2025-03-15	71
2	ELO	2025-03-15	70
2	Massey	2025-03-15	112
2	USAU	2025-03-15	52
2	SWCI	2025-03-16	70
2	ELO	2025-03-16	73
2	Massey	2025-03-16	58
2	USAU	2025-03-16	53
2	SWCI	2025-03-23	67
2	ELO	2025-03-23	79
2	Massey	2025-03-23	82
2	USAU	2025-03-23	54
2	SWCI	2025-03-29	69
2	ELO	2025-03-29	89
2	Massey	2025-03-29	56
2	USAU	2025-03-29	53
2	SWCI	2025-03-30	69
2	ELO	2025-03-30	89
2	Massey	2025-03-30	54
2	USAU	2025-03-30	52
3	SWCI	2025-01-26	67
3	ELO	2025-01-26	11
3	Massey	2025-01-26	8
3	USAU	2025-01-26	34
3	SWCI	2025-02-02	130
3	ELO	2025-02-02	49
3	Massey	2025-02-02	375
3	USAU	2025-02-02	72
3	SWCI	2025-02-08	153
3	ELO	2025-02-08	74
3	Massey	2025-02-08	306
3	USAU	2025-02-08	373
3	SWCI	2025-02-09	165
3	ELO	2025-02-09	389
3	Massey	2025-02-09	327
3	USAU	2025-02-09	371
3	SWCI	2025-02-12	165
3	ELO	2025-02-12	384
3	Massey	2025-02-12	323
3	USAU	2025-02-12	371
3	SWCI	2025-02-16	184
3	ELO	2025-02-16	384
3	Massey	2025-02-16	297
3	USAU	2025-02-16	361
3	SWCI	2025-02-17	183
3	ELO	2025-02-17	383
3	Massey	2025-02-17	300
3	USAU	2025-02-17	361
3	SWCI	2025-02-22	225
3	ELO	2025-02-22	384
3	Massey	2025-02-22	290
3	USAU	2025-02-22	356
3	SWCI	2025-02-23	226
3	ELO	2025-02-23	383
3	Massey	2025-02-23	276
3	USAU	2025-02-23	356
3	SWCI	2025-03-02	271
3	ELO	2025-03-02	380
3	Massey	2025-03-02	325
3	USAU	2025-03-02	349
3	SWCI	2025-03-08	275
3	ELO	2025-03-08	350
3	Massey	2025-03-08	263
3	USAU	2025-03-08	343
3	SWCI	2025-03-09	279
3	ELO	2025-03-09	348
3	Massey	2025-03-09	257
3	USAU	2025-03-09	347
3	SWCI	2025-03-15	298
3	ELO	2025-03-15	349
3	Massey	2025-03-15	318
3	USAU	2025-03-15	333
3	SWCI	2025-03-16	301
3	ELO	2025-03-16	347
3	Massey	2025-03-16	275
3	USAU	2025-03-16	335
3	SWCI	2025-03-23	322
3	ELO	2025-03-23	338
3	Massey	2025-03-23	291
3	USAU	2025-03-23	314
3	SWCI	2025-03-29	340
3	ELO	2025-03-29	333
3	Massey	2025-03-29	267
3	USAU	2025-03-29	278
3	SWCI	2025-03-30	327
3	ELO	2025-03-30	333
3	Massey	2025-03-30	265
3	USAU	2025-03-30	279
4	SWCI	2025-01-26	68
4	ELO	2025-01-26	12
4	Massey	2025-01-26	388
4	USAU	2025-01-26	35
4	SWCI	2025-02-02	131
4	ELO	2025-02-02	50
4	Massey	2025-02-02	359
4	USAU	2025-02-02	73
4	SWCI	2025-02-08	143
4	ELO	2025-02-08	75
4	Massey	2025-02-08	88
4	USAU	2025-02-08	353
4	SWCI	2025-02-09	150
4	ELO	2025-02-09	381
4	Massey	2025-02-09	316
4	USAU	2025-02-09	361
4	SWCI	2025-02-12	150
4	ELO	2025-02-12	377
4	Massey	2025-02-12	310
4	USAU	2025-02-12	361
4	SWCI	2025-02-16	169
4	ELO	2025-02-16	376
4	Massey	2025-02-16	279
4	USAU	2025-02-16	350
4	SWCI	2025-02-17	169
4	ELO	2025-02-17	372
4	Massey	2025-02-17	275
4	USAU	2025-02-17	348
4	SWCI	2025-02-22	215
4	ELO	2025-02-22	373
4	Massey	2025-02-22	272
4	USAU	2025-02-22	342
4	SWCI	2025-02-23	214
4	ELO	2025-02-23	371
4	Massey	2025-02-23	258
4	USAU	2025-02-23	342
4	SWCI	2025-03-02	205
4	ELO	2025-03-02	364
4	Massey	2025-03-02	279
4	USAU	2025-03-02	319
4	SWCI	2025-03-08	209
4	ELO	2025-03-08	313
4	Massey	2025-03-08	220
4	USAU	2025-03-08	312
4	SWCI	2025-03-09	213
4	ELO	2025-03-09	312
4	Massey	2025-03-09	214
4	USAU	2025-03-09	311
4	SWCI	2025-03-15	229
4	ELO	2025-03-15	308
4	Massey	2025-03-15	281
4	USAU	2025-03-15	298
4	SWCI	2025-03-16	224
4	ELO	2025-03-16	307
4	Massey	2025-03-16	226
4	USAU	2025-03-16	296
4	SWCI	2025-03-23	234
4	ELO	2025-03-23	297
4	Massey	2025-03-23	250
4	USAU	2025-03-23	267
4	SWCI	2025-03-29	250
4	ELO	2025-03-29	283
4	Massey	2025-03-29	223
4	USAU	2025-03-29	237
4	SWCI	2025-03-30	258
4	ELO	2025-03-30	283
4	Massey	2025-03-30	226
4	USAU	2025-03-30	246
5	SWCI	2025-01-26	69
5	ELO	2025-01-26	13
5	Massey	2025-01-26	377
5	USAU	2025-01-26	36
5	SWCI	2025-02-02	132
5	ELO	2025-02-02	51
5	Massey	2025-02-02	385
5	USAU	2025-02-02	74
5	SWCI	2025-02-08	105
5	ELO	2025-02-08	76
5	Massey	2025-02-08	55
5	USAU	2025-02-08	332
5	SWCI	2025-02-09	94
5	ELO	2025-02-09	336
5	Massey	2025-02-09	102
5	USAU	2025-02-09	333
5	SWCI	2025-02-12	94
5	ELO	2025-02-12	323
5	Massey	2025-02-12	116
5	USAU	2025-02-12	333
5	SWCI	2025-02-16	105
5	ELO	2025-02-16	322
5	Massey	2025-02-16	97
5	USAU	2025-02-16	312
5	SWCI	2025-02-17	105
5	ELO	2025-02-17	314
5	Massey	2025-02-17	95
5	USAU	2025-02-17	309
5	SWCI	2025-02-22	129
5	ELO	2025-02-22	311
5	Massey	2025-02-22	128
5	USAU	2025-02-22	289
5	SWCI	2025-02-23	129
5	ELO	2025-02-23	310
5	Massey	2025-02-23	120
5	USAU	2025-02-23	290
5	SWCI	2025-03-02	151
5	ELO	2025-03-02	290
5	Massey	2025-03-02	201
5	USAU	2025-03-02	271
5	SWCI	2025-03-08	158
5	ELO	2025-03-08	250
5	Massey	2025-03-08	182
5	USAU	2025-03-08	258
5	SWCI	2025-03-09	160
5	ELO	2025-03-09	249
5	Massey	2025-03-09	183
5	USAU	2025-03-09	259
5	SWCI	2025-03-15	180
5	ELO	2025-03-15	242
5	Massey	2025-03-15	239
5	USAU	2025-03-15	239
5	SWCI	2025-03-16	180
5	ELO	2025-03-16	238
5	Massey	2025-03-16	184
5	USAU	2025-03-16	237
5	SWCI	2025-03-23	190
5	ELO	2025-03-23	228
5	Massey	2025-03-23	213
5	USAU	2025-03-23	205
5	SWCI	2025-03-29	227
5	ELO	2025-03-29	223
5	Massey	2025-03-29	191
5	USAU	2025-03-29	184
5	SWCI	2025-03-30	213
5	ELO	2025-03-30	224
5	Massey	2025-03-30	183
5	USAU	2025-03-30	187
6	SWCI	2025-01-26	70
6	ELO	2025-01-26	14
6	Massey	2025-01-26	11
6	USAU	2025-01-26	37
6	SWCI	2025-02-02	133
6	ELO	2025-02-02	52
6	Massey	2025-02-02	218
6	USAU	2025-02-02	75
6	SWCI	2025-02-08	29
6	ELO	2025-02-08	77
6	Massey	2025-02-08	1
6	USAU	2025-02-08	22
6	SWCI	2025-02-09	18
6	ELO	2025-02-09	16
6	Massey	2025-02-09	33
6	USAU	2025-02-09	31
6	SWCI	2025-02-12	18
6	ELO	2025-02-12	20
6	Massey	2025-02-12	23
6	USAU	2025-02-12	31
6	SWCI	2025-02-16	23
6	ELO	2025-02-16	20
6	Massey	2025-02-16	25
6	USAU	2025-02-16	30
6	SWCI	2025-02-17	23
6	ELO	2025-02-17	25
6	Massey	2025-02-17	23
6	USAU	2025-02-17	28
6	SWCI	2025-02-22	28
6	ELO	2025-02-22	25
6	Massey	2025-02-22	38
6	USAU	2025-02-22	37
6	SWCI	2025-02-23	27
6	ELO	2025-02-23	25
6	Massey	2025-02-23	34
6	USAU	2025-02-23	39
6	SWCI	2025-03-02	7
6	ELO	2025-03-02	1
6	Massey	2025-03-02	69
6	USAU	2025-03-02	51
6	SWCI	2025-03-08	8
6	ELO	2025-03-08	3
6	Massey	2025-03-08	58
6	USAU	2025-03-08	46
6	SWCI	2025-03-09	8
6	ELO	2025-03-09	3
6	Massey	2025-03-09	58
6	USAU	2025-03-09	48
6	SWCI	2025-03-15	7
6	ELO	2025-03-15	4
6	Massey	2025-03-15	110
6	USAU	2025-03-15	43
6	SWCI	2025-03-16	6
6	ELO	2025-03-16	4
6	Massey	2025-03-16	56
6	USAU	2025-03-16	43
6	SWCI	2025-03-23	6
6	ELO	2025-03-23	5
6	Massey	2025-03-23	84
6	USAU	2025-03-23	49
6	SWCI	2025-03-29	4
6	ELO	2025-03-29	6
6	Massey	2025-03-29	45
6	USAU	2025-03-29	38
6	SWCI	2025-03-30	5
6	ELO	2025-03-30	6
6	Massey	2025-03-30	36
6	USAU	2025-03-30	34
7	SWCI	2025-01-26	71
7	ELO	2025-01-26	15
7	Massey	2025-01-26	26
7	USAU	2025-01-26	38
7	SWCI	2025-02-02	134
7	ELO	2025-02-02	53
7	Massey	2025-02-02	369
7	USAU	2025-02-02	76
7	SWCI	2025-02-08	142
7	ELO	2025-02-08	78
7	Massey	2025-02-08	91
7	USAU	2025-02-08	351
7	SWCI	2025-02-09	87
7	ELO	2025-02-09	333
7	Massey	2025-02-09	85
7	USAU	2025-02-09	85
7	SWCI	2025-02-12	87
7	ELO	2025-02-12	321
7	Massey	2025-02-12	95
7	USAU	2025-02-12	85
7	SWCI	2025-02-16	96
7	ELO	2025-02-16	319
7	Massey	2025-02-16	80
7	USAU	2025-02-16	82
7	SWCI	2025-02-17	96
7	ELO	2025-02-17	310
7	Massey	2025-02-17	74
7	USAU	2025-02-17	80
7	SWCI	2025-02-22	117
7	ELO	2025-02-22	306
7	Massey	2025-02-22	102
7	USAU	2025-02-22	99
7	SWCI	2025-02-23	116
7	ELO	2025-02-23	304
7	Massey	2025-02-23	96
7	USAU	2025-02-23	104
7	SWCI	2025-03-02	130
7	ELO	2025-03-02	285
7	Massey	2025-03-02	177
7	USAU	2025-03-02	235
7	SWCI	2025-03-08	131
7	ELO	2025-03-08	241
7	Massey	2025-03-08	161
7	USAU	2025-03-08	221
7	SWCI	2025-03-09	131
7	ELO	2025-03-09	240
7	Massey	2025-03-09	162
7	USAU	2025-03-09	222
7	SWCI	2025-03-15	141
7	ELO	2025-03-15	233
7	Massey	2025-03-15	215
7	USAU	2025-03-15	141
7	SWCI	2025-03-16	151
7	ELO	2025-03-16	230
7	Massey	2025-03-16	164
7	USAU	2025-03-16	144
7	SWCI	2025-03-23	155
7	ELO	2025-03-23	217
7	Massey	2025-03-23	184
7	USAU	2025-03-23	138
7	SWCI	2025-03-29	133
7	ELO	2025-03-29	214
7	Massey	2025-03-29	135
7	USAU	2025-03-29	116
7	SWCI	2025-03-30	71
7	ELO	2025-03-30	212
7	Massey	2025-03-30	105
7	USAU	2025-03-30	93
8	SWCI	2025-01-26	72
8	ELO	2025-01-26	16
8	Massey	2025-01-26	347
8	USAU	2025-01-26	39
8	SWCI	2025-02-02	84
8	ELO	2025-02-02	54
8	Massey	2025-02-02	321
8	USAU	2025-02-02	346
8	SWCI	2025-02-08	44
8	ELO	2025-02-08	53
8	Massey	2025-02-08	129
8	USAU	2025-02-08	72
8	SWCI	2025-02-09	46
8	ELO	2025-02-09	56
8	Massey	2025-02-09	244
8	USAU	2025-02-09	74
8	SWCI	2025-02-12	45
8	ELO	2025-02-12	7
8	Massey	2025-02-12	97
8	USAU	2025-02-12	72
8	SWCI	2025-02-16	50
8	ELO	2025-02-16	8
8	Massey	2025-02-16	85
8	USAU	2025-02-16	71
8	SWCI	2025-02-17	50
8	ELO	2025-02-17	13
8	Massey	2025-02-17	75
8	USAU	2025-02-17	72
8	SWCI	2025-02-22	62
8	ELO	2025-02-22	13
8	Massey	2025-02-22	84
8	USAU	2025-02-22	77
8	SWCI	2025-02-23	57
8	ELO	2025-02-23	13
8	Massey	2025-02-23	80
8	USAU	2025-02-23	69
8	SWCI	2025-03-02	40
8	ELO	2025-03-02	16
8	Massey	2025-03-02	60
8	USAU	2025-03-02	61
8	SWCI	2025-03-08	37
8	ELO	2025-03-08	8
8	Massey	2025-03-08	53
8	USAU	2025-03-08	60
8	SWCI	2025-03-09	37
8	ELO	2025-03-09	8
8	Massey	2025-03-09	54
8	USAU	2025-03-09	62
8	SWCI	2025-03-15	39
8	ELO	2025-03-15	10
8	Massey	2025-03-15	107
8	USAU	2025-03-15	55
8	SWCI	2025-03-16	37
8	ELO	2025-03-16	10
8	Massey	2025-03-16	50
8	USAU	2025-03-16	55
8	SWCI	2025-03-23	32
8	ELO	2025-03-23	10
8	Massey	2025-03-23	80
8	USAU	2025-03-23	56
8	SWCI	2025-03-29	28
8	ELO	2025-03-29	11
8	Massey	2025-03-29	55
8	USAU	2025-03-29	58
8	SWCI	2025-03-30	25
8	ELO	2025-03-30	11
8	Massey	2025-03-30	53
8	USAU	2025-03-30	55
9	SWCI	2025-01-26	73
9	ELO	2025-01-26	17
9	Massey	2025-01-26	48
9	USAU	2025-01-26	40
9	SWCI	2025-02-02	135
9	ELO	2025-02-02	55
9	Massey	2025-02-02	3
9	USAU	2025-02-02	77
9	SWCI	2025-02-08	170
9	ELO	2025-02-08	79
9	Massey	2025-02-08	97
9	USAU	2025-02-08	90
9	SWCI	2025-02-09	170
9	ELO	2025-02-09	77
9	Massey	2025-02-09	340
9	USAU	2025-02-09	88
9	SWCI	2025-02-12	170
9	ELO	2025-02-12	89
9	Massey	2025-02-12	316
9	USAU	2025-02-12	88
9	SWCI	2025-02-16	40
9	ELO	2025-02-16	91
9	Massey	2025-02-16	110
9	USAU	2025-02-16	56
9	SWCI	2025-02-17	38
9	ELO	2025-02-17	81
9	Massey	2025-02-17	64
9	USAU	2025-02-17	56
9	SWCI	2025-02-22	47
9	ELO	2025-02-22	81
9	Massey	2025-02-22	131
9	USAU	2025-02-22	68
9	SWCI	2025-02-23	44
9	ELO	2025-02-23	85
9	Massey	2025-02-23	88
9	USAU	2025-02-23	70
9	SWCI	2025-03-02	58
9	ELO	2025-03-02	103
9	Massey	2025-03-02	127
9	USAU	2025-03-02	113
9	SWCI	2025-03-08	57
9	ELO	2025-03-08	76
9	Massey	2025-03-08	118
9	USAU	2025-03-08	109
9	SWCI	2025-03-09	59
9	ELO	2025-03-09	78
9	Massey	2025-03-09	119
9	USAU	2025-03-09	108
9	SWCI	2025-03-15	57
9	ELO	2025-03-15	81
9	Massey	2025-03-15	190
9	USAU	2025-03-15	116
9	SWCI	2025-03-16	35
9	ELO	2025-03-16	21
9	Massey	2025-03-16	128
9	USAU	2025-03-16	116
9	SWCI	2025-03-23	36
9	ELO	2025-03-23	25
9	Massey	2025-03-23	147
9	USAU	2025-03-23	106
9	SWCI	2025-03-29	34
9	ELO	2025-03-29	27
9	Massey	2025-03-29	110
9	USAU	2025-03-29	102
9	SWCI	2025-03-30	28
9	ELO	2025-03-30	27
9	Massey	2025-03-30	110
9	USAU	2025-03-30	101
10	SWCI	2025-01-26	63
10	ELO	2025-01-26	18
10	Massey	2025-01-26	394
10	USAU	2025-01-26	396
10	SWCI	2025-02-02	126
10	ELO	2025-02-02	393
10	Massey	2025-02-02	391
10	USAU	2025-02-02	392
10	SWCI	2025-02-08	168
10	ELO	2025-02-08	392
10	Massey	2025-02-08	382
10	USAU	2025-02-08	384
10	SWCI	2025-02-09	168
10	ELO	2025-02-09	392
10	Massey	2025-02-09	390
10	USAU	2025-02-09	383
10	SWCI	2025-02-12	168
10	ELO	2025-02-12	390
10	Massey	2025-02-12	386
10	USAU	2025-02-12	383
10	SWCI	2025-02-16	189
10	ELO	2025-02-16	390
10	Massey	2025-02-16	381
10	USAU	2025-02-16	393
10	SWCI	2025-02-17	189
10	ELO	2025-02-17	389
10	Massey	2025-02-17	388
10	USAU	2025-02-17	393
10	SWCI	2025-02-22	232
10	ELO	2025-02-22	390
10	Massey	2025-02-22	369
10	USAU	2025-02-22	379
10	SWCI	2025-02-23	232
10	ELO	2025-02-23	389
10	Massey	2025-02-23	363
10	USAU	2025-02-23	379
10	SWCI	2025-03-02	312
10	ELO	2025-03-02	385
10	Massey	2025-03-02	329
10	USAU	2025-03-02	332
10	SWCI	2025-03-08	320
10	ELO	2025-03-08	395
10	Massey	2025-03-08	274
10	USAU	2025-03-08	328
10	SWCI	2025-03-09	324
10	ELO	2025-03-09	395
10	Massey	2025-03-09	264
10	USAU	2025-03-09	329
10	SWCI	2025-03-15	351
10	ELO	2025-03-15	395
10	Massey	2025-03-15	338
10	USAU	2025-03-15	317
10	SWCI	2025-03-16	350
10	ELO	2025-03-16	395
10	Massey	2025-03-16	319
10	USAU	2025-03-16	320
10	SWCI	2025-03-23	364
10	ELO	2025-03-23	395
10	Massey	2025-03-23	321
10	USAU	2025-03-23	302
10	SWCI	2025-03-29	379
10	ELO	2025-03-29	393
10	Massey	2025-03-29	306
10	USAU	2025-03-29	293
10	SWCI	2025-03-30	382
10	ELO	2025-03-30	392
10	Massey	2025-03-30	311
10	USAU	2025-03-30	297
11	SWCI	2025-01-26	74
11	ELO	2025-01-26	19
11	Massey	2025-01-26	352
11	USAU	2025-01-26	41
11	SWCI	2025-02-02	136
11	ELO	2025-02-02	56
11	Massey	2025-02-02	89
11	USAU	2025-02-02	78
11	SWCI	2025-02-08	66
11	ELO	2025-02-08	80
11	Massey	2025-02-08	12
11	USAU	2025-02-08	65
11	SWCI	2025-02-09	77
11	ELO	2025-02-09	71
11	Massey	2025-02-09	69
11	USAU	2025-02-09	79
11	SWCI	2025-02-12	78
11	ELO	2025-02-12	83
11	Massey	2025-02-12	68
11	USAU	2025-02-12	79
11	SWCI	2025-02-16	80
11	ELO	2025-02-16	83
11	Massey	2025-02-16	59
11	USAU	2025-02-16	76
11	SWCI	2025-02-17	81
11	ELO	2025-02-17	90
11	Massey	2025-02-17	60
11	USAU	2025-02-17	73
11	SWCI	2025-02-22	102
11	ELO	2025-02-22	91
11	Massey	2025-02-22	79
11	USAU	2025-02-22	94
11	SWCI	2025-02-23	100
11	ELO	2025-02-23	95
11	Massey	2025-02-23	75
11	USAU	2025-02-23	96
11	SWCI	2025-03-02	129
11	ELO	2025-03-02	115
11	Massey	2025-03-02	135
11	USAU	2025-03-02	131
11	SWCI	2025-03-08	136
11	ELO	2025-03-08	242
11	Massey	2025-03-08	121
11	USAU	2025-03-08	123
11	SWCI	2025-03-09	136
11	ELO	2025-03-09	241
11	Massey	2025-03-09	120
11	USAU	2025-03-09	125
11	SWCI	2025-03-15	143
11	ELO	2025-03-15	234
11	Massey	2025-03-15	179
11	USAU	2025-03-15	125
11	SWCI	2025-03-16	147
11	ELO	2025-03-16	231
11	Massey	2025-03-16	123
11	USAU	2025-03-16	121
11	SWCI	2025-03-23	153
11	ELO	2025-03-23	218
11	Massey	2025-03-23	153
11	USAU	2025-03-23	124
11	SWCI	2025-03-29	124
11	ELO	2025-03-29	132
11	Massey	2025-03-29	125
11	USAU	2025-03-29	130
11	SWCI	2025-03-30	124
11	ELO	2025-03-30	135
11	Massey	2025-03-30	125
11	USAU	2025-03-30	127
12	SWCI	2025-01-26	75
12	ELO	2025-01-26	20
12	Massey	2025-01-26	371
12	USAU	2025-01-26	42
12	SWCI	2025-02-02	137
12	ELO	2025-02-02	57
12	Massey	2025-02-02	365
12	USAU	2025-02-02	79
12	SWCI	2025-02-08	171
12	ELO	2025-02-08	81
12	Massey	2025-02-08	65
12	USAU	2025-02-08	91
12	SWCI	2025-02-09	171
12	ELO	2025-02-09	78
12	Massey	2025-02-09	24
12	USAU	2025-02-09	89
12	SWCI	2025-02-12	171
12	ELO	2025-02-12	90
12	Massey	2025-02-12	128
12	USAU	2025-02-12	89
12	SWCI	2025-02-16	191
12	ELO	2025-02-16	92
12	Massey	2025-02-16	328
12	USAU	2025-02-16	87
12	SWCI	2025-02-17	191
12	ELO	2025-02-17	98
12	Massey	2025-02-17	391
12	USAU	2025-02-17	85
12	SWCI	2025-02-22	235
12	ELO	2025-02-22	100
12	Massey	2025-02-22	2
12	USAU	2025-02-22	104
12	SWCI	2025-02-23	235
12	ELO	2025-02-23	105
12	Massey	2025-02-23	380
12	USAU	2025-02-23	106
12	SWCI	2025-03-02	279
12	ELO	2025-03-02	123
12	Massey	2025-03-02	219
12	USAU	2025-03-02	289
12	SWCI	2025-03-08	285
12	ELO	2025-03-08	340
12	Massey	2025-03-08	197
12	USAU	2025-03-08	286
12	SWCI	2025-03-09	289
12	ELO	2025-03-09	338
12	Massey	2025-03-09	196
12	USAU	2025-03-09	281
12	SWCI	2025-03-15	306
12	ELO	2025-03-15	339
12	Massey	2025-03-15	264
12	USAU	2025-03-15	269
12	SWCI	2025-03-16	307
12	ELO	2025-03-16	336
12	Massey	2025-03-16	207
12	USAU	2025-03-16	264
12	SWCI	2025-03-23	316
12	ELO	2025-03-23	326
12	Massey	2025-03-23	232
12	USAU	2025-03-23	247
12	SWCI	2025-03-29	330
12	ELO	2025-03-29	369
12	Massey	2025-03-29	217
12	USAU	2025-03-29	242
12	SWCI	2025-03-30	325
12	ELO	2025-03-30	368
12	Massey	2025-03-30	221
12	USAU	2025-03-30	241
13	SWCI	2025-01-26	76
13	ELO	2025-01-26	21
13	Massey	2025-01-26	374
13	USAU	2025-01-26	43
13	SWCI	2025-02-02	138
13	ELO	2025-02-02	58
13	Massey	2025-02-02	384
13	USAU	2025-02-02	80
13	SWCI	2025-02-08	172
13	ELO	2025-02-08	82
13	Massey	2025-02-08	84
13	USAU	2025-02-08	92
13	SWCI	2025-02-09	172
13	ELO	2025-02-09	79
13	Massey	2025-02-09	298
13	USAU	2025-02-09	90
13	SWCI	2025-02-12	172
13	ELO	2025-02-12	91
13	Massey	2025-02-12	365
13	USAU	2025-02-12	90
13	SWCI	2025-02-16	192
13	ELO	2025-02-16	93
13	Massey	2025-02-16	82
13	USAU	2025-02-16	88
13	SWCI	2025-02-17	192
13	ELO	2025-02-17	99
13	Massey	2025-02-17	7
13	USAU	2025-02-17	86
13	SWCI	2025-02-22	236
13	ELO	2025-02-22	101
13	Massey	2025-02-22	394
13	USAU	2025-02-22	105
13	SWCI	2025-02-23	236
13	ELO	2025-02-23	106
13	Massey	2025-02-23	1
13	USAU	2025-02-23	107
13	SWCI	2025-03-02	193
13	ELO	2025-03-02	124
13	Massey	2025-03-02	139
13	USAU	2025-03-02	218
13	SWCI	2025-03-08	195
13	ELO	2025-03-08	264
13	Massey	2025-03-08	127
13	USAU	2025-03-08	133
13	SWCI	2025-03-09	198
13	ELO	2025-03-09	263
13	Massey	2025-03-09	128
13	USAU	2025-03-09	136
13	SWCI	2025-03-15	203
13	ELO	2025-03-15	256
13	Massey	2025-03-15	223
13	USAU	2025-03-15	202
13	SWCI	2025-03-16	206
13	ELO	2025-03-16	253
13	Massey	2025-03-16	160
13	USAU	2025-03-16	201
13	SWCI	2025-03-23	203
13	ELO	2025-03-23	259
13	Massey	2025-03-23	183
13	USAU	2025-03-23	177
13	SWCI	2025-03-29	211
13	ELO	2025-03-29	249
13	Massey	2025-03-29	146
13	USAU	2025-03-29	146
13	SWCI	2025-03-30	215
13	ELO	2025-03-30	251
13	Massey	2025-03-30	142
13	USAU	2025-03-30	143
14	SWCI	2025-01-26	77
14	ELO	2025-01-26	22
14	Massey	2025-01-26	384
14	USAU	2025-01-26	44
14	SWCI	2025-02-02	139
14	ELO	2025-02-02	59
14	Massey	2025-02-02	34
14	USAU	2025-02-02	81
14	SWCI	2025-02-08	173
14	ELO	2025-02-08	83
14	Massey	2025-02-08	359
14	USAU	2025-02-08	93
14	SWCI	2025-02-09	173
14	ELO	2025-02-09	80
14	Massey	2025-02-09	87
14	USAU	2025-02-09	91
14	SWCI	2025-02-12	173
14	ELO	2025-02-12	92
14	Massey	2025-02-12	325
14	USAU	2025-02-12	91
14	SWCI	2025-02-16	193
14	ELO	2025-02-16	94
14	Massey	2025-02-16	4
14	USAU	2025-02-16	89
14	SWCI	2025-02-17	193
14	ELO	2025-02-17	100
14	Massey	2025-02-17	341
14	USAU	2025-02-17	87
14	SWCI	2025-02-22	237
14	ELO	2025-02-22	102
14	Massey	2025-02-22	395
14	USAU	2025-02-22	106
14	SWCI	2025-02-23	237
14	ELO	2025-02-23	107
14	Massey	2025-02-23	396
14	USAU	2025-02-23	108
14	SWCI	2025-03-02	47
14	ELO	2025-03-02	125
14	Massey	2025-03-02	255
14	USAU	2025-03-02	285
14	SWCI	2025-03-08	45
14	ELO	2025-03-08	78
14	Massey	2025-03-08	205
14	USAU	2025-03-08	279
14	SWCI	2025-03-09	46
14	ELO	2025-03-09	80
14	Massey	2025-03-09	202
14	USAU	2025-03-09	275
14	SWCI	2025-03-15	75
14	ELO	2025-03-15	83
14	Massey	2025-03-15	297
14	USAU	2025-03-15	279
14	SWCI	2025-03-16	106
14	ELO	2025-03-16	122
14	Massey	2025-03-16	222
14	USAU	2025-03-16	261
14	SWCI	2025-03-23	115
14	ELO	2025-03-23	129
14	Massey	2025-03-23	249
14	USAU	2025-03-23	233
14	SWCI	2025-03-29	126
14	ELO	2025-03-29	138
14	Massey	2025-03-29	226
14	USAU	2025-03-29	202
14	SWCI	2025-03-30	122
14	ELO	2025-03-30	141
14	Massey	2025-03-30	225
14	USAU	2025-03-30	200
15	SWCI	2025-01-26	78
15	ELO	2025-01-26	23
15	Massey	2025-01-26	16
15	USAU	2025-01-26	45
15	SWCI	2025-02-02	140
15	ELO	2025-02-02	60
15	Massey	2025-02-02	380
15	USAU	2025-02-02	82
15	SWCI	2025-02-08	174
15	ELO	2025-02-08	84
15	Massey	2025-02-08	52
15	USAU	2025-02-08	94
15	SWCI	2025-02-09	174
15	ELO	2025-02-09	81
15	Massey	2025-02-09	326
15	USAU	2025-02-09	92
15	SWCI	2025-02-12	174
15	ELO	2025-02-12	93
15	Massey	2025-02-12	36
15	USAU	2025-02-12	92
15	SWCI	2025-02-16	194
15	ELO	2025-02-16	95
15	Massey	2025-02-16	316
15	USAU	2025-02-16	90
15	SWCI	2025-02-17	194
15	ELO	2025-02-17	101
15	Massey	2025-02-17	327
15	USAU	2025-02-17	88
15	SWCI	2025-02-22	238
15	ELO	2025-02-22	103
15	Massey	2025-02-22	4
15	USAU	2025-02-22	107
15	SWCI	2025-02-23	238
15	ELO	2025-02-23	108
15	Massey	2025-02-23	375
15	USAU	2025-02-23	109
15	SWCI	2025-03-02	278
15	ELO	2025-03-02	126
15	Massey	2025-03-02	394
15	USAU	2025-03-02	384
15	SWCI	2025-03-08	284
15	ELO	2025-03-08	336
15	Massey	2025-03-08	385
15	USAU	2025-03-08	384
15	SWCI	2025-03-09	288
15	ELO	2025-03-09	334
15	Massey	2025-03-09	389
15	USAU	2025-03-09	381
15	SWCI	2025-03-15	312
15	ELO	2025-03-15	335
15	Massey	2025-03-15	395
15	USAU	2025-03-15	394
15	SWCI	2025-03-16	317
15	ELO	2025-03-16	332
15	Massey	2025-03-16	393
15	USAU	2025-03-16	394
15	SWCI	2025-03-23	333
15	ELO	2025-03-23	323
15	Massey	2025-03-23	391
15	USAU	2025-03-23	390
15	SWCI	2025-03-29	346
15	ELO	2025-03-29	318
15	Massey	2025-03-29	385
15	USAU	2025-03-29	390
15	SWCI	2025-03-30	357
15	ELO	2025-03-30	318
15	Massey	2025-03-30	379
15	USAU	2025-03-30	377
16	SWCI	2025-01-26	79
16	ELO	2025-01-26	24
16	Massey	2025-01-26	34
16	USAU	2025-01-26	46
16	SWCI	2025-02-02	141
16	ELO	2025-02-02	61
16	Massey	2025-02-02	129
16	USAU	2025-02-02	83
16	SWCI	2025-02-08	175
16	ELO	2025-02-08	85
16	Massey	2025-02-08	301
16	USAU	2025-02-08	95
16	SWCI	2025-02-09	175
16	ELO	2025-02-09	82
16	Massey	2025-02-09	397
16	USAU	2025-02-09	93
16	SWCI	2025-02-12	175
16	ELO	2025-02-12	94
16	Massey	2025-02-12	352
16	USAU	2025-02-12	93
16	SWCI	2025-02-16	195
16	ELO	2025-02-16	96
16	Massey	2025-02-16	354
16	USAU	2025-02-16	91
16	SWCI	2025-02-17	195
16	ELO	2025-02-17	102
16	Massey	2025-02-17	50
16	USAU	2025-02-17	89
16	SWCI	2025-02-22	239
16	ELO	2025-02-22	104
16	Massey	2025-02-22	99
16	USAU	2025-02-22	108
16	SWCI	2025-02-23	239
16	ELO	2025-02-23	109
16	Massey	2025-02-23	124
16	USAU	2025-02-23	110
16	SWCI	2025-03-02	235
16	ELO	2025-03-02	127
16	Massey	2025-03-02	386
16	USAU	2025-03-02	377
16	SWCI	2025-03-08	238
16	ELO	2025-03-08	314
16	Massey	2025-03-08	364
16	USAU	2025-03-08	375
16	SWCI	2025-03-09	242
16	ELO	2025-03-09	313
16	Massey	2025-03-09	370
16	USAU	2025-03-09	372
16	SWCI	2025-03-15	267
16	ELO	2025-03-15	311
16	Massey	2025-03-15	385
16	USAU	2025-03-15	383
16	SWCI	2025-03-16	272
16	ELO	2025-03-16	310
16	Massey	2025-03-16	380
16	USAU	2025-03-16	385
16	SWCI	2025-03-23	287
16	ELO	2025-03-23	301
16	Massey	2025-03-23	380
16	USAU	2025-03-23	382
16	SWCI	2025-03-29	318
16	ELO	2025-03-29	288
16	Massey	2025-03-29	376
16	USAU	2025-03-29	380
16	SWCI	2025-03-30	326
16	ELO	2025-03-30	288
16	Massey	2025-03-30	372
16	USAU	2025-03-30	380
17	SWCI	2025-01-26	80
17	ELO	2025-01-26	25
17	Massey	2025-01-26	386
17	USAU	2025-01-26	47
17	SWCI	2025-02-02	142
17	ELO	2025-02-02	62
17	Massey	2025-02-02	347
17	USAU	2025-02-02	84
17	SWCI	2025-02-08	176
17	ELO	2025-02-08	86
17	Massey	2025-02-08	32
17	USAU	2025-02-08	96
17	SWCI	2025-02-09	176
17	ELO	2025-02-09	83
17	Massey	2025-02-09	396
17	USAU	2025-02-09	94
17	SWCI	2025-02-12	176
17	ELO	2025-02-12	95
17	Massey	2025-02-12	56
17	USAU	2025-02-12	94
17	SWCI	2025-02-16	99
17	ELO	2025-02-16	97
17	Massey	2025-02-16	298
17	USAU	2025-02-16	304
17	SWCI	2025-02-17	99
17	ELO	2025-02-17	311
17	Massey	2025-02-17	125
17	USAU	2025-02-17	301
17	SWCI	2025-02-22	122
17	ELO	2025-02-22	307
17	Massey	2025-02-22	281
17	USAU	2025-02-22	276
17	SWCI	2025-02-23	121
17	ELO	2025-02-23	305
17	Massey	2025-02-23	157
17	USAU	2025-02-23	278
17	SWCI	2025-03-02	122
17	ELO	2025-03-02	286
17	Massey	2025-03-02	291
17	USAU	2025-03-02	328
17	SWCI	2025-03-08	122
17	ELO	2025-03-08	112
17	Massey	2025-03-08	228
17	USAU	2025-03-08	320
17	SWCI	2025-03-09	125
17	ELO	2025-03-09	115
17	Massey	2025-03-09	219
17	USAU	2025-03-09	317
17	SWCI	2025-03-15	140
17	ELO	2025-03-15	120
17	Massey	2025-03-15	299
17	USAU	2025-03-15	328
17	SWCI	2025-03-16	150
17	ELO	2025-03-16	121
17	Massey	2025-03-16	233
17	USAU	2025-03-16	319
17	SWCI	2025-03-23	148
17	ELO	2025-03-23	128
17	Massey	2025-03-23	248
17	USAU	2025-03-23	279
17	SWCI	2025-03-29	99
17	ELO	2025-03-29	137
17	Massey	2025-03-29	220
17	USAU	2025-03-29	256
17	SWCI	2025-03-30	40
17	ELO	2025-03-30	140
17	Massey	2025-03-30	208
17	USAU	2025-03-30	230
18	SWCI	2025-01-26	81
18	ELO	2025-01-26	26
18	Massey	2025-01-26	10
18	USAU	2025-01-26	48
18	SWCI	2025-02-02	143
18	ELO	2025-02-02	63
18	Massey	2025-02-02	344
18	USAU	2025-02-02	85
18	SWCI	2025-02-08	177
18	ELO	2025-02-08	87
18	Massey	2025-02-08	384
18	USAU	2025-02-08	97
18	SWCI	2025-02-09	177
18	ELO	2025-02-09	84
18	Massey	2025-02-09	42
18	USAU	2025-02-09	95
18	SWCI	2025-02-12	177
18	ELO	2025-02-12	96
18	Massey	2025-02-12	344
18	USAU	2025-02-12	95
18	SWCI	2025-02-16	196
18	ELO	2025-02-16	98
18	Massey	2025-02-16	2
18	USAU	2025-02-16	92
18	SWCI	2025-02-17	196
18	ELO	2025-02-17	103
18	Massey	2025-02-17	2
18	USAU	2025-02-17	90
18	SWCI	2025-02-22	240
18	ELO	2025-02-22	105
18	Massey	2025-02-22	5
18	USAU	2025-02-22	109
18	SWCI	2025-02-23	240
18	ELO	2025-02-23	110
18	Massey	2025-02-23	38
18	USAU	2025-02-23	111
18	SWCI	2025-03-02	2
18	ELO	2025-03-02	128
18	Massey	2025-03-02	88
18	USAU	2025-03-02	109
18	SWCI	2025-03-08	2
18	ELO	2025-03-08	30
18	Massey	2025-03-08	70
18	USAU	2025-03-08	103
18	SWCI	2025-03-09	2
18	ELO	2025-03-09	30
18	Massey	2025-03-09	70
18	USAU	2025-03-09	101
18	SWCI	2025-03-15	5
18	ELO	2025-03-15	29
18	Massey	2025-03-15	145
18	USAU	2025-03-15	130
18	SWCI	2025-03-16	4
18	ELO	2025-03-16	31
18	Massey	2025-03-16	81
18	USAU	2025-03-16	119
18	SWCI	2025-03-23	16
18	ELO	2025-03-23	37
18	Massey	2025-03-23	118
18	USAU	2025-03-23	115
18	SWCI	2025-03-29	50
18	ELO	2025-03-29	48
18	Massey	2025-03-29	130
18	USAU	2025-03-29	143
18	SWCI	2025-03-30	58
18	ELO	2025-03-30	50
18	Massey	2025-03-30	135
18	USAU	2025-03-30	152
19	SWCI	2025-01-26	82
19	ELO	2025-01-26	27
19	Massey	2025-01-26	54
19	USAU	2025-01-26	49
19	SWCI	2025-02-02	144
19	ELO	2025-02-02	64
19	Massey	2025-02-02	303
19	USAU	2025-02-02	86
19	SWCI	2025-02-08	178
19	ELO	2025-02-08	88
19	Massey	2025-02-08	109
19	USAU	2025-02-08	98
19	SWCI	2025-02-09	178
19	ELO	2025-02-09	85
19	Massey	2025-02-09	371
19	USAU	2025-02-09	96
19	SWCI	2025-02-12	178
19	ELO	2025-02-12	97
19	Massey	2025-02-12	294
19	USAU	2025-02-12	96
19	SWCI	2025-02-16	197
19	ELO	2025-02-16	99
19	Massey	2025-02-16	274
19	USAU	2025-02-16	93
19	SWCI	2025-02-17	197
19	ELO	2025-02-17	104
19	Massey	2025-02-17	51
19	USAU	2025-02-17	91
19	SWCI	2025-02-22	241
19	ELO	2025-02-22	106
19	Massey	2025-02-22	392
19	USAU	2025-02-22	110
19	SWCI	2025-02-23	241
19	ELO	2025-02-23	111
19	Massey	2025-02-23	150
19	USAU	2025-02-23	112
19	SWCI	2025-03-02	117
19	ELO	2025-03-02	129
19	Massey	2025-03-02	319
19	USAU	2025-03-02	305
19	SWCI	2025-03-08	118
19	ELO	2025-03-08	282
19	Massey	2025-03-08	252
19	USAU	2025-03-08	291
19	SWCI	2025-03-09	121
19	ELO	2025-03-09	282
19	Massey	2025-03-09	245
19	USAU	2025-03-09	287
19	SWCI	2025-03-15	182
19	ELO	2025-03-15	275
19	Massey	2025-03-15	308
19	USAU	2025-03-15	285
19	SWCI	2025-03-16	157
19	ELO	2025-03-16	266
19	Massey	2025-03-16	238
19	USAU	2025-03-16	269
19	SWCI	2025-03-23	168
19	ELO	2025-03-23	255
19	Massey	2025-03-23	265
19	USAU	2025-03-23	237
19	SWCI	2025-03-29	178
19	ELO	2025-03-29	245
19	Massey	2025-03-29	241
19	USAU	2025-03-29	210
19	SWCI	2025-03-30	180
19	ELO	2025-03-30	247
19	Massey	2025-03-30	242
19	USAU	2025-03-30	211
20	SWCI	2025-01-26	83
20	ELO	2025-01-26	28
20	Massey	2025-01-26	39
20	USAU	2025-01-26	50
20	SWCI	2025-02-02	145
20	ELO	2025-02-02	65
20	Massey	2025-02-02	66
20	USAU	2025-02-02	87
20	SWCI	2025-02-08	179
20	ELO	2025-02-08	89
20	Massey	2025-02-08	345
20	USAU	2025-02-08	99
20	SWCI	2025-02-09	179
20	ELO	2025-02-09	86
20	Massey	2025-02-09	305
20	USAU	2025-02-09	97
20	SWCI	2025-02-12	179
20	ELO	2025-02-12	98
20	Massey	2025-02-12	82
20	USAU	2025-02-12	97
20	SWCI	2025-02-16	198
20	ELO	2025-02-16	100
20	Massey	2025-02-16	189
20	USAU	2025-02-16	94
20	SWCI	2025-02-17	198
20	ELO	2025-02-17	105
20	Massey	2025-02-17	366
20	USAU	2025-02-17	92
20	SWCI	2025-02-22	242
20	ELO	2025-02-22	107
20	Massey	2025-02-22	1
20	USAU	2025-02-22	111
20	SWCI	2025-02-23	242
20	ELO	2025-02-23	112
20	Massey	2025-02-23	377
20	USAU	2025-02-23	113
20	SWCI	2025-03-02	314
20	ELO	2025-03-02	130
20	Massey	2025-03-02	270
20	USAU	2025-03-02	134
20	SWCI	2025-03-08	322
20	ELO	2025-03-08	154
20	Massey	2025-03-08	391
20	USAU	2025-03-08	136
20	SWCI	2025-03-09	326
20	ELO	2025-03-09	158
20	Massey	2025-03-09	242
20	USAU	2025-03-09	138
20	SWCI	2025-03-15	15
20	ELO	2025-03-15	160
20	Massey	2025-03-15	226
20	USAU	2025-03-15	225
20	SWCI	2025-03-16	45
20	ELO	2025-03-16	77
20	Massey	2025-03-16	155
20	USAU	2025-03-16	223
20	SWCI	2025-03-23	43
20	ELO	2025-03-23	82
20	Massey	2025-03-23	180
20	USAU	2025-03-23	185
20	SWCI	2025-03-29	92
20	ELO	2025-03-29	92
20	Massey	2025-03-29	150
20	USAU	2025-03-29	152
20	SWCI	2025-03-30	107
20	ELO	2025-03-30	92
20	Massey	2025-03-30	148
20	USAU	2025-03-30	149
21	SWCI	2025-01-26	84
21	ELO	2025-01-26	29
21	Massey	2025-01-26	365
21	USAU	2025-01-26	51
21	SWCI	2025-02-02	146
21	ELO	2025-02-02	66
21	Massey	2025-02-02	54
21	USAU	2025-02-02	88
21	SWCI	2025-02-08	180
21	ELO	2025-02-08	90
21	Massey	2025-02-08	380
21	USAU	2025-02-08	100
21	SWCI	2025-02-09	180
21	ELO	2025-02-09	87
21	Massey	2025-02-09	3
21	USAU	2025-02-09	98
21	SWCI	2025-02-12	180
21	ELO	2025-02-12	99
21	Massey	2025-02-12	394
21	USAU	2025-02-12	98
21	SWCI	2025-02-16	199
21	ELO	2025-02-16	101
21	Massey	2025-02-16	58
21	USAU	2025-02-16	95
21	SWCI	2025-02-17	199
21	ELO	2025-02-17	106
21	Massey	2025-02-17	40
21	USAU	2025-02-17	93
21	SWCI	2025-02-22	243
21	ELO	2025-02-22	108
21	Massey	2025-02-22	383
21	USAU	2025-02-22	112
21	SWCI	2025-02-23	243
21	ELO	2025-02-23	113
21	Massey	2025-02-23	4
21	USAU	2025-02-23	114
21	SWCI	2025-03-02	315
21	ELO	2025-03-02	131
21	Massey	2025-03-02	354
21	USAU	2025-03-02	135
21	SWCI	2025-03-08	323
21	ELO	2025-03-08	155
21	Massey	2025-03-08	396
21	USAU	2025-03-08	137
21	SWCI	2025-03-09	327
21	ELO	2025-03-09	159
21	Massey	2025-03-09	323
21	USAU	2025-03-09	139
21	SWCI	2025-03-15	323
21	ELO	2025-03-15	161
21	Massey	2025-03-15	362
21	USAU	2025-03-15	367
21	SWCI	2025-03-16	256
21	ELO	2025-03-16	298
21	Massey	2025-03-16	336
21	USAU	2025-03-16	323
21	SWCI	2025-03-23	270
21	ELO	2025-03-23	288
21	Massey	2025-03-23	331
21	USAU	2025-03-23	299
21	SWCI	2025-03-29	225
21	ELO	2025-03-29	276
21	Massey	2025-03-29	256
21	USAU	2025-03-29	246
21	SWCI	2025-03-30	205
21	ELO	2025-03-30	274
21	Massey	2025-03-30	247
21	USAU	2025-03-30	240
22	SWCI	2025-01-26	85
22	ELO	2025-01-26	30
22	Massey	2025-01-26	6
22	USAU	2025-01-26	52
22	SWCI	2025-02-02	147
22	ELO	2025-02-02	67
22	Massey	2025-02-02	19
22	USAU	2025-02-02	89
22	SWCI	2025-02-08	181
22	ELO	2025-02-08	91
22	Massey	2025-02-08	364
22	USAU	2025-02-08	101
22	SWCI	2025-02-09	181
22	ELO	2025-02-09	88
22	Massey	2025-02-09	38
22	USAU	2025-02-09	99
22	SWCI	2025-02-12	181
22	ELO	2025-02-12	100
22	Massey	2025-02-12	126
22	USAU	2025-02-12	99
22	SWCI	2025-02-16	200
22	ELO	2025-02-16	102
22	Massey	2025-02-16	9
22	USAU	2025-02-16	96
22	SWCI	2025-02-17	200
22	ELO	2025-02-17	107
22	Massey	2025-02-17	13
22	USAU	2025-02-17	94
22	SWCI	2025-02-22	244
22	ELO	2025-02-22	109
22	Massey	2025-02-22	396
22	USAU	2025-02-22	113
22	SWCI	2025-02-23	244
22	ELO	2025-02-23	114
22	Massey	2025-02-23	397
22	USAU	2025-02-23	115
22	SWCI	2025-03-02	33
22	ELO	2025-03-02	132
22	Massey	2025-03-02	136
22	USAU	2025-03-02	42
22	SWCI	2025-03-08	31
22	ELO	2025-03-08	32
22	Massey	2025-03-08	201
22	USAU	2025-03-08	40
22	SWCI	2025-03-09	31
22	ELO	2025-03-09	32
22	Massey	2025-03-09	201
22	USAU	2025-03-09	41
22	SWCI	2025-03-15	34
22	ELO	2025-03-15	32
22	Massey	2025-03-15	233
22	USAU	2025-03-15	234
22	SWCI	2025-03-16	41
22	ELO	2025-03-16	24
22	Massey	2025-03-16	197
22	USAU	2025-03-16	251
22	SWCI	2025-03-23	42
22	ELO	2025-03-23	28
22	Massey	2025-03-23	222
22	USAU	2025-03-23	223
22	SWCI	2025-03-29	36
22	ELO	2025-03-29	30
22	Massey	2025-03-29	186
22	USAU	2025-03-29	190
22	SWCI	2025-03-30	36
22	ELO	2025-03-30	30
22	Massey	2025-03-30	191
22	USAU	2025-03-30	194
23	SWCI	2025-01-26	7
23	ELO	2025-01-26	31
23	Massey	2025-01-26	28
23	USAU	2025-01-26	6
23	SWCI	2025-02-02	12
23	ELO	2025-02-02	7
23	Massey	2025-02-02	33
23	USAU	2025-02-02	15
23	SWCI	2025-02-08	18
23	ELO	2025-02-08	8
23	Massey	2025-02-08	35
23	USAU	2025-02-08	33
23	SWCI	2025-02-09	24
23	ELO	2025-02-09	8
23	Massey	2025-02-09	22
23	USAU	2025-02-09	40
23	SWCI	2025-02-12	24
23	ELO	2025-02-12	13
23	Massey	2025-02-12	39
23	USAU	2025-02-12	41
23	SWCI	2025-02-16	54
23	ELO	2025-02-16	42
23	Massey	2025-02-16	125
23	USAU	2025-02-16	296
23	SWCI	2025-02-17	53
23	ELO	2025-02-17	44
23	Massey	2025-02-17	117
23	USAU	2025-02-17	297
23	SWCI	2025-02-22	55
23	ELO	2025-02-22	29
23	Massey	2025-02-22	108
23	USAU	2025-02-22	89
23	SWCI	2025-02-23	53
23	ELO	2025-02-23	29
23	Massey	2025-02-23	111
23	USAU	2025-02-23	89
23	SWCI	2025-03-02	75
23	ELO	2025-03-02	37
23	Massey	2025-03-02	95
23	USAU	2025-03-02	90
23	SWCI	2025-03-08	77
23	ELO	2025-03-08	50
23	Massey	2025-03-08	91
23	USAU	2025-03-08	91
23	SWCI	2025-03-09	78
23	ELO	2025-03-09	51
23	Massey	2025-03-09	89
23	USAU	2025-03-09	91
23	SWCI	2025-03-15	79
23	ELO	2025-03-15	52
23	Massey	2025-03-15	146
23	USAU	2025-03-15	94
23	SWCI	2025-03-16	86
23	ELO	2025-03-16	54
23	Massey	2025-03-16	91
23	USAU	2025-03-16	94
23	SWCI	2025-03-23	80
23	ELO	2025-03-23	60
23	Massey	2025-03-23	111
23	USAU	2025-03-23	91
23	SWCI	2025-03-29	115
23	ELO	2025-03-29	68
23	Massey	2025-03-29	101
23	USAU	2025-03-29	119
23	SWCI	2025-03-30	89
23	ELO	2025-03-30	69
23	Massey	2025-03-30	98
23	USAU	2025-03-30	106
24	SWCI	2025-01-26	25
24	ELO	2025-01-26	32
24	Massey	2025-01-26	345
24	USAU	2025-01-26	25
24	SWCI	2025-02-02	47
24	ELO	2025-02-02	39
24	Massey	2025-02-02	82
24	USAU	2025-02-02	55
24	SWCI	2025-02-08	64
24	ELO	2025-02-08	59
24	Massey	2025-02-08	89
24	USAU	2025-02-08	88
24	SWCI	2025-02-09	67
24	ELO	2025-02-09	62
24	Massey	2025-02-09	60
24	USAU	2025-02-09	317
24	SWCI	2025-02-12	67
24	ELO	2025-02-12	73
24	Massey	2025-02-12	92
24	USAU	2025-02-12	317
24	SWCI	2025-02-16	82
24	ELO	2025-02-16	72
24	Massey	2025-02-16	302
24	USAU	2025-02-16	345
24	SWCI	2025-02-17	83
24	ELO	2025-02-17	79
24	Massey	2025-02-17	304
24	USAU	2025-02-17	345
24	SWCI	2025-02-22	105
24	ELO	2025-02-22	61
24	Massey	2025-02-22	237
24	USAU	2025-02-22	292
24	SWCI	2025-02-23	104
24	ELO	2025-02-23	64
24	Massey	2025-02-23	245
24	USAU	2025-02-23	298
24	SWCI	2025-03-02	128
24	ELO	2025-03-02	76
24	Massey	2025-03-02	166
24	USAU	2025-03-02	243
24	SWCI	2025-03-08	130
24	ELO	2025-03-08	101
24	Massey	2025-03-08	158
24	USAU	2025-03-08	241
24	SWCI	2025-03-09	130
24	ELO	2025-03-09	104
24	Massey	2025-03-09	159
24	USAU	2025-03-09	236
24	SWCI	2025-03-15	179
24	ELO	2025-03-15	229
24	Massey	2025-03-15	216
24	USAU	2025-03-15	211
24	SWCI	2025-03-16	177
24	ELO	2025-03-16	226
24	Massey	2025-03-16	165
24	USAU	2025-03-16	214
24	SWCI	2025-03-23	183
24	ELO	2025-03-23	213
24	Massey	2025-03-23	187
24	USAU	2025-03-23	184
24	SWCI	2025-03-29	200
24	ELO	2025-03-29	210
24	Massey	2025-03-29	163
24	USAU	2025-03-29	162
24	SWCI	2025-03-30	204
24	ELO	2025-03-30	208
24	Massey	2025-03-30	166
24	USAU	2025-03-30	159
25	SWCI	2025-01-26	4
25	ELO	2025-01-26	33
25	Massey	2025-01-26	32
25	USAU	2025-01-26	4
25	SWCI	2025-02-02	6
25	ELO	2025-02-02	4
25	Massey	2025-02-02	41
25	USAU	2025-02-02	13
25	SWCI	2025-02-08	12
25	ELO	2025-02-08	4
25	Massey	2025-02-08	46
25	USAU	2025-02-08	45
25	SWCI	2025-02-09	10
25	ELO	2025-02-09	4
25	Massey	2025-02-09	32
25	USAU	2025-02-09	47
25	SWCI	2025-02-12	10
25	ELO	2025-02-12	2
25	Massey	2025-02-12	49
25	USAU	2025-02-12	47
25	SWCI	2025-02-16	13
25	ELO	2025-02-16	3
25	Massey	2025-02-16	256
25	USAU	2025-02-16	305
25	SWCI	2025-02-17	13
25	ELO	2025-02-17	4
25	Massey	2025-02-17	132
25	USAU	2025-02-17	305
25	SWCI	2025-02-22	13
25	ELO	2025-02-22	4
25	Massey	2025-02-22	124
25	USAU	2025-02-22	82
25	SWCI	2025-02-23	15
25	ELO	2025-02-23	4
25	Massey	2025-02-23	127
25	USAU	2025-02-23	94
25	SWCI	2025-03-02	26
25	ELO	2025-03-02	5
25	Massey	2025-03-02	109
25	USAU	2025-03-02	100
25	SWCI	2025-03-08	24
25	ELO	2025-03-08	9
25	Massey	2025-03-08	102
25	USAU	2025-03-08	100
25	SWCI	2025-03-09	24
25	ELO	2025-03-09	9
25	Massey	2025-03-09	101
25	USAU	2025-03-09	99
25	SWCI	2025-03-15	30
25	ELO	2025-03-15	8
25	Massey	2025-03-15	163
25	USAU	2025-03-15	107
25	SWCI	2025-03-16	29
25	ELO	2025-03-16	8
25	Massey	2025-03-16	108
25	USAU	2025-03-16	111
25	SWCI	2025-03-23	27
25	ELO	2025-03-23	8
25	Massey	2025-03-23	133
25	USAU	2025-03-23	108
25	SWCI	2025-03-29	30
25	ELO	2025-03-29	9
25	Massey	2025-03-29	108
25	USAU	2025-03-29	115
25	SWCI	2025-03-30	22
25	ELO	2025-03-30	9
25	Massey	2025-03-30	109
25	USAU	2025-03-30	115
26	SWCI	2025-01-26	57
26	ELO	2025-01-26	34
26	Massey	2025-01-26	390
26	USAU	2025-01-26	395
26	SWCI	2025-02-02	114
26	ELO	2025-02-02	388
26	Massey	2025-02-02	377
26	USAU	2025-02-02	390
26	SWCI	2025-02-08	157
26	ELO	2025-02-08	383
26	Massey	2025-02-08	368
26	USAU	2025-02-08	374
26	SWCI	2025-02-09	161
26	ELO	2025-02-09	382
26	Massey	2025-02-09	330
26	USAU	2025-02-09	372
26	SWCI	2025-02-12	161
26	ELO	2025-02-12	395
26	Massey	2025-02-12	347
26	USAU	2025-02-12	373
26	SWCI	2025-02-16	178
26	ELO	2025-02-16	395
26	Massey	2025-02-16	376
26	USAU	2025-02-16	390
26	SWCI	2025-02-17	177
26	ELO	2025-02-17	394
26	Massey	2025-02-17	381
26	USAU	2025-02-17	391
26	SWCI	2025-02-22	220
26	ELO	2025-02-22	395
26	Massey	2025-02-22	366
26	USAU	2025-02-22	372
26	SWCI	2025-02-23	223
26	ELO	2025-02-23	394
26	Massey	2025-02-23	364
26	USAU	2025-02-23	383
26	SWCI	2025-03-02	292
26	ELO	2025-03-02	395
26	Massey	2025-03-02	356
26	USAU	2025-03-02	362
26	SWCI	2025-03-08	299
26	ELO	2025-03-08	393
26	Massey	2025-03-08	305
26	USAU	2025-03-08	362
26	SWCI	2025-03-09	302
26	ELO	2025-03-09	393
26	Massey	2025-03-09	297
26	USAU	2025-03-09	362
26	SWCI	2025-03-15	310
26	ELO	2025-03-15	393
26	Massey	2025-03-15	340
26	USAU	2025-03-15	313
26	SWCI	2025-03-16	310
26	ELO	2025-03-16	393
26	Massey	2025-03-16	316
26	USAU	2025-03-16	304
26	SWCI	2025-03-23	327
26	ELO	2025-03-23	383
26	Massey	2025-03-23	315
26	USAU	2025-03-23	284
26	SWCI	2025-03-29	342
26	ELO	2025-03-29	380
26	Massey	2025-03-29	291
26	USAU	2025-03-29	263
26	SWCI	2025-03-30	339
26	ELO	2025-03-30	380
26	Massey	2025-03-30	288
26	USAU	2025-03-30	266
27	SWCI	2025-01-26	64
27	ELO	2025-01-26	35
27	Massey	2025-01-26	397
27	USAU	2025-01-26	397
27	SWCI	2025-02-02	127
27	ELO	2025-02-02	396
27	Massey	2025-02-02	389
27	USAU	2025-02-02	396
27	SWCI	2025-02-08	169
27	ELO	2025-02-08	396
27	Massey	2025-02-08	386
27	USAU	2025-02-08	392
27	SWCI	2025-02-09	169
27	ELO	2025-02-09	396
27	Massey	2025-02-09	358
27	USAU	2025-02-09	393
27	SWCI	2025-02-12	169
27	ELO	2025-02-12	396
27	Massey	2025-02-12	372
27	USAU	2025-02-12	393
27	SWCI	2025-02-16	190
27	ELO	2025-02-16	396
27	Massey	2025-02-16	389
27	USAU	2025-02-16	397
27	SWCI	2025-02-17	190
27	ELO	2025-02-17	395
27	Massey	2025-02-17	394
27	USAU	2025-02-17	397
27	SWCI	2025-02-22	234
27	ELO	2025-02-22	396
27	Massey	2025-02-22	384
27	USAU	2025-02-22	394
27	SWCI	2025-02-23	234
27	ELO	2025-02-23	396
27	Massey	2025-02-23	386
27	USAU	2025-02-23	397
27	SWCI	2025-03-02	313
27	ELO	2025-03-02	394
27	Massey	2025-03-02	390
27	USAU	2025-03-02	392
27	SWCI	2025-03-08	321
27	ELO	2025-03-08	391
27	Massey	2025-03-08	381
27	USAU	2025-03-08	393
27	SWCI	2025-03-09	325
27	ELO	2025-03-09	391
27	Massey	2025-03-09	385
27	USAU	2025-03-09	392
27	SWCI	2025-03-15	350
27	ELO	2025-03-15	391
27	Massey	2025-03-15	386
27	USAU	2025-03-15	381
27	SWCI	2025-03-16	349
27	ELO	2025-03-16	391
27	Massey	2025-03-16	384
27	USAU	2025-03-16	379
27	SWCI	2025-03-23	369
27	ELO	2025-03-23	392
27	Massey	2025-03-23	385
27	USAU	2025-03-23	379
27	SWCI	2025-03-29	392
27	ELO	2025-03-29	390
27	Massey	2025-03-29	377
27	USAU	2025-03-29	372
27	SWCI	2025-03-30	389
27	ELO	2025-03-30	388
27	Massey	2025-03-30	378
27	USAU	2025-03-30	374
28	SWCI	2025-01-26	43
28	ELO	2025-01-26	36
28	Massey	2025-01-26	380
28	USAU	2025-01-26	381
28	SWCI	2025-02-02	88
28	ELO	2025-02-02	383
28	Massey	2025-02-02	336
28	USAU	2025-02-02	366
28	SWCI	2025-02-08	120
28	ELO	2025-02-08	379
28	Massey	2025-02-08	318
28	USAU	2025-02-08	357
28	SWCI	2025-02-09	123
28	ELO	2025-02-09	377
28	Massey	2025-02-09	125
28	USAU	2025-02-09	349
28	SWCI	2025-02-12	123
28	ELO	2025-02-12	372
28	Massey	2025-02-12	301
28	USAU	2025-02-12	349
28	SWCI	2025-02-16	141
28	ELO	2025-02-16	372
28	Massey	2025-02-16	348
28	USAU	2025-02-16	373
28	SWCI	2025-02-17	141
28	ELO	2025-02-17	363
28	Massey	2025-02-17	354
28	USAU	2025-02-17	373
28	SWCI	2025-02-22	173
28	ELO	2025-02-22	361
28	Massey	2025-02-22	324
28	USAU	2025-02-22	344
28	SWCI	2025-02-23	173
28	ELO	2025-02-23	359
28	Massey	2025-02-23	328
28	USAU	2025-02-23	349
28	SWCI	2025-03-02	219
28	ELO	2025-03-02	349
28	Massey	2025-03-02	277
28	USAU	2025-03-02	297
28	SWCI	2025-03-08	221
28	ELO	2025-03-08	328
28	Massey	2025-03-08	225
28	USAU	2025-03-08	295
28	SWCI	2025-03-09	226
28	ELO	2025-03-09	326
28	Massey	2025-03-09	218
28	USAU	2025-03-09	293
28	SWCI	2025-03-15	254
28	ELO	2025-03-15	327
28	Massey	2025-03-15	280
28	USAU	2025-03-15	259
28	SWCI	2025-03-16	247
28	ELO	2025-03-16	324
28	Massey	2025-03-16	223
28	USAU	2025-03-16	260
28	SWCI	2025-03-23	257
28	ELO	2025-03-23	316
28	Massey	2025-03-23	252
28	USAU	2025-03-23	238
28	SWCI	2025-03-29	301
28	ELO	2025-03-29	307
28	Massey	2025-03-29	242
28	USAU	2025-03-29	236
28	SWCI	2025-03-30	302
28	ELO	2025-03-30	306
28	Massey	2025-03-30	249
28	USAU	2025-03-30	251
29	SWCI	2025-01-26	28
29	ELO	2025-01-26	37
29	Massey	2025-01-26	51
29	USAU	2025-01-26	23
29	SWCI	2025-02-02	49
29	ELO	2025-02-02	33
29	Massey	2025-02-02	71
29	USAU	2025-02-02	49
29	SWCI	2025-02-08	68
29	ELO	2025-02-08	47
29	Massey	2025-02-08	78
29	USAU	2025-02-08	71
29	SWCI	2025-02-09	71
29	ELO	2025-02-09	50
29	Massey	2025-02-09	53
29	USAU	2025-02-09	81
29	SWCI	2025-02-12	71
29	ELO	2025-02-12	62
29	Massey	2025-02-12	76
29	USAU	2025-02-12	81
29	SWCI	2025-02-16	84
29	ELO	2025-02-16	62
29	Massey	2025-02-16	294
29	USAU	2025-02-16	337
29	SWCI	2025-02-17	85
29	ELO	2025-02-17	69
29	Massey	2025-02-17	290
29	USAU	2025-02-17	337
29	SWCI	2025-02-22	106
29	ELO	2025-02-22	71
29	Massey	2025-02-22	174
29	USAU	2025-02-22	291
29	SWCI	2025-02-23	105
29	ELO	2025-02-23	74
29	Massey	2025-02-23	239
29	USAU	2025-02-23	297
29	SWCI	2025-03-02	132
29	ELO	2025-03-02	93
29	Massey	2025-03-02	158
29	USAU	2025-03-02	242
29	SWCI	2025-03-08	133
29	ELO	2025-03-08	119
29	Massey	2025-03-08	153
29	USAU	2025-03-08	237
29	SWCI	2025-03-09	133
29	ELO	2025-03-09	122
29	Massey	2025-03-09	153
29	USAU	2025-03-09	232
29	SWCI	2025-03-15	144
29	ELO	2025-03-15	126
29	Massey	2025-03-15	211
29	USAU	2025-03-15	206
29	SWCI	2025-03-16	146
29	ELO	2025-03-16	128
29	Massey	2025-03-16	161
29	USAU	2025-03-16	210
29	SWCI	2025-03-23	56
29	ELO	2025-03-23	134
29	Massey	2025-03-23	195
29	USAU	2025-03-23	191
29	SWCI	2025-03-29	60
29	ELO	2025-03-29	36
29	Massey	2025-03-29	171
29	USAU	2025-03-29	172
29	SWCI	2025-03-30	57
29	ELO	2025-03-30	37
29	Massey	2025-03-30	177
29	USAU	2025-03-30	172
30	SWCI	2025-01-26	8
30	ELO	2025-01-26	38
30	Massey	2025-01-26	29
30	USAU	2025-01-26	10
30	SWCI	2025-02-02	14
30	ELO	2025-02-02	8
30	Massey	2025-02-02	35
30	USAU	2025-02-02	21
30	SWCI	2025-02-08	9
30	ELO	2025-02-08	9
30	Massey	2025-02-08	38
30	USAU	2025-02-08	35
30	SWCI	2025-02-09	20
30	ELO	2025-02-09	9
30	Massey	2025-02-09	28
30	USAU	2025-02-09	54
30	SWCI	2025-02-12	20
30	ELO	2025-02-12	5
30	Massey	2025-02-12	45
30	USAU	2025-02-12	54
30	SWCI	2025-02-16	26
30	ELO	2025-02-16	5
30	Massey	2025-02-16	192
30	USAU	2025-02-16	313
30	SWCI	2025-02-17	25
30	ELO	2025-02-17	10
30	Massey	2025-02-17	128
30	USAU	2025-02-17	314
30	SWCI	2025-02-22	39
30	ELO	2025-02-22	26
30	Massey	2025-02-22	134
30	USAU	2025-02-22	103
30	SWCI	2025-02-23	35
30	ELO	2025-02-23	26
30	Massey	2025-02-23	132
30	USAU	2025-02-23	269
30	SWCI	2025-03-02	52
30	ELO	2025-03-02	34
30	Massey	2025-03-02	115
30	USAU	2025-03-02	114
30	SWCI	2025-03-08	51
30	ELO	2025-03-08	47
30	Massey	2025-03-08	110
30	USAU	2025-03-08	116
30	SWCI	2025-03-09	51
30	ELO	2025-03-09	48
30	Massey	2025-03-09	109
30	USAU	2025-03-09	113
30	SWCI	2025-03-15	72
30	ELO	2025-03-15	48
30	Massey	2025-03-15	170
30	USAU	2025-03-15	115
30	SWCI	2025-03-16	72
30	ELO	2025-03-16	50
30	Massey	2025-03-16	124
30	USAU	2025-03-16	131
30	SWCI	2025-03-23	71
30	ELO	2025-03-23	89
30	Massey	2025-03-23	154
30	USAU	2025-03-23	128
30	SWCI	2025-03-29	101
30	ELO	2025-03-29	99
30	Massey	2025-03-29	128
30	USAU	2025-03-29	138
30	SWCI	2025-03-30	115
30	ELO	2025-03-30	99
30	Massey	2025-03-30	131
30	USAU	2025-03-30	136
31	SWCI	2025-01-26	86
31	ELO	2025-01-26	39
31	Massey	2025-01-26	4
31	USAU	2025-01-26	53
31	SWCI	2025-02-02	27
31	ELO	2025-02-02	68
31	Massey	2025-02-02	311
31	USAU	2025-02-02	54
31	SWCI	2025-02-08	35
31	ELO	2025-02-08	30
31	Massey	2025-02-08	101
31	USAU	2025-02-08	48
31	SWCI	2025-02-09	36
31	ELO	2025-02-09	33
31	Massey	2025-02-09	104
31	USAU	2025-02-09	51
31	SWCI	2025-02-12	36
31	ELO	2025-02-12	40
31	Massey	2025-02-12	70
31	USAU	2025-02-12	51
31	SWCI	2025-02-16	28
31	ELO	2025-02-16	14
31	Massey	2025-02-16	51
31	USAU	2025-02-16	32
31	SWCI	2025-02-17	27
31	ELO	2025-02-17	19
31	Massey	2025-02-17	42
31	USAU	2025-02-17	33
31	SWCI	2025-02-22	26
31	ELO	2025-02-22	18
31	Massey	2025-02-22	55
31	USAU	2025-02-22	34
31	SWCI	2025-02-23	21
31	ELO	2025-02-23	18
31	Massey	2025-02-23	46
31	USAU	2025-02-23	31
31	SWCI	2025-03-02	30
31	ELO	2025-03-02	8
31	Massey	2025-03-02	31
31	USAU	2025-03-02	27
31	SWCI	2025-03-08	28
31	ELO	2025-03-08	13
31	Massey	2025-03-08	29
31	USAU	2025-03-08	26
31	SWCI	2025-03-09	28
31	ELO	2025-03-09	13
31	Massey	2025-03-09	30
31	USAU	2025-03-09	28
31	SWCI	2025-03-15	26
31	ELO	2025-03-15	13
31	Massey	2025-03-15	88
31	USAU	2025-03-15	27
31	SWCI	2025-03-16	23
31	ELO	2025-03-16	13
31	Massey	2025-03-16	32
31	USAU	2025-03-16	28
31	SWCI	2025-03-23	20
31	ELO	2025-03-23	15
31	Massey	2025-03-23	57
31	USAU	2025-03-23	28
31	SWCI	2025-03-29	18
31	ELO	2025-03-29	17
31	Massey	2025-03-29	30
31	USAU	2025-03-29	28
31	SWCI	2025-03-30	15
31	ELO	2025-03-30	17
31	Massey	2025-03-30	30
31	USAU	2025-03-30	27
32	SWCI	2025-01-26	87
32	ELO	2025-01-26	40
32	Massey	2025-01-26	25
32	USAU	2025-01-26	54
32	SWCI	2025-02-02	62
32	ELO	2025-02-02	69
32	Massey	2025-02-02	315
32	USAU	2025-02-02	64
32	SWCI	2025-02-08	83
32	ELO	2025-02-08	60
32	Massey	2025-02-08	112
32	USAU	2025-02-08	58
32	SWCI	2025-02-09	82
32	ELO	2025-02-09	63
32	Massey	2025-02-09	113
32	USAU	2025-02-09	62
32	SWCI	2025-02-12	82
32	ELO	2025-02-12	74
32	Massey	2025-02-12	81
32	USAU	2025-02-12	61
32	SWCI	2025-02-16	101
32	ELO	2025-02-16	318
32	Massey	2025-02-16	89
32	USAU	2025-02-16	66
32	SWCI	2025-02-17	101
32	ELO	2025-02-17	309
32	Massey	2025-02-17	79
32	USAU	2025-02-17	68
32	SWCI	2025-02-22	110
32	ELO	2025-02-22	305
32	Massey	2025-02-22	85
32	USAU	2025-02-22	71
32	SWCI	2025-02-23	72
32	ELO	2025-02-23	303
32	Massey	2025-02-23	69
32	USAU	2025-02-23	51
32	SWCI	2025-03-02	88
32	ELO	2025-03-02	31
32	Massey	2025-03-02	52
32	USAU	2025-03-02	46
32	SWCI	2025-03-08	91
32	ELO	2025-03-08	44
32	Massey	2025-03-08	46
32	USAU	2025-03-08	48
32	SWCI	2025-03-09	93
32	ELO	2025-03-09	45
32	Massey	2025-03-09	46
32	USAU	2025-03-09	46
32	SWCI	2025-03-15	97
32	ELO	2025-03-15	45
32	Massey	2025-03-15	104
32	USAU	2025-03-15	51
32	SWCI	2025-03-16	102
32	ELO	2025-03-16	47
32	Massey	2025-03-16	48
32	USAU	2025-03-16	49
32	SWCI	2025-03-23	93
32	ELO	2025-03-23	55
32	Massey	2025-03-23	76
32	USAU	2025-03-23	52
32	SWCI	2025-03-29	111
32	ELO	2025-03-29	63
32	Massey	2025-03-29	44
32	USAU	2025-03-29	42
32	SWCI	2025-03-30	138
32	ELO	2025-03-30	64
32	Massey	2025-03-30	41
32	USAU	2025-03-30	38
33	SWCI	2025-01-26	18
33	ELO	2025-01-26	41
33	Massey	2025-01-26	36
33	USAU	2025-01-26	19
33	SWCI	2025-02-02	33
33	ELO	2025-02-02	30
33	Massey	2025-02-02	79
33	USAU	2025-02-02	40
33	SWCI	2025-02-08	42
33	ELO	2025-02-08	44
33	Massey	2025-02-08	64
33	USAU	2025-02-08	27
33	SWCI	2025-02-09	44
33	ELO	2025-02-09	47
33	Massey	2025-02-09	266
33	USAU	2025-02-09	34
33	SWCI	2025-02-12	44
33	ELO	2025-02-12	58
33	Massey	2025-02-12	275
33	USAU	2025-02-12	34
33	SWCI	2025-02-16	87
33	ELO	2025-02-16	88
33	Massey	2025-02-16	113
33	USAU	2025-02-16	79
33	SWCI	2025-02-17	88
33	ELO	2025-02-17	95
33	Massey	2025-02-17	105
33	USAU	2025-02-17	83
33	SWCI	2025-02-22	96
33	ELO	2025-02-22	96
33	Massey	2025-02-22	105
33	USAU	2025-02-22	84
33	SWCI	2025-02-23	91
33	ELO	2025-02-23	100
33	Massey	2025-02-23	99
33	USAU	2025-02-23	79
33	SWCI	2025-03-02	109
33	ELO	2025-03-02	119
33	Massey	2025-03-02	78
33	USAU	2025-03-02	71
33	SWCI	2025-03-08	109
33	ELO	2025-03-08	150
33	Massey	2025-03-08	74
33	USAU	2025-03-08	75
33	SWCI	2025-03-09	110
33	ELO	2025-03-09	154
33	Massey	2025-03-09	76
33	USAU	2025-03-09	74
33	SWCI	2025-03-15	121
33	ELO	2025-03-15	156
33	Massey	2025-03-15	132
33	USAU	2025-03-15	77
33	SWCI	2025-03-16	122
33	ELO	2025-03-16	158
33	Massey	2025-03-16	75
33	USAU	2025-03-16	76
33	SWCI	2025-03-23	123
33	ELO	2025-03-23	163
33	Massey	2025-03-23	100
33	USAU	2025-03-23	76
33	SWCI	2025-03-29	110
33	ELO	2025-03-29	178
33	Massey	2025-03-29	78
33	USAU	2025-03-29	77
33	SWCI	2025-03-30	133
33	ELO	2025-03-30	179
33	Massey	2025-03-30	74
33	USAU	2025-03-30	75
34	SWCI	2025-01-26	21
34	ELO	2025-01-26	42
34	Massey	2025-01-26	40
34	USAU	2025-01-26	22
34	SWCI	2025-02-02	39
34	ELO	2025-02-02	23
34	Massey	2025-02-02	90
34	USAU	2025-02-02	47
34	SWCI	2025-02-08	51
34	ELO	2025-02-08	33
34	Massey	2025-02-08	74
34	USAU	2025-02-08	40
34	SWCI	2025-02-09	51
34	ELO	2025-02-09	36
34	Massey	2025-02-09	290
34	USAU	2025-02-09	44
34	SWCI	2025-02-12	51
34	ELO	2025-02-12	45
34	Massey	2025-02-12	291
34	USAU	2025-02-12	44
34	SWCI	2025-02-16	86
34	ELO	2025-02-16	77
34	Massey	2025-02-16	122
34	USAU	2025-02-16	85
34	SWCI	2025-02-17	87
34	ELO	2025-02-17	85
34	Massey	2025-02-17	112
34	USAU	2025-02-17	293
34	SWCI	2025-02-22	90
34	ELO	2025-02-22	85
34	Massey	2025-02-22	109
34	USAU	2025-02-22	88
34	SWCI	2025-02-23	83
34	ELO	2025-02-23	89
34	Massey	2025-02-23	109
34	USAU	2025-02-23	84
34	SWCI	2025-03-02	100
34	ELO	2025-03-02	107
34	Massey	2025-03-02	82
34	USAU	2025-03-02	78
34	SWCI	2025-03-08	101
34	ELO	2025-03-08	139
34	Massey	2025-03-08	81
34	USAU	2025-03-08	80
34	SWCI	2025-03-09	102
34	ELO	2025-03-09	142
34	Massey	2025-03-09	81
34	USAU	2025-03-09	79
34	SWCI	2025-03-15	109
34	ELO	2025-03-15	144
34	Massey	2025-03-15	135
34	USAU	2025-03-15	82
34	SWCI	2025-03-16	114
34	ELO	2025-03-16	146
34	Massey	2025-03-16	80
34	USAU	2025-03-16	81
34	SWCI	2025-03-23	109
34	ELO	2025-03-23	151
34	Massey	2025-03-23	103
34	USAU	2025-03-23	79
34	SWCI	2025-03-29	112
34	ELO	2025-03-29	164
34	Massey	2025-03-29	77
34	USAU	2025-03-29	75
34	SWCI	2025-03-30	159
34	ELO	2025-03-30	166
34	Massey	2025-03-30	92
34	USAU	2025-03-30	103
35	SWCI	2025-01-26	88
35	ELO	2025-01-26	43
35	Massey	2025-01-26	387
35	USAU	2025-01-26	55
35	SWCI	2025-02-02	148
35	ELO	2025-02-02	70
35	Massey	2025-02-02	326
35	USAU	2025-02-02	90
35	SWCI	2025-02-08	182
35	ELO	2025-02-08	92
35	Massey	2025-02-08	7
35	USAU	2025-02-08	102
35	SWCI	2025-02-09	182
35	ELO	2025-02-09	89
35	Massey	2025-02-09	286
35	USAU	2025-02-09	100
35	SWCI	2025-02-12	182
35	ELO	2025-02-12	101
35	Massey	2025-02-12	27
35	USAU	2025-02-12	100
35	SWCI	2025-02-16	112
35	ELO	2025-02-16	327
35	Massey	2025-02-16	99
35	USAU	2025-02-16	69
35	SWCI	2025-02-17	112
35	ELO	2025-02-17	318
35	Massey	2025-02-17	94
35	USAU	2025-02-17	70
35	SWCI	2025-02-22	134
35	ELO	2025-02-22	316
35	Massey	2025-02-22	95
35	USAU	2025-02-22	66
35	SWCI	2025-02-23	134
35	ELO	2025-02-23	316
35	Massey	2025-02-23	92
35	USAU	2025-02-23	66
35	SWCI	2025-03-02	268
35	ELO	2025-03-02	299
35	Massey	2025-03-02	87
35	USAU	2025-03-02	69
35	SWCI	2025-03-08	272
35	ELO	2025-03-08	386
35	Massey	2025-03-08	86
35	USAU	2025-03-08	73
35	SWCI	2025-03-09	277
35	ELO	2025-03-09	385
35	Massey	2025-03-09	85
35	USAU	2025-03-09	71
35	SWCI	2025-03-15	294
35	ELO	2025-03-15	384
35	Massey	2025-03-15	140
35	USAU	2025-03-15	71
35	SWCI	2025-03-16	291
35	ELO	2025-03-16	384
35	Massey	2025-03-16	85
35	USAU	2025-03-16	73
35	SWCI	2025-03-23	306
35	ELO	2025-03-23	384
35	Massey	2025-03-23	107
35	USAU	2025-03-23	71
35	SWCI	2025-03-29	248
35	ELO	2025-03-29	381
35	Massey	2025-03-29	79
35	USAU	2025-03-29	72
35	SWCI	2025-03-30	184
35	ELO	2025-03-30	124
35	Massey	2025-03-30	69
35	USAU	2025-03-30	64
36	SWCI	2025-01-26	89
36	ELO	2025-01-26	44
36	Massey	2025-01-26	370
36	USAU	2025-01-26	56
36	SWCI	2025-02-02	149
36	ELO	2025-02-02	71
36	Massey	2025-02-02	350
36	USAU	2025-02-02	91
36	SWCI	2025-02-08	183
36	ELO	2025-02-08	93
36	Massey	2025-02-08	366
36	USAU	2025-02-08	103
36	SWCI	2025-02-09	183
36	ELO	2025-02-09	90
36	Massey	2025-02-09	377
36	USAU	2025-02-09	101
36	SWCI	2025-02-12	183
36	ELO	2025-02-12	102
36	Massey	2025-02-12	395
36	USAU	2025-02-12	101
36	SWCI	2025-02-16	201
36	ELO	2025-02-16	103
36	Massey	2025-02-16	129
36	USAU	2025-02-16	97
36	SWCI	2025-02-17	201
36	ELO	2025-02-17	108
36	Massey	2025-02-17	379
36	USAU	2025-02-17	95
36	SWCI	2025-02-22	128
36	ELO	2025-02-22	308
36	Massey	2025-02-22	326
36	USAU	2025-02-22	328
36	SWCI	2025-02-23	126
36	ELO	2025-02-23	306
36	Massey	2025-02-23	327
36	USAU	2025-02-23	333
36	SWCI	2025-03-02	167
36	ELO	2025-03-02	287
36	Massey	2025-03-02	286
36	USAU	2025-03-02	288
36	SWCI	2025-03-08	167
36	ELO	2025-03-08	243
36	Massey	2025-03-08	238
36	USAU	2025-03-08	289
36	SWCI	2025-03-09	169
36	ELO	2025-03-09	242
36	Massey	2025-03-09	228
36	USAU	2025-03-09	284
36	SWCI	2025-03-15	226
36	ELO	2025-03-15	235
36	Massey	2025-03-15	314
36	USAU	2025-03-15	307
36	SWCI	2025-03-16	222
36	ELO	2025-03-16	289
36	Massey	2025-03-16	266
36	USAU	2025-03-16	307
36	SWCI	2025-03-23	227
36	ELO	2025-03-23	278
36	Massey	2025-03-23	288
36	USAU	2025-03-23	282
36	SWCI	2025-03-29	255
36	ELO	2025-03-29	266
36	Massey	2025-03-29	263
36	USAU	2025-03-29	245
36	SWCI	2025-03-30	227
36	ELO	2025-03-30	275
36	Massey	2025-03-30	256
36	USAU	2025-03-30	232
37	SWCI	2025-01-26	90
37	ELO	2025-01-26	45
37	Massey	2025-01-26	375
37	USAU	2025-01-26	57
37	SWCI	2025-02-02	150
37	ELO	2025-02-02	72
37	Massey	2025-02-02	24
37	USAU	2025-02-02	92
37	SWCI	2025-02-08	184
37	ELO	2025-02-08	94
37	Massey	2025-02-08	317
37	USAU	2025-02-08	104
37	SWCI	2025-02-09	184
37	ELO	2025-02-09	91
37	Massey	2025-02-09	1
37	USAU	2025-02-09	102
37	SWCI	2025-02-12	184
37	ELO	2025-02-12	103
37	Massey	2025-02-12	55
37	USAU	2025-02-12	102
37	SWCI	2025-02-16	202
37	ELO	2025-02-16	104
37	Massey	2025-02-16	364
37	USAU	2025-02-16	98
37	SWCI	2025-02-17	202
37	ELO	2025-02-17	109
37	Massey	2025-02-17	126
37	USAU	2025-02-17	96
37	SWCI	2025-02-22	176
37	ELO	2025-02-22	346
37	Massey	2025-02-22	335
37	USAU	2025-02-22	339
37	SWCI	2025-02-23	178
37	ELO	2025-02-23	346
37	Massey	2025-02-23	335
37	USAU	2025-02-23	344
37	SWCI	2025-03-02	236
37	ELO	2025-03-02	339
37	Massey	2025-03-02	297
37	USAU	2025-03-02	295
37	SWCI	2025-03-08	240
37	ELO	2025-03-08	317
37	Massey	2025-03-08	244
37	USAU	2025-03-08	294
37	SWCI	2025-03-09	243
37	ELO	2025-03-09	315
37	Massey	2025-03-09	237
37	USAU	2025-03-09	291
37	SWCI	2025-03-15	189
37	ELO	2025-03-15	313
37	Massey	2025-03-15	300
37	USAU	2025-03-15	268
37	SWCI	2025-03-16	198
37	ELO	2025-03-16	312
37	Massey	2025-03-16	230
37	USAU	2025-03-16	267
37	SWCI	2025-03-23	207
37	ELO	2025-03-23	275
37	Massey	2025-03-23	251
37	USAU	2025-03-23	240
37	SWCI	2025-03-29	224
37	ELO	2025-03-29	262
37	Massey	2025-03-29	229
37	USAU	2025-03-29	215
37	SWCI	2025-03-30	221
37	ELO	2025-03-30	262
37	Massey	2025-03-30	228
37	USAU	2025-03-30	209
38	SWCI	2025-01-26	91
38	ELO	2025-01-26	46
38	Massey	2025-01-26	46
38	USAU	2025-01-26	58
38	SWCI	2025-02-02	97
38	ELO	2025-02-02	380
38	Massey	2025-02-02	302
38	USAU	2025-02-02	341
38	SWCI	2025-02-08	127
38	ELO	2025-02-08	376
38	Massey	2025-02-08	117
38	USAU	2025-02-08	79
38	SWCI	2025-02-09	127
38	ELO	2025-02-09	374
38	Massey	2025-02-09	83
38	USAU	2025-02-09	65
38	SWCI	2025-02-12	127
38	ELO	2025-02-12	368
38	Massey	2025-02-12	88
38	USAU	2025-02-12	65
38	SWCI	2025-02-16	140
38	ELO	2025-02-16	368
38	Massey	2025-02-16	94
38	USAU	2025-02-16	60
38	SWCI	2025-02-17	140
38	ELO	2025-02-17	359
38	Massey	2025-02-17	89
38	USAU	2025-02-17	61
38	SWCI	2025-02-22	130
38	ELO	2025-02-22	314
38	Massey	2025-02-22	92
38	USAU	2025-02-22	61
38	SWCI	2025-02-23	130
38	ELO	2025-02-23	314
38	Massey	2025-02-23	90
38	USAU	2025-02-23	65
38	SWCI	2025-03-02	154
38	ELO	2025-03-02	296
38	Massey	2025-03-02	74
38	USAU	2025-03-02	66
38	SWCI	2025-03-08	157
38	ELO	2025-03-08	259
38	Massey	2025-03-08	69
38	USAU	2025-03-08	70
38	SWCI	2025-03-09	162
38	ELO	2025-03-09	258
38	Massey	2025-03-09	69
38	USAU	2025-03-09	70
38	SWCI	2025-03-15	159
38	ELO	2025-03-15	132
38	Massey	2025-03-15	139
38	USAU	2025-03-15	83
38	SWCI	2025-03-16	158
38	ELO	2025-03-16	134
38	Massey	2025-03-16	86
38	USAU	2025-03-16	84
38	SWCI	2025-03-23	157
38	ELO	2025-03-23	140
38	Massey	2025-03-23	106
38	USAU	2025-03-23	80
38	SWCI	2025-03-29	170
38	ELO	2025-03-29	150
38	Massey	2025-03-29	82
38	USAU	2025-03-29	81
38	SWCI	2025-03-30	173
38	ELO	2025-03-30	153
38	Massey	2025-03-30	80
38	USAU	2025-03-30	78
39	SWCI	2025-01-26	17
39	ELO	2025-01-26	47
39	Massey	2025-01-26	22
39	USAU	2025-01-26	12
39	SWCI	2025-02-02	31
39	ELO	2025-02-02	11
39	Massey	2025-02-02	25
39	USAU	2025-02-02	24
39	SWCI	2025-02-08	40
39	ELO	2025-02-08	15
39	Massey	2025-02-08	21
39	USAU	2025-02-08	44
39	SWCI	2025-02-09	41
39	ELO	2025-02-09	15
39	Massey	2025-02-09	13
39	USAU	2025-02-09	56
39	SWCI	2025-02-12	41
39	ELO	2025-02-12	19
39	Massey	2025-02-12	26
39	USAU	2025-02-12	56
39	SWCI	2025-02-16	43
39	ELO	2025-02-16	19
39	Massey	2025-02-16	104
39	USAU	2025-02-16	314
39	SWCI	2025-02-17	41
39	ELO	2025-02-17	24
39	Massey	2025-02-17	100
39	USAU	2025-02-17	315
39	SWCI	2025-02-22	46
39	ELO	2025-02-22	21
39	Massey	2025-02-22	89
39	USAU	2025-02-22	73
39	SWCI	2025-02-23	43
39	ELO	2025-02-23	21
39	Massey	2025-02-23	93
39	USAU	2025-02-23	73
39	SWCI	2025-03-02	61
39	ELO	2025-03-02	25
39	Massey	2025-03-02	76
39	USAU	2025-03-02	80
39	SWCI	2025-03-08	62
39	ELO	2025-03-08	37
39	Massey	2025-03-08	68
39	USAU	2025-03-08	81
39	SWCI	2025-03-09	63
39	ELO	2025-03-09	38
39	Massey	2025-03-09	68
39	USAU	2025-03-09	81
39	SWCI	2025-03-15	70
39	ELO	2025-03-15	37
39	Massey	2025-03-15	124
39	USAU	2025-03-15	81
39	SWCI	2025-03-16	71
39	ELO	2025-03-16	39
39	Massey	2025-03-16	71
39	USAU	2025-03-16	86
39	SWCI	2025-03-23	61
39	ELO	2025-03-23	45
39	Massey	2025-03-23	101
39	USAU	2025-03-23	84
39	SWCI	2025-03-29	48
39	ELO	2025-03-29	51
39	Massey	2025-03-29	85
39	USAU	2025-03-29	91
39	SWCI	2025-03-30	35
39	ELO	2025-03-30	33
39	Massey	2025-03-30	89
39	USAU	2025-03-30	95
40	SWCI	2025-01-26	92
40	ELO	2025-01-26	48
40	Massey	2025-01-26	395
40	USAU	2025-01-26	59
40	SWCI	2025-02-02	151
40	ELO	2025-02-02	73
40	Massey	2025-02-02	353
40	USAU	2025-02-02	93
40	SWCI	2025-02-08	76
40	ELO	2025-02-08	95
40	Massey	2025-02-08	305
40	USAU	2025-02-08	333
40	SWCI	2025-02-09	113
40	ELO	2025-02-09	92
40	Massey	2025-02-09	93
40	USAU	2025-02-09	332
40	SWCI	2025-02-12	113
40	ELO	2025-02-12	371
40	Massey	2025-02-12	273
40	USAU	2025-02-12	332
40	SWCI	2025-02-16	125
40	ELO	2025-02-16	371
40	Massey	2025-02-16	332
40	USAU	2025-02-16	354
40	SWCI	2025-02-17	124
40	ELO	2025-02-17	362
40	Massey	2025-02-17	338
40	USAU	2025-02-17	355
40	SWCI	2025-02-22	138
40	ELO	2025-02-22	359
40	Massey	2025-02-22	299
40	USAU	2025-02-22	318
40	SWCI	2025-02-23	124
40	ELO	2025-02-23	357
40	Massey	2025-02-23	293
40	USAU	2025-02-23	318
40	SWCI	2025-03-02	162
40	ELO	2025-03-02	291
40	Massey	2025-03-02	215
40	USAU	2025-03-02	275
40	SWCI	2025-03-08	163
40	ELO	2025-03-08	252
40	Massey	2025-03-08	198
40	USAU	2025-03-08	271
40	SWCI	2025-03-09	165
40	ELO	2025-03-09	251
40	Massey	2025-03-09	195
40	USAU	2025-03-09	269
40	SWCI	2025-03-15	181
40	ELO	2025-03-15	245
40	Massey	2025-03-15	256
40	USAU	2025-03-15	238
40	SWCI	2025-03-16	178
40	ELO	2025-03-16	241
40	Massey	2025-03-16	199
40	USAU	2025-03-16	236
40	SWCI	2025-03-23	182
40	ELO	2025-03-23	230
40	Massey	2025-03-23	223
40	USAU	2025-03-23	209
40	SWCI	2025-03-29	264
40	ELO	2025-03-29	225
40	Massey	2025-03-29	199
40	USAU	2025-03-29	199
40	SWCI	2025-03-30	298
40	ELO	2025-03-30	225
40	Massey	2025-03-30	195
40	USAU	2025-03-30	193
41	SWCI	2025-01-26	93
41	ELO	2025-01-26	49
41	Massey	2025-01-26	30
41	USAU	2025-01-26	60
41	SWCI	2025-02-02	152
41	ELO	2025-02-02	74
41	Massey	2025-02-02	31
41	USAU	2025-02-02	94
41	SWCI	2025-02-08	185
41	ELO	2025-02-08	96
41	Massey	2025-02-08	353
41	USAU	2025-02-08	105
41	SWCI	2025-02-09	185
41	ELO	2025-02-09	93
41	Massey	2025-02-09	2
41	USAU	2025-02-09	103
41	SWCI	2025-02-12	185
41	ELO	2025-02-12	104
41	Massey	2025-02-12	1
41	USAU	2025-02-12	103
41	SWCI	2025-02-16	203
41	ELO	2025-02-16	105
41	Massey	2025-02-16	1
41	USAU	2025-02-16	99
41	SWCI	2025-02-17	203
41	ELO	2025-02-17	110
41	Massey	2025-02-17	370
41	USAU	2025-02-17	97
41	SWCI	2025-02-22	179
41	ELO	2025-02-22	110
41	Massey	2025-02-22	154
41	USAU	2025-02-22	277
41	SWCI	2025-02-23	209
41	ELO	2025-02-23	115
41	Massey	2025-02-23	155
41	USAU	2025-02-23	285
41	SWCI	2025-03-02	281
41	ELO	2025-03-02	359
41	Massey	2025-03-02	132
41	USAU	2025-03-02	130
41	SWCI	2025-03-08	287
41	ELO	2025-03-08	344
41	Massey	2025-03-08	128
41	USAU	2025-03-08	212
41	SWCI	2025-03-09	291
41	ELO	2025-03-09	342
41	Massey	2025-03-09	127
41	USAU	2025-03-09	134
41	SWCI	2025-03-15	255
41	ELO	2025-03-15	344
41	Massey	2025-03-15	187
41	USAU	2025-03-15	123
41	SWCI	2025-03-16	211
41	ELO	2025-03-16	342
41	Massey	2025-03-16	111
41	USAU	2025-03-16	106
41	SWCI	2025-03-23	219
41	ELO	2025-03-23	220
41	Massey	2025-03-23	137
41	USAU	2025-03-23	103
41	SWCI	2025-03-29	140
41	ELO	2025-03-29	216
41	Massey	2025-03-29	74
41	USAU	2025-03-29	70
41	SWCI	2025-03-30	148
41	ELO	2025-03-30	216
41	Massey	2025-03-30	71
41	USAU	2025-03-30	61
42	SWCI	2025-01-26	94
42	ELO	2025-01-26	50
42	Massey	2025-01-26	2
42	USAU	2025-01-26	61
42	SWCI	2025-02-02	153
42	ELO	2025-02-02	75
42	Massey	2025-02-02	368
42	USAU	2025-02-02	95
42	SWCI	2025-02-08	186
42	ELO	2025-02-08	97
42	Massey	2025-02-08	394
42	USAU	2025-02-08	106
42	SWCI	2025-02-09	186
42	ELO	2025-02-09	94
42	Massey	2025-02-09	4
42	USAU	2025-02-09	104
42	SWCI	2025-02-12	186
42	ELO	2025-02-12	105
42	Massey	2025-02-12	393
42	USAU	2025-02-12	104
42	SWCI	2025-02-16	204
42	ELO	2025-02-16	106
42	Massey	2025-02-16	266
42	USAU	2025-02-16	100
42	SWCI	2025-02-17	204
42	ELO	2025-02-17	111
42	Massey	2025-02-17	302
42	USAU	2025-02-17	98
42	SWCI	2025-02-22	245
42	ELO	2025-02-22	111
42	Massey	2025-02-22	397
42	USAU	2025-02-22	114
42	SWCI	2025-02-23	245
42	ELO	2025-02-23	116
42	Massey	2025-02-23	299
42	USAU	2025-02-23	116
42	SWCI	2025-03-02	59
42	ELO	2025-03-02	133
42	Massey	2025-03-02	108
42	USAU	2025-03-02	119
42	SWCI	2025-03-08	59
42	ELO	2025-03-08	60
42	Massey	2025-03-08	101
42	USAU	2025-03-08	122
42	SWCI	2025-03-09	60
42	ELO	2025-03-09	61
42	Massey	2025-03-09	100
42	USAU	2025-03-09	120
42	SWCI	2025-03-15	25
42	ELO	2025-03-15	62
42	Massey	2025-03-15	134
42	USAU	2025-03-15	65
42	SWCI	2025-03-16	19
42	ELO	2025-03-16	65
42	Massey	2025-03-16	65
42	USAU	2025-03-16	61
42	SWCI	2025-03-23	22
42	ELO	2025-03-23	13
42	Massey	2025-03-23	93
42	USAU	2025-03-23	63
42	SWCI	2025-03-29	22
42	ELO	2025-03-29	14
42	Massey	2025-03-29	73
42	USAU	2025-03-29	74
42	SWCI	2025-03-30	41
42	ELO	2025-03-30	14
42	Massey	2025-03-30	79
42	USAU	2025-03-30	77
43	SWCI	2025-01-26	95
43	ELO	2025-01-26	51
43	Massey	2025-01-26	372
43	USAU	2025-01-26	62
43	SWCI	2025-02-02	154
43	ELO	2025-02-02	76
43	Massey	2025-02-02	22
43	USAU	2025-02-02	96
43	SWCI	2025-02-08	52
43	ELO	2025-02-08	98
43	Massey	2025-02-08	58
43	USAU	2025-02-08	51
43	SWCI	2025-02-09	30
43	ELO	2025-02-09	95
43	Massey	2025-02-09	25
43	USAU	2025-02-09	42
43	SWCI	2025-02-12	30
43	ELO	2025-02-12	48
43	Massey	2025-02-12	43
43	USAU	2025-02-12	42
43	SWCI	2025-02-16	33
43	ELO	2025-02-16	48
43	Massey	2025-02-16	130
43	USAU	2025-02-16	300
43	SWCI	2025-02-17	31
43	ELO	2025-02-17	54
43	Massey	2025-02-17	123
43	USAU	2025-02-17	302
43	SWCI	2025-02-22	38
43	ELO	2025-02-22	55
43	Massey	2025-02-22	107
43	USAU	2025-02-22	75
43	SWCI	2025-02-23	49
43	ELO	2025-02-23	58
43	Massey	2025-02-23	125
43	USAU	2025-02-23	93
43	SWCI	2025-03-02	45
43	ELO	2025-03-02	69
43	Massey	2025-03-02	112
43	USAU	2025-03-02	103
43	SWCI	2025-03-08	44
43	ELO	2025-03-08	39
43	Massey	2025-03-08	104
43	USAU	2025-03-08	102
43	SWCI	2025-03-09	45
43	ELO	2025-03-09	40
43	Massey	2025-03-09	103
43	USAU	2025-03-09	102
43	SWCI	2025-03-15	56
43	ELO	2025-03-15	40
43	Massey	2025-03-15	161
43	USAU	2025-03-15	92
43	SWCI	2025-03-16	58
43	ELO	2025-03-16	42
43	Massey	2025-03-16	104
43	USAU	2025-03-16	93
43	SWCI	2025-03-23	57
43	ELO	2025-03-23	49
43	Massey	2025-03-23	130
43	USAU	2025-03-23	90
43	SWCI	2025-03-29	42
43	ELO	2025-03-29	57
43	Massey	2025-03-29	94
43	USAU	2025-03-29	80
43	SWCI	2025-03-30	38
43	ELO	2025-03-30	58
43	Massey	2025-03-30	84
43	USAU	2025-03-30	70
44	SWCI	2025-01-26	96
44	ELO	2025-01-26	52
44	Massey	2025-01-26	1
44	USAU	2025-01-26	63
44	SWCI	2025-02-02	155
44	ELO	2025-02-02	77
44	Massey	2025-02-02	345
44	USAU	2025-02-02	97
44	SWCI	2025-02-08	15
44	ELO	2025-02-08	99
44	Massey	2025-02-08	20
44	USAU	2025-02-08	36
44	SWCI	2025-02-09	29
44	ELO	2025-02-09	96
44	Massey	2025-02-09	45
44	USAU	2025-02-09	52
44	SWCI	2025-02-12	29
44	ELO	2025-02-12	34
44	Massey	2025-02-12	57
44	USAU	2025-02-12	52
44	SWCI	2025-02-16	34
44	ELO	2025-02-16	34
44	Massey	2025-02-16	272
44	USAU	2025-02-16	306
44	SWCI	2025-02-17	32
44	ELO	2025-02-17	37
44	Massey	2025-02-17	145
44	USAU	2025-02-17	310
44	SWCI	2025-02-22	11
44	ELO	2025-02-22	39
44	Massey	2025-02-22	137
44	USAU	2025-02-22	95
44	SWCI	2025-02-23	12
44	ELO	2025-02-23	39
44	Massey	2025-02-23	152
44	USAU	2025-02-23	99
44	SWCI	2025-03-02	21
44	ELO	2025-03-02	14
44	Massey	2025-03-02	134
44	USAU	2025-03-02	110
44	SWCI	2025-03-08	21
44	ELO	2025-03-08	20
44	Massey	2025-03-08	129
44	USAU	2025-03-08	114
44	SWCI	2025-03-09	21
44	ELO	2025-03-09	20
44	Massey	2025-03-09	129
44	USAU	2025-03-09	110
44	SWCI	2025-03-15	21
44	ELO	2025-03-15	21
44	Massey	2025-03-15	171
44	USAU	2025-03-15	89
44	SWCI	2025-03-16	20
44	ELO	2025-03-16	22
44	Massey	2025-03-16	121
44	USAU	2025-03-16	95
44	SWCI	2025-03-23	23
44	ELO	2025-03-23	26
44	Massey	2025-03-23	141
44	USAU	2025-03-23	95
44	SWCI	2025-03-29	45
44	ELO	2025-03-29	28
44	Massey	2025-03-29	117
44	USAU	2025-03-29	105
44	SWCI	2025-03-30	42
44	ELO	2025-03-30	28
44	Massey	2025-03-30	99
44	USAU	2025-03-30	89
45	SWCI	2025-01-26	55
45	ELO	2025-01-26	53
45	Massey	2025-01-26	383
45	USAU	2025-01-26	388
45	SWCI	2025-02-02	108
45	ELO	2025-02-02	387
45	Massey	2025-02-02	352
45	USAU	2025-02-02	374
45	SWCI	2025-02-08	140
45	ELO	2025-02-08	382
45	Massey	2025-02-08	330
45	USAU	2025-02-08	364
45	SWCI	2025-02-09	143
45	ELO	2025-02-09	380
45	Massey	2025-02-09	279
45	USAU	2025-02-09	359
45	SWCI	2025-02-12	144
45	ELO	2025-02-12	376
45	Massey	2025-02-12	317
45	USAU	2025-02-12	359
45	SWCI	2025-02-16	157
45	ELO	2025-02-16	375
45	Massey	2025-02-16	359
45	USAU	2025-02-16	380
45	SWCI	2025-02-17	156
45	ELO	2025-02-17	371
45	Massey	2025-02-17	364
45	USAU	2025-02-17	383
45	SWCI	2025-02-22	196
45	ELO	2025-02-22	372
45	Massey	2025-02-22	350
45	USAU	2025-02-22	368
45	SWCI	2025-02-23	195
45	ELO	2025-02-23	370
45	Massey	2025-02-23	344
45	USAU	2025-02-23	371
45	SWCI	2025-03-02	266
45	ELO	2025-03-02	362
45	Massey	2025-03-02	310
45	USAU	2025-03-02	339
45	SWCI	2025-03-08	270
45	ELO	2025-03-08	348
45	Massey	2025-03-08	261
45	USAU	2025-03-08	338
45	SWCI	2025-03-09	275
45	ELO	2025-03-09	346
45	Massey	2025-03-09	252
45	USAU	2025-03-09	336
45	SWCI	2025-03-15	293
45	ELO	2025-03-15	347
45	Massey	2025-03-15	319
45	USAU	2025-03-15	318
45	SWCI	2025-03-16	293
45	ELO	2025-03-16	345
45	Massey	2025-03-16	277
45	USAU	2025-03-16	322
45	SWCI	2025-03-23	296
45	ELO	2025-03-23	335
45	Massey	2025-03-23	317
45	USAU	2025-03-23	333
45	SWCI	2025-03-29	309
45	ELO	2025-03-29	356
45	Massey	2025-03-29	301
45	USAU	2025-03-29	317
45	SWCI	2025-03-30	313
45	ELO	2025-03-30	355
45	Massey	2025-03-30	302
45	USAU	2025-03-30	313
46	SWCI	2025-01-26	46
46	ELO	2025-01-26	54
46	Massey	2025-01-26	366
46	USAU	2025-01-26	373
46	SWCI	2025-02-02	95
46	ELO	2025-02-02	369
46	Massey	2025-02-02	320
46	USAU	2025-02-02	357
46	SWCI	2025-02-08	128
46	ELO	2025-02-08	357
46	Massey	2025-02-08	295
46	USAU	2025-02-08	340
46	SWCI	2025-02-09	129
46	ELO	2025-02-09	354
46	Massey	2025-02-09	94
46	USAU	2025-02-09	343
46	SWCI	2025-02-12	129
46	ELO	2025-02-12	345
46	Massey	2025-02-12	274
46	USAU	2025-02-12	343
46	SWCI	2025-02-16	144
46	ELO	2025-02-16	344
46	Massey	2025-02-16	333
46	USAU	2025-02-16	370
46	SWCI	2025-02-17	144
46	ELO	2025-02-17	336
46	Massey	2025-02-17	339
46	USAU	2025-02-17	370
46	SWCI	2025-02-22	193
46	ELO	2025-02-22	371
46	Massey	2025-02-22	318
46	USAU	2025-02-22	347
46	SWCI	2025-02-23	191
46	ELO	2025-02-23	369
46	Massey	2025-02-23	317
46	USAU	2025-02-23	354
46	SWCI	2025-03-02	260
46	ELO	2025-03-02	361
46	Massey	2025-03-02	275
46	USAU	2025-03-02	316
46	SWCI	2025-03-08	263
46	ELO	2025-03-08	346
46	Massey	2025-03-08	226
46	USAU	2025-03-08	317
46	SWCI	2025-03-09	266
46	ELO	2025-03-09	344
46	Massey	2025-03-09	217
46	USAU	2025-03-09	315
46	SWCI	2025-03-15	256
46	ELO	2025-03-15	309
46	Massey	2025-03-15	289
46	USAU	2025-03-15	297
46	SWCI	2025-03-16	250
46	ELO	2025-03-16	308
46	Massey	2025-03-16	235
46	USAU	2025-03-16	294
46	SWCI	2025-03-23	255
46	ELO	2025-03-23	299
46	Massey	2025-03-23	267
46	USAU	2025-03-23	277
46	SWCI	2025-03-29	273
46	ELO	2025-03-29	286
46	Massey	2025-03-29	252
46	USAU	2025-03-29	266
46	SWCI	2025-03-30	281
46	ELO	2025-03-30	286
46	Massey	2025-03-30	253
46	USAU	2025-03-30	269
47	SWCI	2025-01-26	35
47	ELO	2025-01-26	55
47	Massey	2025-01-26	346
47	USAU	2025-01-26	26
47	SWCI	2025-02-02	74
47	ELO	2025-02-02	367
47	Massey	2025-02-02	85
47	USAU	2025-02-02	56
47	SWCI	2025-02-08	101
47	ELO	2025-02-08	355
47	Massey	2025-02-08	96
47	USAU	2025-02-08	83
47	SWCI	2025-02-09	97
47	ELO	2025-02-09	352
47	Massey	2025-02-09	61
47	USAU	2025-02-09	87
47	SWCI	2025-02-12	97
47	ELO	2025-02-12	334
47	Massey	2025-02-12	93
47	USAU	2025-02-12	87
47	SWCI	2025-02-16	111
47	ELO	2025-02-16	334
47	Massey	2025-02-16	304
47	USAU	2025-02-16	342
47	SWCI	2025-02-17	111
47	ELO	2025-02-17	325
47	Massey	2025-02-17	305
47	USAU	2025-02-17	344
47	SWCI	2025-02-22	143
47	ELO	2025-02-22	323
47	Massey	2025-02-22	247
47	USAU	2025-02-22	297
47	SWCI	2025-02-23	147
47	ELO	2025-02-23	323
47	Massey	2025-02-23	261
47	USAU	2025-02-23	305
47	SWCI	2025-03-02	199
47	ELO	2025-03-02	306
47	Massey	2025-03-02	178
47	USAU	2025-03-02	256
47	SWCI	2025-03-08	204
47	ELO	2025-03-08	277
47	Massey	2025-03-08	171
47	USAU	2025-03-08	254
47	SWCI	2025-03-09	205
47	ELO	2025-03-09	276
47	Massey	2025-03-09	172
47	USAU	2025-03-09	252
47	SWCI	2025-03-15	215
47	ELO	2025-03-15	268
47	Massey	2025-03-15	222
47	USAU	2025-03-15	226
47	SWCI	2025-03-16	212
47	ELO	2025-03-16	265
47	Massey	2025-03-16	173
47	USAU	2025-03-16	226
47	SWCI	2025-03-23	152
47	ELO	2025-03-23	253
47	Massey	2025-03-23	202
47	USAU	2025-03-23	211
47	SWCI	2025-03-29	172
47	ELO	2025-03-29	108
47	Massey	2025-03-29	181
47	USAU	2025-03-29	189
47	SWCI	2025-03-30	176
47	ELO	2025-03-30	108
47	Massey	2025-03-30	182
47	USAU	2025-03-30	185
48	SWCI	2025-01-26	97
48	ELO	2025-01-26	56
48	Massey	2025-01-26	37
48	USAU	2025-01-26	64
48	SWCI	2025-02-02	156
48	ELO	2025-02-02	78
48	Massey	2025-02-02	394
48	USAU	2025-02-02	98
48	SWCI	2025-02-08	187
48	ELO	2025-02-08	100
48	Massey	2025-02-08	70
48	USAU	2025-02-08	107
48	SWCI	2025-02-09	187
48	ELO	2025-02-09	97
48	Massey	2025-02-09	14
48	USAU	2025-02-09	105
48	SWCI	2025-02-12	187
48	ELO	2025-02-12	106
48	Massey	2025-02-12	397
48	USAU	2025-02-12	105
48	SWCI	2025-02-16	205
48	ELO	2025-02-16	107
48	Massey	2025-02-16	397
48	USAU	2025-02-16	101
48	SWCI	2025-02-17	205
48	ELO	2025-02-17	112
48	Massey	2025-02-17	266
48	USAU	2025-02-17	99
48	SWCI	2025-02-22	246
48	ELO	2025-02-22	112
48	Massey	2025-02-22	313
48	USAU	2025-02-22	115
48	SWCI	2025-02-23	246
48	ELO	2025-02-23	117
48	Massey	2025-02-23	3
48	USAU	2025-02-23	117
48	SWCI	2025-03-02	316
48	ELO	2025-03-02	134
48	Massey	2025-03-02	381
48	USAU	2025-03-02	136
48	SWCI	2025-03-08	324
48	ELO	2025-03-08	156
48	Massey	2025-03-08	194
48	USAU	2025-03-08	138
48	SWCI	2025-03-09	328
48	ELO	2025-03-09	160
48	Massey	2025-03-09	282
48	USAU	2025-03-09	140
48	SWCI	2025-03-15	352
48	ELO	2025-03-15	162
48	Massey	2025-03-15	35
48	USAU	2025-03-15	144
48	SWCI	2025-03-16	352
48	ELO	2025-03-16	162
48	Massey	2025-03-16	276
48	USAU	2025-03-16	146
48	SWCI	2025-03-23	251
48	ELO	2025-03-23	167
48	Massey	2025-03-23	294
48	USAU	2025-03-23	312
48	SWCI	2025-03-29	268
48	ELO	2025-03-29	251
48	Massey	2025-03-29	277
48	USAU	2025-03-29	303
48	SWCI	2025-03-30	274
48	ELO	2025-03-30	253
48	Massey	2025-03-30	280
48	USAU	2025-03-30	301
49	SWCI	2025-01-26	98
49	ELO	2025-01-26	57
49	Massey	2025-01-26	41
49	USAU	2025-01-26	65
49	SWCI	2025-02-02	157
49	ELO	2025-02-02	79
49	Massey	2025-02-02	80
49	USAU	2025-02-02	99
49	SWCI	2025-02-08	188
49	ELO	2025-02-08	101
49	Massey	2025-02-08	53
49	USAU	2025-02-08	108
49	SWCI	2025-02-09	188
49	ELO	2025-02-09	98
49	Massey	2025-02-09	27
49	USAU	2025-02-09	106
49	SWCI	2025-02-12	188
49	ELO	2025-02-12	107
49	Massey	2025-02-12	329
49	USAU	2025-02-12	106
49	SWCI	2025-02-16	206
49	ELO	2025-02-16	108
49	Massey	2025-02-16	100
49	USAU	2025-02-16	102
49	SWCI	2025-02-17	206
49	ELO	2025-02-17	113
49	Massey	2025-02-17	101
49	USAU	2025-02-17	100
49	SWCI	2025-02-22	247
49	ELO	2025-02-22	113
49	Massey	2025-02-22	28
49	USAU	2025-02-22	116
49	SWCI	2025-02-23	247
49	ELO	2025-02-23	118
49	Massey	2025-02-23	390
49	USAU	2025-02-23	118
49	SWCI	2025-03-02	285
49	ELO	2025-03-02	135
49	Massey	2025-03-02	364
49	USAU	2025-03-02	346
49	SWCI	2025-03-08	292
49	ELO	2025-03-08	352
49	Massey	2025-03-08	331
49	USAU	2025-03-08	346
49	SWCI	2025-03-09	296
49	ELO	2025-03-09	350
49	Massey	2025-03-09	349
49	USAU	2025-03-09	343
49	SWCI	2025-03-15	324
49	ELO	2025-03-15	387
49	Massey	2025-03-15	372
49	USAU	2025-03-15	361
49	SWCI	2025-03-16	325
49	ELO	2025-03-16	387
49	Massey	2025-03-16	368
49	USAU	2025-03-16	364
49	SWCI	2025-03-23	365
49	ELO	2025-03-23	387
49	Massey	2025-03-23	381
49	USAU	2025-03-23	377
49	SWCI	2025-03-29	386
49	ELO	2025-03-29	397
49	Massey	2025-03-29	372
49	USAU	2025-03-29	370
49	SWCI	2025-03-30	383
49	ELO	2025-03-30	397
49	Massey	2025-03-30	370
49	USAU	2025-03-30	372
50	SWCI	2025-01-26	99
50	ELO	2025-01-26	58
50	Massey	2025-01-26	38
50	USAU	2025-01-26	66
50	SWCI	2025-02-02	158
50	ELO	2025-02-02	80
50	Massey	2025-02-02	1
50	USAU	2025-02-02	100
50	SWCI	2025-02-08	189
50	ELO	2025-02-08	102
50	Massey	2025-02-08	226
50	USAU	2025-02-08	109
50	SWCI	2025-02-09	189
50	ELO	2025-02-09	99
50	Massey	2025-02-09	68
50	USAU	2025-02-09	107
50	SWCI	2025-02-12	189
50	ELO	2025-02-12	108
50	Massey	2025-02-12	361
50	USAU	2025-02-12	107
50	SWCI	2025-02-16	207
50	ELO	2025-02-16	109
50	Massey	2025-02-16	314
50	USAU	2025-02-16	103
50	SWCI	2025-02-17	207
50	ELO	2025-02-17	114
50	Massey	2025-02-17	140
50	USAU	2025-02-17	101
50	SWCI	2025-02-22	248
50	ELO	2025-02-22	114
50	Massey	2025-02-22	81
50	USAU	2025-02-22	117
50	SWCI	2025-02-23	248
50	ELO	2025-02-23	119
50	Massey	2025-02-23	130
50	USAU	2025-02-23	119
50	SWCI	2025-03-02	134
50	ELO	2025-03-02	136
50	Massey	2025-03-02	149
50	USAU	2025-03-02	132
50	SWCI	2025-03-08	135
50	ELO	2025-03-08	79
50	Massey	2025-03-08	141
50	USAU	2025-03-08	134
50	SWCI	2025-03-09	135
50	ELO	2025-03-09	81
50	Massey	2025-03-09	144
50	USAU	2025-03-09	133
50	SWCI	2025-03-15	99
50	ELO	2025-03-15	85
50	Massey	2025-03-15	202
50	USAU	2025-03-15	227
50	SWCI	2025-03-16	107
50	ELO	2025-03-16	87
50	Massey	2025-03-16	148
50	USAU	2025-03-16	225
50	SWCI	2025-03-23	52
50	ELO	2025-03-23	95
50	Massey	2025-03-23	189
50	USAU	2025-03-23	200
50	SWCI	2025-03-29	57
50	ELO	2025-03-29	33
50	Massey	2025-03-29	167
50	USAU	2025-03-29	181
50	SWCI	2025-03-30	53
50	ELO	2025-03-30	34
50	Massey	2025-03-30	170
50	USAU	2025-03-30	182
51	SWCI	2025-01-26	100
51	ELO	2025-01-26	59
51	Massey	2025-01-26	358
51	USAU	2025-01-26	67
51	SWCI	2025-02-02	159
51	ELO	2025-02-02	81
51	Massey	2025-02-02	15
51	USAU	2025-02-02	101
51	SWCI	2025-02-08	137
51	ELO	2025-02-08	103
51	Massey	2025-02-08	342
51	USAU	2025-02-08	354
51	SWCI	2025-02-09	163
51	ELO	2025-02-09	100
51	Massey	2025-02-09	348
51	USAU	2025-02-09	388
51	SWCI	2025-02-12	163
51	ELO	2025-02-12	392
51	Massey	2025-02-12	357
51	USAU	2025-02-12	388
51	SWCI	2025-02-16	180
51	ELO	2025-02-16	392
51	Massey	2025-02-16	385
51	USAU	2025-02-16	396
51	SWCI	2025-02-17	179
51	ELO	2025-02-17	391
51	Massey	2025-02-17	390
51	USAU	2025-02-17	396
51	SWCI	2025-02-22	202
51	ELO	2025-02-22	377
51	Massey	2025-02-22	378
51	USAU	2025-02-22	386
51	SWCI	2025-02-23	201
51	ELO	2025-02-23	377
51	Massey	2025-02-23	376
51	USAU	2025-02-23	388
51	SWCI	2025-03-02	265
51	ELO	2025-03-02	372
51	Massey	2025-03-02	372
51	USAU	2025-03-02	372
51	SWCI	2025-03-08	269
51	ELO	2025-03-08	363
51	Massey	2025-03-08	353
51	USAU	2025-03-08	376
51	SWCI	2025-03-09	274
51	ELO	2025-03-09	361
51	Massey	2025-03-09	357
51	USAU	2025-03-09	373
51	SWCI	2025-03-15	292
51	ELO	2025-03-15	361
51	Massey	2025-03-15	370
51	USAU	2025-03-15	364
51	SWCI	2025-03-16	292
51	ELO	2025-03-16	359
51	Massey	2025-03-16	366
51	USAU	2025-03-16	366
51	SWCI	2025-03-23	315
51	ELO	2025-03-23	355
51	Massey	2025-03-23	341
51	USAU	2025-03-23	324
51	SWCI	2025-03-29	326
51	ELO	2025-03-29	384
51	Massey	2025-03-29	324
51	USAU	2025-03-29	309
51	SWCI	2025-03-30	323
51	ELO	2025-03-30	383
51	Massey	2025-03-30	320
51	USAU	2025-03-30	307
52	SWCI	2025-01-26	101
52	ELO	2025-01-26	60
52	Massey	2025-01-26	78
52	USAU	2025-01-26	68
52	SWCI	2025-02-02	160
52	ELO	2025-02-02	82
52	Massey	2025-02-02	52
52	USAU	2025-02-02	102
52	SWCI	2025-02-08	190
52	ELO	2025-02-08	104
52	Massey	2025-02-08	77
52	USAU	2025-02-08	110
52	SWCI	2025-02-09	190
52	ELO	2025-02-09	101
52	Massey	2025-02-09	120
52	USAU	2025-02-09	108
52	SWCI	2025-02-12	190
52	ELO	2025-02-12	109
52	Massey	2025-02-12	396
52	USAU	2025-02-12	108
52	SWCI	2025-02-16	208
52	ELO	2025-02-16	110
52	Massey	2025-02-16	395
52	USAU	2025-02-16	104
52	SWCI	2025-02-17	208
52	ELO	2025-02-17	115
52	Massey	2025-02-17	396
52	USAU	2025-02-17	102
52	SWCI	2025-02-22	210
52	ELO	2025-02-22	333
52	Massey	2025-02-22	382
52	USAU	2025-02-22	392
52	SWCI	2025-02-23	208
52	ELO	2025-02-23	332
52	Massey	2025-02-23	383
52	USAU	2025-02-23	391
52	SWCI	2025-03-02	282
52	ELO	2025-03-02	316
52	Massey	2025-03-02	382
52	USAU	2025-03-02	382
52	SWCI	2025-03-08	288
52	ELO	2025-03-08	294
52	Massey	2025-03-08	372
52	USAU	2025-03-08	386
52	SWCI	2025-03-09	292
52	ELO	2025-03-09	294
52	Massey	2025-03-09	374
52	USAU	2025-03-09	383
52	SWCI	2025-03-15	318
52	ELO	2025-03-15	287
52	Massey	2025-03-15	383
52	USAU	2025-03-15	377
52	SWCI	2025-03-16	318
52	ELO	2025-03-16	284
52	Massey	2025-03-16	379
52	USAU	2025-03-16	377
52	SWCI	2025-03-23	301
52	ELO	2025-03-23	271
52	Massey	2025-03-23	347
52	USAU	2025-03-23	327
52	SWCI	2025-03-29	317
52	ELO	2025-03-29	332
52	Massey	2025-03-29	335
52	USAU	2025-03-29	313
52	SWCI	2025-03-30	320
52	ELO	2025-03-30	332
52	Massey	2025-03-30	329
52	USAU	2025-03-30	310
53	SWCI	2025-01-26	102
53	ELO	2025-01-26	61
53	Massey	2025-01-26	348
53	USAU	2025-01-26	69
53	SWCI	2025-02-02	103
53	ELO	2025-02-02	376
53	Massey	2025-02-02	317
53	USAU	2025-02-02	353
53	SWCI	2025-02-08	135
53	ELO	2025-02-08	366
53	Massey	2025-02-08	227
53	USAU	2025-02-08	324
53	SWCI	2025-02-09	138
53	ELO	2025-02-09	364
53	Massey	2025-02-09	96
53	USAU	2025-02-09	76
53	SWCI	2025-02-12	139
53	ELO	2025-02-12	356
53	Massey	2025-02-12	108
53	USAU	2025-02-12	77
53	SWCI	2025-02-16	129
53	ELO	2025-02-16	349
53	Massey	2025-02-16	88
53	USAU	2025-02-16	57
53	SWCI	2025-02-17	128
53	ELO	2025-02-17	341
53	Massey	2025-02-17	78
53	USAU	2025-02-17	58
53	SWCI	2025-02-22	149
53	ELO	2025-02-22	337
53	Massey	2025-02-22	80
53	USAU	2025-02-22	56
53	SWCI	2025-02-23	154
53	ELO	2025-02-23	336
53	Massey	2025-02-23	82
53	USAU	2025-02-23	58
53	SWCI	2025-03-02	201
53	ELO	2025-03-02	321
53	Massey	2025-03-02	65
53	USAU	2025-03-02	58
53	SWCI	2025-03-08	207
53	ELO	2025-03-08	298
53	Massey	2025-03-08	63
53	USAU	2025-03-08	61
53	SWCI	2025-03-09	209
53	ELO	2025-03-09	297
53	Massey	2025-03-09	62
53	USAU	2025-03-09	60
53	SWCI	2025-03-15	213
53	ELO	2025-03-15	292
53	Massey	2025-03-15	120
53	USAU	2025-03-15	60
53	SWCI	2025-03-16	215
53	ELO	2025-03-16	290
53	Massey	2025-03-16	66
53	USAU	2025-03-16	63
53	SWCI	2025-03-23	220
53	ELO	2025-03-23	279
53	Massey	2025-03-23	92
53	USAU	2025-03-23	65
53	SWCI	2025-03-29	233
53	ELO	2025-03-29	268
53	Massey	2025-03-29	66
53	USAU	2025-03-29	62
53	SWCI	2025-03-30	241
53	ELO	2025-03-30	267
53	Massey	2025-03-30	64
53	USAU	2025-03-30	62
54	SWCI	2025-01-26	103
54	ELO	2025-01-26	62
54	Massey	2025-01-26	351
54	USAU	2025-01-26	70
54	SWCI	2025-02-02	87
54	ELO	2025-02-02	361
54	Massey	2025-02-02	83
54	USAU	2025-02-02	62
54	SWCI	2025-02-08	116
54	ELO	2025-02-08	344
54	Massey	2025-02-08	83
54	USAU	2025-02-08	67
54	SWCI	2025-02-09	115
54	ELO	2025-02-09	341
54	Massey	2025-02-09	63
54	USAU	2025-02-09	57
54	SWCI	2025-02-12	115
54	ELO	2025-02-12	329
54	Massey	2025-02-12	60
54	USAU	2025-02-12	58
54	SWCI	2025-02-16	127
54	ELO	2025-02-16	329
54	Massey	2025-02-16	70
54	USAU	2025-02-16	51
54	SWCI	2025-02-17	127
54	ELO	2025-02-17	321
54	Massey	2025-02-17	62
54	USAU	2025-02-17	53
54	SWCI	2025-02-22	95
54	ELO	2025-02-22	319
54	Massey	2025-02-22	63
54	USAU	2025-02-22	42
54	SWCI	2025-02-23	87
54	ELO	2025-02-23	319
54	Massey	2025-02-23	57
54	USAU	2025-02-23	41
54	SWCI	2025-03-02	114
54	ELO	2025-03-02	55
54	Massey	2025-03-02	42
54	USAU	2025-03-02	41
54	SWCI	2025-03-08	116
54	ELO	2025-03-08	74
54	Massey	2025-03-08	41
54	USAU	2025-03-08	44
54	SWCI	2025-03-09	120
54	ELO	2025-03-09	75
54	Massey	2025-03-09	41
54	USAU	2025-03-09	43
54	SWCI	2025-03-15	133
54	ELO	2025-03-15	78
54	Massey	2025-03-15	100
54	USAU	2025-03-15	46
54	SWCI	2025-03-16	136
54	ELO	2025-03-16	82
54	Massey	2025-03-16	45
54	USAU	2025-03-16	45
54	SWCI	2025-03-23	138
54	ELO	2025-03-23	88
54	Massey	2025-03-23	74
54	USAU	2025-03-23	53
54	SWCI	2025-03-29	152
54	ELO	2025-03-29	98
54	Massey	2025-03-29	48
54	USAU	2025-03-29	48
54	SWCI	2025-03-30	155
54	ELO	2025-03-30	98
54	Massey	2025-03-30	45
54	USAU	2025-03-30	47
55	SWCI	2025-01-26	104
55	ELO	2025-01-26	63
55	Massey	2025-01-26	391
55	USAU	2025-01-26	71
55	SWCI	2025-02-02	116
55	ELO	2025-02-02	389
55	Massey	2025-02-02	333
55	USAU	2025-02-02	365
55	SWCI	2025-02-08	158
55	ELO	2025-02-08	385
55	Massey	2025-02-08	315
55	USAU	2025-02-08	341
55	SWCI	2025-02-09	155
55	ELO	2025-02-09	384
55	Massey	2025-02-09	178
55	USAU	2025-02-09	326
55	SWCI	2025-02-12	154
55	ELO	2025-02-12	379
55	Massey	2025-02-12	136
55	USAU	2025-02-12	326
55	SWCI	2025-02-16	173
55	ELO	2025-02-16	379
55	Massey	2025-02-16	135
55	USAU	2025-02-16	302
55	SWCI	2025-02-17	172
55	ELO	2025-02-17	377
55	Massey	2025-02-17	127
55	USAU	2025-02-17	303
55	SWCI	2025-02-22	174
55	ELO	2025-02-22	360
55	Massey	2025-02-22	147
55	USAU	2025-02-22	273
55	SWCI	2025-02-23	176
55	ELO	2025-02-23	358
55	Massey	2025-02-23	149
55	USAU	2025-02-23	277
55	SWCI	2025-03-02	234
55	ELO	2025-03-02	348
55	Massey	2025-03-02	128
55	USAU	2025-03-02	129
55	SWCI	2025-03-08	239
55	ELO	2025-03-08	333
55	Massey	2025-03-08	125
55	USAU	2025-03-08	135
55	SWCI	2025-03-09	247
55	ELO	2025-03-09	331
55	Massey	2025-03-09	125
55	USAU	2025-03-09	135
55	SWCI	2025-03-15	249
55	ELO	2025-03-15	291
55	Massey	2025-03-15	194
55	USAU	2025-03-15	143
55	SWCI	2025-03-16	249
55	ELO	2025-03-16	288
55	Massey	2025-03-16	139
55	USAU	2025-03-16	145
55	SWCI	2025-03-23	259
55	ELO	2025-03-23	277
55	Massey	2025-03-23	166
55	USAU	2025-03-23	139
55	SWCI	2025-03-29	276
55	ELO	2025-03-29	264
55	Massey	2025-03-29	138
55	USAU	2025-03-29	141
55	SWCI	2025-03-30	278
55	ELO	2025-03-30	264
55	Massey	2025-03-30	133
55	USAU	2025-03-30	133
56	SWCI	2025-01-26	105
56	ELO	2025-01-26	64
56	Massey	2025-01-26	379
56	USAU	2025-01-26	72
56	SWCI	2025-02-02	45
56	ELO	2025-02-02	35
56	Massey	2025-02-02	68
56	USAU	2025-02-02	39
56	SWCI	2025-02-08	57
56	ELO	2025-02-08	51
56	Massey	2025-02-08	67
56	USAU	2025-02-08	50
56	SWCI	2025-02-09	57
56	ELO	2025-02-09	54
56	Massey	2025-02-09	54
56	USAU	2025-02-09	32
56	SWCI	2025-02-12	58
56	ELO	2025-02-12	66
56	Massey	2025-02-12	48
56	USAU	2025-02-12	32
56	SWCI	2025-02-16	55
56	ELO	2025-02-16	66
56	Massey	2025-02-16	50
56	USAU	2025-02-16	34
56	SWCI	2025-02-17	54
56	ELO	2025-02-17	72
56	Massey	2025-02-17	43
56	USAU	2025-02-17	35
56	SWCI	2025-02-22	63
56	ELO	2025-02-22	73
56	Massey	2025-02-22	52
56	USAU	2025-02-22	32
56	SWCI	2025-02-23	66
56	ELO	2025-02-23	76
56	Massey	2025-02-23	50
56	USAU	2025-02-23	32
56	SWCI	2025-03-02	69
56	ELO	2025-03-02	94
56	Massey	2025-03-02	35
56	USAU	2025-03-02	31
56	SWCI	2025-03-08	70
56	ELO	2025-03-08	123
56	Massey	2025-03-08	33
56	USAU	2025-03-08	31
56	SWCI	2025-03-09	72
56	ELO	2025-03-09	126
56	Massey	2025-03-09	32
56	USAU	2025-03-09	32
56	SWCI	2025-03-15	74
56	ELO	2025-03-15	130
56	Massey	2025-03-15	93
56	USAU	2025-03-15	34
56	SWCI	2025-03-16	74
56	ELO	2025-03-16	132
56	Massey	2025-03-16	39
56	USAU	2025-03-16	37
56	SWCI	2025-03-23	78
56	ELO	2025-03-23	138
56	Massey	2025-03-23	70
56	USAU	2025-03-23	37
56	SWCI	2025-03-29	131
56	ELO	2025-03-29	147
56	Massey	2025-03-29	42
56	USAU	2025-03-29	35
56	SWCI	2025-03-30	163
56	ELO	2025-03-30	150
56	Massey	2025-03-30	42
56	USAU	2025-03-30	35
57	SWCI	2025-01-26	106
57	ELO	2025-01-26	65
57	Massey	2025-01-26	27
57	USAU	2025-01-26	73
57	SWCI	2025-02-02	1
57	ELO	2025-02-02	3
57	Massey	2025-02-02	10
57	USAU	2025-02-02	4
57	SWCI	2025-02-08	1
57	ELO	2025-02-08	3
57	Massey	2025-02-08	4
57	USAU	2025-02-08	3
57	SWCI	2025-02-09	2
57	ELO	2025-02-09	3
57	Massey	2025-02-09	7
57	USAU	2025-02-09	3
57	SWCI	2025-02-12	2
57	ELO	2025-02-12	4
57	Massey	2025-02-12	5
57	USAU	2025-02-12	3
57	SWCI	2025-02-16	3
57	ELO	2025-02-16	4
57	Massey	2025-02-16	7
57	USAU	2025-02-16	1
57	SWCI	2025-02-17	4
57	ELO	2025-02-17	9
57	Massey	2025-02-17	5
57	USAU	2025-02-17	2
57	SWCI	2025-02-22	3
57	ELO	2025-02-22	9
57	Massey	2025-02-22	7
57	USAU	2025-02-22	1
57	SWCI	2025-02-23	4
57	ELO	2025-02-23	9
57	Massey	2025-02-23	6
57	USAU	2025-02-23	1
57	SWCI	2025-03-02	13
57	ELO	2025-03-02	12
57	Massey	2025-03-02	3
57	USAU	2025-03-02	4
57	SWCI	2025-03-08	14
57	ELO	2025-03-08	10
57	Massey	2025-03-08	3
57	USAU	2025-03-08	4
57	SWCI	2025-03-09	15
57	ELO	2025-03-09	10
57	Massey	2025-03-09	3
57	USAU	2025-03-09	5
57	SWCI	2025-03-15	10
57	ELO	2025-03-15	11
57	Massey	2025-03-15	59
57	USAU	2025-03-15	4
57	SWCI	2025-03-16	10
57	ELO	2025-03-16	11
57	Massey	2025-03-16	3
57	USAU	2025-03-16	4
57	SWCI	2025-03-23	9
57	ELO	2025-03-23	11
57	Massey	2025-03-23	29
57	USAU	2025-03-23	4
57	SWCI	2025-03-29	5
57	ELO	2025-03-29	12
57	Massey	2025-03-29	3
57	USAU	2025-03-29	3
57	SWCI	2025-03-30	6
57	ELO	2025-03-30	12
57	Massey	2025-03-30	3
57	USAU	2025-03-30	4
58	SWCI	2025-01-26	107
58	ELO	2025-01-26	66
58	Massey	2025-01-26	52
58	USAU	2025-01-26	74
58	SWCI	2025-02-02	30
58	ELO	2025-02-02	22
58	Massey	2025-02-02	26
58	USAU	2025-02-02	17
58	SWCI	2025-02-08	39
58	ELO	2025-02-08	29
58	Massey	2025-02-08	17
58	USAU	2025-02-08	14
58	SWCI	2025-02-09	43
58	ELO	2025-02-09	32
58	Massey	2025-02-09	16
58	USAU	2025-02-09	11
58	SWCI	2025-02-12	43
58	ELO	2025-02-12	39
58	Massey	2025-02-12	13
58	USAU	2025-02-12	11
58	SWCI	2025-02-16	38
58	ELO	2025-02-16	16
58	Massey	2025-02-16	26
58	USAU	2025-02-16	19
58	SWCI	2025-02-17	36
58	ELO	2025-02-17	22
58	Massey	2025-02-17	20
58	USAU	2025-02-17	19
58	SWCI	2025-02-22	42
58	ELO	2025-02-22	22
58	Massey	2025-02-22	22
58	USAU	2025-02-22	16
58	SWCI	2025-02-23	39
58	ELO	2025-02-23	22
58	Massey	2025-02-23	20
58	USAU	2025-02-23	15
58	SWCI	2025-03-02	63
58	ELO	2025-03-02	26
58	Massey	2025-03-02	13
58	USAU	2025-03-02	16
58	SWCI	2025-03-08	64
58	ELO	2025-03-08	40
58	Massey	2025-03-08	11
58	USAU	2025-03-08	15
58	SWCI	2025-03-09	66
58	ELO	2025-03-09	41
58	Massey	2025-03-09	11
58	USAU	2025-03-09	16
58	SWCI	2025-03-15	64
58	ELO	2025-03-15	41
58	Massey	2025-03-15	70
58	USAU	2025-03-15	16
58	SWCI	2025-03-16	62
58	ELO	2025-03-16	43
58	Massey	2025-03-16	13
58	USAU	2025-03-16	16
58	SWCI	2025-03-23	63
58	ELO	2025-03-23	50
58	Massey	2025-03-23	42
58	USAU	2025-03-23	17
58	SWCI	2025-03-29	29
58	ELO	2025-03-29	58
58	Massey	2025-03-29	13
58	USAU	2025-03-29	13
58	SWCI	2025-03-30	17
58	ELO	2025-03-30	59
58	Massey	2025-03-30	14
58	USAU	2025-03-30	15
59	SWCI	2025-01-26	108
59	ELO	2025-01-26	67
59	Massey	2025-01-26	53
59	USAU	2025-01-26	75
59	SWCI	2025-02-02	115
59	ELO	2025-02-02	392
59	Massey	2025-02-02	341
59	USAU	2025-02-02	361
59	SWCI	2025-02-08	156
59	ELO	2025-02-08	391
59	Massey	2025-02-08	322
59	USAU	2025-02-08	339
59	SWCI	2025-02-09	154
59	ELO	2025-02-09	391
59	Massey	2025-02-09	270
59	USAU	2025-02-09	323
59	SWCI	2025-02-12	153
59	ELO	2025-02-12	387
59	Massey	2025-02-12	281
59	USAU	2025-02-12	324
59	SWCI	2025-02-16	171
59	ELO	2025-02-16	387
59	Massey	2025-02-16	263
59	USAU	2025-02-16	298
59	SWCI	2025-02-17	171
59	ELO	2025-02-17	386
59	Massey	2025-02-17	136
59	USAU	2025-02-17	299
59	SWCI	2025-02-22	212
59	ELO	2025-02-22	387
59	Massey	2025-02-22	141
59	USAU	2025-02-22	102
59	SWCI	2025-02-23	213
59	ELO	2025-02-23	386
59	Massey	2025-02-23	140
59	USAU	2025-02-23	102
59	SWCI	2025-03-02	153
59	ELO	2025-03-02	382
59	Massey	2025-03-02	137
59	USAU	2025-03-02	112
59	SWCI	2025-03-08	155
59	ELO	2025-03-08	84
59	Massey	2025-03-08	132
59	USAU	2025-03-08	117
59	SWCI	2025-03-09	159
59	ELO	2025-03-09	86
59	Massey	2025-03-09	131
59	USAU	2025-03-09	114
59	SWCI	2025-03-15	172
59	ELO	2025-03-15	84
59	Massey	2025-03-15	189
59	USAU	2025-03-15	114
59	SWCI	2025-03-16	169
59	ELO	2025-03-16	86
59	Massey	2025-03-16	134
59	USAU	2025-03-16	114
59	SWCI	2025-03-23	178
59	ELO	2025-03-23	94
59	Massey	2025-03-23	162
59	USAU	2025-03-23	114
59	SWCI	2025-03-29	189
59	ELO	2025-03-29	103
59	Massey	2025-03-29	131
59	USAU	2025-03-29	113
59	SWCI	2025-03-30	182
59	ELO	2025-03-30	103
59	Massey	2025-03-30	134
59	USAU	2025-03-30	119
60	SWCI	2025-01-26	109
60	ELO	2025-01-26	68
60	Massey	2025-01-26	354
60	USAU	2025-01-26	76
60	SWCI	2025-02-02	125
60	ELO	2025-02-02	397
60	Massey	2025-02-02	364
60	USAU	2025-02-02	379
60	SWCI	2025-02-08	167
60	ELO	2025-02-08	397
60	Massey	2025-02-08	337
60	USAU	2025-02-08	368
60	SWCI	2025-02-09	167
60	ELO	2025-02-09	397
60	Massey	2025-02-09	312
60	USAU	2025-02-09	347
60	SWCI	2025-02-12	167
60	ELO	2025-02-12	397
60	Massey	2025-02-12	306
60	USAU	2025-02-12	347
60	SWCI	2025-02-16	188
60	ELO	2025-02-16	397
60	Massey	2025-02-16	292
60	USAU	2025-02-16	325
60	SWCI	2025-02-17	188
60	ELO	2025-02-17	396
60	Massey	2025-02-17	285
60	USAU	2025-02-17	326
60	SWCI	2025-02-22	203
60	ELO	2025-02-22	391
60	Massey	2025-02-22	160
60	USAU	2025-02-22	271
60	SWCI	2025-02-23	204
60	ELO	2025-02-23	390
60	Massey	2025-02-23	160
60	USAU	2025-02-23	272
60	SWCI	2025-03-02	267
60	ELO	2025-03-02	386
60	Massey	2025-03-02	148
60	USAU	2025-03-02	123
60	SWCI	2025-03-08	271
60	ELO	2025-03-08	381
60	Massey	2025-03-08	140
60	USAU	2025-03-08	131
60	SWCI	2025-03-09	276
60	ELO	2025-03-09	380
60	Massey	2025-03-09	142
60	USAU	2025-03-09	129
60	SWCI	2025-03-15	272
60	ELO	2025-03-15	369
60	Massey	2025-03-15	213
60	USAU	2025-03-15	201
60	SWCI	2025-03-16	270
60	ELO	2025-03-16	368
60	Massey	2025-03-16	157
60	USAU	2025-03-16	200
60	SWCI	2025-03-23	256
60	ELO	2025-03-23	366
60	Massey	2025-03-23	176
60	USAU	2025-03-23	143
60	SWCI	2025-03-29	267
60	ELO	2025-03-29	267
60	Massey	2025-03-29	147
60	USAU	2025-03-29	144
60	SWCI	2025-03-30	272
60	ELO	2025-03-30	266
60	Massey	2025-03-30	145
60	USAU	2025-03-30	139
61	SWCI	2025-01-26	9
61	ELO	2025-01-26	69
61	Massey	2025-01-26	15
61	USAU	2025-01-26	11
61	SWCI	2025-02-02	16
61	ELO	2025-02-02	10
61	Massey	2025-02-02	37
61	USAU	2025-02-02	23
61	SWCI	2025-02-08	22
61	ELO	2025-02-08	12
61	Massey	2025-02-08	19
61	USAU	2025-02-08	13
61	SWCI	2025-02-09	22
61	ELO	2025-02-09	12
61	Massey	2025-02-09	79
61	USAU	2025-02-09	17
61	SWCI	2025-02-12	22
61	ELO	2025-02-12	16
61	Massey	2025-02-12	80
61	USAU	2025-02-12	17
61	SWCI	2025-02-16	83
61	ELO	2025-02-16	51
61	Massey	2025-02-16	90
61	USAU	2025-02-16	75
61	SWCI	2025-02-17	84
61	ELO	2025-02-17	57
61	Massey	2025-02-17	83
61	USAU	2025-02-17	78
61	SWCI	2025-02-22	104
61	ELO	2025-02-22	58
61	Massey	2025-02-22	77
61	USAU	2025-02-22	74
61	SWCI	2025-02-23	101
61	ELO	2025-02-23	61
61	Massey	2025-02-23	76
61	USAU	2025-02-23	71
61	SWCI	2025-03-02	141
61	ELO	2025-03-02	73
61	Massey	2025-03-02	61
61	USAU	2025-03-02	64
61	SWCI	2025-03-08	144
61	ELO	2025-03-08	98
61	Massey	2025-03-08	56
61	USAU	2025-03-08	66
61	SWCI	2025-03-09	146
61	ELO	2025-03-09	101
61	Massey	2025-03-09	56
61	USAU	2025-03-09	66
61	SWCI	2025-03-15	108
61	ELO	2025-03-15	103
61	Massey	2025-03-15	115
61	USAU	2025-03-15	70
61	SWCI	2025-03-16	69
61	ELO	2025-03-16	104
61	Massey	2025-03-16	61
61	USAU	2025-03-16	71
61	SWCI	2025-03-23	65
61	ELO	2025-03-23	33
61	Massey	2025-03-23	91
61	USAU	2025-03-23	68
61	SWCI	2025-03-29	55
61	ELO	2025-03-29	39
61	Massey	2025-03-29	62
61	USAU	2025-03-29	60
61	SWCI	2025-03-30	56
61	ELO	2025-03-30	40
61	Massey	2025-03-30	61
61	USAU	2025-03-30	60
62	SWCI	2025-01-26	110
62	ELO	2025-01-26	70
62	Massey	2025-01-26	361
62	USAU	2025-01-26	77
62	SWCI	2025-02-02	161
62	ELO	2025-02-02	83
62	Massey	2025-02-02	56
62	USAU	2025-02-02	103
62	SWCI	2025-02-08	191
62	ELO	2025-02-08	105
62	Massey	2025-02-08	299
62	USAU	2025-02-08	111
62	SWCI	2025-02-09	191
62	ELO	2025-02-09	102
62	Massey	2025-02-09	367
62	USAU	2025-02-09	109
62	SWCI	2025-02-12	191
62	ELO	2025-02-12	110
62	Massey	2025-02-12	47
62	USAU	2025-02-12	109
62	SWCI	2025-02-16	17
62	ELO	2025-02-16	61
62	Massey	2025-02-16	46
62	USAU	2025-02-16	16
62	SWCI	2025-02-17	17
62	ELO	2025-02-17	68
62	Massey	2025-02-17	38
62	USAU	2025-02-17	18
62	SWCI	2025-02-22	21
62	ELO	2025-02-22	70
62	Massey	2025-02-22	43
62	USAU	2025-02-22	14
62	SWCI	2025-02-23	25
62	ELO	2025-02-23	73
62	Massey	2025-02-23	43
62	USAU	2025-02-23	16
62	SWCI	2025-03-02	27
62	ELO	2025-03-02	90
62	Massey	2025-03-02	28
62	USAU	2025-03-02	14
62	SWCI	2025-03-08	25
62	ELO	2025-03-08	115
62	Massey	2025-03-08	25
62	USAU	2025-03-08	13
62	SWCI	2025-03-09	25
62	ELO	2025-03-09	118
62	Massey	2025-03-09	25
62	USAU	2025-03-09	15
62	SWCI	2025-03-15	38
62	ELO	2025-03-15	122
62	Massey	2025-03-15	81
62	USAU	2025-03-15	17
62	SWCI	2025-03-16	57
62	ELO	2025-03-16	124
62	Massey	2025-03-16	28
62	USAU	2025-03-16	23
62	SWCI	2025-03-23	60
62	ELO	2025-03-23	113
62	Massey	2025-03-23	56
62	USAU	2025-03-23	27
62	SWCI	2025-03-29	71
62	ELO	2025-03-29	121
62	Massey	2025-03-29	32
62	USAU	2025-03-29	30
62	SWCI	2025-03-30	93
62	ELO	2025-03-30	122
62	Massey	2025-03-30	40
62	USAU	2025-03-30	36
63	SWCI	2025-01-26	111
63	ELO	2025-01-26	71
63	Massey	2025-01-26	7
63	USAU	2025-01-26	78
63	SWCI	2025-02-02	40
63	ELO	2025-02-02	84
63	Massey	2025-02-02	278
63	USAU	2025-02-02	52
63	SWCI	2025-02-08	46
63	ELO	2025-02-08	40
63	Massey	2025-02-08	95
63	USAU	2025-02-08	46
63	SWCI	2025-02-09	47
63	ELO	2025-02-09	43
63	Massey	2025-02-09	99
63	USAU	2025-02-09	49
63	SWCI	2025-02-12	47
63	ELO	2025-02-12	53
63	Massey	2025-02-12	65
63	USAU	2025-02-12	49
63	SWCI	2025-02-16	49
63	ELO	2025-02-16	43
63	Massey	2025-02-16	53
63	USAU	2025-02-16	35
63	SWCI	2025-02-17	49
63	ELO	2025-02-17	46
63	Massey	2025-02-17	45
63	USAU	2025-02-17	36
63	SWCI	2025-02-22	68
63	ELO	2025-02-22	47
63	Massey	2025-02-22	64
63	USAU	2025-02-22	47
63	SWCI	2025-02-23	55
63	ELO	2025-02-23	48
63	Massey	2025-02-23	62
63	USAU	2025-02-23	47
63	SWCI	2025-03-02	81
63	ELO	2025-03-02	32
63	Massey	2025-03-02	46
63	USAU	2025-03-02	44
63	SWCI	2025-03-08	85
63	ELO	2025-03-08	45
63	Massey	2025-03-08	42
63	USAU	2025-03-08	45
63	SWCI	2025-03-09	84
63	ELO	2025-03-09	46
63	Massey	2025-03-09	42
63	USAU	2025-03-09	45
63	SWCI	2025-03-15	88
63	ELO	2025-03-15	46
63	Massey	2025-03-15	101
63	USAU	2025-03-15	45
63	SWCI	2025-03-16	81
63	ELO	2025-03-16	48
63	Massey	2025-03-16	41
63	USAU	2025-03-16	39
63	SWCI	2025-03-23	74
63	ELO	2025-03-23	56
63	Massey	2025-03-23	72
63	USAU	2025-03-23	48
63	SWCI	2025-03-29	132
63	ELO	2025-03-29	64
63	Massey	2025-03-29	50
63	USAU	2025-03-29	49
63	SWCI	2025-03-30	156
63	ELO	2025-03-30	65
63	Massey	2025-03-30	52
63	USAU	2025-03-30	51
64	SWCI	2025-01-26	56
64	ELO	2025-01-26	72
64	Massey	2025-01-26	364
64	USAU	2025-01-26	382
64	SWCI	2025-02-02	110
64	ELO	2025-02-02	379
64	Massey	2025-02-02	348
64	USAU	2025-02-02	368
64	SWCI	2025-02-08	147
64	ELO	2025-02-08	371
64	Massey	2025-02-08	309
64	USAU	2025-02-08	329
64	SWCI	2025-02-09	145
64	ELO	2025-02-09	369
64	Massey	2025-02-09	346
64	USAU	2025-02-09	329
64	SWCI	2025-02-12	146
64	ELO	2025-02-12	362
64	Massey	2025-02-12	343
64	USAU	2025-02-12	329
64	SWCI	2025-02-16	170
64	ELO	2025-02-16	362
64	Massey	2025-02-16	317
64	USAU	2025-02-16	352
64	SWCI	2025-02-17	170
64	ELO	2025-02-17	353
64	Massey	2025-02-17	318
64	USAU	2025-02-17	353
64	SWCI	2025-02-22	182
64	ELO	2025-02-22	351
64	Massey	2025-02-22	300
64	USAU	2025-02-22	340
64	SWCI	2025-02-23	149
64	ELO	2025-02-23	309
64	Massey	2025-02-23	266
64	USAU	2025-02-23	313
64	SWCI	2025-03-02	200
64	ELO	2025-03-02	289
64	Massey	2025-03-02	168
64	USAU	2025-03-02	240
64	SWCI	2025-03-08	206
64	ELO	2025-03-08	249
64	Massey	2025-03-08	170
64	USAU	2025-03-08	246
64	SWCI	2025-03-09	207
64	ELO	2025-03-09	248
64	Massey	2025-03-09	171
64	USAU	2025-03-09	241
64	SWCI	2025-03-15	212
64	ELO	2025-03-15	241
64	Massey	2025-03-15	232
64	USAU	2025-03-15	235
64	SWCI	2025-03-16	213
64	ELO	2025-03-16	237
64	Massey	2025-03-16	177
64	USAU	2025-03-16	231
64	SWCI	2025-03-23	192
64	ELO	2025-03-23	227
64	Massey	2025-03-23	200
64	USAU	2025-03-23	202
64	SWCI	2025-03-29	208
64	ELO	2025-03-29	168
64	Massey	2025-03-29	180
64	USAU	2025-03-29	177
64	SWCI	2025-03-30	220
64	ELO	2025-03-30	169
64	Massey	2025-03-30	184
64	USAU	2025-03-30	181
65	SWCI	2025-01-26	11
65	ELO	2025-01-26	73
65	Massey	2025-01-26	31
65	USAU	2025-01-26	17
65	SWCI	2025-02-02	20
65	ELO	2025-02-02	19
65	Massey	2025-02-02	69
65	USAU	2025-02-02	35
65	SWCI	2025-02-08	26
65	ELO	2025-02-08	24
65	Massey	2025-02-08	50
65	USAU	2025-02-08	20
65	SWCI	2025-02-09	27
65	ELO	2025-02-09	27
65	Massey	2025-02-09	117
65	USAU	2025-02-09	29
65	SWCI	2025-02-12	27
65	ELO	2025-02-12	33
65	Massey	2025-02-12	124
65	USAU	2025-02-12	29
65	SWCI	2025-02-16	78
65	ELO	2025-02-16	90
65	Massey	2025-02-16	118
65	USAU	2025-02-16	83
65	SWCI	2025-02-17	78
65	ELO	2025-02-17	97
65	Massey	2025-02-17	108
65	USAU	2025-02-17	84
65	SWCI	2025-02-22	80
65	ELO	2025-02-22	99
65	Massey	2025-02-22	101
65	USAU	2025-02-22	78
65	SWCI	2025-02-23	76
65	ELO	2025-02-23	103
65	Massey	2025-02-23	98
65	USAU	2025-02-23	72
65	SWCI	2025-03-02	96
65	ELO	2025-03-02	92
65	Massey	2025-03-02	77
65	USAU	2025-03-02	67
65	SWCI	2025-03-08	97
65	ELO	2025-03-08	118
65	Massey	2025-03-08	71
65	USAU	2025-03-08	71
65	SWCI	2025-03-09	99
65	ELO	2025-03-09	121
65	Massey	2025-03-09	71
65	USAU	2025-03-09	69
65	SWCI	2025-03-15	101
65	ELO	2025-03-15	125
65	Massey	2025-03-15	128
65	USAU	2025-03-15	72
65	SWCI	2025-03-16	105
65	ELO	2025-03-16	127
65	Massey	2025-03-16	72
65	USAU	2025-03-16	72
65	SWCI	2025-03-23	105
65	ELO	2025-03-23	133
65	Massey	2025-03-23	99
65	USAU	2025-03-23	70
65	SWCI	2025-03-29	158
65	ELO	2025-03-29	142
65	Massey	2025-03-29	71
65	USAU	2025-03-29	68
65	SWCI	2025-03-30	188
65	ELO	2025-03-30	145
65	Massey	2025-03-30	72
65	USAU	2025-03-30	63
66	SWCI	2025-01-26	48
66	ELO	2025-01-26	74
66	Massey	2025-01-26	363
66	USAU	2025-01-26	386
66	SWCI	2025-02-02	99
66	ELO	2025-02-02	378
66	Massey	2025-02-02	346
66	USAU	2025-02-02	373
66	SWCI	2025-02-08	131
66	ELO	2025-02-08	368
66	Massey	2025-02-08	308
66	USAU	2025-02-08	336
66	SWCI	2025-02-09	133
66	ELO	2025-02-09	366
66	Massey	2025-02-09	345
66	USAU	2025-02-09	336
66	SWCI	2025-02-12	133
66	ELO	2025-02-12	359
66	Massey	2025-02-12	342
66	USAU	2025-02-12	337
66	SWCI	2025-02-16	154
66	ELO	2025-02-16	358
66	Massey	2025-02-16	315
66	USAU	2025-02-16	357
66	SWCI	2025-02-17	153
66	ELO	2025-02-17	349
66	Massey	2025-02-17	317
66	USAU	2025-02-17	357
66	SWCI	2025-02-22	141
66	ELO	2025-02-22	347
66	Massey	2025-02-22	252
66	USAU	2025-02-22	314
66	SWCI	2025-02-23	120
66	ELO	2025-02-23	78
66	Massey	2025-02-23	244
66	USAU	2025-02-23	301
66	SWCI	2025-03-02	159
66	ELO	2025-03-02	96
66	Massey	2025-03-02	141
66	USAU	2025-03-02	229
66	SWCI	2025-03-08	160
66	ELO	2025-03-08	124
66	Massey	2025-03-08	139
66	USAU	2025-03-08	231
66	SWCI	2025-03-09	161
66	ELO	2025-03-09	127
66	Massey	2025-03-09	140
66	USAU	2025-03-09	228
66	SWCI	2025-03-15	169
66	ELO	2025-03-15	131
66	Massey	2025-03-15	208
66	USAU	2025-03-15	215
66	SWCI	2025-03-16	168
66	ELO	2025-03-16	133
66	Massey	2025-03-16	152
66	USAU	2025-03-16	219
66	SWCI	2025-03-23	161
66	ELO	2025-03-23	139
66	Massey	2025-03-23	182
66	USAU	2025-03-23	197
66	SWCI	2025-03-29	169
66	ELO	2025-03-29	167
66	Massey	2025-03-29	169
66	USAU	2025-03-29	176
66	SWCI	2025-03-30	193
66	ELO	2025-03-30	243
66	Massey	2025-03-30	180
66	USAU	2025-03-30	183
67	SWCI	2025-01-26	58
67	ELO	2025-01-26	75
67	Massey	2025-01-26	385
67	USAU	2025-01-26	390
67	SWCI	2025-02-02	119
67	ELO	2025-02-02	390
67	Massey	2025-02-02	371
67	USAU	2025-02-02	381
67	SWCI	2025-02-08	161
67	ELO	2025-02-08	389
67	Massey	2025-02-08	343
67	USAU	2025-02-08	361
67	SWCI	2025-02-09	157
67	ELO	2025-02-09	388
67	Massey	2025-02-09	369
67	USAU	2025-02-09	352
67	SWCI	2025-02-12	156
67	ELO	2025-02-12	383
67	Massey	2025-02-12	367
67	USAU	2025-02-12	352
67	SWCI	2025-02-16	185
67	ELO	2025-02-16	383
67	Massey	2025-02-16	356
67	USAU	2025-02-16	376
67	SWCI	2025-02-17	184
67	ELO	2025-02-17	382
67	Massey	2025-02-17	361
67	USAU	2025-02-17	377
67	SWCI	2025-02-22	228
67	ELO	2025-02-22	383
67	Massey	2025-02-22	341
67	USAU	2025-02-22	367
67	SWCI	2025-02-23	219
67	ELO	2025-02-23	395
67	Massey	2025-02-23	330
67	USAU	2025-02-23	362
67	SWCI	2025-03-02	294
67	ELO	2025-03-02	393
67	Massey	2025-03-02	262
67	USAU	2025-03-02	299
67	SWCI	2025-03-08	302
67	ELO	2025-03-08	390
67	Massey	2025-03-08	223
67	USAU	2025-03-08	309
67	SWCI	2025-03-09	304
67	ELO	2025-03-09	390
67	Massey	2025-03-09	216
67	USAU	2025-03-09	300
67	SWCI	2025-03-15	327
67	ELO	2025-03-15	389
67	Massey	2025-03-15	295
67	USAU	2025-03-15	301
67	SWCI	2025-03-16	327
67	ELO	2025-03-16	389
67	Massey	2025-03-16	245
67	USAU	2025-03-16	300
67	SWCI	2025-03-23	341
67	ELO	2025-03-23	390
67	Massey	2025-03-23	274
67	USAU	2025-03-23	289
67	SWCI	2025-03-29	359
67	ELO	2025-03-29	387
67	Massey	2025-03-29	253
67	USAU	2025-03-29	268
67	SWCI	2025-03-30	361
67	ELO	2025-03-30	386
67	Massey	2025-03-30	257
67	USAU	2025-03-30	272
68	SWCI	2025-01-26	49
68	ELO	2025-01-26	76
68	Massey	2025-01-26	373
68	USAU	2025-01-26	375
68	SWCI	2025-02-02	98
68	ELO	2025-02-02	377
68	Massey	2025-02-02	357
68	USAU	2025-02-02	358
68	SWCI	2025-02-08	129
68	ELO	2025-02-08	367
68	Massey	2025-02-08	319
68	USAU	2025-02-08	318
68	SWCI	2025-02-09	130
68	ELO	2025-02-09	365
68	Massey	2025-02-09	352
68	USAU	2025-02-09	316
68	SWCI	2025-02-12	130
68	ELO	2025-02-12	357
68	Massey	2025-02-12	349
68	USAU	2025-02-12	316
68	SWCI	2025-02-16	142
68	ELO	2025-02-16	356
68	Massey	2025-02-16	327
68	USAU	2025-02-16	346
68	SWCI	2025-02-17	142
68	ELO	2025-02-17	347
68	Massey	2025-02-17	330
68	USAU	2025-02-17	346
68	SWCI	2025-02-22	150
68	ELO	2025-02-22	344
68	Massey	2025-02-22	291
68	USAU	2025-02-22	310
68	SWCI	2025-02-23	153
68	ELO	2025-02-23	339
68	Massey	2025-02-23	288
68	USAU	2025-02-23	320
68	SWCI	2025-03-02	188
68	ELO	2025-03-02	329
68	Massey	2025-03-02	182
68	USAU	2025-03-02	233
68	SWCI	2025-03-08	194
68	ELO	2025-03-08	303
68	Massey	2025-03-08	178
68	USAU	2025-03-08	232
68	SWCI	2025-03-09	197
68	ELO	2025-03-09	302
68	Massey	2025-03-09	176
68	USAU	2025-03-09	229
68	SWCI	2025-03-15	210
68	ELO	2025-03-15	297
68	Massey	2025-03-15	241
68	USAU	2025-03-15	218
68	SWCI	2025-03-16	207
68	ELO	2025-03-16	295
68	Massey	2025-03-16	183
68	USAU	2025-03-16	217
68	SWCI	2025-03-23	210
68	ELO	2025-03-23	285
68	Massey	2025-03-23	207
68	USAU	2025-03-23	182
68	SWCI	2025-03-29	235
68	ELO	2025-03-29	273
68	Massey	2025-03-29	187
68	USAU	2025-03-29	167
68	SWCI	2025-03-30	226
68	ELO	2025-03-30	271
68	Massey	2025-03-30	179
68	USAU	2025-03-30	158
69	SWCI	2025-01-26	112
69	ELO	2025-01-26	77
69	Massey	2025-01-26	328
69	USAU	2025-01-26	79
69	SWCI	2025-02-02	162
69	ELO	2025-02-02	85
69	Massey	2025-02-02	340
69	USAU	2025-02-02	104
69	SWCI	2025-02-08	192
69	ELO	2025-02-08	106
69	Massey	2025-02-08	349
69	USAU	2025-02-08	112
69	SWCI	2025-02-09	192
69	ELO	2025-02-09	103
69	Massey	2025-02-09	385
69	USAU	2025-02-09	110
69	SWCI	2025-02-12	192
69	ELO	2025-02-12	111
69	Massey	2025-02-12	315
69	USAU	2025-02-12	110
69	SWCI	2025-02-16	209
69	ELO	2025-02-16	111
69	Massey	2025-02-16	12
69	USAU	2025-02-16	105
69	SWCI	2025-02-17	209
69	ELO	2025-02-17	116
69	Massey	2025-02-17	367
69	USAU	2025-02-17	103
69	SWCI	2025-02-22	231
69	ELO	2025-02-22	115
69	Massey	2025-02-22	371
69	USAU	2025-02-22	389
69	SWCI	2025-02-23	229
69	ELO	2025-02-23	376
69	Massey	2025-02-23	348
69	USAU	2025-02-23	368
69	SWCI	2025-03-02	304
69	ELO	2025-03-02	371
69	Massey	2025-03-02	300
69	USAU	2025-03-02	317
69	SWCI	2025-03-08	315
69	ELO	2025-03-08	362
69	Massey	2025-03-08	258
69	USAU	2025-03-08	327
69	SWCI	2025-03-09	319
69	ELO	2025-03-09	360
69	Massey	2025-03-09	251
69	USAU	2025-03-09	324
69	SWCI	2025-03-15	308
69	ELO	2025-03-15	360
69	Massey	2025-03-15	313
69	USAU	2025-03-15	315
69	SWCI	2025-03-16	313
69	ELO	2025-03-16	358
69	Massey	2025-03-16	286
69	USAU	2025-03-16	332
69	SWCI	2025-03-23	318
69	ELO	2025-03-23	353
69	Massey	2025-03-23	327
69	USAU	2025-03-23	340
69	SWCI	2025-03-29	338
69	ELO	2025-03-29	350
69	Massey	2025-03-29	317
69	USAU	2025-03-29	327
69	SWCI	2025-03-30	334
69	ELO	2025-03-30	348
69	Massey	2025-03-30	319
69	USAU	2025-03-30	324
70	SWCI	2025-01-26	113
70	ELO	2025-01-26	78
70	Massey	2025-01-26	325
70	USAU	2025-01-26	80
70	SWCI	2025-02-02	163
70	ELO	2025-02-02	86
70	Massey	2025-02-02	373
70	USAU	2025-02-02	105
70	SWCI	2025-02-08	193
70	ELO	2025-02-08	107
70	Massey	2025-02-08	347
70	USAU	2025-02-08	113
70	SWCI	2025-02-09	193
70	ELO	2025-02-09	104
70	Massey	2025-02-09	313
70	USAU	2025-02-09	111
70	SWCI	2025-02-12	193
70	ELO	2025-02-12	112
70	Massey	2025-02-12	390
70	USAU	2025-02-12	111
70	SWCI	2025-02-16	210
70	ELO	2025-02-16	112
70	Massey	2025-02-16	265
70	USAU	2025-02-16	106
70	SWCI	2025-02-17	210
70	ELO	2025-02-17	117
70	Massey	2025-02-17	135
70	USAU	2025-02-17	104
70	SWCI	2025-02-22	206
70	ELO	2025-02-22	116
70	Massey	2025-02-22	351
70	USAU	2025-02-22	371
70	SWCI	2025-02-23	158
70	ELO	2025-02-23	311
70	Massey	2025-02-23	307
70	USAU	2025-02-23	340
70	SWCI	2025-03-02	210
70	ELO	2025-03-02	292
70	Massey	2025-03-02	212
70	USAU	2025-03-02	274
70	SWCI	2025-03-08	219
70	ELO	2025-03-08	253
70	Massey	2025-03-08	203
70	USAU	2025-03-08	280
70	SWCI	2025-03-09	224
70	ELO	2025-03-09	252
70	Massey	2025-03-09	200
70	USAU	2025-03-09	277
70	SWCI	2025-03-15	235
70	ELO	2025-03-15	246
70	Massey	2025-03-15	267
70	USAU	2025-03-15	266
70	SWCI	2025-03-16	229
70	ELO	2025-03-16	242
70	Massey	2025-03-16	213
70	USAU	2025-03-16	271
70	SWCI	2025-03-23	267
70	ELO	2025-03-23	231
70	Massey	2025-03-23	253
70	USAU	2025-03-23	260
70	SWCI	2025-03-29	283
70	ELO	2025-03-29	294
70	Massey	2025-03-29	239
70	USAU	2025-03-29	240
70	SWCI	2025-03-30	291
70	ELO	2025-03-30	294
70	Massey	2025-03-30	245
70	USAU	2025-03-30	247
71	SWCI	2025-01-26	114
71	ELO	2025-01-26	79
71	Massey	2025-01-26	327
71	USAU	2025-01-26	81
71	SWCI	2025-02-02	164
71	ELO	2025-02-02	87
71	Massey	2025-02-02	332
71	USAU	2025-02-02	106
71	SWCI	2025-02-08	194
71	ELO	2025-02-08	108
71	Massey	2025-02-08	105
71	USAU	2025-02-08	114
71	SWCI	2025-02-09	194
71	ELO	2025-02-09	105
71	Massey	2025-02-09	394
71	USAU	2025-02-09	112
71	SWCI	2025-02-12	194
71	ELO	2025-02-12	113
71	Massey	2025-02-12	379
71	USAU	2025-02-12	112
71	SWCI	2025-02-16	211
71	ELO	2025-02-16	113
71	Massey	2025-02-16	132
71	USAU	2025-02-16	107
71	SWCI	2025-02-17	211
71	ELO	2025-02-17	118
71	Massey	2025-02-17	312
71	USAU	2025-02-17	105
71	SWCI	2025-02-22	190
71	ELO	2025-02-22	117
71	Massey	2025-02-22	330
71	USAU	2025-02-22	357
71	SWCI	2025-02-23	187
71	ELO	2025-02-23	345
71	Massey	2025-02-23	334
71	USAU	2025-02-23	365
71	SWCI	2025-03-02	252
71	ELO	2025-03-02	338
71	Massey	2025-03-02	265
71	USAU	2025-03-02	303
71	SWCI	2025-03-08	280
71	ELO	2025-03-08	367
71	Massey	2025-03-08	248
71	USAU	2025-03-08	325
71	SWCI	2025-03-09	283
71	ELO	2025-03-09	365
71	Massey	2025-03-09	240
71	USAU	2025-03-09	322
71	SWCI	2025-03-15	297
71	ELO	2025-03-15	365
71	Massey	2025-03-15	321
71	USAU	2025-03-15	321
71	SWCI	2025-03-16	298
71	ELO	2025-03-16	364
71	Massey	2025-03-16	274
71	USAU	2025-03-16	321
71	SWCI	2025-03-23	321
71	ELO	2025-03-23	361
71	Massey	2025-03-23	308
71	USAU	2025-03-23	325
71	SWCI	2025-03-29	329
71	ELO	2025-03-29	353
71	Massey	2025-03-29	283
71	USAU	2025-03-29	289
71	SWCI	2025-03-30	333
71	ELO	2025-03-30	350
71	Massey	2025-03-30	287
71	USAU	2025-03-30	295
72	SWCI	2025-01-26	39
72	ELO	2025-01-26	80
72	Massey	2025-01-26	349
72	USAU	2025-01-26	366
72	SWCI	2025-02-02	80
72	ELO	2025-02-02	364
72	Massey	2025-02-02	319
72	USAU	2025-02-02	343
72	SWCI	2025-02-08	107
72	ELO	2025-02-08	351
72	Massey	2025-02-08	119
72	USAU	2025-02-08	62
72	SWCI	2025-02-09	107
72	ELO	2025-02-09	348
72	Massey	2025-02-09	323
72	USAU	2025-02-09	67
72	SWCI	2025-02-12	107
72	ELO	2025-02-12	339
72	Massey	2025-02-12	320
72	USAU	2025-02-12	68
72	SWCI	2025-02-16	120
72	ELO	2025-02-16	339
72	Massey	2025-02-16	293
72	USAU	2025-02-16	321
72	SWCI	2025-02-17	120
72	ELO	2025-02-17	332
72	Massey	2025-02-17	283
72	USAU	2025-02-17	323
72	SWCI	2025-02-22	113
72	ELO	2025-02-22	330
72	Massey	2025-02-22	224
72	USAU	2025-02-22	279
72	SWCI	2025-02-23	94
72	ELO	2025-02-23	57
72	Massey	2025-02-23	246
72	USAU	2025-02-23	296
72	SWCI	2025-03-02	112
72	ELO	2025-03-02	67
72	Massey	2025-03-02	143
72	USAU	2025-03-02	124
72	SWCI	2025-03-08	114
72	ELO	2025-03-08	85
72	Massey	2025-03-08	144
72	USAU	2025-03-08	216
72	SWCI	2025-03-09	115
72	ELO	2025-03-09	87
72	Massey	2025-03-09	145
72	USAU	2025-03-09	212
72	SWCI	2025-03-15	122
72	ELO	2025-03-15	89
72	Massey	2025-03-15	212
72	USAU	2025-03-15	196
72	SWCI	2025-03-16	126
72	ELO	2025-03-16	91
72	Massey	2025-03-16	156
72	USAU	2025-03-16	199
72	SWCI	2025-03-23	150
72	ELO	2025-03-23	100
72	Massey	2025-03-23	186
72	USAU	2025-03-23	188
72	SWCI	2025-03-29	162
72	ELO	2025-03-29	116
72	Massey	2025-03-29	160
72	USAU	2025-03-29	158
72	SWCI	2025-03-30	175
72	ELO	2025-03-30	116
72	Massey	2025-03-30	169
72	USAU	2025-03-30	160
73	SWCI	2025-01-26	115
73	ELO	2025-01-26	81
73	Massey	2025-01-26	72
73	USAU	2025-01-26	82
73	SWCI	2025-02-02	165
73	ELO	2025-02-02	88
73	Massey	2025-02-02	39
73	USAU	2025-02-02	107
73	SWCI	2025-02-08	195
73	ELO	2025-02-08	109
73	Massey	2025-02-08	115
73	USAU	2025-02-08	115
73	SWCI	2025-02-09	195
73	ELO	2025-02-09	106
73	Massey	2025-02-09	350
73	USAU	2025-02-09	113
73	SWCI	2025-02-12	195
73	ELO	2025-02-12	114
73	Massey	2025-02-12	42
73	USAU	2025-02-12	113
73	SWCI	2025-02-16	212
73	ELO	2025-02-16	114
73	Massey	2025-02-16	339
73	USAU	2025-02-16	108
73	SWCI	2025-02-17	212
73	ELO	2025-02-17	119
73	Massey	2025-02-17	282
73	USAU	2025-02-17	106
73	SWCI	2025-02-22	50
73	ELO	2025-02-22	118
73	Massey	2025-02-22	88
73	USAU	2025-02-22	33
73	SWCI	2025-02-23	17
73	ELO	2025-02-23	120
73	Massey	2025-02-23	40
73	USAU	2025-02-23	21
73	SWCI	2025-03-02	28
73	ELO	2025-03-02	43
73	Massey	2025-03-02	106
73	USAU	2025-03-02	106
73	SWCI	2025-03-08	20
73	ELO	2025-03-08	61
73	Massey	2025-03-08	75
73	USAU	2025-03-08	88
73	SWCI	2025-03-09	16
73	ELO	2025-03-09	62
73	Massey	2025-03-09	75
73	USAU	2025-03-09	86
73	SWCI	2025-03-15	13
73	ELO	2025-03-15	63
73	Massey	2025-03-15	149
73	USAU	2025-03-15	103
73	SWCI	2025-03-16	13
73	ELO	2025-03-16	66
73	Massey	2025-03-16	87
73	USAU	2025-03-16	100
73	SWCI	2025-03-23	117
73	ELO	2025-03-23	73
73	Massey	2025-03-23	151
73	USAU	2025-03-23	145
73	SWCI	2025-03-29	186
73	ELO	2025-03-29	126
73	Massey	2025-03-29	151
73	USAU	2025-03-29	151
73	SWCI	2025-03-30	234
73	ELO	2025-03-30	128
73	Massey	2025-03-30	175
73	USAU	2025-03-30	173
74	SWCI	2025-01-26	116
74	ELO	2025-01-26	82
74	Massey	2025-01-26	73
74	USAU	2025-01-26	83
74	SWCI	2025-02-02	166
74	ELO	2025-02-02	89
74	Massey	2025-02-02	374
74	USAU	2025-02-02	108
74	SWCI	2025-02-08	196
74	ELO	2025-02-08	110
74	Massey	2025-02-08	303
74	USAU	2025-02-08	116
74	SWCI	2025-02-09	196
74	ELO	2025-02-09	107
74	Massey	2025-02-09	329
74	USAU	2025-02-09	114
74	SWCI	2025-02-12	196
74	ELO	2025-02-12	115
74	Massey	2025-02-12	79
74	USAU	2025-02-12	114
74	SWCI	2025-02-16	213
74	ELO	2025-02-16	115
74	Massey	2025-02-16	337
74	USAU	2025-02-16	109
74	SWCI	2025-02-17	213
74	ELO	2025-02-17	120
74	Massey	2025-02-17	337
74	USAU	2025-02-17	107
74	SWCI	2025-02-22	85
74	ELO	2025-02-22	119
74	Massey	2025-02-22	140
74	USAU	2025-02-22	92
74	SWCI	2025-02-23	63
74	ELO	2025-02-23	45
74	Massey	2025-02-23	101
74	USAU	2025-02-23	78
74	SWCI	2025-03-02	73
74	ELO	2025-03-02	56
74	Massey	2025-03-02	301
74	USAU	2025-03-02	96
74	SWCI	2025-03-08	76
74	ELO	2025-03-08	75
74	Massey	2025-03-08	325
74	USAU	2025-03-08	96
74	SWCI	2025-03-09	75
74	ELO	2025-03-09	77
74	Massey	2025-03-09	345
74	USAU	2025-03-09	95
74	SWCI	2025-03-15	78
74	ELO	2025-03-15	80
74	Massey	2025-03-15	10
74	USAU	2025-03-15	99
74	SWCI	2025-03-16	80
74	ELO	2025-03-16	84
74	Massey	2025-03-16	269
74	USAU	2025-03-16	101
74	SWCI	2025-03-23	275
74	ELO	2025-03-23	91
74	Massey	2025-03-23	371
74	USAU	2025-03-23	386
74	SWCI	2025-03-29	280
74	ELO	2025-03-29	344
74	Massey	2025-03-29	358
74	USAU	2025-03-29	363
74	SWCI	2025-03-30	304
74	ELO	2025-03-30	343
74	Massey	2025-03-30	359
74	USAU	2025-03-30	359
75	SWCI	2025-01-26	117
75	ELO	2025-01-26	83
75	Massey	2025-01-26	145
75	USAU	2025-01-26	84
75	SWCI	2025-02-02	78
75	ELO	2025-02-02	90
75	Massey	2025-02-02	329
75	USAU	2025-02-02	349
75	SWCI	2025-02-08	97
75	ELO	2025-02-08	353
75	Massey	2025-02-08	280
75	USAU	2025-02-08	76
75	SWCI	2025-02-09	98
75	ELO	2025-02-09	350
75	Massey	2025-02-09	284
75	USAU	2025-02-09	77
75	SWCI	2025-02-12	98
75	ELO	2025-02-12	342
75	Massey	2025-02-12	111
75	USAU	2025-02-12	76
75	SWCI	2025-02-16	146
75	ELO	2025-02-16	378
75	Massey	2025-02-16	116
75	USAU	2025-02-16	299
75	SWCI	2025-02-17	146
75	ELO	2025-02-17	376
75	Massey	2025-02-17	106
75	USAU	2025-02-17	300
75	SWCI	2025-02-22	172
75	ELO	2025-02-22	378
75	Massey	2025-02-22	114
75	USAU	2025-02-22	101
75	SWCI	2025-02-23	174
75	ELO	2025-02-23	378
75	Massey	2025-02-23	110
75	USAU	2025-02-23	98
75	SWCI	2025-03-02	224
75	ELO	2025-03-02	373
75	Massey	2025-03-02	86
75	USAU	2025-03-02	94
75	SWCI	2025-03-08	226
75	ELO	2025-03-08	364
75	Massey	2025-03-08	84
75	USAU	2025-03-08	97
75	SWCI	2025-03-09	231
75	ELO	2025-03-09	362
75	Massey	2025-03-09	83
75	USAU	2025-03-09	96
75	SWCI	2025-03-15	244
75	ELO	2025-03-15	362
75	Massey	2025-03-15	142
75	USAU	2025-03-15	96
75	SWCI	2025-03-16	244
75	ELO	2025-03-16	360
75	Massey	2025-03-16	83
75	USAU	2025-03-16	92
75	SWCI	2025-03-23	169
75	ELO	2025-03-23	356
75	Massey	2025-03-23	104
75	USAU	2025-03-23	81
75	SWCI	2025-03-29	187
75	ELO	2025-03-29	170
75	Massey	2025-03-29	81
75	USAU	2025-03-29	79
75	SWCI	2025-03-30	197
75	ELO	2025-03-30	171
75	Massey	2025-03-30	83
75	USAU	2025-03-30	84
76	SWCI	2025-01-26	118
76	ELO	2025-01-26	84
76	Massey	2025-01-26	342
76	USAU	2025-01-26	85
76	SWCI	2025-02-02	167
76	ELO	2025-02-02	91
76	Massey	2025-02-02	4
76	USAU	2025-02-02	109
76	SWCI	2025-02-08	197
76	ELO	2025-02-08	111
76	Massey	2025-02-08	369
76	USAU	2025-02-08	117
76	SWCI	2025-02-09	197
76	ELO	2025-02-09	108
76	Massey	2025-02-09	325
76	USAU	2025-02-09	115
76	SWCI	2025-02-12	197
76	ELO	2025-02-12	116
76	Massey	2025-02-12	286
76	USAU	2025-02-12	115
76	SWCI	2025-02-16	214
76	ELO	2025-02-16	116
76	Massey	2025-02-16	49
76	USAU	2025-02-16	110
76	SWCI	2025-02-17	214
76	ELO	2025-02-17	121
76	Massey	2025-02-17	67
76	USAU	2025-02-17	108
76	SWCI	2025-02-22	249
76	ELO	2025-02-22	120
76	Massey	2025-02-22	20
76	USAU	2025-02-22	118
76	SWCI	2025-02-23	249
76	ELO	2025-02-23	121
76	Massey	2025-02-23	389
76	USAU	2025-02-23	120
76	SWCI	2025-03-02	225
76	ELO	2025-03-02	137
76	Massey	2025-03-02	162
76	USAU	2025-03-02	247
76	SWCI	2025-03-08	228
76	ELO	2025-03-08	267
76	Massey	2025-03-08	150
76	USAU	2025-03-08	239
76	SWCI	2025-03-09	232
76	ELO	2025-03-09	266
76	Massey	2025-03-09	151
76	USAU	2025-03-09	235
76	SWCI	2025-03-15	257
76	ELO	2025-03-15	259
76	Massey	2025-03-15	218
76	USAU	2025-03-15	221
76	SWCI	2025-03-16	251
76	ELO	2025-03-16	256
76	Massey	2025-03-16	159
76	USAU	2025-03-16	221
76	SWCI	2025-03-23	285
76	ELO	2025-03-23	243
76	Massey	2025-03-23	210
76	USAU	2025-03-23	214
76	SWCI	2025-03-29	285
76	ELO	2025-03-29	316
76	Massey	2025-03-29	178
76	USAU	2025-03-29	178
76	SWCI	2025-03-30	262
76	ELO	2025-03-30	315
76	Massey	2025-03-30	171
76	USAU	2025-03-30	162
77	SWCI	2025-01-26	38
77	ELO	2025-01-26	85
77	Massey	2025-01-26	355
77	USAU	2025-01-26	369
77	SWCI	2025-02-02	77
77	ELO	2025-02-02	371
77	Massey	2025-02-02	331
77	USAU	2025-02-02	350
77	SWCI	2025-02-08	100
77	ELO	2025-02-08	361
77	Massey	2025-02-08	287
77	USAU	2025-02-08	70
77	SWCI	2025-02-09	103
77	ELO	2025-02-09	358
77	Massey	2025-02-09	335
77	USAU	2025-02-09	73
77	SWCI	2025-02-12	103
77	ELO	2025-02-12	349
77	Massey	2025-02-12	333
77	USAU	2025-02-12	75
77	SWCI	2025-02-16	122
77	ELO	2025-02-16	348
77	Massey	2025-02-16	308
77	USAU	2025-02-16	329
77	SWCI	2025-02-17	122
77	ELO	2025-02-17	339
77	Massey	2025-02-17	309
77	USAU	2025-02-17	330
77	SWCI	2025-02-22	153
77	ELO	2025-02-22	335
77	Massey	2025-02-22	264
77	USAU	2025-02-22	294
77	SWCI	2025-02-23	152
77	ELO	2025-02-23	334
77	Massey	2025-02-23	260
77	USAU	2025-02-23	293
77	SWCI	2025-03-02	212
77	ELO	2025-03-02	319
77	Massey	2025-03-02	152
77	USAU	2025-03-02	228
77	SWCI	2025-03-08	215
77	ELO	2025-03-08	292
77	Massey	2025-03-08	145
77	USAU	2025-03-08	224
77	SWCI	2025-03-09	221
77	ELO	2025-03-09	292
77	Massey	2025-03-09	147
77	USAU	2025-03-09	220
77	SWCI	2025-03-15	223
77	ELO	2025-03-15	285
77	Massey	2025-03-15	209
77	USAU	2025-03-15	197
77	SWCI	2025-03-16	216
77	ELO	2025-03-16	282
77	Massey	2025-03-16	150
77	USAU	2025-03-16	192
77	SWCI	2025-03-23	164
77	ELO	2025-03-23	270
77	Massey	2025-03-23	155
77	USAU	2025-03-23	129
77	SWCI	2025-03-29	180
77	ELO	2025-03-29	109
77	Massey	2025-03-29	137
77	USAU	2025-03-29	135
77	SWCI	2025-03-30	189
77	ELO	2025-03-30	109
77	Massey	2025-03-30	139
77	USAU	2025-03-30	138
78	SWCI	2025-01-26	119
78	ELO	2025-01-26	86
78	Massey	2025-01-26	340
78	USAU	2025-01-26	86
78	SWCI	2025-02-02	168
78	ELO	2025-02-02	92
78	Massey	2025-02-02	261
78	USAU	2025-02-02	110
78	SWCI	2025-02-08	198
78	ELO	2025-02-08	112
78	Massey	2025-02-08	63
78	USAU	2025-02-08	118
78	SWCI	2025-02-09	198
78	ELO	2025-02-09	109
78	Massey	2025-02-09	43
78	USAU	2025-02-09	116
78	SWCI	2025-02-12	198
78	ELO	2025-02-12	117
78	Massey	2025-02-12	356
78	USAU	2025-02-12	116
78	SWCI	2025-02-16	215
78	ELO	2025-02-16	117
78	Massey	2025-02-16	384
78	USAU	2025-02-16	111
78	SWCI	2025-02-17	215
78	ELO	2025-02-17	122
78	Massey	2025-02-17	280
78	USAU	2025-02-17	109
78	SWCI	2025-02-22	199
78	ELO	2025-02-22	121
78	Massey	2025-02-22	331
78	USAU	2025-02-22	329
78	SWCI	2025-02-23	193
78	ELO	2025-02-23	375
78	Massey	2025-02-23	284
78	USAU	2025-02-23	329
78	SWCI	2025-03-02	263
78	ELO	2025-03-02	370
78	Massey	2025-03-02	387
78	USAU	2025-03-02	284
78	SWCI	2025-03-08	267
78	ELO	2025-03-08	361
78	Massey	2025-03-08	395
78	USAU	2025-03-08	284
78	SWCI	2025-03-09	269
78	ELO	2025-03-09	359
78	Massey	2025-03-09	397
78	USAU	2025-03-09	280
78	SWCI	2025-03-15	289
78	ELO	2025-03-15	359
78	Massey	2025-03-15	53
78	USAU	2025-03-15	271
78	SWCI	2025-03-16	289
78	ELO	2025-03-16	357
78	Massey	2025-03-16	385
78	USAU	2025-03-16	272
78	SWCI	2025-03-23	370
78	ELO	2025-03-23	352
78	Massey	2025-03-23	388
78	USAU	2025-03-23	395
78	SWCI	2025-03-29	388
78	ELO	2025-03-29	396
78	Massey	2025-03-29	382
78	USAU	2025-03-29	389
78	SWCI	2025-03-30	388
78	ELO	2025-03-30	396
78	Massey	2025-03-30	385
78	USAU	2025-03-30	389
79	SWCI	2025-01-26	120
79	ELO	2025-01-26	87
79	Massey	2025-01-26	334
79	USAU	2025-01-26	87
79	SWCI	2025-02-02	169
79	ELO	2025-02-02	93
79	Massey	2025-02-02	58
79	USAU	2025-02-02	111
79	SWCI	2025-02-08	199
79	ELO	2025-02-08	113
79	Massey	2025-02-08	31
79	USAU	2025-02-08	119
79	SWCI	2025-02-09	199
79	ELO	2025-02-09	110
79	Massey	2025-02-09	17
79	USAU	2025-02-09	117
79	SWCI	2025-02-12	199
79	ELO	2025-02-12	118
79	Massey	2025-02-12	54
79	USAU	2025-02-12	117
79	SWCI	2025-02-16	216
79	ELO	2025-02-16	118
79	Massey	2025-02-16	22
79	USAU	2025-02-16	112
79	SWCI	2025-02-17	216
79	ELO	2025-02-17	123
79	Massey	2025-02-17	1
79	USAU	2025-02-17	110
79	SWCI	2025-02-22	140
79	ELO	2025-02-22	122
79	Massey	2025-02-22	132
79	USAU	2025-02-22	267
79	SWCI	2025-02-23	141
79	ELO	2025-02-23	104
79	Massey	2025-02-23	102
79	USAU	2025-02-23	270
79	SWCI	2025-03-02	189
79	ELO	2025-03-02	122
79	Massey	2025-03-02	302
79	USAU	2025-03-02	221
79	SWCI	2025-03-08	190
79	ELO	2025-03-08	153
79	Massey	2025-03-08	324
79	USAU	2025-03-08	214
79	SWCI	2025-03-09	193
79	ELO	2025-03-09	157
79	Massey	2025-03-09	346
79	USAU	2025-03-09	211
79	SWCI	2025-03-15	205
79	ELO	2025-03-15	159
79	Massey	2025-03-15	9
79	USAU	2025-03-15	191
79	SWCI	2025-03-16	204
79	ELO	2025-03-16	161
79	Massey	2025-03-16	270
79	USAU	2025-03-16	194
79	SWCI	2025-03-23	258
79	ELO	2025-03-23	166
79	Massey	2025-03-23	352
79	USAU	2025-03-23	391
79	SWCI	2025-03-29	278
79	ELO	2025-03-29	181
79	Massey	2025-03-29	340
79	USAU	2025-03-29	378
79	SWCI	2025-03-30	289
79	ELO	2025-03-30	182
79	Massey	2025-03-30	336
79	USAU	2025-03-30	376
80	SWCI	2025-01-26	121
80	ELO	2025-01-26	88
80	Massey	2025-01-26	273
80	USAU	2025-01-26	88
80	SWCI	2025-02-02	170
80	ELO	2025-02-02	94
80	Massey	2025-02-02	93
80	USAU	2025-02-02	112
80	SWCI	2025-02-08	200
80	ELO	2025-02-08	114
80	Massey	2025-02-08	82
80	USAU	2025-02-08	120
80	SWCI	2025-02-09	200
80	ELO	2025-02-09	111
80	Massey	2025-02-09	90
80	USAU	2025-02-09	118
80	SWCI	2025-02-12	200
80	ELO	2025-02-12	119
80	Massey	2025-02-12	52
80	USAU	2025-02-12	118
80	SWCI	2025-02-16	217
80	ELO	2025-02-16	119
80	Massey	2025-02-16	345
80	USAU	2025-02-16	113
80	SWCI	2025-02-17	217
80	ELO	2025-02-17	124
80	Massey	2025-02-17	395
80	USAU	2025-02-17	111
80	SWCI	2025-02-22	36
80	ELO	2025-02-22	123
80	Massey	2025-02-22	91
80	USAU	2025-02-22	51
80	SWCI	2025-02-23	59
80	ELO	2025-02-23	51
80	Massey	2025-02-23	97
80	USAU	2025-02-23	74
80	SWCI	2025-03-02	72
80	ELO	2025-03-02	61
80	Massey	2025-03-02	296
80	USAU	2025-03-02	95
80	SWCI	2025-03-08	74
80	ELO	2025-03-08	82
80	Massey	2025-03-08	310
80	USAU	2025-03-08	92
80	SWCI	2025-03-09	74
80	ELO	2025-03-09	84
80	Massey	2025-03-09	305
80	USAU	2025-03-09	94
80	SWCI	2025-03-15	77
80	ELO	2025-03-15	87
80	Massey	2025-03-15	8
80	USAU	2025-03-15	98
80	SWCI	2025-03-16	77
80	ELO	2025-03-16	89
80	Massey	2025-03-16	262
80	USAU	2025-03-16	98
80	SWCI	2025-03-23	136
80	ELO	2025-03-23	97
80	Massey	2025-03-23	350
80	USAU	2025-03-23	380
80	SWCI	2025-03-29	137
80	ELO	2025-03-29	105
80	Massey	2025-03-29	334
80	USAU	2025-03-29	359
80	SWCI	2025-03-30	154
80	ELO	2025-03-30	105
80	Massey	2025-03-30	332
80	USAU	2025-03-30	352
81	SWCI	2025-01-26	27
81	ELO	2025-01-26	89
81	Massey	2025-01-26	35
81	USAU	2025-01-26	24
81	SWCI	2025-02-02	48
81	ELO	2025-02-02	29
81	Massey	2025-02-02	77
81	USAU	2025-02-02	50
81	SWCI	2025-02-08	62
81	ELO	2025-02-08	43
81	Massey	2025-02-08	62
81	USAU	2025-02-08	41
81	SWCI	2025-02-09	64
81	ELO	2025-02-09	46
81	Massey	2025-02-09	264
81	USAU	2025-02-09	45
81	SWCI	2025-02-12	64
81	ELO	2025-02-12	57
81	Massey	2025-02-12	259
81	USAU	2025-02-12	45
81	SWCI	2025-02-16	89
81	ELO	2025-02-16	57
81	Massey	2025-02-16	123
81	USAU	2025-02-16	303
81	SWCI	2025-02-17	90
81	ELO	2025-02-17	64
81	Massey	2025-02-17	114
81	USAU	2025-02-17	304
81	SWCI	2025-02-22	111
81	ELO	2025-02-22	66
81	Massey	2025-02-22	103
81	USAU	2025-02-22	91
81	SWCI	2025-02-23	111
81	ELO	2025-02-23	69
81	Massey	2025-02-23	100
81	USAU	2025-02-23	91
81	SWCI	2025-03-02	111
81	ELO	2025-03-02	84
81	Massey	2025-03-02	71
81	USAU	2025-03-02	70
81	SWCI	2025-03-08	112
81	ELO	2025-03-08	106
81	Massey	2025-03-08	66
81	USAU	2025-03-08	74
81	SWCI	2025-03-09	112
81	ELO	2025-03-09	109
81	Massey	2025-03-09	66
81	USAU	2025-03-09	75
81	SWCI	2025-03-15	130
81	ELO	2025-03-15	114
81	Massey	2025-03-15	129
81	USAU	2025-03-15	86
81	SWCI	2025-03-16	130
81	ELO	2025-03-16	115
81	Massey	2025-03-16	70
81	USAU	2025-03-16	82
81	SWCI	2025-03-23	140
81	ELO	2025-03-23	123
81	Massey	2025-03-23	124
81	USAU	2025-03-23	113
81	SWCI	2025-03-29	148
81	ELO	2025-03-29	159
81	Massey	2025-03-29	97
81	USAU	2025-03-29	111
81	SWCI	2025-03-30	151
81	ELO	2025-03-30	162
81	Massey	2025-03-30	104
81	USAU	2025-03-30	118
82	SWCI	2025-01-26	122
82	ELO	2025-01-26	90
82	Massey	2025-01-26	100
82	USAU	2025-01-26	89
82	SWCI	2025-02-02	123
82	ELO	2025-02-02	95
82	Massey	2025-02-02	376
82	USAU	2025-02-02	380
82	SWCI	2025-02-08	163
82	ELO	2025-02-08	386
82	Massey	2025-02-08	352
82	USAU	2025-02-08	360
82	SWCI	2025-02-09	159
82	ELO	2025-02-09	385
82	Massey	2025-02-09	347
82	USAU	2025-02-09	351
82	SWCI	2025-02-12	158
82	ELO	2025-02-12	380
82	Massey	2025-02-12	321
82	USAU	2025-02-12	350
82	SWCI	2025-02-16	181
82	ELO	2025-02-16	380
82	Massey	2025-02-16	295
82	USAU	2025-02-16	332
82	SWCI	2025-02-17	180
82	ELO	2025-02-17	378
82	Massey	2025-02-17	289
82	USAU	2025-02-17	333
82	SWCI	2025-02-22	218
82	ELO	2025-02-22	379
82	Massey	2025-02-22	158
82	USAU	2025-02-22	284
82	SWCI	2025-02-23	190
82	ELO	2025-02-23	379
82	Massey	2025-02-23	151
82	USAU	2025-02-23	276
82	SWCI	2025-03-02	256
82	ELO	2025-03-02	374
82	Massey	2025-03-02	119
82	USAU	2025-03-02	117
82	SWCI	2025-03-08	260
82	ELO	2025-03-08	365
82	Massey	2025-03-08	117
82	USAU	2025-03-08	124
82	SWCI	2025-03-09	264
82	ELO	2025-03-09	363
82	Massey	2025-03-09	116
82	USAU	2025-03-09	121
82	SWCI	2025-03-15	284
82	ELO	2025-03-15	363
82	Massey	2025-03-15	181
82	USAU	2025-03-15	129
82	SWCI	2025-03-16	284
82	ELO	2025-03-16	361
82	Massey	2025-03-16	125
82	USAU	2025-03-16	123
82	SWCI	2025-03-23	195
82	ELO	2025-03-23	357
82	Massey	2025-03-23	131
82	USAU	2025-03-23	98
82	SWCI	2025-03-29	173
82	ELO	2025-03-29	156
82	Massey	2025-03-29	100
82	USAU	2025-03-29	99
82	SWCI	2025-03-30	142
82	ELO	2025-03-30	42
82	Massey	2025-03-30	95
82	USAU	2025-03-30	94
83	SWCI	2025-01-26	123
83	ELO	2025-01-26	91
83	Massey	2025-01-26	144
83	USAU	2025-01-26	90
83	SWCI	2025-02-02	171
83	ELO	2025-02-02	96
83	Massey	2025-02-02	78
83	USAU	2025-02-02	113
83	SWCI	2025-02-08	201
83	ELO	2025-02-08	115
83	Massey	2025-02-08	13
83	USAU	2025-02-08	121
83	SWCI	2025-02-09	201
83	ELO	2025-02-09	112
83	Massey	2025-02-09	15
83	USAU	2025-02-09	119
83	SWCI	2025-02-12	201
83	ELO	2025-02-12	120
83	Massey	2025-02-12	327
83	USAU	2025-02-12	119
83	SWCI	2025-02-16	218
83	ELO	2025-02-16	120
83	Massey	2025-02-16	383
83	USAU	2025-02-16	114
83	SWCI	2025-02-17	218
83	ELO	2025-02-17	125
83	Massey	2025-02-17	147
83	USAU	2025-02-17	112
83	SWCI	2025-02-22	250
83	ELO	2025-02-22	124
83	Massey	2025-02-22	53
83	USAU	2025-02-22	119
83	SWCI	2025-02-23	250
83	ELO	2025-02-23	122
83	Massey	2025-02-23	30
83	USAU	2025-02-23	121
83	SWCI	2025-03-02	317
83	ELO	2025-03-02	138
83	Massey	2025-03-02	183
83	USAU	2025-03-02	137
83	SWCI	2025-03-08	244
83	ELO	2025-03-08	157
83	Massey	2025-03-08	209
83	USAU	2025-03-08	310
83	SWCI	2025-03-09	208
83	ELO	2025-03-09	152
83	Massey	2025-03-09	199
83	USAU	2025-03-09	325
83	SWCI	2025-03-15	219
83	ELO	2025-03-15	153
83	Massey	2025-03-15	290
83	USAU	2025-03-15	337
83	SWCI	2025-03-16	220
83	ELO	2025-03-16	155
83	Massey	2025-03-16	228
83	USAU	2025-03-16	330
83	SWCI	2025-03-23	238
83	ELO	2025-03-23	160
83	Massey	2025-03-23	279
83	USAU	2025-03-23	336
83	SWCI	2025-03-29	231
83	ELO	2025-03-29	176
83	Massey	2025-03-29	271
83	USAU	2025-03-29	307
83	SWCI	2025-03-30	255
83	ELO	2025-03-30	177
83	Massey	2025-03-30	278
83	USAU	2025-03-30	308
84	SWCI	2025-01-26	124
84	ELO	2025-01-26	92
84	Massey	2025-01-26	199
84	USAU	2025-01-26	91
84	SWCI	2025-02-02	172
84	ELO	2025-02-02	97
84	Massey	2025-02-02	277
84	USAU	2025-02-02	114
84	SWCI	2025-02-08	202
84	ELO	2025-02-08	116
84	Massey	2025-02-08	331
84	USAU	2025-02-08	122
84	SWCI	2025-02-09	202
84	ELO	2025-02-09	113
84	Massey	2025-02-09	103
84	USAU	2025-02-09	120
84	SWCI	2025-02-12	202
84	ELO	2025-02-12	121
84	Massey	2025-02-12	31
84	USAU	2025-02-12	120
84	SWCI	2025-02-16	219
84	ELO	2025-02-16	121
84	Massey	2025-02-16	344
84	USAU	2025-02-16	115
84	SWCI	2025-02-17	219
84	ELO	2025-02-17	126
84	Massey	2025-02-17	380
84	USAU	2025-02-17	113
84	SWCI	2025-02-22	251
84	ELO	2025-02-22	125
84	Massey	2025-02-22	359
84	USAU	2025-02-22	120
84	SWCI	2025-02-23	251
84	ELO	2025-02-23	123
84	Massey	2025-02-23	395
84	USAU	2025-02-23	122
84	SWCI	2025-03-02	318
84	ELO	2025-03-02	139
84	Massey	2025-03-02	303
84	USAU	2025-03-02	138
84	SWCI	2025-03-08	278
84	ELO	2025-03-08	158
84	Massey	2025-03-08	387
84	USAU	2025-03-08	370
84	SWCI	2025-03-09	315
84	ELO	2025-03-09	388
84	Massey	2025-03-09	384
84	USAU	2025-03-09	396
84	SWCI	2025-03-15	342
84	ELO	2025-03-15	386
84	Massey	2025-03-15	393
84	USAU	2025-03-15	396
84	SWCI	2025-03-16	341
84	ELO	2025-03-16	386
84	Massey	2025-03-16	392
84	USAU	2025-03-16	396
84	SWCI	2025-03-23	363
84	ELO	2025-03-23	386
84	Massey	2025-03-23	393
84	USAU	2025-03-23	397
84	SWCI	2025-03-29	382
84	ELO	2025-03-29	383
84	Massey	2025-03-29	386
84	USAU	2025-03-29	393
84	SWCI	2025-03-30	387
84	ELO	2025-03-30	382
84	Massey	2025-03-30	388
84	USAU	2025-03-30	395
85	SWCI	2025-01-26	125
85	ELO	2025-01-26	93
85	Massey	2025-01-26	220
85	USAU	2025-01-26	92
85	SWCI	2025-02-02	173
85	ELO	2025-02-02	98
85	Massey	2025-02-02	388
85	USAU	2025-02-02	115
85	SWCI	2025-02-08	203
85	ELO	2025-02-08	117
85	Massey	2025-02-08	24
85	USAU	2025-02-08	123
85	SWCI	2025-02-09	203
85	ELO	2025-02-09	114
85	Massey	2025-02-09	278
85	USAU	2025-02-09	121
85	SWCI	2025-02-12	203
85	ELO	2025-02-12	122
85	Massey	2025-02-12	30
85	USAU	2025-02-12	121
85	SWCI	2025-02-16	220
85	ELO	2025-02-16	122
85	Massey	2025-02-16	3
85	USAU	2025-02-16	116
85	SWCI	2025-02-17	220
85	ELO	2025-02-17	127
85	Massey	2025-02-17	359
85	USAU	2025-02-17	114
85	SWCI	2025-02-22	252
85	ELO	2025-02-22	126
85	Massey	2025-02-22	26
85	USAU	2025-02-22	121
85	SWCI	2025-02-23	252
85	ELO	2025-02-23	124
85	Massey	2025-02-23	275
85	USAU	2025-02-23	123
85	SWCI	2025-03-02	319
85	ELO	2025-03-02	140
85	Massey	2025-03-02	55
85	USAU	2025-03-02	139
85	SWCI	2025-03-08	273
85	ELO	2025-03-08	159
85	Massey	2025-03-08	350
85	USAU	2025-03-08	368
85	SWCI	2025-03-09	295
85	ELO	2025-03-09	372
85	Massey	2025-03-09	337
85	USAU	2025-03-09	387
85	SWCI	2025-03-15	319
85	ELO	2025-03-15	372
85	Massey	2025-03-15	376
85	USAU	2025-03-15	393
85	SWCI	2025-03-16	319
85	ELO	2025-03-16	371
85	Massey	2025-03-16	369
85	USAU	2025-03-16	392
85	SWCI	2025-03-23	338
85	ELO	2025-03-23	370
85	Massey	2025-03-23	378
85	USAU	2025-03-23	392
85	SWCI	2025-03-29	355
85	ELO	2025-03-29	362
85	Massey	2025-03-29	369
85	USAU	2025-03-29	382
85	SWCI	2025-03-30	360
85	ELO	2025-03-30	361
85	Massey	2025-03-30	365
85	USAU	2025-03-30	383
86	SWCI	2025-01-26	126
86	ELO	2025-01-26	94
86	Massey	2025-01-26	274
86	USAU	2025-01-26	93
86	SWCI	2025-02-02	174
86	ELO	2025-02-02	99
86	Massey	2025-02-02	382
86	USAU	2025-02-02	116
86	SWCI	2025-02-08	204
86	ELO	2025-02-08	118
86	Massey	2025-02-08	68
86	USAU	2025-02-08	124
86	SWCI	2025-02-09	204
86	ELO	2025-02-09	115
86	Massey	2025-02-09	107
86	USAU	2025-02-09	122
86	SWCI	2025-02-12	204
86	ELO	2025-02-12	123
86	Massey	2025-02-12	340
86	USAU	2025-02-12	122
86	SWCI	2025-02-16	221
86	ELO	2025-02-16	123
86	Massey	2025-02-16	275
86	USAU	2025-02-16	117
86	SWCI	2025-02-17	221
86	ELO	2025-02-17	128
86	Massey	2025-02-17	382
86	USAU	2025-02-17	115
86	SWCI	2025-02-22	253
86	ELO	2025-02-22	127
86	Massey	2025-02-22	48
86	USAU	2025-02-22	122
86	SWCI	2025-02-23	253
86	ELO	2025-02-23	125
86	Massey	2025-02-23	381
86	USAU	2025-02-23	124
86	SWCI	2025-03-02	246
86	ELO	2025-03-02	141
86	Massey	2025-03-02	189
86	USAU	2025-03-02	287
86	SWCI	2025-03-08	201
86	ELO	2025-03-08	316
86	Massey	2025-03-08	174
86	USAU	2025-03-08	275
86	SWCI	2025-03-09	195
86	ELO	2025-03-09	278
86	Massey	2025-03-09	186
86	USAU	2025-03-09	290
86	SWCI	2025-03-15	206
86	ELO	2025-03-15	271
86	Massey	2025-03-15	265
86	USAU	2025-03-15	305
86	SWCI	2025-03-16	205
86	ELO	2025-03-16	269
86	Massey	2025-03-16	205
86	USAU	2025-03-16	295
86	SWCI	2025-03-23	206
86	ELO	2025-03-23	258
86	Massey	2025-03-23	258
86	USAU	2025-03-23	308
86	SWCI	2025-03-29	220
86	ELO	2025-03-29	248
86	Massey	2025-03-29	244
86	USAU	2025-03-29	281
86	SWCI	2025-03-30	236
86	ELO	2025-03-30	250
86	Massey	2025-03-30	241
86	USAU	2025-03-30	278
87	SWCI	2025-01-26	127
87	ELO	2025-01-26	95
87	Massey	2025-01-26	99
87	USAU	2025-01-26	94
87	SWCI	2025-02-02	175
87	ELO	2025-02-02	100
87	Massey	2025-02-02	354
87	USAU	2025-02-02	117
87	SWCI	2025-02-08	205
87	ELO	2025-02-08	119
87	Massey	2025-02-08	90
87	USAU	2025-02-08	125
87	SWCI	2025-02-09	205
87	ELO	2025-02-09	116
87	Massey	2025-02-09	339
87	USAU	2025-02-09	123
87	SWCI	2025-02-12	205
87	ELO	2025-02-12	124
87	Massey	2025-02-12	383
87	USAU	2025-02-12	123
87	SWCI	2025-02-16	222
87	ELO	2025-02-16	124
87	Massey	2025-02-16	396
87	USAU	2025-02-16	118
87	SWCI	2025-02-17	222
87	ELO	2025-02-17	129
87	Massey	2025-02-17	332
87	USAU	2025-02-17	116
87	SWCI	2025-02-22	124
87	ELO	2025-02-22	128
87	Massey	2025-02-22	257
87	USAU	2025-02-22	100
87	SWCI	2025-02-23	131
87	ELO	2025-02-23	126
87	Massey	2025-02-23	117
87	USAU	2025-02-23	83
87	SWCI	2025-03-02	184
87	ELO	2025-03-02	317
87	Massey	2025-03-02	217
87	USAU	2025-03-02	290
87	SWCI	2025-03-08	147
87	ELO	2025-03-08	295
87	Massey	2025-03-08	176
87	USAU	2025-03-08	268
87	SWCI	2025-03-09	117
87	ELO	2025-03-09	93
87	Massey	2025-03-09	169
87	USAU	2025-03-09	264
87	SWCI	2025-03-15	127
87	ELO	2025-03-15	95
87	Massey	2025-03-15	249
87	USAU	2025-03-15	263
87	SWCI	2025-03-16	132
87	ELO	2025-03-16	97
87	Massey	2025-03-16	189
87	USAU	2025-03-16	257
87	SWCI	2025-03-23	156
87	ELO	2025-03-23	106
87	Massey	2025-03-23	231
87	USAU	2025-03-23	257
87	SWCI	2025-03-29	176
87	ELO	2025-03-29	113
87	Massey	2025-03-29	210
87	USAU	2025-03-29	226
87	SWCI	2025-03-30	183
87	ELO	2025-03-30	113
87	Massey	2025-03-30	209
87	USAU	2025-03-30	222
88	SWCI	2025-01-26	128
88	ELO	2025-01-26	96
88	Massey	2025-01-26	202
88	USAU	2025-01-26	95
88	SWCI	2025-02-02	176
88	ELO	2025-02-02	101
88	Massey	2025-02-02	338
88	USAU	2025-02-02	118
88	SWCI	2025-02-08	206
88	ELO	2025-02-08	120
88	Massey	2025-02-08	311
88	USAU	2025-02-08	126
88	SWCI	2025-02-09	206
88	ELO	2025-02-09	117
88	Massey	2025-02-09	112
88	USAU	2025-02-09	124
88	SWCI	2025-02-12	206
88	ELO	2025-02-12	125
88	Massey	2025-02-12	312
88	USAU	2025-02-12	124
88	SWCI	2025-02-16	223
88	ELO	2025-02-16	125
88	Massey	2025-02-16	47
88	USAU	2025-02-16	119
88	SWCI	2025-02-17	223
88	ELO	2025-02-17	130
88	Massey	2025-02-17	389
88	USAU	2025-02-17	117
88	SWCI	2025-02-22	254
88	ELO	2025-02-22	129
88	Massey	2025-02-22	334
88	USAU	2025-02-22	123
88	SWCI	2025-02-23	254
88	ELO	2025-02-23	127
88	Massey	2025-02-23	267
88	USAU	2025-02-23	125
88	SWCI	2025-03-02	320
88	ELO	2025-03-02	142
88	Massey	2025-03-02	209
88	USAU	2025-03-02	140
88	SWCI	2025-03-08	125
88	ELO	2025-03-08	160
88	Massey	2025-03-08	181
88	USAU	2025-03-08	276
88	SWCI	2025-03-09	77
88	ELO	2025-03-09	76
88	Massey	2025-03-09	175
88	USAU	2025-03-09	262
88	SWCI	2025-03-15	80
88	ELO	2025-03-15	79
88	Massey	2025-03-15	255
88	USAU	2025-03-15	262
88	SWCI	2025-03-16	84
88	ELO	2025-03-16	83
88	Massey	2025-03-16	195
88	USAU	2025-03-16	256
88	SWCI	2025-03-23	108
88	ELO	2025-03-23	90
88	Massey	2025-03-23	237
88	USAU	2025-03-23	252
88	SWCI	2025-03-29	73
88	ELO	2025-03-29	100
88	Massey	2025-03-29	197
88	USAU	2025-03-29	209
88	SWCI	2025-03-30	68
88	ELO	2025-03-30	100
88	Massey	2025-03-30	196
88	USAU	2025-03-30	208
89	SWCI	2025-01-26	129
89	ELO	2025-01-26	97
89	Massey	2025-01-26	143
89	USAU	2025-01-26	96
89	SWCI	2025-02-02	177
89	ELO	2025-02-02	102
89	Massey	2025-02-02	339
89	USAU	2025-02-02	119
89	SWCI	2025-02-08	207
89	ELO	2025-02-08	121
89	Massey	2025-02-08	376
89	USAU	2025-02-08	127
89	SWCI	2025-02-09	207
89	ELO	2025-02-09	118
89	Massey	2025-02-09	82
89	USAU	2025-02-09	125
89	SWCI	2025-02-12	207
89	ELO	2025-02-12	126
89	Massey	2025-02-12	339
89	USAU	2025-02-12	125
89	SWCI	2025-02-16	224
89	ELO	2025-02-16	126
89	Massey	2025-02-16	394
89	USAU	2025-02-16	120
89	SWCI	2025-02-17	224
89	ELO	2025-02-17	131
89	Massey	2025-02-17	272
89	USAU	2025-02-17	118
89	SWCI	2025-02-22	255
89	ELO	2025-02-22	130
89	Massey	2025-02-22	342
89	USAU	2025-02-22	124
89	SWCI	2025-02-23	255
89	ELO	2025-02-23	128
89	Massey	2025-02-23	353
89	USAU	2025-02-23	126
89	SWCI	2025-03-02	321
89	ELO	2025-03-02	143
89	Massey	2025-03-02	289
89	USAU	2025-03-02	141
89	SWCI	2025-03-08	113
89	ELO	2025-03-08	161
89	Massey	2025-03-08	166
89	USAU	2025-03-08	265
89	SWCI	2025-03-09	41
89	ELO	2025-03-09	36
89	Massey	2025-03-09	139
89	USAU	2025-03-09	225
89	SWCI	2025-03-15	47
89	ELO	2025-03-15	36
89	Massey	2025-03-15	227
89	USAU	2025-03-15	231
89	SWCI	2025-03-16	48
89	ELO	2025-03-16	38
89	Massey	2025-03-16	170
89	USAU	2025-03-16	224
89	SWCI	2025-03-23	82
89	ELO	2025-03-23	43
89	Massey	2025-03-23	206
89	USAU	2025-03-23	212
89	SWCI	2025-03-29	104
89	ELO	2025-03-29	37
89	Massey	2025-03-29	173
89	USAU	2025-03-29	169
89	SWCI	2025-03-30	119
89	ELO	2025-03-30	38
89	Massey	2025-03-30	151
89	USAU	2025-03-30	144
90	SWCI	2025-01-26	130
90	ELO	2025-01-26	98
90	Massey	2025-01-26	214
90	USAU	2025-01-26	97
90	SWCI	2025-02-02	178
90	ELO	2025-02-02	103
90	Massey	2025-02-02	20
90	USAU	2025-02-02	120
90	SWCI	2025-02-08	208
90	ELO	2025-02-08	122
90	Massey	2025-02-08	391
90	USAU	2025-02-08	128
90	SWCI	2025-02-09	208
90	ELO	2025-02-09	119
90	Massey	2025-02-09	282
90	USAU	2025-02-09	126
90	SWCI	2025-02-12	208
90	ELO	2025-02-12	127
90	Massey	2025-02-12	296
90	USAU	2025-02-12	126
90	SWCI	2025-02-16	225
90	ELO	2025-02-16	127
90	Massey	2025-02-16	309
90	USAU	2025-02-16	121
90	SWCI	2025-02-17	225
90	ELO	2025-02-17	132
90	Massey	2025-02-17	4
90	USAU	2025-02-17	119
90	SWCI	2025-02-22	256
90	ELO	2025-02-22	131
90	Massey	2025-02-22	345
90	USAU	2025-02-22	125
90	SWCI	2025-02-23	256
90	ELO	2025-02-23	129
90	Massey	2025-02-23	141
90	USAU	2025-02-23	127
90	SWCI	2025-03-02	322
90	ELO	2025-03-02	144
90	Massey	2025-03-02	131
90	USAU	2025-03-02	142
90	SWCI	2025-03-08	325
90	ELO	2025-03-08	162
90	Massey	2025-03-08	275
90	USAU	2025-03-08	139
90	SWCI	2025-03-09	329
90	ELO	2025-03-09	161
90	Massey	2025-03-09	284
90	USAU	2025-03-09	141
90	SWCI	2025-03-15	353
90	ELO	2025-03-15	163
90	Massey	2025-03-15	15
90	USAU	2025-03-15	145
90	SWCI	2025-03-16	353
90	ELO	2025-03-16	163
90	Massey	2025-03-16	236
90	USAU	2025-03-16	147
90	SWCI	2025-03-23	372
90	ELO	2025-03-23	168
90	Massey	2025-03-23	26
90	USAU	2025-03-23	148
90	SWCI	2025-03-29	377
90	ELO	2025-03-29	182
90	Massey	2025-03-29	370
90	USAU	2025-03-29	375
90	SWCI	2025-03-30	346
90	ELO	2025-03-30	183
90	Massey	2025-03-30	373
90	USAU	2025-03-30	365
91	SWCI	2025-01-26	131
91	ELO	2025-01-26	99
91	Massey	2025-01-26	320
91	USAU	2025-01-26	98
91	SWCI	2025-02-02	179
91	ELO	2025-02-02	104
91	Massey	2025-02-02	75
91	USAU	2025-02-02	121
91	SWCI	2025-02-08	209
91	ELO	2025-02-08	123
91	Massey	2025-02-08	18
91	USAU	2025-02-08	129
91	SWCI	2025-02-09	209
91	ELO	2025-02-09	120
91	Massey	2025-02-09	20
91	USAU	2025-02-09	127
91	SWCI	2025-02-12	209
91	ELO	2025-02-12	128
91	Massey	2025-02-12	102
91	USAU	2025-02-12	127
91	SWCI	2025-02-16	226
91	ELO	2025-02-16	128
91	Massey	2025-02-16	368
91	USAU	2025-02-16	122
91	SWCI	2025-02-17	226
91	ELO	2025-02-17	133
91	Massey	2025-02-17	393
91	USAU	2025-02-17	120
91	SWCI	2025-02-22	257
91	ELO	2025-02-22	132
91	Massey	2025-02-22	130
91	USAU	2025-02-22	126
91	SWCI	2025-02-23	257
91	ELO	2025-02-23	130
91	Massey	2025-02-23	349
91	USAU	2025-02-23	128
91	SWCI	2025-03-02	323
91	ELO	2025-03-02	145
91	Massey	2025-03-02	271
91	USAU	2025-03-02	143
91	SWCI	2025-03-08	326
91	ELO	2025-03-08	163
91	Massey	2025-03-08	251
91	USAU	2025-03-08	140
91	SWCI	2025-03-09	330
91	ELO	2025-03-09	162
91	Massey	2025-03-09	296
91	USAU	2025-03-09	142
91	SWCI	2025-03-15	354
91	ELO	2025-03-15	164
91	Massey	2025-03-15	52
91	USAU	2025-03-15	146
91	SWCI	2025-03-16	354
91	ELO	2025-03-16	164
91	Massey	2025-03-16	330
91	USAU	2025-03-16	148
91	SWCI	2025-03-23	373
91	ELO	2025-03-23	169
91	Massey	2025-03-23	18
91	USAU	2025-03-23	149
91	SWCI	2025-03-29	310
91	ELO	2025-03-29	183
91	Massey	2025-03-29	308
91	USAU	2025-03-29	296
91	SWCI	2025-03-30	363
91	ELO	2025-03-30	184
91	Massey	2025-03-30	352
91	USAU	2025-03-30	346
92	SWCI	2025-01-26	132
92	ELO	2025-01-26	100
92	Massey	2025-01-26	324
92	USAU	2025-01-26	99
92	SWCI	2025-02-02	180
92	ELO	2025-02-02	105
92	Massey	2025-02-02	386
92	USAU	2025-02-02	122
92	SWCI	2025-02-08	210
92	ELO	2025-02-08	124
92	Massey	2025-02-08	350
92	USAU	2025-02-08	130
92	SWCI	2025-02-09	210
92	ELO	2025-02-09	121
92	Massey	2025-02-09	351
92	USAU	2025-02-09	128
92	SWCI	2025-02-12	210
92	ELO	2025-02-12	129
92	Massey	2025-02-12	18
92	USAU	2025-02-12	128
92	SWCI	2025-02-16	227
92	ELO	2025-02-16	129
92	Massey	2025-02-16	5
92	USAU	2025-02-16	123
92	SWCI	2025-02-17	227
92	ELO	2025-02-17	134
92	Massey	2025-02-17	323
92	USAU	2025-02-17	121
92	SWCI	2025-02-22	258
92	ELO	2025-02-22	133
92	Massey	2025-02-22	381
92	USAU	2025-02-22	127
92	SWCI	2025-02-23	258
92	ELO	2025-02-23	131
92	Massey	2025-02-23	387
92	USAU	2025-02-23	129
92	SWCI	2025-03-02	324
92	ELO	2025-03-02	146
92	Massey	2025-03-02	180
92	USAU	2025-03-02	144
92	SWCI	2025-03-08	327
92	ELO	2025-03-08	164
92	Massey	2025-03-08	287
92	USAU	2025-03-08	141
92	SWCI	2025-03-09	331
92	ELO	2025-03-09	163
92	Massey	2025-03-09	379
92	USAU	2025-03-09	143
92	SWCI	2025-03-15	355
92	ELO	2025-03-15	165
92	Massey	2025-03-15	7
92	USAU	2025-03-15	147
92	SWCI	2025-03-16	355
92	ELO	2025-03-16	165
92	Massey	2025-03-16	317
92	USAU	2025-03-16	149
92	SWCI	2025-03-23	374
92	ELO	2025-03-23	170
92	Massey	2025-03-23	2
92	USAU	2025-03-23	150
92	SWCI	2025-03-29	349
92	ELO	2025-03-29	184
92	Massey	2025-03-29	320
92	USAU	2025-03-29	335
92	SWCI	2025-03-30	270
92	ELO	2025-03-30	185
92	Massey	2025-03-30	316
92	USAU	2025-03-30	319
93	SWCI	2025-01-26	133
93	ELO	2025-01-26	101
93	Massey	2025-01-26	321
93	USAU	2025-01-26	100
93	SWCI	2025-02-02	181
93	ELO	2025-02-02	106
93	Massey	2025-02-02	299
93	USAU	2025-02-02	123
93	SWCI	2025-02-08	211
93	ELO	2025-02-08	125
93	Massey	2025-02-08	334
93	USAU	2025-02-08	131
93	SWCI	2025-02-09	211
93	ELO	2025-02-09	122
93	Massey	2025-02-09	342
93	USAU	2025-02-09	129
93	SWCI	2025-02-12	211
93	ELO	2025-02-12	130
93	Massey	2025-02-12	388
93	USAU	2025-02-12	129
93	SWCI	2025-02-16	228
93	ELO	2025-02-16	130
93	Massey	2025-02-16	30
93	USAU	2025-02-16	124
93	SWCI	2025-02-17	228
93	ELO	2025-02-17	135
93	Massey	2025-02-17	368
93	USAU	2025-02-17	122
93	SWCI	2025-02-22	259
93	ELO	2025-02-22	134
93	Massey	2025-02-22	133
93	USAU	2025-02-22	128
93	SWCI	2025-02-23	259
93	ELO	2025-02-23	132
93	Massey	2025-02-23	94
93	USAU	2025-02-23	130
93	SWCI	2025-03-02	325
93	ELO	2025-03-02	147
93	Massey	2025-03-02	355
93	USAU	2025-03-02	145
93	SWCI	2025-03-08	328
93	ELO	2025-03-08	165
93	Massey	2025-03-08	380
93	USAU	2025-03-08	142
93	SWCI	2025-03-09	332
93	ELO	2025-03-09	164
93	Massey	2025-03-09	381
93	USAU	2025-03-09	144
93	SWCI	2025-03-15	356
93	ELO	2025-03-15	166
93	Massey	2025-03-15	38
93	USAU	2025-03-15	148
93	SWCI	2025-03-16	356
93	ELO	2025-03-16	166
93	Massey	2025-03-16	326
93	USAU	2025-03-16	150
93	SWCI	2025-03-23	317
93	ELO	2025-03-23	171
93	Massey	2025-03-23	346
93	USAU	2025-03-23	320
93	SWCI	2025-03-29	263
93	ELO	2025-03-29	326
93	Massey	2025-03-29	303
93	USAU	2025-03-29	287
93	SWCI	2025-03-30	273
93	ELO	2025-03-30	326
93	Massey	2025-03-30	300
93	USAU	2025-03-30	290
94	SWCI	2025-01-26	134
94	ELO	2025-01-26	102
94	Massey	2025-01-26	322
94	USAU	2025-01-26	101
94	SWCI	2025-02-02	182
94	ELO	2025-02-02	107
94	Massey	2025-02-02	62
94	USAU	2025-02-02	124
94	SWCI	2025-02-08	212
94	ELO	2025-02-08	126
94	Massey	2025-02-08	320
94	USAU	2025-02-08	132
94	SWCI	2025-02-09	212
94	ELO	2025-02-09	123
94	Massey	2025-02-09	275
94	USAU	2025-02-09	130
94	SWCI	2025-02-12	212
94	ELO	2025-02-12	131
94	Massey	2025-02-12	2
94	USAU	2025-02-12	130
94	SWCI	2025-02-16	229
94	ELO	2025-02-16	131
94	Massey	2025-02-16	391
94	USAU	2025-02-16	125
94	SWCI	2025-02-17	229
94	ELO	2025-02-17	136
94	Massey	2025-02-17	292
94	USAU	2025-02-17	123
94	SWCI	2025-02-22	260
94	ELO	2025-02-22	135
94	Massey	2025-02-22	111
94	USAU	2025-02-22	129
94	SWCI	2025-02-23	260
94	ELO	2025-02-23	133
94	Massey	2025-02-23	42
94	USAU	2025-02-23	131
94	SWCI	2025-03-02	242
94	ELO	2025-03-02	148
94	Massey	2025-03-02	150
94	USAU	2025-03-02	234
94	SWCI	2025-03-08	249
94	ELO	2025-03-08	271
94	Massey	2025-03-08	137
94	USAU	2025-03-08	228
94	SWCI	2025-03-09	252
94	ELO	2025-03-09	270
94	Massey	2025-03-09	138
94	USAU	2025-03-09	226
94	SWCI	2025-03-15	268
94	ELO	2025-03-15	264
94	Massey	2025-03-15	214
94	USAU	2025-03-15	205
94	SWCI	2025-03-16	268
94	ELO	2025-03-16	261
94	Massey	2025-03-16	154
94	USAU	2025-03-16	205
94	SWCI	2025-03-23	188
94	ELO	2025-03-23	248
94	Massey	2025-03-23	179
94	USAU	2025-03-23	196
94	SWCI	2025-03-29	135
94	ELO	2025-03-29	119
94	Massey	2025-03-29	152
94	USAU	2025-03-29	173
94	SWCI	2025-03-30	105
94	ELO	2025-03-30	119
94	Massey	2025-03-30	152
94	USAU	2025-03-30	167
95	SWCI	2025-01-26	135
95	ELO	2025-01-26	103
95	Massey	2025-01-26	323
95	USAU	2025-01-26	102
95	SWCI	2025-02-02	183
95	ELO	2025-02-02	108
95	Massey	2025-02-02	59
95	USAU	2025-02-02	125
95	SWCI	2025-02-08	213
95	ELO	2025-02-08	127
95	Massey	2025-02-08	79
95	USAU	2025-02-08	133
95	SWCI	2025-02-09	213
95	ELO	2025-02-09	124
95	Massey	2025-02-09	18
95	USAU	2025-02-09	131
95	SWCI	2025-02-12	213
95	ELO	2025-02-12	132
95	Massey	2025-02-12	61
95	USAU	2025-02-12	131
95	SWCI	2025-02-16	230
95	ELO	2025-02-16	132
95	Massey	2025-02-16	6
95	USAU	2025-02-16	126
95	SWCI	2025-02-17	230
95	ELO	2025-02-17	137
95	Massey	2025-02-17	324
95	USAU	2025-02-17	124
95	SWCI	2025-02-22	261
95	ELO	2025-02-22	136
95	Massey	2025-02-22	24
95	USAU	2025-02-22	130
95	SWCI	2025-02-23	261
95	ELO	2025-02-23	134
95	Massey	2025-02-23	23
95	USAU	2025-02-23	132
95	SWCI	2025-03-02	326
95	ELO	2025-03-02	149
95	Massey	2025-03-02	345
95	USAU	2025-03-02	146
95	SWCI	2025-03-08	329
95	ELO	2025-03-08	166
95	Massey	2025-03-08	270
95	USAU	2025-03-08	143
95	SWCI	2025-03-09	170
95	ELO	2025-03-09	165
95	Massey	2025-03-09	235
95	USAU	2025-03-09	316
95	SWCI	2025-03-15	197
95	ELO	2025-03-15	244
95	Massey	2025-03-15	325
95	USAU	2025-03-15	327
95	SWCI	2025-03-16	193
95	ELO	2025-03-16	240
95	Massey	2025-03-16	288
95	USAU	2025-03-16	324
95	SWCI	2025-03-23	176
95	ELO	2025-03-23	229
95	Massey	2025-03-23	302
95	USAU	2025-03-23	304
95	SWCI	2025-03-29	184
95	ELO	2025-03-29	149
95	Massey	2025-03-29	298
95	USAU	2025-03-29	304
95	SWCI	2025-03-30	191
95	ELO	2025-03-30	152
95	Massey	2025-03-30	303
95	USAU	2025-03-30	305
96	SWCI	2025-01-26	136
96	ELO	2025-01-26	104
96	Massey	2025-01-26	326
96	USAU	2025-01-26	103
96	SWCI	2025-02-02	184
96	ELO	2025-02-02	109
96	Massey	2025-02-02	221
96	USAU	2025-02-02	126
96	SWCI	2025-02-08	214
96	ELO	2025-02-08	128
96	Massey	2025-02-08	387
96	USAU	2025-02-08	134
96	SWCI	2025-02-09	214
96	ELO	2025-02-09	125
96	Massey	2025-02-09	309
96	USAU	2025-02-09	132
96	SWCI	2025-02-12	214
96	ELO	2025-02-12	133
96	Massey	2025-02-12	391
96	USAU	2025-02-12	132
96	SWCI	2025-02-16	231
96	ELO	2025-02-16	133
96	Massey	2025-02-16	387
96	USAU	2025-02-16	127
96	SWCI	2025-02-17	231
96	ELO	2025-02-17	138
96	Massey	2025-02-17	142
96	USAU	2025-02-17	125
96	SWCI	2025-02-22	262
96	ELO	2025-02-22	137
96	Massey	2025-02-22	6
96	USAU	2025-02-22	131
96	SWCI	2025-02-23	262
96	ELO	2025-02-23	135
96	Massey	2025-02-23	346
96	USAU	2025-02-23	133
96	SWCI	2025-03-02	327
96	ELO	2025-03-02	150
96	Massey	2025-03-02	198
96	USAU	2025-03-02	147
96	SWCI	2025-03-08	330
96	ELO	2025-03-08	167
96	Massey	2025-03-08	300
96	USAU	2025-03-08	144
96	SWCI	2025-03-09	333
96	ELO	2025-03-09	166
96	Massey	2025-03-09	394
96	USAU	2025-03-09	145
96	SWCI	2025-03-15	357
96	ELO	2025-03-15	167
96	Massey	2025-03-15	16
96	USAU	2025-03-15	149
96	SWCI	2025-03-16	357
96	ELO	2025-03-16	167
96	Massey	2025-03-16	334
96	USAU	2025-03-16	151
96	SWCI	2025-03-23	375
96	ELO	2025-03-23	172
96	Massey	2025-03-23	19
96	USAU	2025-03-23	151
96	SWCI	2025-03-29	389
96	ELO	2025-03-29	185
96	Massey	2025-03-29	388
96	USAU	2025-03-29	388
96	SWCI	2025-03-30	379
96	ELO	2025-03-30	186
96	Massey	2025-03-30	390
96	USAU	2025-03-30	384
97	SWCI	2025-01-26	137
97	ELO	2025-01-26	105
97	Massey	2025-01-26	319
97	USAU	2025-01-26	104
97	SWCI	2025-02-02	185
97	ELO	2025-02-02	110
97	Massey	2025-02-02	381
97	USAU	2025-02-02	127
97	SWCI	2025-02-08	215
97	ELO	2025-02-08	129
97	Massey	2025-02-08	373
97	USAU	2025-02-08	135
97	SWCI	2025-02-09	215
97	ELO	2025-02-09	126
97	Massey	2025-02-09	283
97	USAU	2025-02-09	133
97	SWCI	2025-02-12	215
97	ELO	2025-02-12	134
97	Massey	2025-02-12	38
97	USAU	2025-02-12	133
97	SWCI	2025-02-16	232
97	ELO	2025-02-16	134
97	Massey	2025-02-16	390
97	USAU	2025-02-16	128
97	SWCI	2025-02-17	232
97	ELO	2025-02-17	139
97	Massey	2025-02-17	39
97	USAU	2025-02-17	126
97	SWCI	2025-02-22	263
97	ELO	2025-02-22	138
97	Massey	2025-02-22	391
97	USAU	2025-02-22	132
97	SWCI	2025-02-23	263
97	ELO	2025-02-23	136
97	Massey	2025-02-23	391
97	USAU	2025-02-23	134
97	SWCI	2025-03-02	328
97	ELO	2025-03-02	151
97	Massey	2025-03-02	151
97	USAU	2025-03-02	148
97	SWCI	2025-03-08	331
97	ELO	2025-03-08	168
97	Massey	2025-03-08	313
97	USAU	2025-03-08	145
97	SWCI	2025-03-09	334
97	ELO	2025-03-09	167
97	Massey	2025-03-09	344
97	USAU	2025-03-09	146
97	SWCI	2025-03-15	184
97	ELO	2025-03-15	168
97	Massey	2025-03-15	301
97	USAU	2025-03-15	289
97	SWCI	2025-03-16	226
97	ELO	2025-03-16	168
97	Massey	2025-03-16	259
97	USAU	2025-03-16	298
97	SWCI	2025-03-23	236
97	ELO	2025-03-23	225
97	Massey	2025-03-23	283
97	USAU	2025-03-23	275
97	SWCI	2025-03-29	183
97	ELO	2025-03-29	221
97	Massey	2025-03-29	243
97	USAU	2025-03-29	260
97	SWCI	2025-03-30	120
97	ELO	2025-03-30	221
97	Massey	2025-03-30	218
97	USAU	2025-03-30	245
98	SWCI	2025-01-26	138
98	ELO	2025-01-26	106
98	Massey	2025-01-26	265
98	USAU	2025-01-26	105
98	SWCI	2025-02-02	113
98	ELO	2025-02-02	111
98	Massey	2025-02-02	91
98	USAU	2025-02-02	375
98	SWCI	2025-02-08	150
98	ELO	2025-02-08	373
98	Massey	2025-02-08	321
98	USAU	2025-02-08	365
98	SWCI	2025-02-09	148
98	ELO	2025-02-09	371
98	Massey	2025-02-09	336
98	USAU	2025-02-09	357
98	SWCI	2025-02-12	148
98	ELO	2025-02-12	364
98	Massey	2025-02-12	300
98	USAU	2025-02-12	357
98	SWCI	2025-02-16	165
98	ELO	2025-02-16	364
98	Massey	2025-02-16	313
98	USAU	2025-02-16	341
98	SWCI	2025-02-17	166
98	ELO	2025-02-17	355
98	Massey	2025-02-17	340
98	USAU	2025-02-17	339
98	SWCI	2025-02-22	214
98	ELO	2025-02-22	353
98	Massey	2025-02-22	372
98	USAU	2025-02-22	388
98	SWCI	2025-02-23	211
98	ELO	2025-02-23	351
98	Massey	2025-02-23	372
98	USAU	2025-02-23	389
98	SWCI	2025-03-02	283
98	ELO	2025-03-02	343
98	Massey	2025-03-02	369
98	USAU	2025-03-02	378
98	SWCI	2025-03-08	290
98	ELO	2025-03-08	325
98	Massey	2025-03-08	335
98	USAU	2025-03-08	379
98	SWCI	2025-03-09	293
98	ELO	2025-03-09	323
98	Massey	2025-03-09	353
98	USAU	2025-03-09	377
98	SWCI	2025-03-15	326
98	ELO	2025-03-15	323
98	Massey	2025-03-15	375
98	USAU	2025-03-15	376
98	SWCI	2025-03-16	323
98	ELO	2025-03-16	320
98	Massey	2025-03-16	372
98	USAU	2025-03-16	376
98	SWCI	2025-03-23	337
98	ELO	2025-03-23	313
98	Massey	2025-03-23	366
98	USAU	2025-03-23	368
98	SWCI	2025-03-29	327
98	ELO	2025-03-29	304
98	Massey	2025-03-29	353
98	USAU	2025-03-29	348
98	SWCI	2025-03-30	335
98	ELO	2025-03-30	303
98	Massey	2025-03-30	356
98	USAU	2025-03-30	347
99	SWCI	2025-01-26	139
99	ELO	2025-01-26	107
99	Massey	2025-01-26	231
99	USAU	2025-01-26	106
99	SWCI	2025-02-02	186
99	ELO	2025-02-02	112
99	Massey	2025-02-02	7
99	USAU	2025-02-02	128
99	SWCI	2025-02-08	216
99	ELO	2025-02-08	130
99	Massey	2025-02-08	294
99	USAU	2025-02-08	136
99	SWCI	2025-02-09	216
99	ELO	2025-02-09	127
99	Massey	2025-02-09	368
99	USAU	2025-02-09	134
99	SWCI	2025-02-12	216
99	ELO	2025-02-12	135
99	Massey	2025-02-12	103
99	USAU	2025-02-12	134
99	SWCI	2025-02-16	233
99	ELO	2025-02-16	135
99	Massey	2025-02-16	77
99	USAU	2025-02-16	129
99	SWCI	2025-02-17	233
99	ELO	2025-02-17	140
99	Massey	2025-02-17	3
99	USAU	2025-02-17	127
99	SWCI	2025-02-22	264
99	ELO	2025-02-22	139
99	Massey	2025-02-22	19
99	USAU	2025-02-22	133
99	SWCI	2025-02-23	264
99	ELO	2025-02-23	137
99	Massey	2025-02-23	374
99	USAU	2025-02-23	135
99	SWCI	2025-03-02	329
99	ELO	2025-03-02	152
99	Massey	2025-03-02	186
99	USAU	2025-03-02	149
99	SWCI	2025-03-08	332
99	ELO	2025-03-08	169
99	Massey	2025-03-08	376
99	USAU	2025-03-08	146
99	SWCI	2025-03-09	335
99	ELO	2025-03-09	168
99	Massey	2025-03-09	241
99	USAU	2025-03-09	147
99	SWCI	2025-03-15	157
99	ELO	2025-03-15	169
99	Massey	2025-03-15	298
99	USAU	2025-03-15	292
99	SWCI	2025-03-16	248
99	ELO	2025-03-16	169
99	Massey	2025-03-16	280
99	USAU	2025-03-16	311
99	SWCI	2025-03-23	263
99	ELO	2025-03-23	334
99	Massey	2025-03-23	295
99	USAU	2025-03-23	294
99	SWCI	2025-03-29	192
99	ELO	2025-03-29	330
99	Massey	2025-03-29	251
99	USAU	2025-03-29	250
99	SWCI	2025-03-30	131
99	ELO	2025-03-30	330
99	Massey	2025-03-30	224
99	USAU	2025-03-30	224
100	SWCI	2025-01-26	140
100	ELO	2025-01-26	108
100	Massey	2025-01-26	230
100	USAU	2025-01-26	107
100	SWCI	2025-02-02	187
100	ELO	2025-02-02	113
100	Massey	2025-02-02	65
100	USAU	2025-02-02	129
100	SWCI	2025-02-08	217
100	ELO	2025-02-08	131
100	Massey	2025-02-08	131
100	USAU	2025-02-08	137
100	SWCI	2025-02-09	217
100	ELO	2025-02-09	128
100	Massey	2025-02-09	40
100	USAU	2025-02-09	135
100	SWCI	2025-02-12	217
100	ELO	2025-02-12	136
100	Massey	2025-02-12	115
100	USAU	2025-02-12	135
100	SWCI	2025-02-16	234
100	ELO	2025-02-16	136
100	Massey	2025-02-16	386
100	USAU	2025-02-16	130
100	SWCI	2025-02-17	234
100	ELO	2025-02-17	141
100	Massey	2025-02-17	99
100	USAU	2025-02-17	128
100	SWCI	2025-02-22	195
100	ELO	2025-02-22	140
100	Massey	2025-02-22	377
100	USAU	2025-02-22	377
100	SWCI	2025-02-23	218
100	ELO	2025-02-23	138
100	Massey	2025-02-23	382
100	USAU	2025-02-23	393
100	SWCI	2025-03-02	291
100	ELO	2025-03-02	390
100	Massey	2025-03-02	377
100	USAU	2025-03-02	388
100	SWCI	2025-03-08	297
100	ELO	2025-03-08	387
100	Massey	2025-03-08	365
100	USAU	2025-03-08	389
100	SWCI	2025-03-09	301
100	ELO	2025-03-09	386
100	Massey	2025-03-09	371
100	USAU	2025-03-09	388
100	SWCI	2025-03-15	322
100	ELO	2025-03-15	385
100	Massey	2025-03-15	371
100	USAU	2025-03-15	372
100	SWCI	2025-03-16	326
100	ELO	2025-03-16	385
100	Massey	2025-03-16	367
100	USAU	2025-03-16	371
100	SWCI	2025-03-23	340
100	ELO	2025-03-23	385
100	Massey	2025-03-23	364
100	USAU	2025-03-23	364
100	SWCI	2025-03-29	365
100	ELO	2025-03-29	382
100	Massey	2025-03-29	366
100	USAU	2025-03-29	373
100	SWCI	2025-03-30	354
100	ELO	2025-03-30	381
100	Massey	2025-03-30	361
100	USAU	2025-03-30	364
101	SWCI	2025-01-26	141
101	ELO	2025-01-26	109
101	Massey	2025-01-26	266
101	USAU	2025-01-26	108
101	SWCI	2025-02-02	120
101	ELO	2025-02-02	114
101	Massey	2025-02-02	342
101	USAU	2025-02-02	385
101	SWCI	2025-02-08	164
101	ELO	2025-02-08	394
101	Massey	2025-02-08	365
101	USAU	2025-02-08	376
101	SWCI	2025-02-09	160
101	ELO	2025-02-09	394
101	Massey	2025-02-09	372
101	USAU	2025-02-09	374
101	SWCI	2025-02-12	160
101	ELO	2025-02-12	393
101	Massey	2025-02-12	348
101	USAU	2025-02-12	375
101	SWCI	2025-02-16	175
101	ELO	2025-02-16	393
101	Massey	2025-02-16	358
101	USAU	2025-02-16	367
101	SWCI	2025-02-17	174
101	ELO	2025-02-17	392
101	Massey	2025-02-17	372
101	USAU	2025-02-17	365
101	SWCI	2025-02-22	233
101	ELO	2025-02-22	393
101	Massey	2025-02-22	389
101	USAU	2025-02-22	397
101	SWCI	2025-02-23	233
101	ELO	2025-02-23	392
101	Massey	2025-02-23	392
101	USAU	2025-02-23	396
101	SWCI	2025-03-02	310
101	ELO	2025-03-02	389
101	Massey	2025-03-02	396
101	USAU	2025-03-02	391
101	SWCI	2025-03-08	318
101	ELO	2025-03-08	384
101	Massey	2025-03-08	392
101	USAU	2025-03-08	392
101	SWCI	2025-03-09	322
101	ELO	2025-03-09	383
101	Massey	2025-03-09	395
101	USAU	2025-03-09	391
101	SWCI	2025-03-15	348
101	ELO	2025-03-15	382
101	Massey	2025-03-15	396
101	USAU	2025-03-15	392
101	SWCI	2025-03-16	351
101	ELO	2025-03-16	382
101	Massey	2025-03-16	395
101	USAU	2025-03-16	393
101	SWCI	2025-03-23	371
101	ELO	2025-03-23	381
101	Massey	2025-03-23	392
101	USAU	2025-03-23	388
101	SWCI	2025-03-29	395
101	ELO	2025-03-29	378
101	Massey	2025-03-29	384
101	USAU	2025-03-29	377
101	SWCI	2025-03-30	396
101	ELO	2025-03-30	378
101	Massey	2025-03-30	386
101	USAU	2025-03-30	382
102	SWCI	2025-01-26	142
102	ELO	2025-01-26	110
102	Massey	2025-01-26	95
102	USAU	2025-01-26	109
102	SWCI	2025-02-02	188
102	ELO	2025-02-02	115
102	Massey	2025-02-02	84
102	USAU	2025-02-02	130
102	SWCI	2025-02-08	218
102	ELO	2025-02-08	132
102	Massey	2025-02-08	371
102	USAU	2025-02-08	138
102	SWCI	2025-02-09	218
102	ELO	2025-02-09	129
102	Massey	2025-02-09	318
102	USAU	2025-02-09	136
102	SWCI	2025-02-12	218
102	ELO	2025-02-12	137
102	Massey	2025-02-12	127
102	USAU	2025-02-12	136
102	SWCI	2025-02-16	235
102	ELO	2025-02-16	137
102	Massey	2025-02-16	392
102	USAU	2025-02-16	131
102	SWCI	2025-02-17	235
102	ELO	2025-02-17	142
102	Massey	2025-02-17	93
102	USAU	2025-02-17	129
102	SWCI	2025-02-22	265
102	ELO	2025-02-22	141
102	Massey	2025-02-22	360
102	USAU	2025-02-22	134
102	SWCI	2025-02-23	265
102	ELO	2025-02-23	139
102	Massey	2025-02-23	5
102	USAU	2025-02-23	136
102	SWCI	2025-03-02	330
102	ELO	2025-03-02	153
102	Massey	2025-03-02	298
102	USAU	2025-03-02	150
102	SWCI	2025-03-08	333
102	ELO	2025-03-08	170
102	Massey	2025-03-08	394
102	USAU	2025-03-08	147
102	SWCI	2025-03-09	336
102	ELO	2025-03-09	169
102	Massey	2025-03-09	359
102	USAU	2025-03-09	148
102	SWCI	2025-03-15	317
102	ELO	2025-03-15	170
102	Massey	2025-03-15	331
102	USAU	2025-03-15	330
102	SWCI	2025-03-16	321
102	ELO	2025-03-16	170
102	Massey	2025-03-16	332
102	USAU	2025-03-16	341
102	SWCI	2025-03-23	336
102	ELO	2025-03-23	354
102	Massey	2025-03-23	322
102	USAU	2025-03-23	331
102	SWCI	2025-03-29	315
102	ELO	2025-03-29	348
102	Massey	2025-03-29	325
102	USAU	2025-03-29	325
102	SWCI	2025-03-30	275
102	ELO	2025-03-30	346
102	Massey	2025-03-30	317
102	USAU	2025-03-30	321
103	SWCI	2025-01-26	143
103	ELO	2025-01-26	111
103	Massey	2025-01-26	96
103	USAU	2025-01-26	110
103	SWCI	2025-02-02	105
103	ELO	2025-02-02	116
103	Massey	2025-02-02	362
103	USAU	2025-02-02	371
103	SWCI	2025-02-08	139
103	ELO	2025-02-08	363
103	Massey	2025-02-08	328
103	USAU	2025-02-08	335
103	SWCI	2025-02-09	141
103	ELO	2025-02-09	361
103	Massey	2025-02-09	324
103	USAU	2025-02-09	335
103	SWCI	2025-02-12	142
103	ELO	2025-02-12	353
103	Massey	2025-02-12	292
103	USAU	2025-02-12	335
103	SWCI	2025-02-16	151
103	ELO	2025-02-16	353
103	Massey	2025-02-16	232
103	USAU	2025-02-16	308
103	SWCI	2025-02-17	150
103	ELO	2025-02-17	344
103	Massey	2025-02-17	129
103	USAU	2025-02-17	311
103	SWCI	2025-02-22	183
103	ELO	2025-02-22	340
103	Massey	2025-02-22	135
103	USAU	2025-02-22	270
103	SWCI	2025-02-23	157
103	ELO	2025-02-23	340
103	Massey	2025-02-23	113
103	USAU	2025-02-23	95
103	SWCI	2025-03-02	209
103	ELO	2025-03-02	322
103	Massey	2025-03-02	91
103	USAU	2025-03-02	92
103	SWCI	2025-03-08	213
103	ELO	2025-03-08	299
103	Massey	2025-03-08	88
103	USAU	2025-03-08	94
103	SWCI	2025-03-09	216
103	ELO	2025-03-09	298
103	Massey	2025-03-09	87
103	USAU	2025-03-09	92
103	SWCI	2025-03-15	227
103	ELO	2025-03-15	293
103	Massey	2025-03-15	148
103	USAU	2025-03-15	95
103	SWCI	2025-03-16	223
103	ELO	2025-03-16	291
103	Massey	2025-03-16	90
103	USAU	2025-03-16	91
103	SWCI	2025-03-23	221
103	ELO	2025-03-23	280
103	Massey	2025-03-23	109
103	USAU	2025-03-23	88
103	SWCI	2025-03-29	213
103	ELO	2025-03-29	269
103	Massey	2025-03-29	83
103	USAU	2025-03-29	86
103	SWCI	2025-03-30	217
103	ELO	2025-03-30	268
103	Massey	2025-03-30	82
103	USAU	2025-03-30	86
104	SWCI	2025-01-26	144
104	ELO	2025-01-26	112
104	Massey	2025-01-26	82
104	USAU	2025-01-26	111
104	SWCI	2025-02-02	107
104	ELO	2025-02-02	117
104	Massey	2025-02-02	349
104	USAU	2025-02-02	359
104	SWCI	2025-02-08	141
104	ELO	2025-02-08	372
104	Massey	2025-02-08	314
104	USAU	2025-02-08	326
104	SWCI	2025-02-09	142
104	ELO	2025-02-09	370
104	Massey	2025-02-09	308
104	USAU	2025-02-09	324
104	SWCI	2025-02-12	143
104	ELO	2025-02-12	363
104	Massey	2025-02-12	131
104	USAU	2025-02-12	322
104	SWCI	2025-02-16	145
104	ELO	2025-02-16	363
104	Massey	2025-02-16	108
104	USAU	2025-02-16	86
104	SWCI	2025-02-17	145
104	ELO	2025-02-17	354
104	Massey	2025-02-17	102
104	USAU	2025-02-17	292
104	SWCI	2025-02-22	187
104	ELO	2025-02-22	352
104	Massey	2025-02-22	126
104	USAU	2025-02-22	269
104	SWCI	2025-02-23	180
104	ELO	2025-02-23	350
104	Massey	2025-02-23	116
104	USAU	2025-02-23	100
104	SWCI	2025-03-02	237
104	ELO	2025-03-02	366
104	Massey	2025-03-02	93
104	USAU	2025-03-02	99
104	SWCI	2025-03-08	243
104	ELO	2025-03-08	356
104	Massey	2025-03-08	90
104	USAU	2025-03-08	101
104	SWCI	2025-03-09	248
104	ELO	2025-03-09	354
104	Massey	2025-03-09	88
104	USAU	2025-03-09	98
104	SWCI	2025-03-15	269
104	ELO	2025-03-15	354
104	Massey	2025-03-15	150
104	USAU	2025-03-15	102
104	SWCI	2025-03-16	267
104	ELO	2025-03-16	352
104	Massey	2025-03-16	92
104	USAU	2025-03-16	97
104	SWCI	2025-03-23	274
104	ELO	2025-03-23	346
104	Massey	2025-03-23	112
104	USAU	2025-03-23	92
104	SWCI	2025-03-29	237
104	ELO	2025-03-29	341
104	Massey	2025-03-29	72
104	USAU	2025-03-29	82
104	SWCI	2025-03-30	231
104	ELO	2025-03-30	340
104	Massey	2025-03-30	75
104	USAU	2025-03-30	88
105	SWCI	2025-01-26	145
105	ELO	2025-01-26	113
105	Massey	2025-01-26	64
105	USAU	2025-01-26	112
105	SWCI	2025-02-02	189
105	ELO	2025-02-02	118
105	Massey	2025-02-02	316
105	USAU	2025-02-02	131
105	SWCI	2025-02-08	10
105	ELO	2025-02-08	133
105	Massey	2025-02-08	33
105	USAU	2025-02-08	21
105	SWCI	2025-02-09	1
105	ELO	2025-02-09	130
105	Massey	2025-02-09	8
105	USAU	2025-02-09	14
105	SWCI	2025-02-12	1
105	ELO	2025-02-12	11
105	Massey	2025-02-12	12
105	USAU	2025-02-12	14
105	SWCI	2025-02-16	2
105	ELO	2025-02-16	12
105	Massey	2025-02-16	79
105	USAU	2025-02-16	58
105	SWCI	2025-02-17	3
105	ELO	2025-02-17	18
105	Massey	2025-02-17	70
105	USAU	2025-02-17	59
105	SWCI	2025-02-22	6
105	ELO	2025-02-22	17
105	Massey	2025-02-22	60
105	USAU	2025-02-22	38
105	SWCI	2025-02-23	32
105	ELO	2025-02-23	17
105	Massey	2025-02-23	78
105	USAU	2025-02-23	57
105	SWCI	2025-03-02	39
105	ELO	2025-03-02	27
105	Massey	2025-03-02	62
105	USAU	2025-03-02	54
105	SWCI	2025-03-08	36
105	ELO	2025-03-08	41
105	Massey	2025-03-08	57
105	USAU	2025-03-08	56
105	SWCI	2025-03-09	36
105	ELO	2025-03-09	42
105	Massey	2025-03-09	57
105	USAU	2025-03-09	55
105	SWCI	2025-03-15	42
105	ELO	2025-03-15	42
105	Massey	2025-03-15	114
105	USAU	2025-03-15	54
105	SWCI	2025-03-16	39
105	ELO	2025-03-16	44
105	Massey	2025-03-16	59
105	USAU	2025-03-16	54
105	SWCI	2025-03-23	33
105	ELO	2025-03-23	52
105	Massey	2025-03-23	86
105	USAU	2025-03-23	57
105	SWCI	2025-03-29	87
105	ELO	2025-03-29	60
105	Massey	2025-03-29	67
105	USAU	2025-03-29	69
105	SWCI	2025-03-30	94
105	ELO	2025-03-30	61
105	Massey	2025-03-30	67
105	USAU	2025-03-30	67
106	SWCI	2025-01-26	2
106	ELO	2025-01-26	114
106	Massey	2025-01-26	14
106	USAU	2025-01-26	3
106	SWCI	2025-02-02	5
106	ELO	2025-02-02	2
106	Massey	2025-02-02	32
106	USAU	2025-02-02	10
106	SWCI	2025-02-08	5
106	ELO	2025-02-08	2
106	Massey	2025-02-08	16
106	USAU	2025-02-08	4
106	SWCI	2025-02-09	6
106	ELO	2025-02-09	2
106	Massey	2025-02-09	77
106	USAU	2025-02-09	7
106	SWCI	2025-02-12	6
106	ELO	2025-02-12	3
106	Massey	2025-02-12	75
106	USAU	2025-02-12	7
106	SWCI	2025-02-16	30
106	ELO	2025-02-16	6
106	Massey	2025-02-16	64
106	USAU	2025-02-16	37
106	SWCI	2025-02-17	29
106	ELO	2025-02-17	11
106	Massey	2025-02-17	56
106	USAU	2025-02-17	37
106	SWCI	2025-02-22	33
106	ELO	2025-02-22	11
106	Massey	2025-02-22	51
106	USAU	2025-02-22	30
106	SWCI	2025-02-23	33
106	ELO	2025-02-23	11
106	Massey	2025-02-23	55
106	USAU	2025-02-23	38
106	SWCI	2025-03-02	43
106	ELO	2025-03-02	15
106	Massey	2025-03-02	33
106	USAU	2025-03-02	34
106	SWCI	2025-03-08	41
106	ELO	2025-03-08	22
106	Massey	2025-03-08	31
106	USAU	2025-03-08	34
106	SWCI	2025-03-09	43
106	ELO	2025-03-09	22
106	Massey	2025-03-09	31
106	USAU	2025-03-09	35
106	SWCI	2025-03-15	49
106	ELO	2025-03-15	23
106	Massey	2025-03-15	90
106	USAU	2025-03-15	37
106	SWCI	2025-03-16	49
106	ELO	2025-03-16	25
106	Massey	2025-03-16	34
106	USAU	2025-03-16	34
106	SWCI	2025-03-23	41
106	ELO	2025-03-23	30
106	Massey	2025-03-23	63
106	USAU	2025-03-23	36
106	SWCI	2025-03-29	39
106	ELO	2025-03-29	32
106	Massey	2025-03-29	43
106	USAU	2025-03-29	44
106	SWCI	2025-03-30	62
106	ELO	2025-03-30	32
106	Massey	2025-03-30	49
106	USAU	2025-03-30	54
107	SWCI	2025-01-26	20
107	ELO	2025-01-26	115
107	Massey	2025-01-26	18
107	USAU	2025-01-26	15
107	SWCI	2025-02-02	38
107	ELO	2025-02-02	16
107	Massey	2025-02-02	47
107	USAU	2025-02-02	32
107	SWCI	2025-02-08	50
107	ELO	2025-02-08	21
107	Massey	2025-02-08	25
107	USAU	2025-02-08	16
107	SWCI	2025-02-09	52
107	ELO	2025-02-09	24
107	Massey	2025-02-09	86
107	USAU	2025-02-09	23
107	SWCI	2025-02-12	52
107	ELO	2025-02-12	29
107	Massey	2025-02-12	94
107	USAU	2025-02-12	23
107	SWCI	2025-02-16	57
107	ELO	2025-02-16	30
107	Massey	2025-02-16	81
107	USAU	2025-02-16	72
107	SWCI	2025-02-17	56
107	ELO	2025-02-17	34
107	Massey	2025-02-17	72
107	USAU	2025-02-17	74
107	SWCI	2025-02-22	92
107	ELO	2025-02-22	36
107	Massey	2025-02-22	75
107	USAU	2025-02-22	65
107	SWCI	2025-02-23	80
107	ELO	2025-02-23	36
107	Massey	2025-02-23	70
107	USAU	2025-02-23	63
107	SWCI	2025-03-02	102
107	ELO	2025-03-02	46
107	Massey	2025-03-02	50
107	USAU	2025-03-02	56
107	SWCI	2025-03-08	102
107	ELO	2025-03-08	66
107	Massey	2025-03-08	45
107	USAU	2025-03-08	57
107	SWCI	2025-03-09	103
107	ELO	2025-03-09	67
107	Massey	2025-03-09	45
107	USAU	2025-03-09	57
107	SWCI	2025-03-15	160
107	ELO	2025-03-15	69
107	Massey	2025-03-15	108
107	USAU	2025-03-15	69
107	SWCI	2025-03-16	128
107	ELO	2025-03-16	72
107	Massey	2025-03-16	52
107	USAU	2025-03-16	58
107	SWCI	2025-03-23	131
107	ELO	2025-03-23	112
107	Massey	2025-03-23	83
107	USAU	2025-03-23	64
107	SWCI	2025-03-29	130
107	ELO	2025-03-29	120
107	Massey	2025-03-29	59
107	USAU	2025-03-29	65
107	SWCI	2025-03-30	139
107	ELO	2025-03-30	120
107	Massey	2025-03-30	56
107	USAU	2025-03-30	66
108	SWCI	2025-01-26	146
108	ELO	2025-01-26	116
108	Massey	2025-01-26	209
108	USAU	2025-01-26	113
108	SWCI	2025-02-02	190
108	ELO	2025-02-02	119
108	Massey	2025-02-02	356
108	USAU	2025-02-02	132
108	SWCI	2025-02-08	114
108	ELO	2025-02-08	134
108	Massey	2025-02-08	113
108	USAU	2025-02-08	85
108	SWCI	2025-02-09	92
108	ELO	2025-02-09	131
108	Massey	2025-02-09	64
108	USAU	2025-02-09	84
108	SWCI	2025-02-12	92
108	ELO	2025-02-12	328
108	Massey	2025-02-12	104
108	USAU	2025-02-12	84
108	SWCI	2025-02-16	102
108	ELO	2025-02-16	328
108	Massey	2025-02-16	312
108	USAU	2025-02-16	338
108	SWCI	2025-02-17	102
108	ELO	2025-02-17	319
108	Massey	2025-02-17	311
108	USAU	2025-02-17	340
108	SWCI	2025-02-22	167
108	ELO	2025-02-22	317
108	Massey	2025-02-22	260
108	USAU	2025-02-22	293
108	SWCI	2025-02-23	207
108	ELO	2025-02-23	317
108	Massey	2025-02-23	272
108	USAU	2025-02-23	310
108	SWCI	2025-03-02	273
108	ELO	2025-03-02	391
108	Massey	2025-03-02	193
108	USAU	2025-03-02	257
108	SWCI	2025-03-08	277
108	ELO	2025-03-08	388
108	Massey	2025-03-08	183
108	USAU	2025-03-08	256
108	SWCI	2025-03-09	281
108	ELO	2025-03-09	387
108	Massey	2025-03-09	181
108	USAU	2025-03-09	253
108	SWCI	2025-03-15	313
108	ELO	2025-03-15	390
108	Massey	2025-03-15	250
108	USAU	2025-03-15	244
108	SWCI	2025-03-16	311
108	ELO	2025-03-16	390
108	Massey	2025-03-16	193
108	USAU	2025-03-16	242
108	SWCI	2025-03-23	325
108	ELO	2025-03-23	391
108	Massey	2025-03-23	217
108	USAU	2025-03-23	217
108	SWCI	2025-03-29	343
108	ELO	2025-03-29	389
108	Massey	2025-03-29	190
108	USAU	2025-03-29	188
108	SWCI	2025-03-30	336
108	ELO	2025-03-30	387
108	Massey	2025-03-30	188
108	USAU	2025-03-30	184
109	SWCI	2025-01-26	147
109	ELO	2025-01-26	117
109	Massey	2025-01-26	211
109	USAU	2025-01-26	114
109	SWCI	2025-02-02	191
109	ELO	2025-02-02	120
109	Massey	2025-02-02	328
109	USAU	2025-02-02	133
109	SWCI	2025-02-08	115
109	ELO	2025-02-08	348
109	Massey	2025-02-08	360
109	USAU	2025-02-08	367
109	SWCI	2025-02-09	114
109	ELO	2025-02-09	345
109	Massey	2025-02-09	379
109	USAU	2025-02-09	358
109	SWCI	2025-02-12	114
109	ELO	2025-02-12	335
109	Massey	2025-02-12	374
109	USAU	2025-02-12	358
109	SWCI	2025-02-16	126
109	ELO	2025-02-16	335
109	Massey	2025-02-16	365
109	USAU	2025-02-16	379
109	SWCI	2025-02-17	126
109	ELO	2025-02-17	326
109	Massey	2025-02-17	365
109	USAU	2025-02-17	381
109	SWCI	2025-02-22	181
109	ELO	2025-02-22	324
109	Massey	2025-02-22	268
109	USAU	2025-02-22	302
109	SWCI	2025-02-23	168
109	ELO	2025-02-23	324
109	Massey	2025-02-23	186
109	USAU	2025-02-23	283
109	SWCI	2025-03-02	231
109	ELO	2025-03-02	334
109	Massey	2025-03-02	118
109	USAU	2025-03-02	120
109	SWCI	2025-03-08	235
109	ELO	2025-03-08	310
109	Massey	2025-03-08	116
109	USAU	2025-03-08	125
109	SWCI	2025-03-09	239
109	ELO	2025-03-09	309
109	Massey	2025-03-09	115
109	USAU	2025-03-09	123
109	SWCI	2025-03-15	261
109	ELO	2025-03-15	305
109	Massey	2025-03-15	185
109	USAU	2025-03-15	136
109	SWCI	2025-03-16	257
109	ELO	2025-03-16	304
109	Massey	2025-03-16	126
109	USAU	2025-03-16	132
109	SWCI	2025-03-23	216
109	ELO	2025-03-23	293
109	Massey	2025-03-23	136
109	USAU	2025-03-23	119
109	SWCI	2025-03-29	155
109	ELO	2025-03-29	237
109	Massey	2025-03-29	91
109	USAU	2025-03-29	94
109	SWCI	2025-03-30	167
109	ELO	2025-03-30	237
109	Massey	2025-03-30	94
109	USAU	2025-03-30	99
110	SWCI	2025-01-26	148
110	ELO	2025-01-26	118
110	Massey	2025-01-26	210
110	USAU	2025-01-26	115
110	SWCI	2025-02-02	192
110	ELO	2025-02-02	121
110	Massey	2025-02-02	63
110	USAU	2025-02-02	134
110	SWCI	2025-02-08	219
110	ELO	2025-02-08	135
110	Massey	2025-02-08	362
110	USAU	2025-02-08	139
110	SWCI	2025-02-09	219
110	ELO	2025-02-09	132
110	Massey	2025-02-09	319
110	USAU	2025-02-09	137
110	SWCI	2025-02-12	219
110	ELO	2025-02-12	138
110	Massey	2025-02-12	287
110	USAU	2025-02-12	137
110	SWCI	2025-02-16	236
110	ELO	2025-02-16	138
110	Massey	2025-02-16	20
110	USAU	2025-02-16	132
110	SWCI	2025-02-17	236
110	ELO	2025-02-17	143
110	Massey	2025-02-17	109
110	USAU	2025-02-17	130
110	SWCI	2025-02-22	216
110	ELO	2025-02-22	142
110	Massey	2025-02-22	263
110	USAU	2025-02-22	304
110	SWCI	2025-02-23	216
110	ELO	2025-02-23	140
110	Massey	2025-02-23	254
110	USAU	2025-02-23	300
110	SWCI	2025-03-02	290
110	ELO	2025-03-02	356
110	Massey	2025-03-02	161
110	USAU	2025-03-02	241
110	SWCI	2025-03-08	295
110	ELO	2025-03-08	341
110	Massey	2025-03-08	156
110	USAU	2025-03-08	238
110	SWCI	2025-03-09	299
110	ELO	2025-03-09	339
110	Massey	2025-03-09	158
110	USAU	2025-03-09	233
110	SWCI	2025-03-15	316
110	ELO	2025-03-15	341
110	Massey	2025-03-15	220
110	USAU	2025-03-15	216
110	SWCI	2025-03-16	314
110	ELO	2025-03-16	339
110	Massey	2025-03-16	162
110	USAU	2025-03-16	211
110	SWCI	2025-03-23	297
110	ELO	2025-03-23	329
110	Massey	2025-03-23	172
110	USAU	2025-03-23	187
110	SWCI	2025-03-29	265
110	ELO	2025-03-29	315
110	Massey	2025-03-29	115
110	USAU	2025-03-29	133
110	SWCI	2025-03-30	242
110	ELO	2025-03-30	314
110	Massey	2025-03-30	117
110	USAU	2025-03-30	128
111	SWCI	2025-01-26	149
111	ELO	2025-01-26	119
111	Massey	2025-01-26	212
111	USAU	2025-01-26	116
111	SWCI	2025-02-02	193
111	ELO	2025-02-02	122
111	Massey	2025-02-02	323
111	USAU	2025-02-02	135
111	SWCI	2025-02-08	220
111	ELO	2025-02-08	136
111	Massey	2025-02-08	354
111	USAU	2025-02-08	140
111	SWCI	2025-02-09	220
111	ELO	2025-02-09	133
111	Massey	2025-02-09	307
111	USAU	2025-02-09	138
111	SWCI	2025-02-12	220
111	ELO	2025-02-12	139
111	Massey	2025-02-12	119
111	USAU	2025-02-12	138
111	SWCI	2025-02-16	69
111	ELO	2025-02-16	139
111	Massey	2025-02-16	126
111	USAU	2025-02-16	65
111	SWCI	2025-02-17	68
111	ELO	2025-02-17	62
111	Massey	2025-02-17	73
111	USAU	2025-02-17	64
111	SWCI	2025-02-22	86
111	ELO	2025-02-22	64
111	Massey	2025-02-22	143
111	USAU	2025-02-22	81
111	SWCI	2025-02-23	85
111	ELO	2025-02-23	67
111	Massey	2025-02-23	103
111	USAU	2025-02-23	80
111	SWCI	2025-03-02	116
111	ELO	2025-03-02	81
111	Massey	2025-03-02	206
111	USAU	2025-03-02	279
111	SWCI	2025-03-08	117
111	ELO	2025-03-08	89
111	Massey	2025-03-08	190
111	USAU	2025-03-08	269
111	SWCI	2025-03-09	118
111	ELO	2025-03-09	91
111	Massey	2025-03-09	189
111	USAU	2025-03-09	268
111	SWCI	2025-03-15	125
111	ELO	2025-03-15	93
111	Massey	2025-03-15	252
111	USAU	2025-03-15	256
111	SWCI	2025-03-16	133
111	ELO	2025-03-16	95
111	Massey	2025-03-16	191
111	USAU	2025-03-16	254
111	SWCI	2025-03-23	83
111	ELO	2025-03-23	103
111	Massey	2025-03-23	163
111	USAU	2025-03-23	112
111	SWCI	2025-03-29	67
111	ELO	2025-03-29	49
111	Massey	2025-03-29	127
111	USAU	2025-03-29	106
111	SWCI	2025-03-30	55
111	ELO	2025-03-30	51
111	Massey	2025-03-30	128
111	USAU	2025-03-30	105
112	SWCI	2025-01-26	150
112	ELO	2025-01-26	120
112	Massey	2025-01-26	213
112	USAU	2025-01-26	117
112	SWCI	2025-02-02	50
112	ELO	2025-02-02	43
112	Massey	2025-02-02	81
112	USAU	2025-02-02	42
112	SWCI	2025-02-08	69
112	ELO	2025-02-08	66
112	Massey	2025-02-08	80
112	USAU	2025-02-08	52
112	SWCI	2025-02-09	69
112	ELO	2025-02-09	69
112	Massey	2025-02-09	62
112	USAU	2025-02-09	35
112	SWCI	2025-02-12	69
112	ELO	2025-02-12	80
112	Massey	2025-02-12	59
112	USAU	2025-02-12	35
112	SWCI	2025-02-16	73
112	ELO	2025-02-16	80
112	Massey	2025-02-16	72
112	USAU	2025-02-16	38
112	SWCI	2025-02-17	73
112	ELO	2025-02-17	87
112	Massey	2025-02-17	63
112	USAU	2025-02-17	38
112	SWCI	2025-02-22	77
112	ELO	2025-02-22	88
112	Massey	2025-02-22	70
112	USAU	2025-02-22	36
112	SWCI	2025-02-23	81
112	ELO	2025-02-23	92
112	Massey	2025-02-23	67
112	USAU	2025-02-23	35
112	SWCI	2025-03-02	84
112	ELO	2025-03-02	111
112	Massey	2025-03-02	56
112	USAU	2025-03-02	38
112	SWCI	2025-03-08	96
112	ELO	2025-03-08	143
112	Massey	2025-03-08	55
112	USAU	2025-03-08	47
112	SWCI	2025-03-09	144
112	ELO	2025-03-09	146
112	Massey	2025-03-09	55
112	USAU	2025-03-09	50
112	SWCI	2025-03-15	145
112	ELO	2025-03-15	263
112	Massey	2025-03-15	105
112	USAU	2025-03-15	47
112	SWCI	2025-03-16	148
112	ELO	2025-03-16	260
112	Massey	2025-03-16	51
112	USAU	2025-03-16	48
112	SWCI	2025-03-23	70
112	ELO	2025-03-23	247
112	Massey	2025-03-23	73
112	USAU	2025-03-23	43
112	SWCI	2025-03-29	70
112	ELO	2025-03-29	47
112	Massey	2025-03-29	51
112	USAU	2025-03-29	43
112	SWCI	2025-03-30	70
112	ELO	2025-03-30	49
112	Massey	2025-03-30	47
112	USAU	2025-03-30	43
113	SWCI	2025-01-26	151
113	ELO	2025-01-26	121
113	Massey	2025-01-26	208
113	USAU	2025-01-26	118
113	SWCI	2025-02-02	194
113	ELO	2025-02-02	123
113	Massey	2025-02-02	18
113	USAU	2025-02-02	136
113	SWCI	2025-02-08	221
113	ELO	2025-02-08	137
113	Massey	2025-02-08	75
113	USAU	2025-02-08	141
113	SWCI	2025-02-09	221
113	ELO	2025-02-09	134
113	Massey	2025-02-09	321
113	USAU	2025-02-09	139
113	SWCI	2025-02-12	221
113	ELO	2025-02-12	140
113	Massey	2025-02-12	78
113	USAU	2025-02-12	139
113	SWCI	2025-02-16	237
113	ELO	2025-02-16	140
113	Massey	2025-02-16	362
113	USAU	2025-02-16	133
113	SWCI	2025-02-17	237
113	ELO	2025-02-17	144
113	Massey	2025-02-17	328
113	USAU	2025-02-17	131
113	SWCI	2025-02-22	266
113	ELO	2025-02-22	143
113	Massey	2025-02-22	246
113	USAU	2025-02-22	135
113	SWCI	2025-02-23	266
113	ELO	2025-02-23	141
113	Massey	2025-02-23	394
113	USAU	2025-02-23	137
113	SWCI	2025-03-02	331
113	ELO	2025-03-02	154
113	Massey	2025-03-02	146
113	USAU	2025-03-02	151
113	SWCI	2025-03-08	334
113	ELO	2025-03-08	171
113	Massey	2025-03-08	397
113	USAU	2025-03-08	148
113	SWCI	2025-03-09	337
113	ELO	2025-03-09	170
113	Massey	2025-03-09	275
113	USAU	2025-03-09	149
113	SWCI	2025-03-15	177
113	ELO	2025-03-15	171
113	Massey	2025-03-15	305
113	USAU	2025-03-15	308
113	SWCI	2025-03-16	176
113	ELO	2025-03-16	252
113	Massey	2025-03-16	252
113	USAU	2025-03-16	310
113	SWCI	2025-03-23	177
113	ELO	2025-03-23	240
113	Massey	2025-03-23	278
113	USAU	2025-03-23	285
113	SWCI	2025-03-29	262
113	ELO	2025-03-29	235
113	Massey	2025-03-29	269
113	USAU	2025-03-29	271
113	SWCI	2025-03-30	248
113	ELO	2025-03-30	254
113	Massey	2025-03-30	259
113	USAU	2025-03-30	260
114	SWCI	2025-01-26	152
114	ELO	2025-01-26	122
114	Massey	2025-01-26	289
114	USAU	2025-01-26	119
114	SWCI	2025-02-02	195
114	ELO	2025-02-02	124
114	Massey	2025-02-02	217
114	USAU	2025-02-02	137
114	SWCI	2025-02-08	222
114	ELO	2025-02-08	138
114	Massey	2025-02-08	56
114	USAU	2025-02-08	142
114	SWCI	2025-02-09	222
114	ELO	2025-02-09	135
114	Massey	2025-02-09	271
114	USAU	2025-02-09	140
114	SWCI	2025-02-12	222
114	ELO	2025-02-12	141
114	Massey	2025-02-12	302
114	USAU	2025-02-12	140
114	SWCI	2025-02-16	238
114	ELO	2025-02-16	141
114	Massey	2025-02-16	357
114	USAU	2025-02-16	134
114	SWCI	2025-02-17	238
114	ELO	2025-02-17	145
114	Massey	2025-02-17	80
114	USAU	2025-02-17	132
114	SWCI	2025-02-22	267
114	ELO	2025-02-22	144
114	Massey	2025-02-22	284
114	USAU	2025-02-22	136
114	SWCI	2025-02-23	267
114	ELO	2025-02-23	142
114	Massey	2025-02-23	2
114	USAU	2025-02-23	138
114	SWCI	2025-03-02	332
114	ELO	2025-03-02	155
114	Massey	2025-03-02	261
114	USAU	2025-03-02	152
114	SWCI	2025-03-08	335
114	ELO	2025-03-08	172
114	Massey	2025-03-08	218
114	USAU	2025-03-08	149
114	SWCI	2025-03-09	338
114	ELO	2025-03-09	171
114	Massey	2025-03-09	295
114	USAU	2025-03-09	150
114	SWCI	2025-03-15	320
114	ELO	2025-03-15	172
114	Massey	2025-03-15	368
114	USAU	2025-03-15	368
114	SWCI	2025-03-16	320
114	ELO	2025-03-16	363
114	Massey	2025-03-16	363
114	USAU	2025-03-16	369
114	SWCI	2025-03-23	331
114	ELO	2025-03-23	360
114	Massey	2025-03-23	360
114	USAU	2025-03-23	357
114	SWCI	2025-03-29	369
114	ELO	2025-03-29	352
114	Massey	2025-03-29	349
114	USAU	2025-03-29	360
114	SWCI	2025-03-30	368
114	ELO	2025-03-30	390
114	Massey	2025-03-30	348
114	USAU	2025-03-30	345
115	SWCI	2025-01-26	153
115	ELO	2025-01-26	123
115	Massey	2025-01-26	316
115	USAU	2025-01-26	120
115	SWCI	2025-02-02	196
115	ELO	2025-02-02	125
115	Massey	2025-02-02	92
115	USAU	2025-02-02	138
115	SWCI	2025-02-08	223
115	ELO	2025-02-08	139
115	Massey	2025-02-08	106
115	USAU	2025-02-08	143
115	SWCI	2025-02-09	223
115	ELO	2025-02-09	136
115	Massey	2025-02-09	299
115	USAU	2025-02-09	141
115	SWCI	2025-02-12	223
115	ELO	2025-02-12	142
115	Massey	2025-02-12	11
115	USAU	2025-02-12	141
115	SWCI	2025-02-16	239
115	ELO	2025-02-16	142
115	Massey	2025-02-16	375
115	USAU	2025-02-16	135
115	SWCI	2025-02-17	239
115	ELO	2025-02-17	146
115	Massey	2025-02-17	356
115	USAU	2025-02-17	133
115	SWCI	2025-02-22	268
115	ELO	2025-02-22	145
115	Massey	2025-02-22	74
115	USAU	2025-02-22	137
115	SWCI	2025-02-23	268
115	ELO	2025-02-23	143
115	Massey	2025-02-23	71
115	USAU	2025-02-23	139
115	SWCI	2025-03-02	333
115	ELO	2025-03-02	156
115	Massey	2025-03-02	39
115	USAU	2025-03-02	153
115	SWCI	2025-03-08	336
115	ELO	2025-03-08	173
115	Massey	2025-03-08	390
115	USAU	2025-03-08	150
115	SWCI	2025-03-09	339
115	ELO	2025-03-09	172
115	Massey	2025-03-09	292
115	USAU	2025-03-09	151
115	SWCI	2025-03-15	358
115	ELO	2025-03-15	173
115	Massey	2025-03-15	48
115	USAU	2025-03-15	150
115	SWCI	2025-03-16	358
115	ELO	2025-03-16	171
115	Massey	2025-03-16	346
115	USAU	2025-03-16	152
115	SWCI	2025-03-23	345
115	ELO	2025-03-23	173
115	Massey	2025-03-23	351
115	USAU	2025-03-23	356
115	SWCI	2025-03-29	253
115	ELO	2025-03-29	186
115	Massey	2025-03-29	235
115	USAU	2025-03-29	233
115	SWCI	2025-03-30	243
115	ELO	2025-03-30	228
115	Massey	2025-03-30	239
115	USAU	2025-03-30	252
116	SWCI	2025-01-26	154
116	ELO	2025-01-26	124
116	Massey	2025-01-26	290
116	USAU	2025-01-26	121
116	SWCI	2025-02-02	197
116	ELO	2025-02-02	126
116	Massey	2025-02-02	335
116	USAU	2025-02-02	139
116	SWCI	2025-02-08	224
116	ELO	2025-02-08	140
116	Massey	2025-02-08	76
116	USAU	2025-02-08	144
116	SWCI	2025-02-09	224
116	ELO	2025-02-09	137
116	Massey	2025-02-09	293
116	USAU	2025-02-09	142
116	SWCI	2025-02-12	224
116	ELO	2025-02-12	143
116	Massey	2025-02-12	130
116	USAU	2025-02-12	142
116	SWCI	2025-02-16	161
116	ELO	2025-02-16	143
116	Massey	2025-02-16	342
116	USAU	2025-02-16	377
116	SWCI	2025-02-17	161
116	ELO	2025-02-17	364
116	Massey	2025-02-17	346
116	USAU	2025-02-17	376
116	SWCI	2025-02-22	200
116	ELO	2025-02-22	362
116	Massey	2025-02-22	328
116	USAU	2025-02-22	376
116	SWCI	2025-02-23	199
116	ELO	2025-02-23	360
116	Massey	2025-02-23	316
116	USAU	2025-02-23	374
116	SWCI	2025-03-02	178
116	ELO	2025-03-02	350
116	Massey	2025-03-02	236
116	USAU	2025-03-02	292
116	SWCI	2025-03-08	179
116	ELO	2025-03-08	136
116	Massey	2025-03-08	206
116	USAU	2025-03-08	290
116	SWCI	2025-03-09	182
116	ELO	2025-03-09	139
116	Massey	2025-03-09	203
116	USAU	2025-03-09	286
116	SWCI	2025-03-15	190
116	ELO	2025-03-15	141
116	Massey	2025-03-15	259
116	USAU	2025-03-15	243
116	SWCI	2025-03-16	183
116	ELO	2025-03-16	143
116	Massey	2025-03-16	203
116	USAU	2025-03-16	241
116	SWCI	2025-03-23	198
116	ELO	2025-03-23	148
116	Massey	2025-03-23	230
116	USAU	2025-03-23	219
116	SWCI	2025-03-29	175
116	ELO	2025-03-29	161
116	Massey	2025-03-29	194
116	USAU	2025-03-29	183
116	SWCI	2025-03-30	190
116	ELO	2025-03-30	121
116	Massey	2025-03-30	199
116	USAU	2025-03-30	186
117	SWCI	2025-01-26	155
117	ELO	2025-01-26	125
117	Massey	2025-01-26	291
117	USAU	2025-01-26	122
117	SWCI	2025-02-02	198
117	ELO	2025-02-02	127
117	Massey	2025-02-02	86
117	USAU	2025-02-02	140
117	SWCI	2025-02-08	225
117	ELO	2025-02-08	141
117	Massey	2025-02-08	41
117	USAU	2025-02-08	145
117	SWCI	2025-02-09	225
117	ELO	2025-02-09	138
117	Massey	2025-02-09	73
117	USAU	2025-02-09	143
117	SWCI	2025-02-12	225
117	ELO	2025-02-12	144
117	Massey	2025-02-12	311
117	USAU	2025-02-12	143
117	SWCI	2025-02-16	240
117	ELO	2025-02-16	144
117	Massey	2025-02-16	257
117	USAU	2025-02-16	136
117	SWCI	2025-02-17	240
117	ELO	2025-02-17	147
117	Massey	2025-02-17	32
117	USAU	2025-02-17	134
117	SWCI	2025-02-22	269
117	ELO	2025-02-22	146
117	Massey	2025-02-22	44
117	USAU	2025-02-22	138
117	SWCI	2025-02-23	269
117	ELO	2025-02-23	144
117	Massey	2025-02-23	326
117	USAU	2025-02-23	140
117	SWCI	2025-03-02	334
117	ELO	2025-03-02	157
117	Massey	2025-03-02	11
117	USAU	2025-03-02	154
117	SWCI	2025-03-08	337
117	ELO	2025-03-08	174
117	Massey	2025-03-08	298
117	USAU	2025-03-08	151
117	SWCI	2025-03-09	340
117	ELO	2025-03-09	173
117	Massey	2025-03-09	285
117	USAU	2025-03-09	152
117	SWCI	2025-03-15	23
117	ELO	2025-03-15	174
117	Massey	2025-03-15	180
117	USAU	2025-03-15	199
117	SWCI	2025-03-16	18
117	ELO	2025-03-16	34
117	Massey	2025-03-16	127
117	USAU	2025-03-16	197
117	SWCI	2025-03-23	15
117	ELO	2025-03-23	42
117	Massey	2025-03-23	152
117	USAU	2025-03-23	142
117	SWCI	2025-03-29	17
117	ELO	2025-03-29	46
117	Massey	2025-03-29	134
117	USAU	2025-03-29	100
117	SWCI	2025-03-30	37
117	ELO	2025-03-30	47
117	Massey	2025-03-30	154
117	USAU	2025-03-30	130
118	SWCI	2025-01-26	22
118	ELO	2025-01-26	126
118	Massey	2025-01-26	44
118	USAU	2025-01-26	27
118	SWCI	2025-02-02	41
118	ELO	2025-02-02	31
118	Massey	2025-02-02	57
118	USAU	2025-02-02	57
118	SWCI	2025-02-08	53
118	ELO	2025-02-08	45
118	Massey	2025-02-08	124
118	USAU	2025-02-08	81
118	SWCI	2025-02-09	54
118	ELO	2025-02-09	48
118	Massey	2025-02-09	337
118	USAU	2025-02-09	360
118	SWCI	2025-02-12	55
118	ELO	2025-02-12	60
118	Massey	2025-02-12	335
118	USAU	2025-02-12	360
118	SWCI	2025-02-16	92
118	ELO	2025-02-16	59
118	Massey	2025-02-16	324
118	USAU	2025-02-16	336
118	SWCI	2025-02-17	93
118	ELO	2025-02-17	89
118	Massey	2025-02-17	325
118	USAU	2025-02-17	335
118	SWCI	2025-02-22	116
118	ELO	2025-02-22	90
118	Massey	2025-02-22	298
118	USAU	2025-02-22	326
118	SWCI	2025-02-23	115
118	ELO	2025-02-23	94
118	Massey	2025-02-23	286
118	USAU	2025-02-23	327
118	SWCI	2025-03-02	150
118	ELO	2025-03-02	113
118	Massey	2025-03-02	205
118	USAU	2025-03-02	269
118	SWCI	2025-03-08	153
118	ELO	2025-03-08	146
118	Massey	2025-03-08	187
118	USAU	2025-03-08	261
118	SWCI	2025-03-09	155
118	ELO	2025-03-09	149
118	Massey	2025-03-09	187
118	USAU	2025-03-09	261
118	SWCI	2025-03-15	165
118	ELO	2025-03-15	150
118	Massey	2025-03-15	238
118	USAU	2025-03-15	236
118	SWCI	2025-03-16	165
118	ELO	2025-03-16	152
118	Massey	2025-03-16	185
118	USAU	2025-03-16	234
118	SWCI	2025-03-23	175
118	ELO	2025-03-23	156
118	Massey	2025-03-23	209
118	USAU	2025-03-23	199
118	SWCI	2025-03-29	143
118	ELO	2025-03-29	173
118	Massey	2025-03-29	182
118	USAU	2025-03-29	174
118	SWCI	2025-03-30	125
118	ELO	2025-03-30	174
118	Massey	2025-03-30	190
118	USAU	2025-03-30	180
119	SWCI	2025-01-26	59
119	ELO	2025-01-26	127
119	Massey	2025-01-26	393
119	USAU	2025-01-26	392
119	SWCI	2025-02-02	117
119	ELO	2025-02-02	394
119	Massey	2025-02-02	378
119	USAU	2025-02-02	384
119	SWCI	2025-02-08	159
119	ELO	2025-02-08	393
119	Massey	2025-02-08	388
119	USAU	2025-02-08	378
119	SWCI	2025-02-09	156
119	ELO	2025-02-09	393
119	Massey	2025-02-09	395
119	USAU	2025-02-09	396
119	SWCI	2025-02-12	155
119	ELO	2025-02-12	391
119	Massey	2025-02-12	392
119	USAU	2025-02-12	396
119	SWCI	2025-02-16	177
119	ELO	2025-02-16	391
119	Massey	2025-02-16	393
119	USAU	2025-02-16	395
119	SWCI	2025-02-17	176
119	ELO	2025-02-17	390
119	Massey	2025-02-17	397
119	USAU	2025-02-17	395
119	SWCI	2025-02-22	222
119	ELO	2025-02-22	392
119	Massey	2025-02-22	390
119	USAU	2025-02-22	396
119	SWCI	2025-02-23	222
119	ELO	2025-02-23	391
119	Massey	2025-02-23	393
119	USAU	2025-02-23	394
119	SWCI	2025-03-02	296
119	ELO	2025-03-02	388
119	Massey	2025-03-02	395
119	USAU	2025-03-02	385
119	SWCI	2025-03-08	305
119	ELO	2025-03-08	383
119	Massey	2025-03-08	389
119	USAU	2025-03-08	385
119	SWCI	2025-03-09	308
119	ELO	2025-03-09	382
119	Massey	2025-03-09	392
119	USAU	2025-03-09	384
119	SWCI	2025-03-15	331
119	ELO	2025-03-15	381
119	Massey	2025-03-15	392
119	USAU	2025-03-15	378
119	SWCI	2025-03-16	335
119	ELO	2025-03-16	380
119	Massey	2025-03-16	394
119	USAU	2025-03-16	380
119	SWCI	2025-03-23	353
119	ELO	2025-03-23	379
119	Massey	2025-03-23	390
119	USAU	2025-03-23	372
119	SWCI	2025-03-29	367
119	ELO	2025-03-29	374
119	Massey	2025-03-29	383
119	USAU	2025-03-29	376
119	SWCI	2025-03-30	367
119	ELO	2025-03-30	374
119	Massey	2025-03-30	387
119	USAU	2025-03-30	379
120	SWCI	2025-01-26	36
120	ELO	2025-01-26	128
120	Massey	2025-01-26	98
120	USAU	2025-01-26	372
120	SWCI	2025-02-02	81
120	ELO	2025-02-02	357
120	Massey	2025-02-02	72
120	USAU	2025-02-02	355
120	SWCI	2025-02-08	103
120	ELO	2025-02-08	339
120	Massey	2025-02-08	293
120	USAU	2025-02-08	334
120	SWCI	2025-02-09	105
120	ELO	2025-02-09	335
120	Massey	2025-02-09	349
120	USAU	2025-02-09	376
120	SWCI	2025-02-12	105
120	ELO	2025-02-12	322
120	Massey	2025-02-12	345
120	USAU	2025-02-12	376
120	SWCI	2025-02-16	124
120	ELO	2025-02-16	320
120	Massey	2025-02-16	340
120	USAU	2025-02-16	365
120	SWCI	2025-02-17	123
120	ELO	2025-02-17	312
120	Massey	2025-02-17	343
120	USAU	2025-02-17	366
120	SWCI	2025-02-22	151
120	ELO	2025-02-22	309
120	Massey	2025-02-22	320
120	USAU	2025-02-22	364
120	SWCI	2025-02-23	155
120	ELO	2025-02-23	307
120	Massey	2025-02-23	312
120	USAU	2025-02-23	358
120	SWCI	2025-03-02	208
120	ELO	2025-03-02	288
120	Massey	2025-03-02	242
120	USAU	2025-03-02	313
120	SWCI	2025-03-08	211
120	ELO	2025-03-08	245
120	Massey	2025-03-08	207
120	USAU	2025-03-08	307
120	SWCI	2025-03-09	215
120	ELO	2025-03-09	244
120	Massey	2025-03-09	205
120	USAU	2025-03-09	302
120	SWCI	2025-03-15	231
120	ELO	2025-03-15	237
120	Massey	2025-03-15	261
120	USAU	2025-03-15	280
120	SWCI	2025-03-16	227
120	ELO	2025-03-16	233
120	Massey	2025-03-16	211
120	USAU	2025-03-16	282
120	SWCI	2025-03-23	237
120	ELO	2025-03-23	222
120	Massey	2025-03-23	235
120	USAU	2025-03-23	255
120	SWCI	2025-03-29	242
120	ELO	2025-03-29	218
120	Massey	2025-03-29	230
120	USAU	2025-03-29	244
120	SWCI	2025-03-30	266
120	ELO	2025-03-30	218
120	Massey	2025-03-30	251
120	USAU	2025-03-30	264
121	SWCI	2025-01-26	15
121	ELO	2025-01-26	129
121	Massey	2025-01-26	12
121	USAU	2025-01-26	21
121	SWCI	2025-02-02	29
121	ELO	2025-02-02	12
121	Massey	2025-02-02	12
121	USAU	2025-02-02	45
121	SWCI	2025-02-08	36
121	ELO	2025-02-08	17
121	Massey	2025-02-08	39
121	USAU	2025-02-08	61
121	SWCI	2025-02-09	37
121	ELO	2025-02-09	19
121	Massey	2025-02-09	143
121	USAU	2025-02-09	350
121	SWCI	2025-02-12	37
121	ELO	2025-02-12	24
121	Massey	2025-02-12	133
121	USAU	2025-02-12	351
121	SWCI	2025-02-16	42
121	ELO	2025-02-16	24
121	Massey	2025-02-16	273
121	USAU	2025-02-16	319
121	SWCI	2025-02-17	40
121	ELO	2025-02-17	31
121	Massey	2025-02-17	141
121	USAU	2025-02-17	319
121	SWCI	2025-02-22	49
121	ELO	2025-02-22	33
121	Massey	2025-02-22	149
121	USAU	2025-02-22	300
121	SWCI	2025-02-23	48
121	ELO	2025-02-23	33
121	Massey	2025-02-23	145
121	USAU	2025-02-23	292
121	SWCI	2025-03-02	51
121	ELO	2025-03-02	21
121	Massey	2025-03-02	124
121	USAU	2025-03-02	222
121	SWCI	2025-03-08	50
121	ELO	2025-03-08	31
121	Massey	2025-03-08	113
121	USAU	2025-03-08	130
121	SWCI	2025-03-09	50
121	ELO	2025-03-09	31
121	Massey	2025-03-09	113
121	USAU	2025-03-09	137
121	SWCI	2025-03-15	51
121	ELO	2025-03-15	31
121	Massey	2025-03-15	164
121	USAU	2025-03-15	124
121	SWCI	2025-03-16	53
121	ELO	2025-03-16	33
121	Massey	2025-03-16	110
121	USAU	2025-03-16	125
121	SWCI	2025-03-23	53
121	ELO	2025-03-23	40
121	Massey	2025-03-23	134
121	USAU	2025-03-23	123
121	SWCI	2025-03-29	54
121	ELO	2025-03-29	44
121	Massey	2025-03-29	104
121	USAU	2025-03-29	123
121	SWCI	2025-03-30	59
121	ELO	2025-03-30	46
121	Massey	2025-03-30	112
121	USAU	2025-03-30	124
122	SWCI	2025-01-26	33
122	ELO	2025-01-26	130
122	Massey	2025-01-26	45
122	USAU	2025-01-26	31
122	SWCI	2025-02-02	67
122	ELO	2025-02-02	356
122	Massey	2025-02-02	60
122	USAU	2025-02-02	66
122	SWCI	2025-02-08	89
122	ELO	2025-02-08	335
122	Massey	2025-02-08	125
122	USAU	2025-02-08	89
122	SWCI	2025-02-09	88
122	ELO	2025-02-09	330
122	Massey	2025-02-09	338
122	USAU	2025-02-09	364
122	SWCI	2025-02-12	88
122	ELO	2025-02-12	319
122	Massey	2025-02-12	336
122	USAU	2025-02-12	364
122	SWCI	2025-02-16	104
122	ELO	2025-02-16	316
122	Massey	2025-02-16	326
122	USAU	2025-02-16	348
122	SWCI	2025-02-17	104
122	ELO	2025-02-17	307
122	Massey	2025-02-17	326
122	USAU	2025-02-17	347
122	SWCI	2025-02-22	135
122	ELO	2025-02-22	304
122	Massey	2025-02-22	301
122	USAU	2025-02-22	343
122	SWCI	2025-02-23	135
122	ELO	2025-02-23	302
122	Massey	2025-02-23	290
122	USAU	2025-02-23	337
122	SWCI	2025-03-02	135
122	ELO	2025-03-02	82
122	Massey	2025-03-02	191
122	USAU	2025-03-02	265
122	SWCI	2025-03-08	137
122	ELO	2025-03-08	104
122	Massey	2025-03-08	175
122	USAU	2025-03-08	255
122	SWCI	2025-03-09	137
122	ELO	2025-03-09	107
122	Massey	2025-03-09	178
122	USAU	2025-03-09	257
122	SWCI	2025-03-15	147
122	ELO	2025-03-15	112
122	Massey	2025-03-15	224
122	USAU	2025-03-15	230
122	SWCI	2025-03-16	156
122	ELO	2025-03-16	113
122	Massey	2025-03-16	176
122	USAU	2025-03-16	233
122	SWCI	2025-03-23	162
122	ELO	2025-03-23	121
122	Massey	2025-03-23	198
122	USAU	2025-03-23	201
122	SWCI	2025-03-29	83
122	ELO	2025-03-29	130
122	Massey	2025-03-29	145
122	USAU	2025-03-29	161
122	SWCI	2025-03-30	87
122	ELO	2025-03-30	133
122	Massey	2025-03-30	147
122	USAU	2025-03-30	163
123	SWCI	2025-01-26	47
123	ELO	2025-01-26	131
123	Massey	2025-01-26	378
123	USAU	2025-01-26	378
123	SWCI	2025-02-02	94
123	ELO	2025-02-02	374
123	Massey	2025-02-02	324
123	USAU	2025-02-02	362
123	SWCI	2025-02-08	124
123	ELO	2025-02-08	364
123	Massey	2025-02-08	346
123	USAU	2025-02-08	350
123	SWCI	2025-02-09	125
123	ELO	2025-02-09	362
123	Massey	2025-02-09	378
123	USAU	2025-02-09	386
123	SWCI	2025-02-12	125
123	ELO	2025-02-12	354
123	Massey	2025-02-12	373
123	USAU	2025-02-12	386
123	SWCI	2025-02-16	143
123	ELO	2025-02-16	354
123	Massey	2025-02-16	370
123	USAU	2025-02-16	375
123	SWCI	2025-02-17	143
123	ELO	2025-02-17	346
123	Massey	2025-02-17	375
123	USAU	2025-02-17	375
123	SWCI	2025-02-22	175
123	ELO	2025-02-22	343
123	Massey	2025-02-22	362
123	USAU	2025-02-22	375
123	SWCI	2025-02-23	177
123	ELO	2025-02-23	343
123	Massey	2025-02-23	358
123	USAU	2025-02-23	375
123	SWCI	2025-03-02	223
123	ELO	2025-03-02	333
123	Massey	2025-03-02	339
123	USAU	2025-03-02	335
123	SWCI	2025-03-08	225
123	ELO	2025-03-08	309
123	Massey	2025-03-08	282
123	USAU	2025-03-08	332
123	SWCI	2025-03-09	230
123	ELO	2025-03-09	308
123	Massey	2025-03-09	273
123	USAU	2025-03-09	330
123	SWCI	2025-03-15	245
123	ELO	2025-03-15	304
123	Massey	2025-03-15	326
123	USAU	2025-03-15	311
123	SWCI	2025-03-16	252
123	ELO	2025-03-16	303
123	Massey	2025-03-16	315
123	USAU	2025-03-16	314
123	SWCI	2025-03-23	265
123	ELO	2025-03-23	292
123	Massey	2025-03-23	309
123	USAU	2025-03-23	295
123	SWCI	2025-03-29	270
123	ELO	2025-03-29	280
123	Massey	2025-03-29	285
123	USAU	2025-03-29	270
123	SWCI	2025-03-30	280
123	ELO	2025-03-30	279
123	Massey	2025-03-30	290
123	USAU	2025-03-30	274
124	SWCI	2025-01-26	3
124	ELO	2025-01-26	132
124	Massey	2025-01-26	9
124	USAU	2025-01-26	2
124	SWCI	2025-02-02	4
124	ELO	2025-02-02	6
124	Massey	2025-02-02	11
124	USAU	2025-02-02	6
124	SWCI	2025-02-08	3
124	ELO	2025-02-08	7
124	Massey	2025-02-08	30
124	USAU	2025-02-08	9
124	SWCI	2025-02-09	5
124	ELO	2025-02-09	7
124	Massey	2025-02-09	111
124	USAU	2025-02-09	70
124	SWCI	2025-02-12	5
124	ELO	2025-02-12	10
124	Massey	2025-02-12	120
124	USAU	2025-02-12	70
124	SWCI	2025-02-16	8
124	ELO	2025-02-16	11
124	Massey	2025-02-16	152
124	USAU	2025-02-16	54
124	SWCI	2025-02-17	8
124	ELO	2025-02-17	17
124	Massey	2025-02-17	122
124	USAU	2025-02-17	52
124	SWCI	2025-02-22	14
124	ELO	2025-02-22	10
124	Massey	2025-02-22	120
124	USAU	2025-02-22	83
124	SWCI	2025-02-23	16
124	ELO	2025-02-23	10
124	Massey	2025-02-23	122
124	USAU	2025-02-23	87
124	SWCI	2025-03-02	22
124	ELO	2025-03-02	13
124	Massey	2025-03-02	99
124	USAU	2025-03-02	87
124	SWCI	2025-03-08	22
124	ELO	2025-03-08	18
124	Massey	2025-03-08	94
124	USAU	2025-03-08	89
124	SWCI	2025-03-09	22
124	ELO	2025-03-09	18
124	Massey	2025-03-09	93
124	USAU	2025-03-09	89
124	SWCI	2025-03-15	16
124	ELO	2025-03-15	19
124	Massey	2025-03-15	133
124	USAU	2025-03-15	88
124	SWCI	2025-03-16	24
124	ELO	2025-03-16	19
124	Massey	2025-03-16	95
124	USAU	2025-03-16	99
124	SWCI	2025-03-23	26
124	ELO	2025-03-23	17
124	Massey	2025-03-23	116
124	USAU	2025-03-23	93
124	SWCI	2025-03-29	20
124	ELO	2025-03-29	19
124	Massey	2025-03-29	90
124	USAU	2025-03-29	98
124	SWCI	2025-03-30	16
124	ELO	2025-03-30	19
124	Massey	2025-03-30	88
124	USAU	2025-03-30	98
125	SWCI	2025-01-26	12
125	ELO	2025-01-26	133
125	Massey	2025-01-26	19
125	USAU	2025-01-26	9
125	SWCI	2025-02-02	22
125	ELO	2025-02-02	13
125	Massey	2025-02-02	21
125	USAU	2025-02-02	20
125	SWCI	2025-02-08	27
125	ELO	2025-02-08	18
125	Massey	2025-02-08	54
125	USAU	2025-02-08	28
125	SWCI	2025-02-09	19
125	ELO	2025-02-09	20
125	Massey	2025-02-09	291
125	USAU	2025-02-09	330
125	SWCI	2025-02-12	19
125	ELO	2025-02-12	12
125	Massey	2025-02-12	293
125	USAU	2025-02-12	330
125	SWCI	2025-02-16	20
125	ELO	2025-02-16	13
125	Massey	2025-02-16	285
125	USAU	2025-02-16	297
125	SWCI	2025-02-17	20
125	ELO	2025-02-17	7
125	Massey	2025-02-17	268
125	USAU	2025-02-17	295
125	SWCI	2025-02-22	30
125	ELO	2025-02-22	7
125	Massey	2025-02-22	157
125	USAU	2025-02-22	272
125	SWCI	2025-02-23	30
125	ELO	2025-02-23	7
125	Massey	2025-02-23	153
125	USAU	2025-02-23	271
125	SWCI	2025-03-02	34
125	ELO	2025-03-02	10
125	Massey	2025-03-02	133
125	USAU	2025-03-02	118
125	SWCI	2025-03-08	33
125	ELO	2025-03-08	15
125	Massey	2025-03-08	122
125	USAU	2025-03-08	113
125	SWCI	2025-03-09	33
125	ELO	2025-03-09	15
125	Massey	2025-03-09	122
125	USAU	2025-03-09	117
125	SWCI	2025-03-15	31
125	ELO	2025-03-15	16
125	Massey	2025-03-15	169
125	USAU	2025-03-15	109
125	SWCI	2025-03-16	31
125	ELO	2025-03-16	16
125	Massey	2025-03-16	117
125	USAU	2025-03-16	112
125	SWCI	2025-03-23	34
125	ELO	2025-03-23	20
125	Massey	2025-03-23	138
125	USAU	2025-03-23	101
125	SWCI	2025-03-29	32
125	ELO	2025-03-29	22
125	Massey	2025-03-29	109
125	USAU	2025-03-29	107
125	SWCI	2025-03-30	33
125	ELO	2025-03-30	22
125	Massey	2025-03-30	116
125	USAU	2025-03-30	107
126	SWCI	2025-01-26	156
126	ELO	2025-01-26	134
126	Massey	2025-01-26	76
126	USAU	2025-01-26	123
126	SWCI	2025-02-02	199
126	ELO	2025-02-02	128
126	Massey	2025-02-02	219
126	USAU	2025-02-02	141
126	SWCI	2025-02-08	77
126	ELO	2025-02-08	142
126	Massey	2025-02-08	363
126	USAU	2025-02-08	372
126	SWCI	2025-02-09	100
126	ELO	2025-02-09	139
126	Massey	2025-02-09	361
126	USAU	2025-02-09	377
126	SWCI	2025-02-12	100
126	ELO	2025-02-12	82
126	Massey	2025-02-12	359
126	USAU	2025-02-12	377
126	SWCI	2025-02-16	155
126	ELO	2025-02-16	82
126	Massey	2025-02-16	353
126	USAU	2025-02-16	364
126	SWCI	2025-02-17	154
126	ELO	2025-02-17	374
126	Massey	2025-02-17	358
126	USAU	2025-02-17	363
126	SWCI	2025-02-22	191
126	ELO	2025-02-22	375
126	Massey	2025-02-22	337
126	USAU	2025-02-22	362
126	SWCI	2025-02-23	188
126	ELO	2025-02-23	373
126	Massey	2025-02-23	333
126	USAU	2025-02-23	357
126	SWCI	2025-03-02	250
126	ELO	2025-03-02	368
126	Massey	2025-03-02	292
126	USAU	2025-03-02	318
126	SWCI	2025-03-08	256
126	ELO	2025-03-08	358
126	Massey	2025-03-08	237
126	USAU	2025-03-08	313
126	SWCI	2025-03-09	260
126	ELO	2025-03-09	356
126	Massey	2025-03-09	231
126	USAU	2025-03-09	310
126	SWCI	2025-03-15	281
126	ELO	2025-03-15	356
126	Massey	2025-03-15	278
126	USAU	2025-03-15	282
126	SWCI	2025-03-16	281
126	ELO	2025-03-16	354
126	Massey	2025-03-16	224
126	USAU	2025-03-16	281
126	SWCI	2025-03-23	298
126	ELO	2025-03-23	348
126	Massey	2025-03-23	246
126	USAU	2025-03-23	251
126	SWCI	2025-03-29	306
126	ELO	2025-03-29	343
126	Massey	2025-03-29	225
126	USAU	2025-03-29	230
126	SWCI	2025-03-30	300
126	ELO	2025-03-30	342
126	Massey	2025-03-30	235
126	USAU	2025-03-30	236
127	SWCI	2025-01-26	157
127	ELO	2025-01-26	135
127	Massey	2025-01-26	101
127	USAU	2025-01-26	124
127	SWCI	2025-02-02	15
127	ELO	2025-02-02	129
127	Massey	2025-02-02	355
127	USAU	2025-02-02	367
127	SWCI	2025-02-08	19
127	ELO	2025-02-08	32
127	Massey	2025-02-08	332
127	USAU	2025-02-08	342
127	SWCI	2025-02-09	21
127	ELO	2025-02-09	35
127	Massey	2025-02-09	310
127	USAU	2025-02-09	334
127	SWCI	2025-02-12	21
127	ELO	2025-02-12	43
127	Massey	2025-02-12	304
127	USAU	2025-02-12	334
127	SWCI	2025-02-16	18
127	ELO	2025-02-16	41
127	Massey	2025-02-16	128
127	USAU	2025-02-16	70
127	SWCI	2025-02-17	18
127	ELO	2025-02-17	14
127	Massey	2025-02-17	118
127	USAU	2025-02-17	67
127	SWCI	2025-02-22	23
127	ELO	2025-02-22	14
127	Massey	2025-02-22	119
127	USAU	2025-02-22	86
127	SWCI	2025-02-23	24
127	ELO	2025-02-23	14
127	Massey	2025-02-23	119
127	USAU	2025-02-23	82
127	SWCI	2025-03-02	29
127	ELO	2025-03-02	17
127	Massey	2025-03-02	101
127	USAU	2025-03-02	88
127	SWCI	2025-03-08	71
127	ELO	2025-03-08	23
127	Massey	2025-03-08	82
127	USAU	2025-03-08	77
127	SWCI	2025-03-09	86
127	ELO	2025-03-09	23
127	Massey	2025-03-09	82
127	USAU	2025-03-09	77
127	SWCI	2025-03-15	90
127	ELO	2025-03-15	68
127	Massey	2025-03-15	123
127	USAU	2025-03-15	64
127	SWCI	2025-03-16	93
127	ELO	2025-03-16	71
127	Massey	2025-03-16	67
127	USAU	2025-03-16	67
127	SWCI	2025-03-23	86
127	ELO	2025-03-23	78
127	Massey	2025-03-23	90
127	USAU	2025-03-23	58
127	SWCI	2025-03-29	65
127	ELO	2025-03-29	88
127	Massey	2025-03-29	69
127	USAU	2025-03-29	67
127	SWCI	2025-03-30	100
127	ELO	2025-03-30	88
127	Massey	2025-03-30	90
127	USAU	2025-03-30	87
128	SWCI	2025-01-26	158
128	ELO	2025-01-26	136
128	Massey	2025-01-26	149
128	USAU	2025-01-26	125
128	SWCI	2025-02-02	200
128	ELO	2025-02-02	130
128	Massey	2025-02-02	325
128	USAU	2025-02-02	142
128	SWCI	2025-02-08	21
128	ELO	2025-02-08	143
128	Massey	2025-02-08	316
128	USAU	2025-02-08	358
128	SWCI	2025-02-09	42
128	ELO	2025-02-09	140
128	Massey	2025-02-09	303
128	USAU	2025-02-09	338
128	SWCI	2025-02-12	42
128	ELO	2025-02-12	59
128	Massey	2025-02-12	298
128	USAU	2025-02-12	338
128	SWCI	2025-02-16	60
128	ELO	2025-02-16	58
128	Massey	2025-02-16	291
128	USAU	2025-02-16	310
128	SWCI	2025-02-17	61
128	ELO	2025-02-17	77
128	Massey	2025-02-17	276
128	USAU	2025-02-17	308
128	SWCI	2025-02-22	76
128	ELO	2025-02-22	78
128	Massey	2025-02-22	165
128	USAU	2025-02-22	288
128	SWCI	2025-02-23	78
128	ELO	2025-02-23	82
128	Massey	2025-02-23	167
128	USAU	2025-02-23	286
128	SWCI	2025-03-02	92
128	ELO	2025-03-02	100
128	Massey	2025-03-02	147
128	USAU	2025-03-02	230
128	SWCI	2025-03-08	110
128	ELO	2025-03-08	128
128	Massey	2025-03-08	136
128	USAU	2025-03-08	222
128	SWCI	2025-03-09	113
128	ELO	2025-03-09	131
128	Massey	2025-03-09	135
128	USAU	2025-03-09	224
128	SWCI	2025-03-15	82
128	ELO	2025-03-15	134
128	Massey	2025-03-15	182
128	USAU	2025-03-15	127
128	SWCI	2025-03-16	79
128	ELO	2025-03-16	136
128	Massey	2025-03-16	131
128	USAU	2025-03-16	129
128	SWCI	2025-03-23	87
128	ELO	2025-03-23	75
128	Massey	2025-03-23	150
128	USAU	2025-03-23	118
128	SWCI	2025-03-29	62
128	ELO	2025-03-29	82
128	Massey	2025-03-29	120
128	USAU	2025-03-29	118
128	SWCI	2025-03-30	48
128	ELO	2025-03-30	82
128	Massey	2025-03-30	122
128	USAU	2025-03-30	111
129	SWCI	2025-01-26	159
129	ELO	2025-01-26	137
129	Massey	2025-01-26	191
129	USAU	2025-01-26	126
129	SWCI	2025-02-02	76
129	ELO	2025-02-02	131
129	Massey	2025-02-02	387
129	USAU	2025-02-02	389
129	SWCI	2025-02-08	98
129	ELO	2025-02-08	346
129	Massey	2025-02-08	383
129	USAU	2025-02-08	385
129	SWCI	2025-02-09	99
129	ELO	2025-02-09	343
129	Massey	2025-02-09	366
129	USAU	2025-02-09	373
129	SWCI	2025-02-12	99
129	ELO	2025-02-12	332
129	Massey	2025-02-12	366
129	USAU	2025-02-12	374
129	SWCI	2025-02-16	133
129	ELO	2025-02-16	332
129	Massey	2025-02-16	334
129	USAU	2025-02-16	335
129	SWCI	2025-02-17	132
129	ELO	2025-02-17	345
129	Massey	2025-02-17	336
129	USAU	2025-02-17	332
129	SWCI	2025-02-22	160
129	ELO	2025-02-22	342
129	Massey	2025-02-22	311
129	USAU	2025-02-22	325
129	SWCI	2025-02-23	163
129	ELO	2025-02-23	342
129	Massey	2025-02-23	300
129	USAU	2025-02-23	323
129	SWCI	2025-03-02	214
129	ELO	2025-03-02	332
129	Massey	2025-03-02	224
129	USAU	2025-03-02	272
129	SWCI	2025-03-08	227
129	ELO	2025-03-08	308
129	Massey	2025-03-08	199
129	USAU	2025-03-08	263
129	SWCI	2025-03-09	234
129	ELO	2025-03-09	307
129	Massey	2025-03-09	197
129	USAU	2025-03-09	265
129	SWCI	2025-03-15	259
129	ELO	2025-03-15	303
129	Massey	2025-03-15	253
129	USAU	2025-03-15	232
129	SWCI	2025-03-16	253
129	ELO	2025-03-16	302
129	Massey	2025-03-16	198
129	USAU	2025-03-16	229
129	SWCI	2025-03-23	266
129	ELO	2025-03-23	290
129	Massey	2025-03-23	216
129	USAU	2025-03-23	194
129	SWCI	2025-03-29	282
129	ELO	2025-03-29	278
129	Massey	2025-03-29	193
129	USAU	2025-03-29	180
129	SWCI	2025-03-30	294
129	ELO	2025-03-30	277
129	Massey	2025-03-30	206
129	USAU	2025-03-30	192
130	SWCI	2025-01-26	160
130	ELO	2025-01-26	138
130	Massey	2025-01-26	80
130	USAU	2025-01-26	127
130	SWCI	2025-02-02	201
130	ELO	2025-02-02	132
130	Massey	2025-02-02	224
130	USAU	2025-02-02	143
130	SWCI	2025-02-08	226
130	ELO	2025-02-08	144
130	Massey	2025-02-08	93
130	USAU	2025-02-08	146
130	SWCI	2025-02-09	226
130	ELO	2025-02-09	141
130	Massey	2025-02-09	56
130	USAU	2025-02-09	144
130	SWCI	2025-02-12	226
130	ELO	2025-02-12	145
130	Massey	2025-02-12	87
130	USAU	2025-02-12	144
130	SWCI	2025-02-16	241
130	ELO	2025-02-16	145
130	Massey	2025-02-16	109
130	USAU	2025-02-16	137
130	SWCI	2025-02-17	241
130	ELO	2025-02-17	148
130	Massey	2025-02-17	369
130	USAU	2025-02-17	135
130	SWCI	2025-02-22	270
130	ELO	2025-02-22	147
130	Massey	2025-02-22	62
130	USAU	2025-02-22	139
130	SWCI	2025-02-23	270
130	ELO	2025-02-23	145
130	Massey	2025-02-23	354
130	USAU	2025-02-23	141
130	SWCI	2025-03-02	335
130	ELO	2025-03-02	158
130	Massey	2025-03-02	250
130	USAU	2025-03-02	155
130	SWCI	2025-03-08	338
130	ELO	2025-03-08	175
130	Massey	2025-03-08	235
130	USAU	2025-03-08	152
130	SWCI	2025-03-09	341
130	ELO	2025-03-09	174
130	Massey	2025-03-09	362
130	USAU	2025-03-09	153
130	SWCI	2025-03-15	359
130	ELO	2025-03-15	175
130	Massey	2025-03-15	3
130	USAU	2025-03-15	151
130	SWCI	2025-03-16	359
130	ELO	2025-03-16	172
130	Massey	2025-03-16	287
130	USAU	2025-03-16	153
130	SWCI	2025-03-23	376
130	ELO	2025-03-23	174
130	Massey	2025-03-23	25
130	USAU	2025-03-23	152
130	SWCI	2025-03-29	240
130	ELO	2025-03-29	187
130	Massey	2025-03-29	307
130	USAU	2025-03-29	285
130	SWCI	2025-03-30	195
130	ELO	2025-03-30	187
130	Massey	2025-03-30	271
130	USAU	2025-03-30	263
131	SWCI	2025-01-26	161
131	ELO	2025-01-26	139
131	Massey	2025-01-26	189
131	USAU	2025-01-26	128
131	SWCI	2025-02-02	121
131	ELO	2025-02-02	133
131	Massey	2025-02-02	397
131	USAU	2025-02-02	394
131	SWCI	2025-02-08	160
131	ELO	2025-02-08	388
131	Massey	2025-02-08	396
131	USAU	2025-02-08	393
131	SWCI	2025-02-09	158
131	ELO	2025-02-09	387
131	Massey	2025-02-09	388
131	USAU	2025-02-09	391
131	SWCI	2025-02-12	157
131	ELO	2025-02-12	382
131	Massey	2025-02-12	384
131	USAU	2025-02-12	390
131	SWCI	2025-02-16	186
131	ELO	2025-02-16	382
131	Massey	2025-02-16	379
131	USAU	2025-02-16	381
131	SWCI	2025-02-17	186
131	ELO	2025-02-17	381
131	Massey	2025-02-17	383
131	USAU	2025-02-17	378
131	SWCI	2025-02-22	227
131	ELO	2025-02-22	382
131	Massey	2025-02-22	374
131	USAU	2025-02-22	380
131	SWCI	2025-02-23	228
131	ELO	2025-02-23	382
131	Massey	2025-02-23	368
131	USAU	2025-02-23	380
131	SWCI	2025-03-02	303
131	ELO	2025-03-02	379
131	Massey	2025-03-02	360
131	USAU	2025-03-02	356
131	SWCI	2025-03-08	311
131	ELO	2025-03-08	372
131	Massey	2025-03-08	309
131	USAU	2025-03-08	354
131	SWCI	2025-03-09	314
131	ELO	2025-03-09	370
131	Massey	2025-03-09	308
131	USAU	2025-03-09	352
131	SWCI	2025-03-15	338
131	ELO	2025-03-15	370
131	Massey	2025-03-15	355
131	USAU	2025-03-15	338
131	SWCI	2025-03-16	337
131	ELO	2025-03-16	369
131	Massey	2025-03-16	349
131	USAU	2025-03-16	338
131	SWCI	2025-03-23	355
131	ELO	2025-03-23	367
131	Massey	2025-03-23	338
131	USAU	2025-03-23	316
131	SWCI	2025-03-29	383
131	ELO	2025-03-29	359
131	Massey	2025-03-29	328
131	USAU	2025-03-29	340
131	SWCI	2025-03-30	366
131	ELO	2025-03-30	358
131	Massey	2025-03-30	322
131	USAU	2025-03-30	333
132	SWCI	2025-01-26	162
132	ELO	2025-01-26	140
132	Massey	2025-01-26	150
132	USAU	2025-01-26	129
132	SWCI	2025-02-02	112
132	ELO	2025-02-02	134
132	Massey	2025-02-02	395
132	USAU	2025-02-02	395
132	SWCI	2025-02-08	152
132	ELO	2025-02-08	374
132	Massey	2025-02-08	390
132	USAU	2025-02-08	394
132	SWCI	2025-02-09	149
132	ELO	2025-02-09	372
132	Massey	2025-02-09	386
132	USAU	2025-02-09	392
132	SWCI	2025-02-12	149
132	ELO	2025-02-12	365
132	Massey	2025-02-12	380
132	USAU	2025-02-12	392
132	SWCI	2025-02-16	164
132	ELO	2025-02-16	365
132	Massey	2025-02-16	371
132	USAU	2025-02-16	382
132	SWCI	2025-02-17	165
132	ELO	2025-02-17	356
132	Massey	2025-02-17	374
132	USAU	2025-02-17	380
132	SWCI	2025-02-22	208
132	ELO	2025-02-22	354
132	Massey	2025-02-22	363
132	USAU	2025-02-22	382
132	SWCI	2025-02-23	205
132	ELO	2025-02-23	352
132	Massey	2025-02-23	359
132	USAU	2025-02-23	381
132	SWCI	2025-03-02	272
132	ELO	2025-03-02	344
132	Massey	2025-03-02	347
132	USAU	2025-03-02	358
132	SWCI	2025-03-08	276
132	ELO	2025-03-08	326
132	Massey	2025-03-08	291
132	USAU	2025-03-08	356
132	SWCI	2025-03-09	280
132	ELO	2025-03-09	324
132	Massey	2025-03-09	280
132	USAU	2025-03-09	355
132	SWCI	2025-03-15	299
132	ELO	2025-03-15	325
132	Massey	2025-03-15	334
132	USAU	2025-03-15	339
132	SWCI	2025-03-16	300
132	ELO	2025-03-16	322
132	Massey	2025-03-16	323
132	USAU	2025-03-16	340
132	SWCI	2025-03-23	320
132	ELO	2025-03-23	314
132	Massey	2025-03-23	310
132	USAU	2025-03-23	319
132	SWCI	2025-03-29	350
132	ELO	2025-03-29	305
132	Massey	2025-03-29	329
132	USAU	2025-03-29	333
132	SWCI	2025-03-30	353
132	ELO	2025-03-30	304
132	Massey	2025-03-30	325
132	USAU	2025-03-30	340
133	SWCI	2025-01-26	163
133	ELO	2025-01-26	141
133	Massey	2025-01-26	97
133	USAU	2025-01-26	130
133	SWCI	2025-02-02	202
133	ELO	2025-02-02	135
133	Massey	2025-02-02	235
133	USAU	2025-02-02	144
133	SWCI	2025-02-08	227
133	ELO	2025-02-08	145
133	Massey	2025-02-08	310
133	USAU	2025-02-08	147
133	SWCI	2025-02-09	227
133	ELO	2025-02-09	142
133	Massey	2025-02-09	246
133	USAU	2025-02-09	145
133	SWCI	2025-02-12	227
133	ELO	2025-02-12	146
133	Massey	2025-02-12	330
133	USAU	2025-02-12	145
133	SWCI	2025-02-16	103
133	ELO	2025-02-16	146
133	Massey	2025-02-16	323
133	USAU	2025-02-16	324
133	SWCI	2025-02-17	103
133	ELO	2025-02-17	320
133	Massey	2025-02-17	321
133	USAU	2025-02-17	324
133	SWCI	2025-02-22	127
133	ELO	2025-02-22	318
133	Massey	2025-02-22	295
133	USAU	2025-02-22	313
133	SWCI	2025-02-23	125
133	ELO	2025-02-23	318
133	Massey	2025-02-23	283
133	USAU	2025-02-23	308
133	SWCI	2025-03-02	164
133	ELO	2025-03-02	300
133	Massey	2025-03-02	208
133	USAU	2025-03-02	258
133	SWCI	2025-03-08	183
133	ELO	2025-03-08	268
133	Massey	2025-03-08	188
133	USAU	2025-03-08	247
133	SWCI	2025-03-09	188
133	ELO	2025-03-09	267
133	Massey	2025-03-09	190
133	USAU	2025-03-09	243
133	SWCI	2025-03-15	196
133	ELO	2025-03-15	260
133	Massey	2025-03-15	203
133	USAU	2025-03-15	134
133	SWCI	2025-03-16	201
133	ELO	2025-03-16	257
133	Massey	2025-03-16	135
133	USAU	2025-03-16	120
133	SWCI	2025-03-23	214
133	ELO	2025-03-23	237
133	Massey	2025-03-23	158
133	USAU	2025-03-23	122
133	SWCI	2025-03-29	207
133	ELO	2025-03-29	232
133	Massey	2025-03-29	136
133	USAU	2025-03-29	124
133	SWCI	2025-03-30	216
133	ELO	2025-03-30	233
133	Massey	2025-03-30	138
133	USAU	2025-03-30	129
134	SWCI	2025-01-26	164
134	ELO	2025-01-26	142
134	Massey	2025-01-26	156
134	USAU	2025-01-26	131
134	SWCI	2025-02-02	24
134	ELO	2025-02-02	136
134	Massey	2025-02-02	343
134	USAU	2025-02-02	356
134	SWCI	2025-02-08	32
134	ELO	2025-02-08	16
134	Massey	2025-02-08	326
134	USAU	2025-02-08	330
134	SWCI	2025-02-09	35
134	ELO	2025-02-09	17
134	Massey	2025-02-09	302
134	USAU	2025-02-09	321
134	SWCI	2025-02-12	35
134	ELO	2025-02-12	21
134	Massey	2025-02-12	297
134	USAU	2025-02-12	321
134	SWCI	2025-02-16	11
134	ELO	2025-02-16	21
134	Massey	2025-02-16	127
134	USAU	2025-02-16	59
134	SWCI	2025-02-17	12
134	ELO	2025-02-17	6
134	Massey	2025-02-17	115
134	USAU	2025-02-17	57
134	SWCI	2025-02-22	12
134	ELO	2025-02-22	6
134	Massey	2025-02-22	118
134	USAU	2025-02-22	72
134	SWCI	2025-02-23	14
134	ELO	2025-02-23	6
134	Massey	2025-02-23	115
134	USAU	2025-02-23	68
134	SWCI	2025-03-02	24
134	ELO	2025-03-02	9
134	Massey	2025-03-02	100
134	USAU	2025-03-02	73
134	SWCI	2025-03-08	26
134	ELO	2025-03-08	14
134	Massey	2025-03-08	89
134	USAU	2025-03-08	67
134	SWCI	2025-03-09	26
134	ELO	2025-03-09	14
134	Massey	2025-03-09	91
134	USAU	2025-03-09	68
134	SWCI	2025-03-15	24
134	ELO	2025-03-15	14
134	Massey	2025-03-15	127
134	USAU	2025-03-15	56
134	SWCI	2025-03-16	22
134	ELO	2025-03-16	14
134	Massey	2025-03-16	74
134	USAU	2025-03-16	57
134	SWCI	2025-03-23	25
134	ELO	2025-03-23	16
134	Massey	2025-03-23	94
134	USAU	2025-03-23	55
134	SWCI	2025-03-29	21
134	ELO	2025-03-29	18
134	Massey	2025-03-29	75
134	USAU	2025-03-29	57
134	SWCI	2025-03-30	18
134	ELO	2025-03-30	18
134	Massey	2025-03-30	76
134	USAU	2025-03-30	58
135	SWCI	2025-01-26	165
135	ELO	2025-01-26	143
135	Massey	2025-01-26	166
135	USAU	2025-01-26	132
135	SWCI	2025-02-02	203
135	ELO	2025-02-02	137
135	Massey	2025-02-02	238
135	USAU	2025-02-02	145
135	SWCI	2025-02-08	43
135	ELO	2025-02-08	146
135	Massey	2025-02-08	10
135	USAU	2025-02-08	63
135	SWCI	2025-02-09	17
135	ELO	2025-02-09	18
135	Massey	2025-02-09	29
135	USAU	2025-02-09	33
135	SWCI	2025-02-12	17
135	ELO	2025-02-12	22
135	Massey	2025-02-12	21
135	USAU	2025-02-12	33
135	SWCI	2025-02-16	21
135	ELO	2025-02-16	22
135	Massey	2025-02-16	23
135	USAU	2025-02-16	33
135	SWCI	2025-02-17	21
135	ELO	2025-02-17	26
135	Massey	2025-02-17	18
135	USAU	2025-02-17	32
135	SWCI	2025-02-22	27
135	ELO	2025-02-22	27
135	Massey	2025-02-22	37
135	USAU	2025-02-22	43
135	SWCI	2025-02-23	26
135	ELO	2025-02-23	27
135	Massey	2025-02-23	31
135	USAU	2025-02-23	44
135	SWCI	2025-03-02	32
135	ELO	2025-03-02	20
135	Massey	2025-03-02	103
135	USAU	2025-03-02	93
135	SWCI	2025-03-08	32
135	ELO	2025-03-08	29
135	Massey	2025-03-08	95
135	USAU	2025-03-08	83
135	SWCI	2025-03-09	32
135	ELO	2025-03-09	29
135	Massey	2025-03-09	94
135	USAU	2025-03-09	87
135	SWCI	2025-03-15	32
135	ELO	2025-03-15	28
135	Massey	2025-03-15	141
135	USAU	2025-03-15	75
135	SWCI	2025-03-16	54
135	ELO	2025-03-16	30
135	Massey	2025-03-16	88
135	USAU	2025-03-16	80
135	SWCI	2025-03-23	54
135	ELO	2025-03-23	80
135	Massey	2025-03-23	108
135	USAU	2025-03-23	75
135	SWCI	2025-03-29	47
135	ELO	2025-03-29	90
135	Massey	2025-03-29	80
135	USAU	2025-03-29	76
135	SWCI	2025-03-30	43
135	ELO	2025-03-30	90
135	Massey	2025-03-30	78
135	USAU	2025-03-30	76
136	SWCI	2025-01-26	42
136	ELO	2025-01-26	396
136	Massey	2025-01-26	360
136	USAU	2025-01-26	377
136	SWCI	2025-02-02	85
136	ELO	2025-02-02	382
136	Massey	2025-02-02	87
136	USAU	2025-02-02	51
136	SWCI	2025-02-08	110
136	ELO	2025-02-08	378
136	Massey	2025-02-08	86
136	USAU	2025-02-08	59
136	SWCI	2025-02-09	110
136	ELO	2025-02-09	376
136	Massey	2025-02-09	65
136	USAU	2025-02-09	46
136	SWCI	2025-02-12	111
136	ELO	2025-02-12	370
136	Massey	2025-02-12	62
136	USAU	2025-02-12	46
136	SWCI	2025-02-16	128
136	ELO	2025-02-16	370
136	Massey	2025-02-16	91
136	USAU	2025-02-16	53
136	SWCI	2025-02-17	129
136	ELO	2025-02-17	361
136	Massey	2025-02-17	82
136	USAU	2025-02-17	54
136	SWCI	2025-02-22	156
136	ELO	2025-02-22	358
136	Massey	2025-02-22	82
136	USAU	2025-02-22	57
136	SWCI	2025-02-23	160
136	ELO	2025-02-23	356
136	Massey	2025-02-23	83
136	USAU	2025-02-23	59
136	SWCI	2025-03-02	211
136	ELO	2025-03-02	347
136	Massey	2025-03-02	64
136	USAU	2025-03-02	59
136	SWCI	2025-03-08	212
136	ELO	2025-03-08	332
136	Massey	2025-03-08	65
136	USAU	2025-03-08	62
136	SWCI	2025-03-09	212
136	ELO	2025-03-09	330
136	Massey	2025-03-09	64
136	USAU	2025-03-09	58
136	SWCI	2025-03-15	106
136	ELO	2025-03-15	332
136	Massey	2025-03-15	111
136	USAU	2025-03-15	49
136	SWCI	2025-03-16	124
136	ELO	2025-03-16	329
136	Massey	2025-03-16	53
136	USAU	2025-03-16	47
136	SWCI	2025-03-23	128
136	ELO	2025-03-23	215
136	Massey	2025-03-23	79
136	USAU	2025-03-23	50
136	SWCI	2025-03-29	78
136	ELO	2025-03-29	212
136	Massey	2025-03-29	58
136	USAU	2025-03-29	55
136	SWCI	2025-03-30	39
136	ELO	2025-03-30	210
136	Massey	2025-03-30	60
136	USAU	2025-03-30	57
137	SWCI	2025-01-26	166
137	ELO	2025-01-26	144
137	Massey	2025-01-26	292
137	USAU	2025-01-26	133
137	SWCI	2025-02-02	2
137	ELO	2025-02-02	138
137	Massey	2025-02-02	2
137	USAU	2025-02-02	9
137	SWCI	2025-02-08	2
137	ELO	2025-02-08	5
137	Massey	2025-02-08	11
137	USAU	2025-02-08	11
137	SWCI	2025-02-09	3
137	ELO	2025-02-09	5
137	Massey	2025-02-09	49
137	USAU	2025-02-09	15
137	SWCI	2025-02-12	3
137	ELO	2025-02-12	6
137	Massey	2025-02-12	14
137	USAU	2025-02-12	15
137	SWCI	2025-02-16	6
137	ELO	2025-02-16	7
137	Massey	2025-02-16	40
137	USAU	2025-02-16	18
137	SWCI	2025-02-17	6
137	ELO	2025-02-17	12
137	Massey	2025-02-17	55
137	USAU	2025-02-17	17
137	SWCI	2025-02-22	16
137	ELO	2025-02-22	12
137	Massey	2025-02-22	156
137	USAU	2025-02-22	268
137	SWCI	2025-02-23	10
137	ELO	2025-02-23	12
137	Massey	2025-02-23	187
137	USAU	2025-02-23	274
137	SWCI	2025-03-02	20
137	ELO	2025-03-02	6
137	Massey	2025-03-02	154
137	USAU	2025-03-02	227
137	SWCI	2025-03-08	19
137	ELO	2025-03-08	11
137	Massey	2025-03-08	146
137	USAU	2025-03-08	225
137	SWCI	2025-03-09	20
137	ELO	2025-03-09	11
137	Massey	2025-03-09	149
137	USAU	2025-03-09	221
137	SWCI	2025-03-15	20
137	ELO	2025-03-15	12
137	Massey	2025-03-15	191
137	USAU	2025-03-15	112
137	SWCI	2025-03-16	46
137	ELO	2025-03-16	12
137	Massey	2025-03-16	144
137	USAU	2025-03-16	137
137	SWCI	2025-03-23	44
137	ELO	2025-03-23	41
137	Massey	2025-03-23	170
137	USAU	2025-03-23	132
137	SWCI	2025-03-29	52
137	ELO	2025-03-29	45
137	Massey	2025-03-29	140
137	USAU	2025-03-29	139
137	SWCI	2025-03-30	49
137	ELO	2025-03-30	48
137	Massey	2025-03-30	136
137	USAU	2025-03-30	135
138	SWCI	2025-01-26	167
138	ELO	2025-01-26	145
138	Massey	2025-01-26	293
138	USAU	2025-01-26	134
138	SWCI	2025-02-02	46
138	ELO	2025-02-02	139
138	Massey	2025-02-02	50
138	USAU	2025-02-02	60
138	SWCI	2025-02-08	61
138	ELO	2025-02-08	336
138	Massey	2025-02-08	121
138	USAU	2025-02-08	77
138	SWCI	2025-02-09	61
138	ELO	2025-02-09	331
138	Massey	2025-02-09	300
138	USAU	2025-02-09	80
138	SWCI	2025-02-12	61
138	ELO	2025-02-12	320
138	Massey	2025-02-12	114
138	USAU	2025-02-12	80
138	SWCI	2025-02-16	62
138	ELO	2025-02-16	317
138	Massey	2025-02-16	269
138	USAU	2025-02-16	77
138	SWCI	2025-02-17	63
138	ELO	2025-02-17	308
138	Massey	2025-02-17	298
138	USAU	2025-02-17	75
138	SWCI	2025-02-22	144
138	ELO	2025-02-22	341
138	Massey	2025-02-22	355
138	USAU	2025-02-22	353
138	SWCI	2025-02-23	144
138	ELO	2025-02-23	341
138	Massey	2025-02-23	350
138	USAU	2025-02-23	360
138	SWCI	2025-03-02	190
138	ELO	2025-03-02	331
138	Massey	2025-03-02	328
138	USAU	2025-03-02	329
138	SWCI	2025-03-08	191
138	ELO	2025-03-08	307
138	Massey	2025-03-08	276
138	USAU	2025-03-08	329
138	SWCI	2025-03-09	194
138	ELO	2025-03-09	306
138	Massey	2025-03-09	266
138	USAU	2025-03-09	326
138	SWCI	2025-03-15	253
138	ELO	2025-03-15	302
138	Massey	2025-03-15	335
138	USAU	2025-03-15	312
138	SWCI	2025-03-16	259
138	ELO	2025-03-16	301
138	Massey	2025-03-16	302
138	USAU	2025-03-16	309
138	SWCI	2025-03-23	271
138	ELO	2025-03-23	342
138	Massey	2025-03-23	299
138	USAU	2025-03-23	280
138	SWCI	2025-03-29	288
138	ELO	2025-03-29	337
138	Massey	2025-03-29	279
138	USAU	2025-03-29	257
138	SWCI	2025-03-30	295
138	ELO	2025-03-30	336
138	Massey	2025-03-30	274
138	USAU	2025-03-30	257
139	SWCI	2025-01-26	168
139	ELO	2025-01-26	146
139	Massey	2025-01-26	294
139	USAU	2025-01-26	135
139	SWCI	2025-02-02	64
139	ELO	2025-02-02	140
139	Massey	2025-02-02	38
139	USAU	2025-02-02	67
139	SWCI	2025-02-08	87
139	ELO	2025-02-08	49
139	Massey	2025-02-08	100
139	USAU	2025-02-08	84
139	SWCI	2025-02-09	84
139	ELO	2025-02-09	52
139	Massey	2025-02-09	276
139	USAU	2025-02-09	86
139	SWCI	2025-02-12	84
139	ELO	2025-02-12	64
139	Massey	2025-02-12	98
139	USAU	2025-02-12	86
139	SWCI	2025-02-16	93
139	ELO	2025-02-16	64
139	Massey	2025-02-16	164
139	USAU	2025-02-16	84
139	SWCI	2025-02-17	94
139	ELO	2025-02-17	70
139	Massey	2025-02-17	279
139	USAU	2025-02-17	82
139	SWCI	2025-02-22	136
139	ELO	2025-02-22	303
139	Massey	2025-02-22	321
139	USAU	2025-02-22	337
139	SWCI	2025-02-23	136
139	ELO	2025-02-23	301
139	Massey	2025-02-23	319
139	USAU	2025-02-23	341
139	SWCI	2025-03-02	182
139	ELO	2025-03-02	284
139	Massey	2025-03-02	278
139	USAU	2025-03-02	315
139	SWCI	2025-03-08	185
139	ELO	2025-03-08	240
139	Massey	2025-03-08	231
139	USAU	2025-03-08	316
139	SWCI	2025-03-09	186
139	ELO	2025-03-09	239
139	Massey	2025-03-09	222
139	USAU	2025-03-09	312
139	SWCI	2025-03-15	248
139	ELO	2025-03-15	232
139	Massey	2025-03-15	310
139	USAU	2025-03-15	316
139	SWCI	2025-03-16	243
139	ELO	2025-03-16	229
139	Massey	2025-03-16	265
139	USAU	2025-03-16	317
139	SWCI	2025-03-23	254
139	ELO	2025-03-23	322
139	Massey	2025-03-23	284
139	USAU	2025-03-23	297
139	SWCI	2025-03-29	258
139	ELO	2025-03-29	314
139	Massey	2025-03-29	261
139	USAU	2025-03-29	269
139	SWCI	2025-03-30	269
139	ELO	2025-03-30	313
139	Massey	2025-03-30	260
139	USAU	2025-03-30	270
140	SWCI	2025-01-26	169
140	ELO	2025-01-26	147
140	Massey	2025-01-26	232
140	USAU	2025-01-26	136
140	SWCI	2025-02-02	204
140	ELO	2025-02-02	141
140	Massey	2025-02-02	124
140	USAU	2025-02-02	146
140	SWCI	2025-02-08	228
140	ELO	2025-02-08	147
140	Massey	2025-02-08	104
140	USAU	2025-02-08	148
140	SWCI	2025-02-09	228
140	ELO	2025-02-09	143
140	Massey	2025-02-09	114
140	USAU	2025-02-09	146
140	SWCI	2025-02-12	228
140	ELO	2025-02-12	147
140	Massey	2025-02-12	307
140	USAU	2025-02-12	146
140	SWCI	2025-02-16	242
140	ELO	2025-02-16	147
140	Massey	2025-02-16	119
140	USAU	2025-02-16	138
140	SWCI	2025-02-17	242
140	ELO	2025-02-17	149
140	Massey	2025-02-17	342
140	USAU	2025-02-17	136
140	SWCI	2025-02-22	88
140	ELO	2025-02-22	148
140	Massey	2025-02-22	353
140	USAU	2025-02-22	360
140	SWCI	2025-02-23	140
140	ELO	2025-02-23	146
140	Massey	2025-02-23	338
140	USAU	2025-02-23	364
140	SWCI	2025-03-02	195
140	ELO	2025-03-02	311
140	Massey	2025-03-02	307
140	USAU	2025-03-02	337
140	SWCI	2025-03-08	197
140	ELO	2025-03-08	283
140	Massey	2025-03-08	255
140	USAU	2025-03-08	335
140	SWCI	2025-03-09	200
140	ELO	2025-03-09	283
140	Massey	2025-03-09	247
140	USAU	2025-03-09	333
140	SWCI	2025-03-15	228
140	ELO	2025-03-15	276
140	Massey	2025-03-15	268
140	USAU	2025-03-15	254
140	SWCI	2025-03-16	240
140	ELO	2025-03-16	273
140	Massey	2025-03-16	241
140	USAU	2025-03-16	283
140	SWCI	2025-03-23	242
140	ELO	2025-03-23	303
140	Massey	2025-03-23	262
140	USAU	2025-03-23	261
140	SWCI	2025-03-29	244
140	ELO	2025-03-29	292
140	Massey	2025-03-29	236
140	USAU	2025-03-29	238
140	SWCI	2025-03-30	245
140	ELO	2025-03-30	292
140	Massey	2025-03-30	234
140	USAU	2025-03-30	237
141	SWCI	2025-01-26	170
141	ELO	2025-01-26	148
141	Massey	2025-01-26	233
141	USAU	2025-01-26	137
141	SWCI	2025-02-02	205
141	ELO	2025-02-02	142
141	Massey	2025-02-02	109
141	USAU	2025-02-02	147
141	SWCI	2025-02-08	229
141	ELO	2025-02-08	148
141	Massey	2025-02-08	73
141	USAU	2025-02-08	149
141	SWCI	2025-02-09	229
141	ELO	2025-02-09	144
141	Massey	2025-02-09	287
141	USAU	2025-02-09	147
141	SWCI	2025-02-12	229
141	ELO	2025-02-12	148
141	Massey	2025-02-12	324
141	USAU	2025-02-12	147
141	SWCI	2025-02-16	243
141	ELO	2025-02-16	148
141	Massey	2025-02-16	83
141	USAU	2025-02-16	139
141	SWCI	2025-02-17	243
141	ELO	2025-02-17	150
141	Massey	2025-02-17	46
141	USAU	2025-02-17	137
141	SWCI	2025-02-22	271
141	ELO	2025-02-22	149
141	Massey	2025-02-22	167
141	USAU	2025-02-22	140
141	SWCI	2025-02-23	271
141	ELO	2025-02-23	147
141	Massey	2025-02-23	345
141	USAU	2025-02-23	142
141	SWCI	2025-03-02	336
141	ELO	2025-03-02	159
141	Massey	2025-03-02	392
141	USAU	2025-03-02	156
141	SWCI	2025-03-08	339
141	ELO	2025-03-08	176
141	Massey	2025-03-08	306
141	USAU	2025-03-08	153
141	SWCI	2025-03-09	342
141	ELO	2025-03-09	175
141	Massey	2025-03-09	294
141	USAU	2025-03-09	154
141	SWCI	2025-03-15	60
141	ELO	2025-03-15	176
141	Massey	2025-03-15	193
141	USAU	2025-03-15	219
141	SWCI	2025-03-16	82
141	ELO	2025-03-16	173
141	Massey	2025-03-16	138
141	USAU	2025-03-16	208
141	SWCI	2025-03-23	89
141	ELO	2025-03-23	62
141	Massey	2025-03-23	167
141	USAU	2025-03-23	180
141	SWCI	2025-03-29	127
141	ELO	2025-03-29	70
141	Massey	2025-03-29	121
141	USAU	2025-03-29	137
141	SWCI	2025-03-30	96
141	ELO	2025-03-30	71
141	Massey	2025-03-30	87
141	USAU	2025-03-30	97
142	SWCI	2025-01-26	171
142	ELO	2025-01-26	149
142	Massey	2025-01-26	234
142	USAU	2025-01-26	138
142	SWCI	2025-02-02	206
142	ELO	2025-02-02	143
142	Massey	2025-02-02	111
142	USAU	2025-02-02	148
142	SWCI	2025-02-08	230
142	ELO	2025-02-08	149
142	Massey	2025-02-08	138
142	USAU	2025-02-08	150
142	SWCI	2025-02-09	230
142	ELO	2025-02-09	145
142	Massey	2025-02-09	296
142	USAU	2025-02-09	148
142	SWCI	2025-02-12	230
142	ELO	2025-02-12	149
142	Massey	2025-02-12	90
142	USAU	2025-02-12	148
142	SWCI	2025-02-16	244
142	ELO	2025-02-16	149
142	Massey	2025-02-16	43
142	USAU	2025-02-16	140
142	SWCI	2025-02-17	244
142	ELO	2025-02-17	151
142	Massey	2025-02-17	124
142	USAU	2025-02-17	138
142	SWCI	2025-02-22	272
142	ELO	2025-02-22	150
142	Massey	2025-02-22	125
142	USAU	2025-02-22	141
142	SWCI	2025-02-23	272
142	ELO	2025-02-23	148
142	Massey	2025-02-23	13
142	USAU	2025-02-23	143
142	SWCI	2025-03-02	202
142	ELO	2025-03-02	160
142	Massey	2025-03-02	274
142	USAU	2025-03-02	323
142	SWCI	2025-03-08	193
142	ELO	2025-03-08	278
142	Massey	2025-03-08	216
142	USAU	2025-03-08	321
142	SWCI	2025-03-09	191
142	ELO	2025-03-09	277
142	Massey	2025-03-09	224
142	USAU	2025-03-09	328
142	SWCI	2025-03-15	211
142	ELO	2025-03-15	269
142	Massey	2025-03-15	312
142	USAU	2025-03-15	341
142	SWCI	2025-03-16	203
142	ELO	2025-03-16	267
142	Massey	2025-03-16	256
142	USAU	2025-03-16	331
142	SWCI	2025-03-23	233
142	ELO	2025-03-23	256
142	Massey	2025-03-23	316
142	USAU	2025-03-23	349
142	SWCI	2025-03-29	323
142	ELO	2025-03-29	246
142	Massey	2025-03-29	333
142	USAU	2025-03-29	338
142	SWCI	2025-03-30	332
142	ELO	2025-03-30	248
142	Massey	2025-03-30	340
142	USAU	2025-03-30	350
143	SWCI	2025-01-26	172
143	ELO	2025-01-26	150
143	Massey	2025-01-26	235
143	USAU	2025-01-26	139
143	SWCI	2025-02-02	207
143	ELO	2025-02-02	144
143	Massey	2025-02-02	110
143	USAU	2025-02-02	149
143	SWCI	2025-02-08	231
143	ELO	2025-02-08	150
143	Massey	2025-02-08	296
143	USAU	2025-02-08	151
143	SWCI	2025-02-09	231
143	ELO	2025-02-09	146
143	Massey	2025-02-09	344
143	USAU	2025-02-09	149
143	SWCI	2025-02-12	231
143	ELO	2025-02-12	150
143	Massey	2025-02-12	100
143	USAU	2025-02-12	149
143	SWCI	2025-02-16	245
143	ELO	2025-02-16	150
143	Massey	2025-02-16	38
143	USAU	2025-02-16	141
143	SWCI	2025-02-17	245
143	ELO	2025-02-17	152
143	Massey	2025-02-17	97
143	USAU	2025-02-17	139
143	SWCI	2025-02-22	273
143	ELO	2025-02-22	151
143	Massey	2025-02-22	289
143	USAU	2025-02-22	142
143	SWCI	2025-02-23	273
143	ELO	2025-02-23	149
143	Massey	2025-02-23	378
143	USAU	2025-02-23	144
143	SWCI	2025-03-02	93
143	ELO	2025-03-02	161
143	Massey	2025-03-02	145
143	USAU	2025-03-02	252
143	SWCI	2025-03-08	94
143	ELO	2025-03-08	88
143	Massey	2025-03-08	131
143	USAU	2025-03-08	244
143	SWCI	2025-03-09	97
143	ELO	2025-03-09	90
143	Massey	2025-03-09	137
143	USAU	2025-03-09	251
143	SWCI	2025-03-15	113
143	ELO	2025-03-15	92
143	Massey	2025-03-15	228
143	USAU	2025-03-15	257
143	SWCI	2025-03-16	113
143	ELO	2025-03-16	94
143	Massey	2025-03-16	167
143	USAU	2025-03-16	249
143	SWCI	2025-03-23	119
143	ELO	2025-03-23	102
143	Massey	2025-03-23	220
143	USAU	2025-03-23	264
143	SWCI	2025-03-29	164
143	ELO	2025-03-29	110
143	Massey	2025-03-29	224
143	USAU	2025-03-29	252
143	SWCI	2025-03-30	136
143	ELO	2025-03-30	110
143	Massey	2025-03-30	230
143	USAU	2025-03-30	239
144	SWCI	2025-01-26	173
144	ELO	2025-01-26	151
144	Massey	2025-01-26	218
144	USAU	2025-01-26	140
144	SWCI	2025-02-02	208
144	ELO	2025-02-02	145
144	Massey	2025-02-02	106
144	USAU	2025-02-02	150
144	SWCI	2025-02-08	232
144	ELO	2025-02-08	151
144	Massey	2025-02-08	298
144	USAU	2025-02-08	152
144	SWCI	2025-02-09	232
144	ELO	2025-02-09	147
144	Massey	2025-02-09	89
144	USAU	2025-02-09	150
144	SWCI	2025-02-12	232
144	ELO	2025-02-12	151
144	Massey	2025-02-12	299
144	USAU	2025-02-12	150
144	SWCI	2025-02-16	246
144	ELO	2025-02-16	151
144	Massey	2025-02-16	112
144	USAU	2025-02-16	142
144	SWCI	2025-02-17	246
144	ELO	2025-02-17	153
144	Massey	2025-02-17	71
144	USAU	2025-02-17	140
144	SWCI	2025-02-22	274
144	ELO	2025-02-22	152
144	Massey	2025-02-22	153
144	USAU	2025-02-22	143
144	SWCI	2025-02-23	274
144	ELO	2025-02-23	150
144	Massey	2025-02-23	158
144	USAU	2025-02-23	145
144	SWCI	2025-03-02	270
144	ELO	2025-03-02	162
144	Massey	2025-03-02	379
144	USAU	2025-03-02	365
144	SWCI	2025-03-08	274
144	ELO	2025-03-08	354
144	Massey	2025-03-08	368
144	USAU	2025-03-08	366
144	SWCI	2025-03-09	278
144	ELO	2025-03-09	352
144	Massey	2025-03-09	378
144	USAU	2025-03-09	370
144	SWCI	2025-03-15	302
144	ELO	2025-03-15	352
144	Massey	2025-03-15	390
144	USAU	2025-03-15	380
144	SWCI	2025-03-16	299
144	ELO	2025-03-16	350
144	Massey	2025-03-16	387
144	USAU	2025-03-16	374
144	SWCI	2025-03-23	319
144	ELO	2025-03-23	343
144	Massey	2025-03-23	389
144	USAU	2025-03-23	383
144	SWCI	2025-03-29	300
144	ELO	2025-03-29	338
144	Massey	2025-03-29	378
144	USAU	2025-03-29	362
144	SWCI	2025-03-30	292
144	ELO	2025-03-30	337
144	Massey	2025-03-30	380
144	USAU	2025-03-30	367
145	SWCI	2025-01-26	174
145	ELO	2025-01-26	152
145	Massey	2025-01-26	219
145	USAU	2025-01-26	141
145	SWCI	2025-02-02	209
145	ELO	2025-02-02	146
145	Massey	2025-02-02	180
145	USAU	2025-02-02	151
145	SWCI	2025-02-08	233
145	ELO	2025-02-08	152
145	Massey	2025-02-08	128
145	USAU	2025-02-08	153
145	SWCI	2025-02-09	233
145	ELO	2025-02-09	148
145	Massey	2025-02-09	95
145	USAU	2025-02-09	151
145	SWCI	2025-02-12	233
145	ELO	2025-02-12	152
145	Massey	2025-02-12	328
145	USAU	2025-02-12	151
145	SWCI	2025-02-16	247
145	ELO	2025-02-16	152
145	Massey	2025-02-16	287
145	USAU	2025-02-16	143
145	SWCI	2025-02-17	247
145	ELO	2025-02-17	154
145	Massey	2025-02-17	284
145	USAU	2025-02-17	141
145	SWCI	2025-02-22	275
145	ELO	2025-02-22	153
145	Massey	2025-02-22	12
145	USAU	2025-02-22	144
145	SWCI	2025-02-23	275
145	ELO	2025-02-23	151
145	Massey	2025-02-23	305
145	USAU	2025-02-23	146
145	SWCI	2025-03-02	187
145	ELO	2025-03-02	163
145	Massey	2025-03-02	313
145	USAU	2025-03-02	334
145	SWCI	2025-03-08	189
145	ELO	2025-03-08	244
145	Massey	2025-03-08	260
145	USAU	2025-03-08	333
145	SWCI	2025-03-09	192
145	ELO	2025-03-09	243
145	Massey	2025-03-09	260
145	USAU	2025-03-09	334
145	SWCI	2025-03-15	246
145	ELO	2025-03-15	236
145	Massey	2025-03-15	351
145	USAU	2025-03-15	356
145	SWCI	2025-03-16	236
145	ELO	2025-03-16	232
145	Massey	2025-03-16	331
145	USAU	2025-03-16	343
145	SWCI	2025-03-23	243
145	ELO	2025-03-23	254
145	Massey	2025-03-23	340
145	USAU	2025-03-23	353
145	SWCI	2025-03-29	246
145	ELO	2025-03-29	243
145	Massey	2025-03-29	341
145	USAU	2025-03-29	331
145	SWCI	2025-03-30	237
145	ELO	2025-03-30	245
145	Massey	2025-03-30	334
145	USAU	2025-03-30	331
146	SWCI	2025-01-26	175
146	ELO	2025-01-26	153
146	Massey	2025-01-26	85
146	USAU	2025-01-26	142
146	SWCI	2025-02-02	210
146	ELO	2025-02-02	147
146	Massey	2025-02-02	114
146	USAU	2025-02-02	152
146	SWCI	2025-02-08	234
146	ELO	2025-02-08	153
146	Massey	2025-02-08	127
146	USAU	2025-02-08	154
146	SWCI	2025-02-09	234
146	ELO	2025-02-09	149
146	Massey	2025-02-09	134
146	USAU	2025-02-09	152
146	SWCI	2025-02-12	234
146	ELO	2025-02-12	153
146	Massey	2025-02-12	278
146	USAU	2025-02-12	152
146	SWCI	2025-02-16	248
146	ELO	2025-02-16	153
146	Massey	2025-02-16	107
146	USAU	2025-02-16	144
146	SWCI	2025-02-17	248
146	ELO	2025-02-17	155
146	Massey	2025-02-17	48
146	USAU	2025-02-17	142
146	SWCI	2025-02-22	276
146	ELO	2025-02-22	154
146	Massey	2025-02-22	86
146	USAU	2025-02-22	145
146	SWCI	2025-02-23	276
146	ELO	2025-02-23	152
146	Massey	2025-02-23	190
146	USAU	2025-02-23	147
146	SWCI	2025-03-02	37
146	ELO	2025-03-02	164
146	Massey	2025-03-02	97
146	USAU	2025-03-02	84
146	SWCI	2025-03-08	30
146	ELO	2025-03-08	54
146	Massey	2025-03-08	83
146	USAU	2025-03-08	69
146	SWCI	2025-03-09	30
146	ELO	2025-03-09	55
146	Massey	2025-03-09	92
146	USAU	2025-03-09	83
146	SWCI	2025-03-15	29
146	ELO	2025-03-15	57
146	Massey	2025-03-15	165
146	USAU	2025-03-15	105
146	SWCI	2025-03-16	26
146	ELO	2025-03-16	60
146	Massey	2025-03-16	102
146	USAU	2025-03-16	96
146	SWCI	2025-03-23	94
146	ELO	2025-03-23	68
146	Massey	2025-03-23	193
146	USAU	2025-03-23	195
146	SWCI	2025-03-29	86
146	ELO	2025-03-29	148
146	Massey	2025-03-29	161
146	USAU	2025-03-29	154
146	SWCI	2025-03-30	81
146	ELO	2025-03-30	151
146	Massey	2025-03-30	155
146	USAU	2025-03-30	147
147	SWCI	2025-01-26	176
147	ELO	2025-01-26	154
147	Massey	2025-01-26	65
147	USAU	2025-01-26	143
147	SWCI	2025-02-02	211
147	ELO	2025-02-02	148
147	Massey	2025-02-02	211
147	USAU	2025-02-02	153
147	SWCI	2025-02-08	235
147	ELO	2025-02-08	154
147	Massey	2025-02-08	144
147	USAU	2025-02-08	155
147	SWCI	2025-02-09	235
147	ELO	2025-02-09	150
147	Massey	2025-02-09	383
147	USAU	2025-02-09	153
147	SWCI	2025-02-12	235
147	ELO	2025-02-12	154
147	Massey	2025-02-12	71
147	USAU	2025-02-12	153
147	SWCI	2025-02-16	249
147	ELO	2025-02-16	154
147	Massey	2025-02-16	8
147	USAU	2025-02-16	145
147	SWCI	2025-02-17	249
147	ELO	2025-02-17	156
147	Massey	2025-02-17	307
147	USAU	2025-02-17	143
147	SWCI	2025-02-22	277
147	ELO	2025-02-22	155
147	Massey	2025-02-22	393
147	USAU	2025-02-22	146
147	SWCI	2025-02-23	277
147	ELO	2025-02-23	153
147	Massey	2025-02-23	384
147	USAU	2025-02-23	148
147	SWCI	2025-03-02	308
147	ELO	2025-03-02	165
147	Massey	2025-03-02	353
147	USAU	2025-03-02	371
147	SWCI	2025-03-08	316
147	ELO	2025-03-08	375
147	Massey	2025-03-08	299
147	USAU	2025-03-08	369
147	SWCI	2025-03-09	320
147	ELO	2025-03-09	374
147	Massey	2025-03-09	290
147	USAU	2025-03-09	367
147	SWCI	2025-03-15	336
147	ELO	2025-03-15	374
147	Massey	2025-03-15	353
147	USAU	2025-03-15	371
147	SWCI	2025-03-16	333
147	ELO	2025-03-16	373
147	Massey	2025-03-16	344
147	USAU	2025-03-16	370
147	SWCI	2025-03-23	342
147	ELO	2025-03-23	372
147	Massey	2025-03-23	311
147	USAU	2025-03-23	296
147	SWCI	2025-03-29	351
147	ELO	2025-03-29	364
147	Massey	2025-03-29	321
147	USAU	2025-03-29	320
147	SWCI	2025-03-30	364
147	ELO	2025-03-30	363
147	Massey	2025-03-30	337
147	USAU	2025-03-30	337
148	SWCI	2025-01-26	177
148	ELO	2025-01-26	155
148	Massey	2025-01-26	69
148	USAU	2025-01-26	144
148	SWCI	2025-02-02	212
148	ELO	2025-02-02	149
148	Massey	2025-02-02	222
148	USAU	2025-02-02	154
148	SWCI	2025-02-08	236
148	ELO	2025-02-08	155
148	Massey	2025-02-08	81
148	USAU	2025-02-08	156
148	SWCI	2025-02-09	236
148	ELO	2025-02-09	151
148	Massey	2025-02-09	118
148	USAU	2025-02-09	154
148	SWCI	2025-02-12	236
148	ELO	2025-02-12	155
148	Massey	2025-02-12	58
148	USAU	2025-02-12	154
148	SWCI	2025-02-16	250
148	ELO	2025-02-16	155
148	Massey	2025-02-16	270
148	USAU	2025-02-16	146
148	SWCI	2025-02-17	250
148	ELO	2025-02-17	157
148	Massey	2025-02-17	267
148	USAU	2025-02-17	144
148	SWCI	2025-02-22	278
148	ELO	2025-02-22	156
148	Massey	2025-02-22	93
148	USAU	2025-02-22	147
148	SWCI	2025-02-23	278
148	ELO	2025-02-23	154
148	Massey	2025-02-23	294
148	USAU	2025-02-23	149
148	SWCI	2025-03-02	186
148	ELO	2025-03-02	166
148	Massey	2025-03-02	165
148	USAU	2025-03-02	248
148	SWCI	2025-03-08	180
148	ELO	2025-03-08	290
148	Massey	2025-03-08	149
148	USAU	2025-03-08	234
148	SWCI	2025-03-09	176
148	ELO	2025-03-09	290
148	Massey	2025-03-09	163
148	USAU	2025-03-09	246
148	SWCI	2025-03-15	185
148	ELO	2025-03-15	283
148	Massey	2025-03-15	244
148	USAU	2025-03-15	251
148	SWCI	2025-03-16	182
148	ELO	2025-03-16	280
148	Massey	2025-03-16	180
148	USAU	2025-03-16	244
148	SWCI	2025-03-23	104
148	ELO	2025-03-23	267
148	Massey	2025-03-23	241
148	USAU	2025-03-23	263
148	SWCI	2025-03-29	68
148	ELO	2025-03-29	87
148	Massey	2025-03-29	207
148	USAU	2025-03-29	219
148	SWCI	2025-03-30	88
148	ELO	2025-03-30	87
148	Massey	2025-03-30	215
148	USAU	2025-03-30	235
149	SWCI	2025-01-26	178
149	ELO	2025-01-26	156
149	Massey	2025-01-26	192
149	USAU	2025-01-26	145
149	SWCI	2025-02-02	213
149	ELO	2025-02-02	150
149	Massey	2025-02-02	220
149	USAU	2025-02-02	155
149	SWCI	2025-02-08	237
149	ELO	2025-02-08	156
149	Massey	2025-02-08	297
149	USAU	2025-02-08	157
149	SWCI	2025-02-09	237
149	ELO	2025-02-09	152
149	Massey	2025-02-09	292
149	USAU	2025-02-09	155
149	SWCI	2025-02-12	237
149	ELO	2025-02-12	156
149	Massey	2025-02-12	318
149	USAU	2025-02-12	155
149	SWCI	2025-02-16	251
149	ELO	2025-02-16	156
149	Massey	2025-02-16	73
149	USAU	2025-02-16	147
149	SWCI	2025-02-17	251
149	ELO	2025-02-17	158
149	Massey	2025-02-17	273
149	USAU	2025-02-17	145
149	SWCI	2025-02-22	279
149	ELO	2025-02-22	157
149	Massey	2025-02-22	267
149	USAU	2025-02-22	148
149	SWCI	2025-02-23	279
149	ELO	2025-02-23	155
149	Massey	2025-02-23	175
149	USAU	2025-02-23	150
149	SWCI	2025-03-02	337
149	ELO	2025-03-02	167
149	Massey	2025-03-02	388
149	USAU	2025-03-02	157
149	SWCI	2025-03-08	188
149	ELO	2025-03-08	262
149	Massey	2025-03-08	200
149	USAU	2025-03-08	287
149	SWCI	2025-03-09	190
149	ELO	2025-03-09	261
149	Massey	2025-03-09	198
149	USAU	2025-03-09	283
149	SWCI	2025-03-15	202
149	ELO	2025-03-15	254
149	Massey	2025-03-15	276
149	USAU	2025-03-15	293
149	SWCI	2025-03-16	200
149	ELO	2025-03-16	250
149	Massey	2025-03-16	218
149	USAU	2025-03-16	284
149	SWCI	2025-03-23	213
149	ELO	2025-03-23	238
149	Massey	2025-03-23	271
149	USAU	2025-03-23	291
149	SWCI	2025-03-29	149
149	ELO	2025-03-29	233
149	Massey	2025-03-29	200
149	USAU	2025-03-29	214
149	SWCI	2025-03-30	187
149	ELO	2025-03-30	234
149	Massey	2025-03-30	220
149	USAU	2025-03-30	234
150	SWCI	2025-01-26	179
150	ELO	2025-01-26	157
150	Massey	2025-01-26	167
150	USAU	2025-01-26	146
150	SWCI	2025-02-02	214
150	ELO	2025-02-02	151
150	Massey	2025-02-02	240
150	USAU	2025-02-02	156
150	SWCI	2025-02-08	238
150	ELO	2025-02-08	157
150	Massey	2025-02-08	292
150	USAU	2025-02-08	158
150	SWCI	2025-02-09	238
150	ELO	2025-02-09	153
150	Massey	2025-02-09	304
150	USAU	2025-02-09	156
150	SWCI	2025-02-12	238
150	ELO	2025-02-12	157
150	Massey	2025-02-12	309
150	USAU	2025-02-12	156
150	SWCI	2025-02-16	252
150	ELO	2025-02-16	157
150	Massey	2025-02-16	361
150	USAU	2025-02-16	148
150	SWCI	2025-02-17	252
150	ELO	2025-02-17	159
150	Massey	2025-02-17	98
150	USAU	2025-02-17	146
150	SWCI	2025-02-22	69
150	ELO	2025-02-22	158
150	Massey	2025-02-22	117
150	USAU	2025-02-22	67
150	SWCI	2025-02-23	58
150	ELO	2025-02-23	156
150	Massey	2025-02-23	73
150	USAU	2025-02-23	52
150	SWCI	2025-03-02	91
150	ELO	2025-03-02	85
150	Massey	2025-03-02	173
150	USAU	2025-03-02	255
150	SWCI	2025-03-08	90
150	ELO	2025-03-08	149
150	Massey	2025-03-08	138
150	USAU	2025-03-08	235
150	SWCI	2025-03-09	89
150	ELO	2025-03-09	153
150	Massey	2025-03-09	148
150	USAU	2025-03-09	239
150	SWCI	2025-03-15	93
150	ELO	2025-03-15	154
150	Massey	2025-03-15	231
150	USAU	2025-03-15	249
150	SWCI	2025-03-16	96
150	ELO	2025-03-16	156
150	Massey	2025-03-16	172
150	USAU	2025-03-16	239
150	SWCI	2025-03-23	107
150	ELO	2025-03-23	161
150	Massey	2025-03-23	224
150	USAU	2025-03-23	244
150	SWCI	2025-03-29	117
150	ELO	2025-03-29	177
150	Massey	2025-03-29	206
150	USAU	2025-03-29	221
150	SWCI	2025-03-30	97
150	ELO	2025-03-30	178
150	Massey	2025-03-30	200
150	USAU	2025-03-30	215
151	SWCI	2025-01-26	180
151	ELO	2025-01-26	158
151	Massey	2025-01-26	168
151	USAU	2025-01-26	147
151	SWCI	2025-02-02	215
151	ELO	2025-02-02	152
151	Massey	2025-02-02	241
151	USAU	2025-02-02	157
151	SWCI	2025-02-08	239
151	ELO	2025-02-08	158
151	Massey	2025-02-08	302
151	USAU	2025-02-08	159
151	SWCI	2025-02-09	239
151	ELO	2025-02-09	154
151	Massey	2025-02-09	332
151	USAU	2025-02-09	157
151	SWCI	2025-02-12	239
151	ELO	2025-02-12	158
151	Massey	2025-02-12	282
151	USAU	2025-02-12	157
151	SWCI	2025-02-16	253
151	ELO	2025-02-16	158
151	Massey	2025-02-16	320
151	USAU	2025-02-16	149
151	SWCI	2025-02-17	253
151	ELO	2025-02-17	160
151	Massey	2025-02-17	270
151	USAU	2025-02-17	147
151	SWCI	2025-02-22	115
151	ELO	2025-02-22	159
151	Massey	2025-02-22	273
151	USAU	2025-02-22	286
151	SWCI	2025-02-23	103
151	ELO	2025-02-23	157
151	Massey	2025-02-23	133
151	USAU	2025-02-23	279
151	SWCI	2025-03-02	149
151	ELO	2025-03-02	79
151	Massey	2025-03-02	241
151	USAU	2025-03-02	331
151	SWCI	2025-03-08	151
151	ELO	2025-03-08	102
151	Massey	2025-03-08	195
151	USAU	2025-03-08	311
151	SWCI	2025-03-09	147
151	ELO	2025-03-09	105
151	Massey	2025-03-09	193
151	USAU	2025-03-09	303
151	SWCI	2025-03-15	153
151	ELO	2025-03-15	109
151	Massey	2025-03-15	282
151	USAU	2025-03-15	320
151	SWCI	2025-03-16	159
151	ELO	2025-03-16	110
151	Massey	2025-03-16	221
151	USAU	2025-03-16	316
151	SWCI	2025-03-23	172
151	ELO	2025-03-23	118
151	Massey	2025-03-23	266
151	USAU	2025-03-23	310
151	SWCI	2025-03-29	238
151	ELO	2025-03-29	127
151	Massey	2025-03-29	266
151	USAU	2025-03-29	297
151	SWCI	2025-03-30	240
151	ELO	2025-03-30	129
151	Massey	2025-03-30	252
151	USAU	2025-03-30	273
152	SWCI	2025-01-26	181
152	ELO	2025-01-26	159
152	Massey	2025-01-26	196
152	USAU	2025-01-26	148
152	SWCI	2025-02-02	216
152	ELO	2025-02-02	153
152	Massey	2025-02-02	236
152	USAU	2025-02-02	158
152	SWCI	2025-02-08	240
152	ELO	2025-02-08	159
152	Massey	2025-02-08	108
152	USAU	2025-02-08	160
152	SWCI	2025-02-09	240
152	ELO	2025-02-09	155
152	Massey	2025-02-09	109
152	USAU	2025-02-09	158
152	SWCI	2025-02-12	240
152	ELO	2025-02-12	159
152	Massey	2025-02-12	137
152	USAU	2025-02-12	158
152	SWCI	2025-02-16	254
152	ELO	2025-02-16	159
152	Massey	2025-02-16	335
152	USAU	2025-02-16	150
152	SWCI	2025-02-17	254
152	ELO	2025-02-17	161
152	Massey	2025-02-17	113
152	USAU	2025-02-17	148
152	SWCI	2025-02-22	280
152	ELO	2025-02-22	160
152	Massey	2025-02-22	164
152	USAU	2025-02-22	149
152	SWCI	2025-02-23	280
152	ELO	2025-02-23	158
152	Massey	2025-02-23	138
152	USAU	2025-02-23	151
152	SWCI	2025-03-02	338
152	ELO	2025-03-02	168
152	Massey	2025-03-02	221
152	USAU	2025-03-02	158
152	SWCI	2025-03-08	340
152	ELO	2025-03-08	177
152	Massey	2025-03-08	328
152	USAU	2025-03-08	154
152	SWCI	2025-03-09	343
152	ELO	2025-03-09	176
152	Massey	2025-03-09	363
152	USAU	2025-03-09	155
152	SWCI	2025-03-15	360
152	ELO	2025-03-15	177
152	Massey	2025-03-15	50
152	USAU	2025-03-15	152
152	SWCI	2025-03-16	360
152	ELO	2025-03-16	174
152	Massey	2025-03-16	364
152	USAU	2025-03-16	154
152	SWCI	2025-03-23	377
152	ELO	2025-03-23	175
152	Massey	2025-03-23	3
152	USAU	2025-03-23	153
152	SWCI	2025-03-29	46
152	ELO	2025-03-29	188
152	Massey	2025-03-29	232
152	USAU	2025-03-29	258
152	SWCI	2025-03-30	52
152	ELO	2025-03-30	188
152	Massey	2025-03-30	229
152	USAU	2025-03-30	202
153	SWCI	2025-01-26	182
153	ELO	2025-01-26	160
153	Massey	2025-01-26	157
153	USAU	2025-01-26	149
153	SWCI	2025-02-02	217
153	ELO	2025-02-02	154
153	Massey	2025-02-02	225
153	USAU	2025-02-02	159
153	SWCI	2025-02-08	241
153	ELO	2025-02-08	160
153	Massey	2025-02-08	300
153	USAU	2025-02-08	161
153	SWCI	2025-02-09	241
153	ELO	2025-02-09	156
153	Massey	2025-02-09	55
153	USAU	2025-02-09	159
153	SWCI	2025-02-12	241
153	ELO	2025-02-12	160
153	Massey	2025-02-12	354
153	USAU	2025-02-12	159
153	SWCI	2025-02-16	255
153	ELO	2025-02-16	160
153	Massey	2025-02-16	41
153	USAU	2025-02-16	151
153	SWCI	2025-02-17	255
153	ELO	2025-02-17	162
153	Massey	2025-02-17	308
153	USAU	2025-02-17	149
153	SWCI	2025-02-22	281
153	ELO	2025-02-22	161
153	Massey	2025-02-22	76
153	USAU	2025-02-22	150
153	SWCI	2025-02-23	281
153	ELO	2025-02-23	159
153	Massey	2025-02-23	9
153	USAU	2025-02-23	152
153	SWCI	2025-03-02	339
153	ELO	2025-03-02	169
153	Massey	2025-03-02	368
153	USAU	2025-03-02	159
153	SWCI	2025-03-08	341
153	ELO	2025-03-08	178
153	Massey	2025-03-08	318
153	USAU	2025-03-08	155
153	SWCI	2025-03-09	344
153	ELO	2025-03-09	177
153	Massey	2025-03-09	377
153	USAU	2025-03-09	156
153	SWCI	2025-03-15	361
153	ELO	2025-03-15	178
153	Massey	2025-03-15	2
153	USAU	2025-03-15	153
153	SWCI	2025-03-16	361
153	ELO	2025-03-16	175
153	Massey	2025-03-16	291
153	USAU	2025-03-16	155
153	SWCI	2025-03-23	13
153	ELO	2025-03-23	176
153	Massey	2025-03-23	44
153	USAU	2025-03-23	61
153	SWCI	2025-03-29	8
153	ELO	2025-03-29	67
153	Massey	2025-03-29	31
153	USAU	2025-03-29	41
153	SWCI	2025-03-30	23
153	ELO	2025-03-30	68
153	Massey	2025-03-30	48
153	USAU	2025-03-30	59
154	SWCI	2025-01-26	183
154	ELO	2025-01-26	161
154	Massey	2025-01-26	193
154	USAU	2025-01-26	150
154	SWCI	2025-02-02	218
154	ELO	2025-02-02	155
154	Massey	2025-02-02	263
154	USAU	2025-02-02	160
154	SWCI	2025-02-08	242
154	ELO	2025-02-08	161
154	Massey	2025-02-08	132
154	USAU	2025-02-08	162
154	SWCI	2025-02-09	242
154	ELO	2025-02-09	157
154	Massey	2025-02-09	92
154	USAU	2025-02-09	160
154	SWCI	2025-02-12	242
154	ELO	2025-02-12	161
154	Massey	2025-02-12	285
154	USAU	2025-02-12	160
154	SWCI	2025-02-16	256
154	ELO	2025-02-16	161
154	Massey	2025-02-16	268
154	USAU	2025-02-16	152
154	SWCI	2025-02-17	256
154	ELO	2025-02-17	163
154	Massey	2025-02-17	86
154	USAU	2025-02-17	150
154	SWCI	2025-02-22	282
154	ELO	2025-02-22	162
154	Massey	2025-02-22	373
154	USAU	2025-02-22	151
154	SWCI	2025-02-23	282
154	ELO	2025-02-23	160
154	Massey	2025-02-23	118
154	USAU	2025-02-23	153
154	SWCI	2025-03-02	340
154	ELO	2025-03-02	170
154	Massey	2025-03-02	196
154	USAU	2025-03-02	160
154	SWCI	2025-03-08	342
154	ELO	2025-03-08	179
154	Massey	2025-03-08	288
154	USAU	2025-03-08	156
154	SWCI	2025-03-09	345
154	ELO	2025-03-09	178
154	Massey	2025-03-09	283
154	USAU	2025-03-09	157
154	SWCI	2025-03-15	362
154	ELO	2025-03-15	179
154	Massey	2025-03-15	46
154	USAU	2025-03-15	154
154	SWCI	2025-03-16	362
154	ELO	2025-03-16	176
154	Massey	2025-03-16	348
154	USAU	2025-03-16	156
154	SWCI	2025-03-23	181
154	ELO	2025-03-23	177
154	Massey	2025-03-23	214
154	USAU	2025-03-23	224
154	SWCI	2025-03-29	134
154	ELO	2025-03-29	256
154	Massey	2025-03-29	209
154	USAU	2025-03-29	203
154	SWCI	2025-03-30	157
154	ELO	2025-03-30	213
154	Massey	2025-03-30	213
154	USAU	2025-03-30	205
155	SWCI	2025-01-26	184
155	ELO	2025-01-26	162
155	Massey	2025-01-26	169
155	USAU	2025-01-26	151
155	SWCI	2025-02-02	219
155	ELO	2025-02-02	156
155	Massey	2025-02-02	283
155	USAU	2025-02-02	161
155	SWCI	2025-02-08	243
155	ELO	2025-02-08	162
155	Massey	2025-02-08	225
155	USAU	2025-02-08	163
155	SWCI	2025-02-09	243
155	ELO	2025-02-09	158
155	Massey	2025-02-09	123
155	USAU	2025-02-09	161
155	SWCI	2025-02-12	243
155	ELO	2025-02-12	162
155	Massey	2025-02-12	40
155	USAU	2025-02-12	161
155	SWCI	2025-02-16	68
155	ELO	2025-02-16	162
155	Massey	2025-02-16	282
155	USAU	2025-02-16	334
155	SWCI	2025-02-17	67
155	ELO	2025-02-17	45
155	Massey	2025-02-17	265
155	USAU	2025-02-17	334
155	SWCI	2025-02-22	84
155	ELO	2025-02-22	46
155	Massey	2025-02-22	163
155	USAU	2025-02-22	323
155	SWCI	2025-02-23	84
155	ELO	2025-02-23	47
155	Massey	2025-02-23	154
155	USAU	2025-02-23	312
155	SWCI	2025-03-02	50
155	ELO	2025-03-02	58
155	Massey	2025-03-02	142
155	USAU	2025-03-02	231
155	SWCI	2025-03-08	49
155	ELO	2025-03-08	25
155	Massey	2025-03-08	126
155	USAU	2025-03-08	217
155	SWCI	2025-03-09	49
155	ELO	2025-03-09	25
155	Massey	2025-03-09	126
155	USAU	2025-03-09	213
155	SWCI	2025-03-15	103
155	ELO	2025-03-15	25
155	Massey	2025-03-15	210
155	USAU	2025-03-15	217
155	SWCI	2025-03-16	100
155	ELO	2025-03-16	27
155	Massey	2025-03-16	166
155	USAU	2025-03-16	235
155	SWCI	2025-03-23	112
155	ELO	2025-03-23	61
155	Massey	2025-03-23	196
155	USAU	2025-03-23	208
155	SWCI	2025-03-29	91
155	ELO	2025-03-29	69
155	Massey	2025-03-29	155
155	USAU	2025-03-29	166
155	SWCI	2025-03-30	117
155	ELO	2025-03-30	70
155	Massey	2025-03-30	153
155	USAU	2025-03-30	164
156	SWCI	2025-01-26	185
156	ELO	2025-01-26	163
156	Massey	2025-01-26	170
156	USAU	2025-01-26	152
156	SWCI	2025-02-02	220
156	ELO	2025-02-02	157
156	Massey	2025-02-02	274
156	USAU	2025-02-02	162
156	SWCI	2025-02-08	41
156	ELO	2025-02-08	163
156	Massey	2025-02-08	60
156	USAU	2025-02-08	60
156	SWCI	2025-02-09	45
156	ELO	2025-02-09	159
156	Massey	2025-02-09	35
156	USAU	2025-02-09	53
156	SWCI	2025-02-12	46
156	ELO	2025-02-12	44
156	Massey	2025-02-12	50
156	USAU	2025-02-12	53
156	SWCI	2025-02-16	45
156	ELO	2025-02-16	45
156	Massey	2025-02-16	260
156	USAU	2025-02-16	311
156	SWCI	2025-02-17	45
156	ELO	2025-02-17	50
156	Massey	2025-02-17	133
156	USAU	2025-02-17	312
156	SWCI	2025-02-22	57
156	ELO	2025-02-22	51
156	Massey	2025-02-22	129
156	USAU	2025-02-22	93
156	SWCI	2025-02-23	64
156	ELO	2025-02-23	53
156	Massey	2025-02-23	131
156	USAU	2025-02-23	103
156	SWCI	2025-03-02	77
156	ELO	2025-03-02	63
156	Massey	2025-03-02	114
156	USAU	2025-03-02	107
156	SWCI	2025-03-08	79
156	ELO	2025-03-08	83
156	Massey	2025-03-08	109
156	USAU	2025-03-08	110
156	SWCI	2025-03-09	80
156	ELO	2025-03-09	85
156	Massey	2025-03-09	108
156	USAU	2025-03-09	109
156	SWCI	2025-03-15	87
156	ELO	2025-03-15	88
156	Massey	2025-03-15	158
156	USAU	2025-03-15	104
156	SWCI	2025-03-16	89
156	ELO	2025-03-16	90
156	Massey	2025-03-16	103
156	USAU	2025-03-16	109
156	SWCI	2025-03-23	84
156	ELO	2025-03-23	99
156	Massey	2025-03-23	129
156	USAU	2025-03-23	111
156	SWCI	2025-03-29	114
156	ELO	2025-03-29	107
156	Massey	2025-03-29	116
156	USAU	2025-03-29	132
156	SWCI	2025-03-30	137
156	ELO	2025-03-30	107
156	Massey	2025-03-30	119
156	USAU	2025-03-30	134
157	SWCI	2025-01-26	186
157	ELO	2025-01-26	164
157	Massey	2025-01-26	158
157	USAU	2025-01-26	153
157	SWCI	2025-02-02	221
157	ELO	2025-02-02	158
157	Massey	2025-02-02	262
157	USAU	2025-02-02	163
157	SWCI	2025-02-08	244
157	ELO	2025-02-08	164
157	Massey	2025-02-08	278
157	USAU	2025-02-08	164
157	SWCI	2025-02-09	244
157	ELO	2025-02-09	160
157	Massey	2025-02-09	281
157	USAU	2025-02-09	162
157	SWCI	2025-02-12	244
157	ELO	2025-02-12	163
157	Massey	2025-02-12	117
157	USAU	2025-02-12	162
157	SWCI	2025-02-16	109
157	ELO	2025-02-16	321
157	Massey	2025-02-16	95
157	USAU	2025-02-16	63
157	SWCI	2025-02-17	110
157	ELO	2025-02-17	313
157	Massey	2025-02-17	88
157	USAU	2025-02-17	63
157	SWCI	2025-02-22	126
157	ELO	2025-02-22	310
157	Massey	2025-02-22	96
157	USAU	2025-02-22	70
157	SWCI	2025-02-23	145
157	ELO	2025-02-23	308
157	Massey	2025-02-23	105
157	USAU	2025-02-23	86
157	SWCI	2025-03-02	194
157	ELO	2025-03-02	305
157	Massey	2025-03-02	83
157	USAU	2025-03-02	83
157	SWCI	2025-03-08	196
157	ELO	2025-03-08	275
157	Massey	2025-03-08	79
157	USAU	2025-03-08	85
157	SWCI	2025-03-09	199
157	ELO	2025-03-09	274
157	Massey	2025-03-09	79
157	USAU	2025-03-09	85
157	SWCI	2025-03-15	161
157	ELO	2025-03-15	106
157	Massey	2025-03-15	131
157	USAU	2025-03-15	78
157	SWCI	2025-03-16	160
157	ELO	2025-03-16	107
157	Massey	2025-03-16	73
157	USAU	2025-03-16	77
157	SWCI	2025-03-23	154
157	ELO	2025-03-23	115
157	Massey	2025-03-23	98
157	USAU	2025-03-23	73
157	SWCI	2025-03-29	156
157	ELO	2025-03-29	123
157	Massey	2025-03-29	68
157	USAU	2025-03-29	71
157	SWCI	2025-03-30	165
157	ELO	2025-03-30	125
157	Massey	2025-03-30	70
157	USAU	2025-03-30	69
158	SWCI	2025-01-26	187
158	ELO	2025-01-26	165
158	Massey	2025-01-26	171
158	USAU	2025-01-26	154
158	SWCI	2025-02-02	7
158	ELO	2025-02-02	159
158	Massey	2025-02-02	28
158	USAU	2025-02-02	12
158	SWCI	2025-02-08	6
158	ELO	2025-02-08	10
158	Massey	2025-02-08	14
158	USAU	2025-02-08	8
158	SWCI	2025-02-09	8
158	ELO	2025-02-09	10
158	Massey	2025-02-09	36
158	USAU	2025-02-09	10
158	SWCI	2025-02-12	8
158	ELO	2025-02-12	14
158	Massey	2025-02-12	9
158	USAU	2025-02-12	9
158	SWCI	2025-02-16	1
158	ELO	2025-02-16	1
158	Massey	2025-02-16	10
158	USAU	2025-02-16	7
158	SWCI	2025-02-17	1
158	ELO	2025-02-17	2
158	Massey	2025-02-17	6
158	USAU	2025-02-17	7
158	SWCI	2025-02-22	1
158	ELO	2025-02-22	2
158	Massey	2025-02-22	8
158	USAU	2025-02-22	8
158	SWCI	2025-02-23	1
158	ELO	2025-02-23	2
158	Massey	2025-02-23	7
158	USAU	2025-02-23	5
158	SWCI	2025-03-02	1
158	ELO	2025-03-02	3
158	Massey	2025-03-02	1
158	USAU	2025-03-02	1
158	SWCI	2025-03-08	1
158	ELO	2025-03-08	1
158	Massey	2025-03-08	1
158	USAU	2025-03-08	1
158	SWCI	2025-03-09	1
158	ELO	2025-03-09	1
158	Massey	2025-03-09	1
158	USAU	2025-03-09	1
158	SWCI	2025-03-15	1
158	ELO	2025-03-15	1
158	Massey	2025-03-15	57
158	USAU	2025-03-15	1
158	SWCI	2025-03-16	1
158	ELO	2025-03-16	1
158	Massey	2025-03-16	1
158	USAU	2025-03-16	1
158	SWCI	2025-03-23	1
158	ELO	2025-03-23	1
158	Massey	2025-03-23	27
158	USAU	2025-03-23	1
158	SWCI	2025-03-29	1
158	ELO	2025-03-29	1
158	Massey	2025-03-29	1
158	USAU	2025-03-29	2
158	SWCI	2025-03-30	1
158	ELO	2025-03-30	1
158	Massey	2025-03-30	2
158	USAU	2025-03-30	3
159	SWCI	2025-01-26	188
159	ELO	2025-01-26	166
159	Massey	2025-01-26	172
159	USAU	2025-01-26	155
159	SWCI	2025-02-02	109
159	ELO	2025-02-02	160
159	Massey	2025-02-02	361
159	USAU	2025-02-02	372
159	SWCI	2025-02-08	134
159	ELO	2025-02-08	375
159	Massey	2025-02-08	327
159	USAU	2025-02-08	337
159	SWCI	2025-02-09	137
159	ELO	2025-02-09	373
159	Massey	2025-02-09	322
159	USAU	2025-02-09	337
159	SWCI	2025-02-12	138
159	ELO	2025-02-12	367
159	Massey	2025-02-12	288
159	USAU	2025-02-12	336
159	SWCI	2025-02-16	156
159	ELO	2025-02-16	367
159	Massey	2025-02-16	246
159	USAU	2025-02-16	315
159	SWCI	2025-02-17	155
159	ELO	2025-02-17	358
159	Massey	2025-02-17	130
159	USAU	2025-02-17	317
159	SWCI	2025-02-22	204
159	ELO	2025-02-22	356
159	Massey	2025-02-22	145
159	USAU	2025-02-22	282
159	SWCI	2025-02-23	194
159	ELO	2025-02-23	354
159	Massey	2025-02-23	134
159	USAU	2025-02-23	273
159	SWCI	2025-03-02	261
159	ELO	2025-03-02	375
159	Massey	2025-03-02	111
159	USAU	2025-03-02	115
159	SWCI	2025-03-08	264
159	ELO	2025-03-08	368
159	Massey	2025-03-08	105
159	USAU	2025-03-08	119
159	SWCI	2025-03-09	267
159	ELO	2025-03-09	366
159	Massey	2025-03-09	104
159	USAU	2025-03-09	115
159	SWCI	2025-03-15	279
159	ELO	2025-03-15	366
159	Massey	2025-03-15	166
159	USAU	2025-03-15	117
159	SWCI	2025-03-16	280
159	ELO	2025-03-16	365
159	Massey	2025-03-16	107
159	USAU	2025-03-16	115
159	SWCI	2025-03-23	286
159	ELO	2025-03-23	362
159	Massey	2025-03-23	135
159	USAU	2025-03-23	117
159	SWCI	2025-03-29	236
159	ELO	2025-03-29	354
159	Massey	2025-03-29	93
159	USAU	2025-03-29	97
159	SWCI	2025-03-30	218
159	ELO	2025-03-30	351
159	Massey	2025-03-30	85
159	USAU	2025-03-30	85
160	SWCI	2025-01-26	189
160	ELO	2025-01-26	167
160	Massey	2025-01-26	295
160	USAU	2025-01-26	156
160	SWCI	2025-02-02	222
160	ELO	2025-02-02	161
160	Massey	2025-02-02	159
160	USAU	2025-02-02	164
160	SWCI	2025-02-08	245
160	ELO	2025-02-08	165
160	Massey	2025-02-08	283
160	USAU	2025-02-08	165
160	SWCI	2025-02-09	245
160	ELO	2025-02-09	161
160	Massey	2025-02-09	50
160	USAU	2025-02-09	163
160	SWCI	2025-02-12	245
160	ELO	2025-02-12	164
160	Massey	2025-02-12	101
160	USAU	2025-02-12	163
160	SWCI	2025-02-16	257
160	ELO	2025-02-16	163
160	Massey	2025-02-16	278
160	USAU	2025-02-16	153
160	SWCI	2025-02-17	257
160	ELO	2025-02-17	164
160	Massey	2025-02-17	96
160	USAU	2025-02-17	151
160	SWCI	2025-02-22	283
160	ELO	2025-02-22	163
160	Massey	2025-02-22	35
160	USAU	2025-02-22	152
160	SWCI	2025-02-23	283
160	ELO	2025-02-23	161
160	Massey	2025-02-23	362
160	USAU	2025-02-23	154
160	SWCI	2025-03-02	341
160	ELO	2025-03-02	171
160	Massey	2025-03-02	72
160	USAU	2025-03-02	161
160	SWCI	2025-03-08	343
160	ELO	2025-03-08	180
160	Massey	2025-03-08	354
160	USAU	2025-03-08	157
160	SWCI	2025-03-09	346
160	ELO	2025-03-09	179
160	Massey	2025-03-09	291
160	USAU	2025-03-09	158
160	SWCI	2025-03-15	347
160	ELO	2025-03-15	331
160	Massey	2025-03-15	293
160	USAU	2025-03-15	276
160	SWCI	2025-03-16	348
160	ELO	2025-03-16	328
160	Massey	2025-03-16	240
160	USAU	2025-03-16	275
160	SWCI	2025-03-23	368
160	ELO	2025-03-23	320
160	Massey	2025-03-23	263
160	USAU	2025-03-23	250
160	SWCI	2025-03-29	391
160	ELO	2025-03-29	312
160	Massey	2025-03-29	238
160	USAU	2025-03-29	223
160	SWCI	2025-03-30	391
160	ELO	2025-03-30	311
160	Massey	2025-03-30	238
160	USAU	2025-03-30	226
161	SWCI	2025-01-26	190
161	ELO	2025-01-26	168
161	Massey	2025-01-26	250
161	USAU	2025-01-26	157
161	SWCI	2025-02-02	223
161	ELO	2025-02-02	162
161	Massey	2025-02-02	188
161	USAU	2025-02-02	165
161	SWCI	2025-02-08	93
161	ELO	2025-02-08	166
161	Massey	2025-02-08	122
161	USAU	2025-02-08	87
161	SWCI	2025-02-09	60
161	ELO	2025-02-09	162
161	Massey	2025-02-09	59
161	USAU	2025-02-09	78
161	SWCI	2025-02-12	60
161	ELO	2025-02-12	42
161	Massey	2025-02-12	86
161	USAU	2025-02-12	78
161	SWCI	2025-02-16	66
161	ELO	2025-02-16	40
161	Massey	2025-02-16	299
161	USAU	2025-02-16	333
161	SWCI	2025-02-17	66
161	ELO	2025-02-17	42
161	Massey	2025-02-17	296
161	USAU	2025-02-17	336
161	SWCI	2025-02-22	66
161	ELO	2025-02-22	44
161	Massey	2025-02-22	168
161	USAU	2025-02-22	278
161	SWCI	2025-02-23	75
161	ELO	2025-02-23	44
161	Massey	2025-02-23	241
161	USAU	2025-02-23	295
161	SWCI	2025-03-02	86
161	ELO	2025-03-02	54
161	Massey	2025-03-02	175
161	USAU	2025-03-02	266
161	SWCI	2025-03-08	88
161	ELO	2025-03-08	36
161	Massey	2025-03-08	165
161	USAU	2025-03-08	262
161	SWCI	2025-03-09	90
161	ELO	2025-03-09	37
161	Massey	2025-03-09	167
161	USAU	2025-03-09	260
161	SWCI	2025-03-15	76
161	ELO	2025-03-15	38
161	Massey	2025-03-15	196
161	USAU	2025-03-15	128
161	SWCI	2025-03-16	76
161	ELO	2025-03-16	40
161	Massey	2025-03-16	136
161	USAU	2025-03-16	127
161	SWCI	2025-03-23	79
161	ELO	2025-03-23	46
161	Massey	2025-03-23	164
161	USAU	2025-03-23	127
161	SWCI	2025-03-29	84
161	ELO	2025-03-29	53
161	Massey	2025-03-29	129
161	USAU	2025-03-29	129
161	SWCI	2025-03-30	86
161	ELO	2025-03-30	54
161	Massey	2025-03-30	132
161	USAU	2025-03-30	126
162	SWCI	2025-01-26	191
162	ELO	2025-01-26	169
162	Massey	2025-01-26	251
162	USAU	2025-01-26	158
162	SWCI	2025-02-02	224
162	ELO	2025-02-02	163
162	Massey	2025-02-02	187
162	USAU	2025-02-02	166
162	SWCI	2025-02-08	246
162	ELO	2025-02-08	167
162	Massey	2025-02-08	140
162	USAU	2025-02-08	166
162	SWCI	2025-02-09	246
162	ELO	2025-02-09	163
162	Massey	2025-02-09	110
162	USAU	2025-02-09	164
162	SWCI	2025-02-12	246
162	ELO	2025-02-12	165
162	Massey	2025-02-12	132
162	USAU	2025-02-12	164
162	SWCI	2025-02-16	258
162	ELO	2025-02-16	164
162	Massey	2025-02-16	301
162	USAU	2025-02-16	154
162	SWCI	2025-02-17	258
162	ELO	2025-02-17	165
162	Massey	2025-02-17	134
162	USAU	2025-02-17	152
162	SWCI	2025-02-22	5
162	ELO	2025-02-22	24
162	Massey	2025-02-22	49
162	USAU	2025-02-22	41
162	SWCI	2025-02-23	6
162	ELO	2025-02-23	24
162	Massey	2025-02-23	53
162	USAU	2025-02-23	45
162	SWCI	2025-03-02	6
162	ELO	2025-03-02	29
162	Massey	2025-03-02	40
162	USAU	2025-03-02	32
162	SWCI	2025-03-08	6
162	ELO	2025-03-08	6
162	Massey	2025-03-08	37
162	USAU	2025-03-08	32
162	SWCI	2025-03-09	6
162	ELO	2025-03-09	6
162	Massey	2025-03-09	37
162	USAU	2025-03-09	34
162	SWCI	2025-03-15	2
162	ELO	2025-03-15	2
162	Massey	2025-03-15	87
162	USAU	2025-03-15	29
162	SWCI	2025-03-16	2
162	ELO	2025-03-16	2
162	Massey	2025-03-16	33
162	USAU	2025-03-16	31
162	SWCI	2025-03-23	3
162	ELO	2025-03-23	2
162	Massey	2025-03-23	65
162	USAU	2025-03-23	29
162	SWCI	2025-03-29	2
162	ELO	2025-03-29	2
162	Massey	2025-03-29	39
162	USAU	2025-03-29	32
162	SWCI	2025-03-30	2
162	ELO	2025-03-30	2
162	Massey	2025-03-30	34
162	USAU	2025-03-30	30
163	SWCI	2025-01-26	192
163	ELO	2025-01-26	170
163	Massey	2025-01-26	264
163	USAU	2025-01-26	159
163	SWCI	2025-02-02	225
163	ELO	2025-02-02	164
163	Massey	2025-02-02	130
163	USAU	2025-02-02	167
163	SWCI	2025-02-08	247
163	ELO	2025-02-08	168
163	Massey	2025-02-08	118
163	USAU	2025-02-08	167
163	SWCI	2025-02-09	247
163	ELO	2025-02-09	164
163	Massey	2025-02-09	314
163	USAU	2025-02-09	165
163	SWCI	2025-02-12	247
163	ELO	2025-02-12	166
163	Massey	2025-02-12	112
163	USAU	2025-02-12	165
163	SWCI	2025-02-16	259
163	ELO	2025-02-16	165
163	Massey	2025-02-16	181
163	USAU	2025-02-16	155
163	SWCI	2025-02-17	259
163	ELO	2025-02-17	166
163	Massey	2025-02-17	120
163	USAU	2025-02-17	153
163	SWCI	2025-02-22	284
163	ELO	2025-02-22	164
163	Massey	2025-02-22	116
163	USAU	2025-02-22	153
163	SWCI	2025-02-23	284
163	ELO	2025-02-23	162
163	Massey	2025-02-23	370
163	USAU	2025-02-23	155
163	SWCI	2025-03-02	241
163	ELO	2025-03-02	172
163	Massey	2025-03-02	315
163	USAU	2025-03-02	294
163	SWCI	2025-03-08	247
163	ELO	2025-03-08	335
163	Massey	2025-03-08	264
163	USAU	2025-03-08	292
163	SWCI	2025-03-09	251
163	ELO	2025-03-09	333
163	Massey	2025-03-09	255
163	USAU	2025-03-09	289
163	SWCI	2025-03-15	191
163	ELO	2025-03-15	289
163	Massey	2025-03-15	316
163	USAU	2025-03-15	306
163	SWCI	2025-03-16	185
163	ELO	2025-03-16	286
163	Massey	2025-03-16	271
163	USAU	2025-03-16	305
163	SWCI	2025-03-23	187
163	ELO	2025-03-23	273
163	Massey	2025-03-23	312
163	USAU	2025-03-23	301
163	SWCI	2025-03-29	199
163	ELO	2025-03-29	260
163	Massey	2025-03-29	295
163	USAU	2025-03-29	295
163	SWCI	2025-03-30	203
163	ELO	2025-03-30	261
163	Massey	2025-03-30	295
163	USAU	2025-03-30	296
164	SWCI	2025-01-26	193
164	ELO	2025-01-26	171
164	Massey	2025-01-26	252
164	USAU	2025-01-26	160
164	SWCI	2025-02-02	226
164	ELO	2025-02-02	165
164	Massey	2025-02-02	112
164	USAU	2025-02-02	168
164	SWCI	2025-02-08	248
164	ELO	2025-02-08	169
164	Massey	2025-02-08	145
164	USAU	2025-02-08	168
164	SWCI	2025-02-09	248
164	ELO	2025-02-09	165
164	Massey	2025-02-09	80
164	USAU	2025-02-09	166
164	SWCI	2025-02-12	248
164	ELO	2025-02-12	167
164	Massey	2025-02-12	122
164	USAU	2025-02-12	166
164	SWCI	2025-02-16	260
164	ELO	2025-02-16	166
164	Massey	2025-02-16	56
164	USAU	2025-02-16	156
164	SWCI	2025-02-17	260
164	ELO	2025-02-17	167
164	Massey	2025-02-17	281
164	USAU	2025-02-17	154
164	SWCI	2025-02-22	285
164	ELO	2025-02-22	165
164	Massey	2025-02-22	152
164	USAU	2025-02-22	154
164	SWCI	2025-02-23	285
164	ELO	2025-02-23	163
164	Massey	2025-02-23	25
164	USAU	2025-02-23	156
164	SWCI	2025-03-02	94
164	ELO	2025-03-02	173
164	Massey	2025-03-02	197
164	USAU	2025-03-02	223
164	SWCI	2025-03-08	95
164	ELO	2025-03-08	137
164	Massey	2025-03-08	186
164	USAU	2025-03-08	220
164	SWCI	2025-03-09	98
164	ELO	2025-03-09	140
164	Massey	2025-03-09	185
164	USAU	2025-03-09	215
164	SWCI	2025-03-15	83
164	ELO	2025-03-15	142
164	Massey	2025-03-15	245
164	USAU	2025-03-15	237
164	SWCI	2025-03-16	87
164	ELO	2025-03-16	144
164	Massey	2025-03-16	188
164	USAU	2025-03-16	230
164	SWCI	2025-03-23	75
164	ELO	2025-03-23	149
164	Massey	2025-03-23	228
164	USAU	2025-03-23	226
164	SWCI	2025-03-29	77
164	ELO	2025-03-29	162
164	Massey	2025-03-29	201
164	USAU	2025-03-29	204
164	SWCI	2025-03-30	74
164	ELO	2025-03-30	164
164	Massey	2025-03-30	203
164	USAU	2025-03-30	206
165	SWCI	2025-01-26	194
165	ELO	2025-01-26	172
165	Massey	2025-01-26	253
165	USAU	2025-01-26	161
165	SWCI	2025-02-02	227
165	ELO	2025-02-02	166
165	Massey	2025-02-02	96
165	USAU	2025-02-02	169
165	SWCI	2025-02-08	249
165	ELO	2025-02-08	170
165	Massey	2025-02-08	304
165	USAU	2025-02-08	169
165	SWCI	2025-02-09	249
165	ELO	2025-02-09	166
165	Massey	2025-02-09	277
165	USAU	2025-02-09	167
165	SWCI	2025-02-12	249
165	ELO	2025-02-12	168
165	Massey	2025-02-12	289
165	USAU	2025-02-12	167
165	SWCI	2025-02-16	261
165	ELO	2025-02-16	167
165	Massey	2025-02-16	284
165	USAU	2025-02-16	157
165	SWCI	2025-02-17	261
165	ELO	2025-02-17	168
165	Massey	2025-02-17	103
165	USAU	2025-02-17	155
165	SWCI	2025-02-22	286
165	ELO	2025-02-22	166
165	Massey	2025-02-22	32
165	USAU	2025-02-22	155
165	SWCI	2025-02-23	286
165	ELO	2025-02-23	164
165	Massey	2025-02-23	297
165	USAU	2025-02-23	157
165	SWCI	2025-03-02	183
165	ELO	2025-03-02	174
165	Massey	2025-03-02	336
165	USAU	2025-03-02	251
165	SWCI	2025-03-08	186
165	ELO	2025-03-08	251
165	Massey	2025-03-08	374
165	USAU	2025-03-08	248
165	SWCI	2025-03-09	187
165	ELO	2025-03-09	250
165	Massey	2025-03-09	380
165	USAU	2025-03-09	242
165	SWCI	2025-03-15	258
165	ELO	2025-03-15	243
165	Massey	2025-03-15	367
165	USAU	2025-03-15	362
165	SWCI	2025-03-16	262
165	ELO	2025-03-16	239
165	Massey	2025-03-16	361
165	USAU	2025-03-16	349
165	SWCI	2025-03-23	278
165	ELO	2025-03-23	331
165	Massey	2025-03-23	358
165	USAU	2025-03-23	338
165	SWCI	2025-03-29	251
165	ELO	2025-03-29	324
165	Massey	2025-03-29	311
165	USAU	2025-03-29	288
165	SWCI	2025-03-30	261
165	ELO	2025-03-30	324
165	Massey	2025-03-30	318
165	USAU	2025-03-30	303
166	SWCI	2025-01-26	195
166	ELO	2025-01-26	173
166	Massey	2025-01-26	71
166	USAU	2025-01-26	162
166	SWCI	2025-02-02	228
166	ELO	2025-02-02	167
166	Massey	2025-02-02	103
166	USAU	2025-02-02	170
166	SWCI	2025-02-08	250
166	ELO	2025-02-08	171
166	Massey	2025-02-08	120
166	USAU	2025-02-08	170
166	SWCI	2025-02-09	250
166	ELO	2025-02-09	167
166	Massey	2025-02-09	285
166	USAU	2025-02-09	168
166	SWCI	2025-02-12	250
166	ELO	2025-02-12	169
166	Massey	2025-02-12	110
166	USAU	2025-02-12	168
166	SWCI	2025-02-16	262
166	ELO	2025-02-16	168
166	Massey	2025-02-16	182
166	USAU	2025-02-16	158
166	SWCI	2025-02-17	262
166	ELO	2025-02-17	169
166	Massey	2025-02-17	322
166	USAU	2025-02-17	156
166	SWCI	2025-02-22	287
166	ELO	2025-02-22	167
166	Massey	2025-02-22	104
166	USAU	2025-02-22	156
166	SWCI	2025-02-23	287
166	ELO	2025-02-23	165
166	Massey	2025-02-23	126
166	USAU	2025-02-23	158
166	SWCI	2025-03-02	221
166	ELO	2025-03-02	175
166	Massey	2025-03-02	363
166	USAU	2025-03-02	309
166	SWCI	2025-03-08	223
166	ELO	2025-03-08	319
166	Massey	2025-03-08	386
166	USAU	2025-03-08	305
166	SWCI	2025-03-09	228
166	ELO	2025-03-09	317
166	Massey	2025-03-09	391
166	USAU	2025-03-09	298
166	SWCI	2025-03-15	260
166	ELO	2025-03-15	315
166	Massey	2025-03-15	381
166	USAU	2025-03-15	386
166	SWCI	2025-03-16	261
166	ELO	2025-03-16	313
166	Massey	2025-03-16	381
166	USAU	2025-03-16	382
166	SWCI	2025-03-23	277
166	ELO	2025-03-23	305
166	Massey	2025-03-23	383
166	USAU	2025-03-23	378
166	SWCI	2025-03-29	295
166	ELO	2025-03-29	295
166	Massey	2025-03-29	357
166	USAU	2025-03-29	358
166	SWCI	2025-03-30	312
166	ELO	2025-03-30	295
166	Massey	2025-03-30	364
166	USAU	2025-03-30	362
167	SWCI	2025-01-26	196
167	ELO	2025-01-26	174
167	Massey	2025-01-26	201
167	USAU	2025-01-26	163
167	SWCI	2025-02-02	229
167	ELO	2025-02-02	168
167	Massey	2025-02-02	131
167	USAU	2025-02-02	171
167	SWCI	2025-02-08	251
167	ELO	2025-02-08	172
167	Massey	2025-02-08	229
167	USAU	2025-02-08	171
167	SWCI	2025-02-09	251
167	ELO	2025-02-09	168
167	Massey	2025-02-09	294
167	USAU	2025-02-09	169
167	SWCI	2025-02-12	251
167	ELO	2025-02-12	170
167	Massey	2025-02-12	241
167	USAU	2025-02-12	169
167	SWCI	2025-02-16	263
167	ELO	2025-02-16	169
167	Massey	2025-02-16	283
167	USAU	2025-02-16	159
167	SWCI	2025-02-17	263
167	ELO	2025-02-17	170
167	Massey	2025-02-17	107
167	USAU	2025-02-17	157
167	SWCI	2025-02-22	288
167	ELO	2025-02-22	168
167	Massey	2025-02-22	150
167	USAU	2025-02-22	157
167	SWCI	2025-02-23	288
167	ELO	2025-02-23	166
167	Massey	2025-02-23	247
167	USAU	2025-02-23	159
167	SWCI	2025-03-02	300
167	ELO	2025-03-02	176
167	Massey	2025-03-02	371
167	USAU	2025-03-02	324
167	SWCI	2025-03-08	308
167	ELO	2025-03-08	351
167	Massey	2025-03-08	388
167	USAU	2025-03-08	324
167	SWCI	2025-03-09	311
167	ELO	2025-03-09	349
167	Massey	2025-03-09	393
167	USAU	2025-03-09	320
167	SWCI	2025-03-15	337
167	ELO	2025-03-15	350
167	Massey	2025-03-15	384
167	USAU	2025-03-15	390
167	SWCI	2025-03-16	339
167	ELO	2025-03-16	348
167	Massey	2025-03-16	388
167	USAU	2025-03-16	388
167	SWCI	2025-03-23	357
167	ELO	2025-03-23	340
167	Massey	2025-03-23	386
167	USAU	2025-03-23	384
167	SWCI	2025-03-29	374
167	ELO	2025-03-29	335
167	Massey	2025-03-29	365
167	USAU	2025-03-29	366
167	SWCI	2025-03-30	371
167	ELO	2025-03-30	334
167	Massey	2025-03-30	369
167	USAU	2025-03-30	371
168	SWCI	2025-01-26	197
168	ELO	2025-01-26	175
168	Massey	2025-01-26	343
168	USAU	2025-01-26	164
168	SWCI	2025-02-02	230
168	ELO	2025-02-02	169
168	Massey	2025-02-02	132
168	USAU	2025-02-02	172
168	SWCI	2025-02-08	252
168	ELO	2025-02-08	173
168	Massey	2025-02-08	323
168	USAU	2025-02-08	172
168	SWCI	2025-02-09	252
168	ELO	2025-02-09	169
168	Massey	2025-02-09	126
168	USAU	2025-02-09	170
168	SWCI	2025-02-12	252
168	ELO	2025-02-12	171
168	Massey	2025-02-12	85
168	USAU	2025-02-12	170
168	SWCI	2025-02-16	264
168	ELO	2025-02-16	170
168	Massey	2025-02-16	131
168	USAU	2025-02-16	160
168	SWCI	2025-02-17	264
168	ELO	2025-02-17	171
168	Massey	2025-02-17	287
168	USAU	2025-02-17	158
168	SWCI	2025-02-22	289
168	ELO	2025-02-22	169
168	Massey	2025-02-22	285
168	USAU	2025-02-22	158
168	SWCI	2025-02-23	289
168	ELO	2025-02-23	167
168	Massey	2025-02-23	322
168	USAU	2025-02-23	160
168	SWCI	2025-03-02	163
168	ELO	2025-03-02	177
168	Massey	2025-03-02	346
168	USAU	2025-03-02	261
168	SWCI	2025-03-08	164
168	ELO	2025-03-08	265
168	Massey	2025-03-08	378
168	USAU	2025-03-08	253
168	SWCI	2025-03-09	166
168	ELO	2025-03-09	264
168	Massey	2025-03-09	383
168	USAU	2025-03-09	250
168	SWCI	2025-03-15	198
168	ELO	2025-03-15	257
168	Massey	2025-03-15	369
168	USAU	2025-03-15	360
168	SWCI	2025-03-16	197
168	ELO	2025-03-16	254
168	Massey	2025-03-16	371
168	USAU	2025-03-16	359
168	SWCI	2025-03-23	211
168	ELO	2025-03-23	241
168	Massey	2025-03-23	368
168	USAU	2025-03-23	346
168	SWCI	2025-03-29	204
168	ELO	2025-03-29	238
168	Massey	2025-03-29	342
168	USAU	2025-03-29	312
168	SWCI	2025-03-30	210
168	ELO	2025-03-30	238
168	Massey	2025-03-30	347
168	USAU	2025-03-30	318
169	SWCI	2025-01-26	198
169	ELO	2025-01-26	176
169	Massey	2025-01-26	60
169	USAU	2025-01-26	165
169	SWCI	2025-02-02	231
169	ELO	2025-02-02	170
169	Massey	2025-02-02	98
169	USAU	2025-02-02	173
169	SWCI	2025-02-08	253
169	ELO	2025-02-08	174
169	Massey	2025-02-08	137
169	USAU	2025-02-08	173
169	SWCI	2025-02-09	253
169	ELO	2025-02-09	170
169	Massey	2025-02-09	100
169	USAU	2025-02-09	171
169	SWCI	2025-02-12	253
169	ELO	2025-02-12	172
169	Massey	2025-02-12	313
169	USAU	2025-02-12	171
169	SWCI	2025-02-16	265
169	ELO	2025-02-16	171
169	Massey	2025-02-16	115
169	USAU	2025-02-16	161
169	SWCI	2025-02-17	265
169	ELO	2025-02-17	172
169	Massey	2025-02-17	91
169	USAU	2025-02-17	159
169	SWCI	2025-02-22	290
169	ELO	2025-02-22	170
169	Massey	2025-02-22	274
169	USAU	2025-02-22	159
169	SWCI	2025-02-23	290
169	ELO	2025-02-23	168
169	Massey	2025-02-23	280
169	USAU	2025-02-23	161
169	SWCI	2025-03-02	170
169	ELO	2025-03-02	178
169	Massey	2025-03-02	320
169	USAU	2025-03-02	219
169	SWCI	2025-03-08	169
169	ELO	2025-03-08	324
169	Massey	2025-03-08	359
169	USAU	2025-03-08	213
169	SWCI	2025-03-09	172
169	ELO	2025-03-09	322
169	Massey	2025-03-09	364
169	USAU	2025-03-09	210
169	SWCI	2025-03-15	208
169	ELO	2025-03-15	322
169	Massey	2025-03-15	330
169	USAU	2025-03-15	314
169	SWCI	2025-03-16	254
169	ELO	2025-03-16	381
169	Massey	2025-03-16	354
169	USAU	2025-03-16	342
169	SWCI	2025-03-23	268
169	ELO	2025-03-23	380
169	Massey	2025-03-23	349
169	USAU	2025-03-23	329
169	SWCI	2025-03-29	299
169	ELO	2025-03-29	377
169	Massey	2025-03-29	319
169	USAU	2025-03-29	318
169	SWCI	2025-03-30	338
169	ELO	2025-03-30	377
169	Massey	2025-03-30	330
169	USAU	2025-03-30	315
170	SWCI	2025-01-26	199
170	ELO	2025-01-26	177
170	Massey	2025-01-26	337
170	USAU	2025-01-26	166
170	SWCI	2025-02-02	232
170	ELO	2025-02-02	171
170	Massey	2025-02-02	172
170	USAU	2025-02-02	174
170	SWCI	2025-02-08	254
170	ELO	2025-02-08	175
170	Massey	2025-02-08	281
170	USAU	2025-02-08	174
170	SWCI	2025-02-09	254
170	ELO	2025-02-09	171
170	Massey	2025-02-09	108
170	USAU	2025-02-09	172
170	SWCI	2025-02-12	254
170	ELO	2025-02-12	173
170	Massey	2025-02-12	123
170	USAU	2025-02-12	172
170	SWCI	2025-02-16	266
170	ELO	2025-02-16	172
170	Massey	2025-02-16	306
170	USAU	2025-02-16	162
170	SWCI	2025-02-17	266
170	ELO	2025-02-17	173
170	Massey	2025-02-17	119
170	USAU	2025-02-17	160
170	SWCI	2025-02-22	291
170	ELO	2025-02-22	171
170	Massey	2025-02-22	370
170	USAU	2025-02-22	160
170	SWCI	2025-02-23	291
170	ELO	2025-02-23	169
170	Massey	2025-02-23	295
170	USAU	2025-02-23	162
170	SWCI	2025-03-02	342
170	ELO	2025-03-02	179
170	Massey	2025-03-02	153
170	USAU	2025-03-02	162
170	SWCI	2025-03-08	344
170	ELO	2025-03-08	181
170	Massey	2025-03-08	240
170	USAU	2025-03-08	158
170	SWCI	2025-03-09	347
170	ELO	2025-03-09	180
170	Massey	2025-03-09	358
170	USAU	2025-03-09	159
170	SWCI	2025-03-15	221
170	ELO	2025-03-15	180
170	Massey	2025-03-15	358
170	USAU	2025-03-15	343
170	SWCI	2025-03-16	191
170	ELO	2025-03-16	177
170	Massey	2025-03-16	295
170	USAU	2025-03-16	301
170	SWCI	2025-03-23	201
170	ELO	2025-03-23	262
170	Massey	2025-03-23	314
170	USAU	2025-03-23	281
170	SWCI	2025-03-29	286
170	ELO	2025-03-29	252
170	Massey	2025-03-29	316
170	USAU	2025-03-29	291
170	SWCI	2025-03-30	296
170	ELO	2025-03-30	353
170	Massey	2025-03-30	315
170	USAU	2025-03-30	292
171	SWCI	2025-01-26	200
171	ELO	2025-01-26	178
171	Massey	2025-01-26	151
171	USAU	2025-01-26	167
171	SWCI	2025-02-02	233
171	ELO	2025-02-02	172
171	Massey	2025-02-02	234
171	USAU	2025-02-02	175
171	SWCI	2025-02-08	255
171	ELO	2025-02-08	176
171	Massey	2025-02-08	286
171	USAU	2025-02-08	175
171	SWCI	2025-02-09	255
171	ELO	2025-02-09	172
171	Massey	2025-02-09	267
171	USAU	2025-02-09	173
171	SWCI	2025-02-12	255
171	ELO	2025-02-12	174
171	Massey	2025-02-12	84
171	USAU	2025-02-12	173
171	SWCI	2025-02-16	267
171	ELO	2025-02-16	173
171	Massey	2025-02-16	264
171	USAU	2025-02-16	163
171	SWCI	2025-02-17	267
171	ELO	2025-02-17	174
171	Massey	2025-02-17	81
171	USAU	2025-02-17	161
171	SWCI	2025-02-22	292
171	ELO	2025-02-22	172
171	Massey	2025-02-22	310
171	USAU	2025-02-22	161
171	SWCI	2025-02-23	292
171	ELO	2025-02-23	170
171	Massey	2025-02-23	341
171	USAU	2025-02-23	163
171	SWCI	2025-03-02	343
171	ELO	2025-03-02	180
171	Massey	2025-03-02	45
171	USAU	2025-03-02	163
171	SWCI	2025-03-08	345
171	ELO	2025-03-08	182
171	Massey	2025-03-08	369
171	USAU	2025-03-08	159
171	SWCI	2025-03-09	348
171	ELO	2025-03-09	181
171	Massey	2025-03-09	270
171	USAU	2025-03-09	160
171	SWCI	2025-03-15	171
171	ELO	2025-03-15	181
171	Massey	2025-03-15	266
171	USAU	2025-03-15	274
171	SWCI	2025-03-16	218
171	ELO	2025-03-16	178
171	Massey	2025-03-16	272
171	USAU	2025-03-16	297
171	SWCI	2025-03-23	228
171	ELO	2025-03-23	281
171	Massey	2025-03-23	296
171	USAU	2025-03-23	276
171	SWCI	2025-03-29	136
171	ELO	2025-03-29	270
171	Massey	2025-03-29	227
171	USAU	2025-03-29	207
171	SWCI	2025-03-30	146
171	ELO	2025-03-30	131
171	Massey	2025-03-30	233
171	USAU	2025-03-30	213
172	SWCI	2025-01-26	201
172	ELO	2025-01-26	179
172	Massey	2025-01-26	206
172	USAU	2025-01-26	168
172	SWCI	2025-02-02	234
172	ELO	2025-02-02	173
172	Massey	2025-02-02	250
172	USAU	2025-02-02	176
172	SWCI	2025-02-08	256
172	ELO	2025-02-08	177
172	Massey	2025-02-08	290
172	USAU	2025-02-08	176
172	SWCI	2025-02-09	256
172	ELO	2025-02-09	173
172	Massey	2025-02-09	268
172	USAU	2025-02-09	174
172	SWCI	2025-02-12	256
172	ELO	2025-02-12	175
172	Massey	2025-02-12	266
172	USAU	2025-02-12	174
172	SWCI	2025-02-16	65
172	ELO	2025-02-16	174
172	Massey	2025-02-16	271
172	USAU	2025-02-16	328
172	SWCI	2025-02-17	65
172	ELO	2025-02-17	66
172	Massey	2025-02-17	139
172	USAU	2025-02-17	328
172	SWCI	2025-02-22	79
172	ELO	2025-02-22	68
172	Massey	2025-02-22	151
172	USAU	2025-02-22	320
172	SWCI	2025-02-23	82
172	ELO	2025-02-23	71
172	Massey	2025-02-23	146
172	USAU	2025-02-23	307
172	SWCI	2025-03-02	105
172	ELO	2025-03-02	88
172	Massey	2025-03-02	159
172	USAU	2025-03-02	246
172	SWCI	2025-03-08	104
172	ELO	2025-03-08	111
172	Massey	2025-03-08	148
172	USAU	2025-03-08	236
172	SWCI	2025-03-09	105
172	ELO	2025-03-09	114
172	Massey	2025-03-09	150
172	USAU	2025-03-09	234
172	SWCI	2025-03-15	61
172	ELO	2025-03-15	119
172	Massey	2025-03-15	183
172	USAU	2025-03-15	142
172	SWCI	2025-03-16	52
172	ELO	2025-03-16	120
172	Massey	2025-03-16	122
172	USAU	2025-03-16	135
172	SWCI	2025-03-23	55
172	ELO	2025-03-23	39
172	Massey	2025-03-23	156
172	USAU	2025-03-23	135
172	SWCI	2025-03-29	80
172	ELO	2025-03-29	43
172	Massey	2025-03-29	122
172	USAU	2025-03-29	126
172	SWCI	2025-03-30	91
172	ELO	2025-03-30	45
172	Massey	2025-03-30	130
172	USAU	2025-03-30	131
173	SWCI	2025-01-26	202
173	ELO	2025-01-26	180
173	Massey	2025-01-26	147
173	USAU	2025-01-26	169
173	SWCI	2025-02-02	235
173	ELO	2025-02-02	174
173	Massey	2025-02-02	260
173	USAU	2025-02-02	177
173	SWCI	2025-02-08	257
173	ELO	2025-02-08	178
173	Massey	2025-02-08	279
173	USAU	2025-02-08	177
173	SWCI	2025-02-09	257
173	ELO	2025-02-09	174
173	Massey	2025-02-09	121
173	USAU	2025-02-09	175
173	SWCI	2025-02-12	257
173	ELO	2025-02-12	176
173	Massey	2025-02-12	125
173	USAU	2025-02-12	175
173	SWCI	2025-02-16	268
173	ELO	2025-02-16	175
173	Massey	2025-02-16	281
173	USAU	2025-02-16	164
173	SWCI	2025-02-17	268
173	ELO	2025-02-17	175
173	Massey	2025-02-17	264
173	USAU	2025-02-17	162
173	SWCI	2025-02-22	293
173	ELO	2025-02-22	173
173	Massey	2025-02-22	253
173	USAU	2025-02-22	162
173	SWCI	2025-02-23	293
173	ELO	2025-02-23	171
173	Massey	2025-02-23	268
173	USAU	2025-02-23	164
173	SWCI	2025-03-02	344
173	ELO	2025-03-02	181
173	Massey	2025-03-02	361
173	USAU	2025-03-02	164
173	SWCI	2025-03-08	346
173	ELO	2025-03-08	183
173	Massey	2025-03-08	366
173	USAU	2025-03-08	160
173	SWCI	2025-03-09	349
173	ELO	2025-03-09	182
173	Massey	2025-03-09	281
173	USAU	2025-03-09	161
173	SWCI	2025-03-15	158
173	ELO	2025-03-15	182
173	Massey	2025-03-15	242
173	USAU	2025-03-15	228
173	SWCI	2025-03-16	110
173	ELO	2025-03-16	179
173	Massey	2025-03-16	209
173	USAU	2025-03-16	243
173	SWCI	2025-03-23	116
173	ELO	2025-03-23	74
173	Massey	2025-03-23	238
173	USAU	2025-03-23	218
173	SWCI	2025-03-29	89
173	ELO	2025-03-29	81
173	Massey	2025-03-29	162
173	USAU	2025-03-29	145
173	SWCI	2025-03-30	79
173	ELO	2025-03-30	81
173	Massey	2025-03-30	150
173	USAU	2025-03-30	142
174	SWCI	2025-01-26	203
174	ELO	2025-01-26	181
174	Massey	2025-01-26	173
174	USAU	2025-01-26	170
174	SWCI	2025-02-02	236
174	ELO	2025-02-02	175
174	Massey	2025-02-02	239
174	USAU	2025-02-02	178
174	SWCI	2025-02-08	258
174	ELO	2025-02-08	179
174	Massey	2025-02-08	235
174	USAU	2025-02-08	178
174	SWCI	2025-02-09	258
174	ELO	2025-02-09	175
174	Massey	2025-02-09	265
174	USAU	2025-02-09	176
174	SWCI	2025-02-12	258
174	ELO	2025-02-12	177
174	Massey	2025-02-12	276
174	USAU	2025-02-12	176
174	SWCI	2025-02-16	269
174	ELO	2025-02-16	176
174	Massey	2025-02-16	261
174	USAU	2025-02-16	165
174	SWCI	2025-02-17	269
174	ELO	2025-02-17	176
174	Massey	2025-02-17	313
174	USAU	2025-02-17	163
174	SWCI	2025-02-22	294
174	ELO	2025-02-22	174
174	Massey	2025-02-22	122
174	USAU	2025-02-22	163
174	SWCI	2025-02-23	294
174	ELO	2025-02-23	172
174	Massey	2025-02-23	365
174	USAU	2025-02-23	165
174	SWCI	2025-03-02	345
174	ELO	2025-03-02	182
174	Massey	2025-03-02	98
174	USAU	2025-03-02	165
174	SWCI	2025-03-08	347
174	ELO	2025-03-08	184
174	Massey	2025-03-08	339
174	USAU	2025-03-08	161
174	SWCI	2025-03-09	350
174	ELO	2025-03-09	183
174	Massey	2025-03-09	300
174	USAU	2025-03-09	162
174	SWCI	2025-03-15	329
174	ELO	2025-03-15	183
174	Massey	2025-03-15	333
174	USAU	2025-03-15	335
174	SWCI	2025-03-16	338
174	ELO	2025-03-16	180
174	Massey	2025-03-16	357
174	USAU	2025-03-16	350
174	SWCI	2025-03-23	356
174	ELO	2025-03-23	365
174	Massey	2025-03-23	354
174	USAU	2025-03-23	343
174	SWCI	2025-03-29	334
174	ELO	2025-03-29	358
174	Massey	2025-03-29	278
174	USAU	2025-03-29	279
174	SWCI	2025-03-30	324
174	ELO	2025-03-30	357
174	Massey	2025-03-30	275
174	USAU	2025-03-30	280
175	SWCI	2025-01-26	204
175	ELO	2025-01-26	182
175	Massey	2025-01-26	81
175	USAU	2025-01-26	171
175	SWCI	2025-02-02	237
175	ELO	2025-02-02	176
175	Massey	2025-02-02	237
175	USAU	2025-02-02	179
175	SWCI	2025-02-08	259
175	ELO	2025-02-08	180
175	Massey	2025-02-08	285
175	USAU	2025-02-08	179
175	SWCI	2025-02-09	259
175	ELO	2025-02-09	176
175	Massey	2025-02-09	122
175	USAU	2025-02-09	177
175	SWCI	2025-02-12	259
175	ELO	2025-02-12	178
175	Massey	2025-02-12	134
175	USAU	2025-02-12	177
175	SWCI	2025-02-16	270
175	ELO	2025-02-16	177
175	Massey	2025-02-16	111
175	USAU	2025-02-16	166
175	SWCI	2025-02-17	270
175	ELO	2025-02-17	177
175	Massey	2025-02-17	349
175	USAU	2025-02-17	164
175	SWCI	2025-02-22	295
175	ELO	2025-02-22	175
175	Massey	2025-02-22	170
175	USAU	2025-02-22	164
175	SWCI	2025-02-23	295
175	ELO	2025-02-23	173
175	Massey	2025-02-23	121
175	USAU	2025-02-23	166
175	SWCI	2025-03-02	346
175	ELO	2025-03-02	183
175	Massey	2025-03-02	176
175	USAU	2025-03-02	166
175	SWCI	2025-03-08	348
175	ELO	2025-03-08	185
175	Massey	2025-03-08	249
175	USAU	2025-03-08	162
175	SWCI	2025-03-09	351
175	ELO	2025-03-09	184
175	Massey	2025-03-09	390
175	USAU	2025-03-09	163
175	SWCI	2025-03-15	363
175	ELO	2025-03-15	184
175	Massey	2025-03-15	49
175	USAU	2025-03-15	155
175	SWCI	2025-03-16	363
175	ELO	2025-03-16	181
175	Massey	2025-03-16	250
175	USAU	2025-03-16	157
175	SWCI	2025-03-23	378
175	ELO	2025-03-23	178
175	Massey	2025-03-23	21
175	USAU	2025-03-23	154
175	SWCI	2025-03-29	394
175	ELO	2025-03-29	189
175	Massey	2025-03-29	391
175	USAU	2025-03-29	383
175	SWCI	2025-03-30	356
175	ELO	2025-03-30	189
175	Massey	2025-03-30	382
175	USAU	2025-03-30	378
176	SWCI	2025-01-26	205
176	ELO	2025-01-26	183
176	Massey	2025-01-26	174
176	USAU	2025-01-26	172
176	SWCI	2025-02-02	238
176	ELO	2025-02-02	177
176	Massey	2025-02-02	258
176	USAU	2025-02-02	180
176	SWCI	2025-02-08	260
176	ELO	2025-02-08	181
176	Massey	2025-02-08	142
176	USAU	2025-02-08	180
176	SWCI	2025-02-09	260
176	ELO	2025-02-09	177
176	Massey	2025-02-09	142
176	USAU	2025-02-09	178
176	SWCI	2025-02-12	260
176	ELO	2025-02-12	179
176	Massey	2025-02-12	280
176	USAU	2025-02-12	178
176	SWCI	2025-02-16	271
176	ELO	2025-02-16	178
176	Massey	2025-02-16	75
176	USAU	2025-02-16	167
176	SWCI	2025-02-17	271
176	ELO	2025-02-17	178
176	Massey	2025-02-17	333
176	USAU	2025-02-17	165
176	SWCI	2025-02-22	296
176	ELO	2025-02-22	176
176	Massey	2025-02-22	277
176	USAU	2025-02-22	165
176	SWCI	2025-02-23	296
176	ELO	2025-02-23	174
176	Massey	2025-02-23	77
176	USAU	2025-02-23	167
176	SWCI	2025-03-02	293
176	ELO	2025-03-02	184
176	Massey	2025-03-02	367
176	USAU	2025-03-02	375
176	SWCI	2025-03-08	300
176	ELO	2025-03-08	359
176	Massey	2025-03-08	330
176	USAU	2025-03-08	377
176	SWCI	2025-03-09	303
176	ELO	2025-03-09	357
176	Massey	2025-03-09	350
176	USAU	2025-03-09	375
176	SWCI	2025-03-15	328
176	ELO	2025-03-15	357
176	Massey	2025-03-15	361
176	USAU	2025-03-15	347
176	SWCI	2025-03-16	328
176	ELO	2025-03-16	355
176	Massey	2025-03-16	356
176	USAU	2025-03-16	354
176	SWCI	2025-03-23	343
176	ELO	2025-03-23	350
176	Massey	2025-03-23	353
176	USAU	2025-03-23	348
176	SWCI	2025-03-29	333
176	ELO	2025-03-29	346
176	Massey	2025-03-29	327
176	USAU	2025-03-29	322
176	SWCI	2025-03-30	331
176	ELO	2025-03-30	344
176	Massey	2025-03-30	321
176	USAU	2025-03-30	329
177	SWCI	2025-01-26	206
177	ELO	2025-01-26	184
177	Massey	2025-01-26	148
177	USAU	2025-01-26	173
177	SWCI	2025-02-02	239
177	ELO	2025-02-02	178
177	Massey	2025-02-02	248
177	USAU	2025-02-02	181
177	SWCI	2025-02-08	261
177	ELO	2025-02-08	182
177	Massey	2025-02-08	231
177	USAU	2025-02-08	181
177	SWCI	2025-02-09	261
177	ELO	2025-02-09	178
177	Massey	2025-02-09	274
177	USAU	2025-02-09	179
177	SWCI	2025-02-12	261
177	ELO	2025-02-12	180
177	Massey	2025-02-12	277
177	USAU	2025-02-12	179
177	SWCI	2025-02-16	272
177	ELO	2025-02-16	179
177	Massey	2025-02-16	120
177	USAU	2025-02-16	168
177	SWCI	2025-02-17	272
177	ELO	2025-02-17	179
177	Massey	2025-02-17	143
177	USAU	2025-02-17	166
177	SWCI	2025-02-22	297
177	ELO	2025-02-22	177
177	Massey	2025-02-22	127
177	USAU	2025-02-22	166
177	SWCI	2025-02-23	297
177	ELO	2025-02-23	175
177	Massey	2025-02-23	142
177	USAU	2025-02-23	168
177	SWCI	2025-03-02	347
177	ELO	2025-03-02	185
177	Massey	2025-03-02	18
177	USAU	2025-03-02	167
177	SWCI	2025-03-08	349
177	ELO	2025-03-08	186
177	Massey	2025-03-08	236
177	USAU	2025-03-08	163
177	SWCI	2025-03-09	352
177	ELO	2025-03-09	185
177	Massey	2025-03-09	386
177	USAU	2025-03-09	164
177	SWCI	2025-03-15	364
177	ELO	2025-03-15	185
177	Massey	2025-03-15	11
177	USAU	2025-03-15	156
177	SWCI	2025-03-16	364
177	ELO	2025-03-16	182
177	Massey	2025-03-16	352
177	USAU	2025-03-16	158
177	SWCI	2025-03-23	180
177	ELO	2025-03-23	179
177	Massey	2025-03-23	272
177	USAU	2025-03-23	278
177	SWCI	2025-03-29	214
177	ELO	2025-03-29	145
177	Massey	2025-03-29	275
177	USAU	2025-03-29	280
177	SWCI	2025-03-30	238
177	ELO	2025-03-30	148
177	Massey	2025-03-30	283
177	USAU	2025-03-30	294
178	SWCI	2025-01-26	207
178	ELO	2025-01-26	185
178	Massey	2025-01-26	175
178	USAU	2025-01-26	174
178	SWCI	2025-02-02	240
178	ELO	2025-02-02	179
178	Massey	2025-02-02	257
178	USAU	2025-02-02	182
178	SWCI	2025-02-08	262
178	ELO	2025-02-08	183
178	Massey	2025-02-08	232
178	USAU	2025-02-08	182
178	SWCI	2025-02-09	262
178	ELO	2025-02-09	179
178	Massey	2025-02-09	301
178	USAU	2025-02-09	180
178	SWCI	2025-02-12	262
178	ELO	2025-02-12	181
178	Massey	2025-02-12	129
178	USAU	2025-02-12	180
178	SWCI	2025-02-16	273
178	ELO	2025-02-16	180
178	Massey	2025-02-16	336
178	USAU	2025-02-16	169
178	SWCI	2025-02-17	273
178	ELO	2025-02-17	180
178	Massey	2025-02-17	315
178	USAU	2025-02-17	167
178	SWCI	2025-02-22	298
178	ELO	2025-02-22	178
178	Massey	2025-02-22	302
178	USAU	2025-02-22	167
178	SWCI	2025-02-23	298
178	ELO	2025-02-23	176
178	Massey	2025-02-23	193
178	USAU	2025-02-23	169
178	SWCI	2025-03-02	348
178	ELO	2025-03-02	186
178	Massey	2025-03-02	323
178	USAU	2025-03-02	168
178	SWCI	2025-03-08	350
178	ELO	2025-03-08	187
178	Massey	2025-03-08	279
178	USAU	2025-03-08	164
178	SWCI	2025-03-09	353
178	ELO	2025-03-09	186
178	Massey	2025-03-09	351
178	USAU	2025-03-09	165
178	SWCI	2025-03-15	365
178	ELO	2025-03-15	186
178	Massey	2025-03-15	51
178	USAU	2025-03-15	157
178	SWCI	2025-03-16	365
178	ELO	2025-03-16	183
178	Massey	2025-03-16	339
178	USAU	2025-03-16	159
178	SWCI	2025-03-23	379
178	ELO	2025-03-23	180
178	Massey	2025-03-23	22
178	USAU	2025-03-23	155
178	SWCI	2025-03-29	298
178	ELO	2025-03-29	190
178	Massey	2025-03-29	212
178	USAU	2025-03-29	261
178	SWCI	2025-03-30	147
178	ELO	2025-03-30	190
178	Massey	2025-03-30	201
178	USAU	2025-03-30	219
179	SWCI	2025-01-26	208
179	ELO	2025-01-26	186
179	Massey	2025-01-26	176
179	USAU	2025-01-26	175
179	SWCI	2025-02-02	241
179	ELO	2025-02-02	180
179	Massey	2025-02-02	259
179	USAU	2025-02-02	183
179	SWCI	2025-02-08	263
179	ELO	2025-02-08	184
179	Massey	2025-02-08	291
179	USAU	2025-02-08	183
179	SWCI	2025-02-09	263
179	ELO	2025-02-09	180
179	Massey	2025-02-09	258
179	USAU	2025-02-09	181
179	SWCI	2025-02-12	263
179	ELO	2025-02-12	182
179	Massey	2025-02-12	284
179	USAU	2025-02-12	181
179	SWCI	2025-02-16	274
179	ELO	2025-02-16	181
179	Massey	2025-02-16	105
179	USAU	2025-02-16	170
179	SWCI	2025-02-17	274
179	ELO	2025-02-17	181
179	Massey	2025-02-17	293
179	USAU	2025-02-17	168
179	SWCI	2025-02-22	81
179	ELO	2025-02-22	179
179	Massey	2025-02-22	139
179	USAU	2025-02-22	69
179	SWCI	2025-02-23	108
179	ELO	2025-02-23	177
179	Massey	2025-02-23	107
179	USAU	2025-02-23	81
179	SWCI	2025-03-02	143
179	ELO	2025-03-02	304
179	Massey	2025-03-02	207
179	USAU	2025-03-02	286
179	SWCI	2025-03-08	128
179	ELO	2025-03-08	273
179	Massey	2025-03-08	169
179	USAU	2025-03-08	266
179	SWCI	2025-03-09	96
179	ELO	2025-03-09	272
179	Massey	2025-03-09	168
179	USAU	2025-03-09	266
179	SWCI	2025-03-15	110
179	ELO	2025-03-15	108
179	Massey	2025-03-15	248
179	USAU	2025-03-15	270
179	SWCI	2025-03-16	115
179	ELO	2025-03-16	109
179	Massey	2025-03-16	192
179	USAU	2025-03-16	263
179	SWCI	2025-03-23	134
179	ELO	2025-03-23	117
179	Massey	2025-03-23	226
179	USAU	2025-03-23	243
179	SWCI	2025-03-29	153
179	ELO	2025-03-29	125
179	Massey	2025-03-29	203
179	USAU	2025-03-29	217
179	SWCI	2025-03-30	161
179	ELO	2025-03-30	127
179	Massey	2025-03-30	198
179	USAU	2025-03-30	216
180	SWCI	2025-01-26	209
180	ELO	2025-01-26	187
180	Massey	2025-01-26	177
180	USAU	2025-01-26	176
180	SWCI	2025-02-02	242
180	ELO	2025-02-02	181
180	Massey	2025-02-02	256
180	USAU	2025-02-02	184
180	SWCI	2025-02-08	264
180	ELO	2025-02-08	185
180	Massey	2025-02-08	289
180	USAU	2025-02-08	184
180	SWCI	2025-02-09	264
180	ELO	2025-02-09	181
180	Massey	2025-02-09	215
180	USAU	2025-02-09	182
180	SWCI	2025-02-12	264
180	ELO	2025-02-12	183
180	Massey	2025-02-12	174
180	USAU	2025-02-12	182
180	SWCI	2025-02-16	275
180	ELO	2025-02-16	182
180	Massey	2025-02-16	106
180	USAU	2025-02-16	171
180	SWCI	2025-02-17	275
180	ELO	2025-02-17	182
180	Massey	2025-02-17	121
180	USAU	2025-02-17	169
180	SWCI	2025-02-22	299
180	ELO	2025-02-22	180
180	Massey	2025-02-22	319
180	USAU	2025-02-22	168
180	SWCI	2025-02-23	299
180	ELO	2025-02-23	178
180	Massey	2025-02-23	339
180	USAU	2025-02-23	170
180	SWCI	2025-03-02	14
180	ELO	2025-03-02	187
180	Massey	2025-03-02	70
180	USAU	2025-03-02	60
180	SWCI	2025-03-08	15
180	ELO	2025-03-08	28
180	Massey	2025-03-08	61
180	USAU	2025-03-08	51
180	SWCI	2025-03-09	14
180	ELO	2025-03-09	28
180	Massey	2025-03-09	65
180	USAU	2025-03-09	61
180	SWCI	2025-03-15	12
180	ELO	2025-03-15	27
180	Massey	2025-03-15	144
180	USAU	2025-03-15	80
180	SWCI	2025-03-16	12
180	ELO	2025-03-16	29
180	Massey	2025-03-16	82
180	USAU	2025-03-16	74
180	SWCI	2025-03-23	21
180	ELO	2025-03-23	35
180	Massey	2025-03-23	160
180	USAU	2025-03-23	144
180	SWCI	2025-03-29	12
180	ELO	2025-03-29	15
180	Massey	2025-03-29	133
180	USAU	2025-03-29	128
180	SWCI	2025-03-30	8
180	ELO	2025-03-30	15
180	Massey	2025-03-30	121
180	USAU	2025-03-30	112
181	SWCI	2025-01-26	210
181	ELO	2025-01-26	188
181	Massey	2025-01-26	178
181	USAU	2025-01-26	177
181	SWCI	2025-02-02	243
181	ELO	2025-02-02	182
181	Massey	2025-02-02	255
181	USAU	2025-02-02	185
181	SWCI	2025-02-08	265
181	ELO	2025-02-08	186
181	Massey	2025-02-08	288
181	USAU	2025-02-08	185
181	SWCI	2025-02-09	265
181	ELO	2025-02-09	182
181	Massey	2025-02-09	273
181	USAU	2025-02-09	183
181	SWCI	2025-02-12	265
181	ELO	2025-02-12	184
181	Massey	2025-02-12	155
181	USAU	2025-02-12	183
181	SWCI	2025-02-16	276
181	ELO	2025-02-16	183
181	Massey	2025-02-16	103
181	USAU	2025-02-16	172
181	SWCI	2025-02-17	276
181	ELO	2025-02-17	183
181	Massey	2025-02-17	271
181	USAU	2025-02-17	170
181	SWCI	2025-02-22	300
181	ELO	2025-02-22	181
181	Massey	2025-02-22	305
181	USAU	2025-02-22	169
181	SWCI	2025-02-23	300
181	ELO	2025-02-23	179
181	Massey	2025-02-23	315
181	USAU	2025-02-23	171
181	SWCI	2025-03-02	349
181	ELO	2025-03-02	188
181	Massey	2025-03-02	375
181	USAU	2025-03-02	169
181	SWCI	2025-03-08	351
181	ELO	2025-03-08	188
181	Massey	2025-03-08	193
181	USAU	2025-03-08	165
181	SWCI	2025-03-09	354
181	ELO	2025-03-09	187
181	Massey	2025-03-09	369
181	USAU	2025-03-09	166
181	SWCI	2025-03-15	366
181	ELO	2025-03-15	187
181	Massey	2025-03-15	45
181	USAU	2025-03-15	158
181	SWCI	2025-03-16	366
181	ELO	2025-03-16	184
181	Massey	2025-03-16	322
181	USAU	2025-03-16	160
181	SWCI	2025-03-23	351
181	ELO	2025-03-23	181
181	Massey	2025-03-23	379
181	USAU	2025-03-23	359
181	SWCI	2025-03-29	360
181	ELO	2025-03-29	376
181	Massey	2025-03-29	367
181	USAU	2025-03-29	337
181	SWCI	2025-03-30	362
181	ELO	2025-03-30	376
181	Massey	2025-03-30	362
181	USAU	2025-03-30	335
182	SWCI	2025-01-26	30
182	ELO	2025-01-26	189
182	Massey	2025-01-26	50
182	USAU	2025-01-26	368
182	SWCI	2025-02-02	60
182	ELO	2025-02-02	25
182	Massey	2025-02-02	254
182	USAU	2025-02-02	348
182	SWCI	2025-02-08	81
182	ELO	2025-02-08	37
182	Massey	2025-02-08	87
182	USAU	2025-02-08	68
182	SWCI	2025-02-09	80
182	ELO	2025-02-09	40
182	Massey	2025-02-09	306
182	USAU	2025-02-09	72
182	SWCI	2025-02-12	80
182	ELO	2025-02-12	50
182	Massey	2025-02-12	303
182	USAU	2025-02-12	73
182	SWCI	2025-02-16	98
182	ELO	2025-02-16	50
182	Massey	2025-02-16	277
182	USAU	2025-02-16	330
182	SWCI	2025-02-17	98
182	ELO	2025-02-17	56
182	Massey	2025-02-17	263
182	USAU	2025-02-17	331
182	SWCI	2025-02-22	108
182	ELO	2025-02-22	57
182	Massey	2025-02-22	136
182	USAU	2025-02-22	283
182	SWCI	2025-02-23	106
182	ELO	2025-02-23	60
182	Massey	2025-02-23	129
182	USAU	2025-02-23	284
182	SWCI	2025-03-02	160
182	ELO	2025-03-02	72
182	Massey	2025-03-02	102
182	USAU	2025-03-02	111
182	SWCI	2025-03-08	161
182	ELO	2025-03-08	147
182	Massey	2025-03-08	97
182	USAU	2025-03-08	118
182	SWCI	2025-03-09	163
182	ELO	2025-03-09	150
182	Massey	2025-03-09	96
182	USAU	2025-03-09	116
182	SWCI	2025-03-15	174
182	ELO	2025-03-15	151
182	Massey	2025-03-15	156
182	USAU	2025-03-15	135
182	SWCI	2025-03-16	172
182	ELO	2025-03-16	153
182	Massey	2025-03-16	100
182	USAU	2025-03-16	128
182	SWCI	2025-03-23	111
182	ELO	2025-03-23	157
182	Massey	2025-03-23	139
182	USAU	2025-03-23	133
182	SWCI	2025-03-29	96
182	ELO	2025-03-29	52
182	Massey	2025-03-29	106
182	USAU	2025-03-29	127
182	SWCI	2025-03-30	102
182	ELO	2025-03-30	53
182	Massey	2025-03-30	106
182	USAU	2025-03-30	122
183	SWCI	2025-01-26	211
183	ELO	2025-01-26	190
183	Massey	2025-01-26	236
183	USAU	2025-01-26	178
183	SWCI	2025-02-02	244
183	ELO	2025-02-02	183
183	Massey	2025-02-02	189
183	USAU	2025-02-02	186
183	SWCI	2025-02-08	266
183	ELO	2025-02-08	187
183	Massey	2025-02-08	136
183	USAU	2025-02-08	186
183	SWCI	2025-02-09	266
183	ELO	2025-02-09	183
183	Massey	2025-02-09	106
183	USAU	2025-02-09	184
183	SWCI	2025-02-12	266
183	ELO	2025-02-12	185
183	Massey	2025-02-12	142
183	USAU	2025-02-12	184
183	SWCI	2025-02-16	277
183	ELO	2025-02-16	184
183	Massey	2025-02-16	74
183	USAU	2025-02-16	173
183	SWCI	2025-02-17	277
183	ELO	2025-02-17	184
183	Massey	2025-02-17	303
183	USAU	2025-02-17	171
183	SWCI	2025-02-22	301
183	ELO	2025-02-22	182
183	Massey	2025-02-22	121
183	USAU	2025-02-22	170
183	SWCI	2025-02-23	301
183	ELO	2025-02-23	180
183	Massey	2025-02-23	379
183	USAU	2025-02-23	172
183	SWCI	2025-03-02	139
183	ELO	2025-03-02	189
183	Massey	2025-03-02	79
183	USAU	2025-03-02	79
183	SWCI	2025-03-08	143
183	ELO	2025-03-08	141
183	Massey	2025-03-08	72
183	USAU	2025-03-08	79
183	SWCI	2025-03-09	145
183	ELO	2025-03-09	144
183	Massey	2025-03-09	73
183	USAU	2025-03-09	80
183	SWCI	2025-03-15	168
183	ELO	2025-03-15	146
183	Massey	2025-03-15	138
183	USAU	2025-03-15	97
183	SWCI	2025-03-16	166
183	ELO	2025-03-16	148
183	Massey	2025-03-16	78
183	USAU	2025-03-16	90
183	SWCI	2025-03-23	171
183	ELO	2025-03-23	153
183	Massey	2025-03-23	119
183	USAU	2025-03-23	102
183	SWCI	2025-03-29	109
183	ELO	2025-03-29	166
183	Massey	2025-03-29	84
183	USAU	2025-03-29	85
183	SWCI	2025-03-30	72
183	ELO	2025-03-30	168
183	Massey	2025-03-30	66
183	USAU	2025-03-30	68
184	SWCI	2025-01-26	212
184	ELO	2025-01-26	191
184	Massey	2025-01-26	237
184	USAU	2025-01-26	179
184	SWCI	2025-02-02	68
184	ELO	2025-02-02	184
184	Massey	2025-02-02	318
184	USAU	2025-02-02	69
184	SWCI	2025-02-08	90
184	ELO	2025-02-08	65
184	Massey	2025-02-08	123
184	USAU	2025-02-08	64
184	SWCI	2025-02-09	89
184	ELO	2025-02-09	68
184	Massey	2025-02-09	128
184	USAU	2025-02-09	68
184	SWCI	2025-02-12	89
184	ELO	2025-02-12	79
184	Massey	2025-02-12	89
184	USAU	2025-02-12	67
184	SWCI	2025-02-16	35
184	ELO	2025-02-16	79
184	Massey	2025-02-16	69
184	USAU	2025-02-16	52
184	SWCI	2025-02-17	33
184	ELO	2025-02-17	8
184	Massey	2025-02-17	59
184	USAU	2025-02-17	51
184	SWCI	2025-02-22	37
184	ELO	2025-02-22	8
184	Massey	2025-02-22	72
184	USAU	2025-02-22	59
184	SWCI	2025-02-23	34
184	ELO	2025-02-23	8
184	Massey	2025-02-23	64
184	USAU	2025-02-23	55
184	SWCI	2025-03-02	23
184	ELO	2025-03-02	11
184	Massey	2025-03-02	43
184	USAU	2025-03-02	45
184	SWCI	2025-03-08	23
184	ELO	2025-03-08	4
184	Massey	2025-03-08	38
184	USAU	2025-03-08	43
184	SWCI	2025-03-09	23
184	ELO	2025-03-09	4
184	Massey	2025-03-09	39
184	USAU	2025-03-09	44
184	SWCI	2025-03-15	22
184	ELO	2025-03-15	5
184	Massey	2025-03-15	94
184	USAU	2025-03-15	41
184	SWCI	2025-03-16	17
184	ELO	2025-03-16	5
184	Massey	2025-03-16	37
184	USAU	2025-03-16	40
184	SWCI	2025-03-23	17
184	ELO	2025-03-23	6
184	Massey	2025-03-23	71
184	USAU	2025-03-23	45
184	SWCI	2025-03-29	15
184	ELO	2025-03-29	7
184	Massey	2025-03-29	41
184	USAU	2025-03-29	54
184	SWCI	2025-03-30	12
184	ELO	2025-03-30	7
184	Massey	2025-03-30	35
184	USAU	2025-03-30	44
185	SWCI	2025-01-26	19
185	ELO	2025-01-26	192
185	Massey	2025-01-26	33
185	USAU	2025-01-26	20
185	SWCI	2025-02-02	35
185	ELO	2025-02-02	27
185	Massey	2025-02-02	76
185	USAU	2025-02-02	41
185	SWCI	2025-02-08	47
185	ELO	2025-02-08	39
185	Massey	2025-02-08	59
185	USAU	2025-02-08	29
185	SWCI	2025-02-09	48
185	ELO	2025-02-09	42
185	Massey	2025-02-09	195
185	USAU	2025-02-09	37
185	SWCI	2025-02-12	48
185	ELO	2025-02-12	52
185	Massey	2025-02-12	135
185	USAU	2025-02-12	37
185	SWCI	2025-02-16	61
185	ELO	2025-02-16	53
185	Massey	2025-02-16	121
185	USAU	2025-02-16	294
185	SWCI	2025-02-17	62
185	ELO	2025-02-17	59
185	Massey	2025-02-17	111
185	USAU	2025-02-17	296
185	SWCI	2025-02-22	73
185	ELO	2025-02-22	60
185	Massey	2025-02-22	106
185	USAU	2025-02-22	87
185	SWCI	2025-02-23	68
185	ELO	2025-02-23	63
185	Massey	2025-02-23	106
185	USAU	2025-02-23	90
185	SWCI	2025-03-02	90
185	ELO	2025-03-02	75
185	Massey	2025-03-02	84
185	USAU	2025-03-02	86
185	SWCI	2025-03-08	93
185	ELO	2025-03-08	77
185	Massey	2025-03-08	77
185	USAU	2025-03-08	87
185	SWCI	2025-03-09	95
185	ELO	2025-03-09	79
185	Massey	2025-03-09	78
185	USAU	2025-03-09	88
185	SWCI	2025-03-15	102
185	ELO	2025-03-15	82
185	Massey	2025-03-15	136
185	USAU	2025-03-15	87
185	SWCI	2025-03-16	103
185	ELO	2025-03-16	85
185	Massey	2025-03-16	79
185	USAU	2025-03-16	87
185	SWCI	2025-03-23	99
185	ELO	2025-03-23	93
185	Massey	2025-03-23	105
185	USAU	2025-03-23	85
185	SWCI	2025-03-29	74
185	ELO	2025-03-29	102
185	Massey	2025-03-29	76
185	USAU	2025-03-29	78
185	SWCI	2025-03-30	104
185	ELO	2025-03-30	102
185	Massey	2025-03-30	73
185	USAU	2025-03-30	79
186	SWCI	2025-01-26	213
186	ELO	2025-01-26	193
186	Massey	2025-01-26	215
186	USAU	2025-01-26	180
186	SWCI	2025-02-02	245
186	ELO	2025-02-02	185
186	Massey	2025-02-02	191
186	USAU	2025-02-02	187
186	SWCI	2025-02-08	267
186	ELO	2025-02-08	188
186	Massey	2025-02-08	230
186	USAU	2025-02-08	187
186	SWCI	2025-02-09	267
186	ELO	2025-02-09	184
186	Massey	2025-02-09	280
186	USAU	2025-02-09	185
186	SWCI	2025-02-12	267
186	ELO	2025-02-12	186
186	Massey	2025-02-12	145
186	USAU	2025-02-12	185
186	SWCI	2025-02-16	278
186	ELO	2025-02-16	185
186	Massey	2025-02-16	98
186	USAU	2025-02-16	174
186	SWCI	2025-02-17	278
186	ELO	2025-02-17	185
186	Massey	2025-02-17	314
186	USAU	2025-02-17	172
186	SWCI	2025-02-22	302
186	ELO	2025-02-22	183
186	Massey	2025-02-22	357
186	USAU	2025-02-22	171
186	SWCI	2025-02-23	302
186	ELO	2025-02-23	181
186	Massey	2025-02-23	273
186	USAU	2025-02-23	173
186	SWCI	2025-03-02	42
186	ELO	2025-03-02	190
186	Massey	2025-03-02	94
186	USAU	2025-03-02	76
186	SWCI	2025-03-08	38
186	ELO	2025-03-08	100
186	Massey	2025-03-08	87
186	USAU	2025-03-08	72
186	SWCI	2025-03-09	40
186	ELO	2025-03-09	103
186	Massey	2025-03-09	86
186	USAU	2025-03-09	73
186	SWCI	2025-03-15	45
186	ELO	2025-03-15	107
186	Massey	2025-03-15	153
186	USAU	2025-03-15	76
186	SWCI	2025-03-16	44
186	ELO	2025-03-16	108
186	Massey	2025-03-16	93
186	USAU	2025-03-16	78
186	SWCI	2025-03-23	28
186	ELO	2025-03-23	116
186	Massey	2025-03-23	117
186	USAU	2025-03-23	74
186	SWCI	2025-03-29	59
186	ELO	2025-03-29	124
186	Massey	2025-03-29	105
186	USAU	2025-03-29	95
186	SWCI	2025-03-30	61
186	ELO	2025-03-30	126
186	Massey	2025-03-30	100
186	USAU	2025-03-30	90
187	SWCI	2025-01-26	214
187	ELO	2025-01-26	194
187	Massey	2025-01-26	216
187	USAU	2025-01-26	181
187	SWCI	2025-02-02	246
187	ELO	2025-02-02	186
187	Massey	2025-02-02	161
187	USAU	2025-02-02	188
187	SWCI	2025-02-08	268
187	ELO	2025-02-08	189
187	Massey	2025-02-08	135
187	USAU	2025-02-08	188
187	SWCI	2025-02-09	268
187	ELO	2025-02-09	185
187	Massey	2025-02-09	269
187	USAU	2025-02-09	186
187	SWCI	2025-02-12	268
187	ELO	2025-02-12	187
187	Massey	2025-02-12	268
187	USAU	2025-02-12	186
187	SWCI	2025-02-16	279
187	ELO	2025-02-16	186
187	Massey	2025-02-16	102
187	USAU	2025-02-16	175
187	SWCI	2025-02-17	279
187	ELO	2025-02-17	186
187	Massey	2025-02-17	131
187	USAU	2025-02-17	173
187	SWCI	2025-02-22	303
187	ELO	2025-02-22	184
187	Massey	2025-02-22	3
187	USAU	2025-02-22	172
187	SWCI	2025-02-23	303
187	ELO	2025-02-23	182
187	Massey	2025-02-23	321
187	USAU	2025-02-23	174
187	SWCI	2025-03-02	64
187	ELO	2025-03-02	191
187	Massey	2025-03-02	37
187	USAU	2025-03-02	48
187	SWCI	2025-03-08	66
187	ELO	2025-03-08	71
187	Massey	2025-03-08	34
187	USAU	2025-03-08	50
187	SWCI	2025-03-09	67
187	ELO	2025-03-09	72
187	Massey	2025-03-09	35
187	USAU	2025-03-09	51
187	SWCI	2025-03-15	84
187	ELO	2025-03-15	75
187	Massey	2025-03-15	97
187	USAU	2025-03-15	61
187	SWCI	2025-03-16	88
187	ELO	2025-03-16	79
187	Massey	2025-03-16	38
187	USAU	2025-03-16	59
187	SWCI	2025-03-23	114
187	ELO	2025-03-23	84
187	Massey	2025-03-23	97
187	USAU	2025-03-23	83
187	SWCI	2025-03-29	64
187	ELO	2025-03-29	84
187	Massey	2025-03-29	65
187	USAU	2025-03-29	73
187	SWCI	2025-03-30	66
187	ELO	2025-03-30	84
187	Massey	2025-03-30	68
187	USAU	2025-03-30	73
188	SWCI	2025-01-26	215
188	ELO	2025-01-26	195
188	Massey	2025-01-26	84
188	USAU	2025-01-26	182
188	SWCI	2025-02-02	247
188	ELO	2025-02-02	187
188	Massey	2025-02-02	208
188	USAU	2025-02-02	189
188	SWCI	2025-02-08	269
188	ELO	2025-02-08	190
188	Massey	2025-02-08	139
188	USAU	2025-02-08	189
188	SWCI	2025-02-09	269
188	ELO	2025-02-09	186
188	Massey	2025-02-09	157
188	USAU	2025-02-09	187
188	SWCI	2025-02-12	269
188	ELO	2025-02-12	188
188	Massey	2025-02-12	283
188	USAU	2025-02-12	187
188	SWCI	2025-02-16	280
188	ELO	2025-02-16	187
188	Massey	2025-02-16	286
188	USAU	2025-02-16	176
188	SWCI	2025-02-17	280
188	ELO	2025-02-17	187
188	Massey	2025-02-17	299
188	USAU	2025-02-17	174
188	SWCI	2025-02-22	304
188	ELO	2025-02-22	185
188	Massey	2025-02-22	388
188	USAU	2025-02-22	173
188	SWCI	2025-02-23	304
188	ELO	2025-02-23	183
188	Massey	2025-02-23	74
188	USAU	2025-02-23	175
188	SWCI	2025-03-02	5
188	ELO	2025-03-02	192
188	Massey	2025-03-02	51
188	USAU	2025-03-02	43
188	SWCI	2025-03-08	5
188	ELO	2025-03-08	38
188	Massey	2025-03-08	43
188	USAU	2025-03-08	39
188	SWCI	2025-03-09	5
188	ELO	2025-03-09	39
188	Massey	2025-03-09	44
188	USAU	2025-03-09	42
188	SWCI	2025-03-15	3
188	ELO	2025-03-15	39
188	Massey	2025-03-15	106
188	USAU	2025-03-15	44
188	SWCI	2025-03-16	3
188	ELO	2025-03-16	41
188	Massey	2025-03-16	49
188	USAU	2025-03-16	42
188	SWCI	2025-03-23	2
188	ELO	2025-03-23	47
188	Massey	2025-03-23	77
188	USAU	2025-03-23	44
188	SWCI	2025-03-29	14
188	ELO	2025-03-29	54
188	Massey	2025-03-29	54
188	USAU	2025-03-29	56
188	SWCI	2025-03-30	27
188	ELO	2025-03-30	55
188	Massey	2025-03-30	63
188	USAU	2025-03-30	71
189	SWCI	2025-01-26	216
189	ELO	2025-01-26	196
189	Massey	2025-01-26	66
189	USAU	2025-01-26	183
189	SWCI	2025-02-02	248
189	ELO	2025-02-02	188
189	Massey	2025-02-02	209
189	USAU	2025-02-02	190
189	SWCI	2025-02-08	270
189	ELO	2025-02-08	191
189	Massey	2025-02-08	134
189	USAU	2025-02-08	190
189	SWCI	2025-02-09	270
189	ELO	2025-02-09	187
189	Massey	2025-02-09	119
189	USAU	2025-02-09	188
189	SWCI	2025-02-12	270
189	ELO	2025-02-12	189
189	Massey	2025-02-12	279
189	USAU	2025-02-12	188
189	SWCI	2025-02-16	281
189	ELO	2025-02-16	188
189	Massey	2025-02-16	296
189	USAU	2025-02-16	177
189	SWCI	2025-02-17	281
189	ELO	2025-02-17	188
189	Massey	2025-02-17	137
189	USAU	2025-02-17	175
189	SWCI	2025-02-22	305
189	ELO	2025-02-22	186
189	Massey	2025-02-22	352
189	USAU	2025-02-22	174
189	SWCI	2025-02-23	305
189	ELO	2025-02-23	184
189	Massey	2025-02-23	306
189	USAU	2025-02-23	176
189	SWCI	2025-03-02	9
189	ELO	2025-03-02	193
189	Massey	2025-03-02	25
189	USAU	2025-03-02	23
189	SWCI	2025-03-08	9
189	ELO	2025-03-08	33
189	Massey	2025-03-08	23
189	USAU	2025-03-08	23
189	SWCI	2025-03-09	9
189	ELO	2025-03-09	33
189	Massey	2025-03-09	23
189	USAU	2025-03-09	24
189	SWCI	2025-03-15	50
189	ELO	2025-03-15	33
189	Massey	2025-03-15	89
189	USAU	2025-03-15	40
189	SWCI	2025-03-16	36
189	ELO	2025-03-16	35
189	Massey	2025-03-16	30
189	USAU	2025-03-16	36
189	SWCI	2025-03-23	39
189	ELO	2025-03-23	34
189	Massey	2025-03-23	62
189	USAU	2025-03-23	46
189	SWCI	2025-03-29	25
189	ELO	2025-03-29	40
189	Massey	2025-03-29	35
189	USAU	2025-03-29	46
189	SWCI	2025-03-30	21
189	ELO	2025-03-30	41
189	Massey	2025-03-30	38
189	USAU	2025-03-30	46
190	SWCI	2025-01-26	217
190	ELO	2025-01-26	197
190	Massey	2025-01-26	93
190	USAU	2025-01-26	184
190	SWCI	2025-02-02	21
190	ELO	2025-02-02	189
190	Massey	2025-02-02	6
190	USAU	2025-02-02	30
190	SWCI	2025-02-08	28
190	ELO	2025-02-08	28
190	Massey	2025-02-08	29
190	USAU	2025-02-08	43
190	SWCI	2025-02-09	28
190	ELO	2025-02-09	31
190	Massey	2025-02-09	66
190	USAU	2025-02-09	48
190	SWCI	2025-02-12	28
190	ELO	2025-02-12	38
190	Massey	2025-02-12	34
190	USAU	2025-02-12	48
190	SWCI	2025-02-16	29
190	ELO	2025-02-16	38
190	Massey	2025-02-16	66
190	USAU	2025-02-16	48
190	SWCI	2025-02-17	28
190	ELO	2025-02-17	40
190	Massey	2025-02-17	87
190	USAU	2025-02-17	43
190	SWCI	2025-02-22	43
190	ELO	2025-02-22	42
190	Massey	2025-02-22	265
190	USAU	2025-02-22	308
190	SWCI	2025-02-23	41
190	ELO	2025-02-23	42
190	Massey	2025-02-23	265
190	USAU	2025-02-23	316
190	SWCI	2025-03-02	54
190	ELO	2025-03-02	52
190	Massey	2025-03-02	188
190	USAU	2025-03-02	277
190	SWCI	2025-03-08	54
190	ELO	2025-03-08	70
190	Massey	2025-03-08	179
190	USAU	2025-03-08	273
190	SWCI	2025-03-09	53
190	ELO	2025-03-09	71
190	Massey	2025-03-09	179
190	USAU	2025-03-09	272
190	SWCI	2025-03-15	146
190	ELO	2025-03-15	74
190	Massey	2025-03-15	279
190	USAU	2025-03-15	296
190	SWCI	2025-03-16	129
190	ELO	2025-03-16	78
190	Massey	2025-03-16	217
190	USAU	2025-03-16	277
190	SWCI	2025-03-23	133
190	ELO	2025-03-23	92
190	Massey	2025-03-23	244
190	USAU	2025-03-23	248
190	SWCI	2025-03-29	76
190	ELO	2025-03-29	101
190	Massey	2025-03-29	196
190	USAU	2025-03-29	208
190	SWCI	2025-03-30	76
190	ELO	2025-03-30	101
190	Massey	2025-03-30	197
190	USAU	2025-03-30	212
191	SWCI	2025-01-26	218
191	ELO	2025-01-26	198
191	Massey	2025-01-26	317
191	USAU	2025-01-26	185
191	SWCI	2025-02-02	93
191	ELO	2025-02-02	190
191	Massey	2025-02-02	48
191	USAU	2025-02-02	354
191	SWCI	2025-02-08	125
191	ELO	2025-02-08	358
191	Massey	2025-02-08	116
191	USAU	2025-02-08	331
191	SWCI	2025-02-09	124
191	ELO	2025-02-09	355
191	Massey	2025-02-09	295
191	USAU	2025-02-09	331
191	SWCI	2025-02-12	124
191	ELO	2025-02-12	346
191	Massey	2025-02-12	113
191	USAU	2025-02-12	331
191	SWCI	2025-02-16	137
191	ELO	2025-02-16	345
191	Massey	2025-02-16	267
191	USAU	2025-02-16	309
191	SWCI	2025-02-17	137
191	ELO	2025-02-17	337
191	Massey	2025-02-17	294
191	USAU	2025-02-17	307
191	SWCI	2025-02-22	171
191	ELO	2025-02-22	368
191	Massey	2025-02-22	347
191	USAU	2025-02-22	365
191	SWCI	2025-02-23	175
191	ELO	2025-02-23	366
191	Massey	2025-02-23	342
191	USAU	2025-02-23	366
191	SWCI	2025-03-02	229
191	ELO	2025-03-02	357
191	Massey	2025-03-02	308
191	USAU	2025-03-02	340
191	SWCI	2025-03-08	232
191	ELO	2025-03-08	342
191	Massey	2025-03-08	256
191	USAU	2025-03-08	339
191	SWCI	2025-03-09	237
191	ELO	2025-03-09	340
191	Massey	2025-03-09	248
191	USAU	2025-03-09	337
191	SWCI	2025-03-15	278
191	ELO	2025-03-15	342
191	Massey	2025-03-15	332
191	USAU	2025-03-15	336
191	SWCI	2025-03-16	279
191	ELO	2025-03-16	340
191	Massey	2025-03-16	314
191	USAU	2025-03-16	337
191	SWCI	2025-03-23	295
191	ELO	2025-03-23	330
191	Massey	2025-03-23	305
191	USAU	2025-03-23	315
191	SWCI	2025-03-29	297
191	ELO	2025-03-29	323
191	Massey	2025-03-29	281
191	USAU	2025-03-29	292
191	SWCI	2025-03-30	308
191	ELO	2025-03-30	323
191	Massey	2025-03-30	279
191	USAU	2025-03-30	288
192	SWCI	2025-01-26	219
192	ELO	2025-01-26	199
192	Massey	2025-01-26	311
192	USAU	2025-01-26	186
192	SWCI	2025-02-02	52
192	ELO	2025-02-02	191
192	Massey	2025-02-02	43
192	USAU	2025-02-02	61
192	SWCI	2025-02-08	71
192	ELO	2025-02-08	69
192	Massey	2025-02-08	110
192	USAU	2025-02-08	80
192	SWCI	2025-02-09	72
192	ELO	2025-02-09	74
192	Massey	2025-02-09	288
192	USAU	2025-02-09	82
192	SWCI	2025-02-12	72
192	ELO	2025-02-12	86
192	Massey	2025-02-12	105
192	USAU	2025-02-12	82
192	SWCI	2025-02-16	74
192	ELO	2025-02-16	86
192	Massey	2025-02-16	259
192	USAU	2025-02-16	78
192	SWCI	2025-02-17	74
192	ELO	2025-02-17	93
192	Massey	2025-02-17	286
192	USAU	2025-02-17	77
192	SWCI	2025-02-22	121
192	ELO	2025-02-22	94
192	Massey	2025-02-22	354
192	USAU	2025-02-22	358
192	SWCI	2025-02-23	150
192	ELO	2025-02-23	98
192	Massey	2025-02-23	352
192	USAU	2025-02-23	367
192	SWCI	2025-03-02	198
192	ELO	2025-03-02	337
192	Massey	2025-03-02	332
192	USAU	2025-03-02	342
192	SWCI	2025-03-08	202
192	ELO	2025-03-08	315
192	Massey	2025-03-08	281
192	USAU	2025-03-08	341
192	SWCI	2025-03-09	203
192	ELO	2025-03-09	314
192	Massey	2025-03-09	271
192	USAU	2025-03-09	340
192	SWCI	2025-03-15	232
192	ELO	2025-03-15	312
192	Massey	2025-03-15	329
192	USAU	2025-03-15	309
192	SWCI	2025-03-16	228
192	ELO	2025-03-16	311
192	Massey	2025-03-16	304
192	USAU	2025-03-16	312
192	SWCI	2025-03-23	239
192	ELO	2025-03-23	302
192	Massey	2025-03-23	301
192	USAU	2025-03-23	293
192	SWCI	2025-03-29	243
192	ELO	2025-03-29	291
192	Massey	2025-03-29	273
192	USAU	2025-03-29	265
192	SWCI	2025-03-30	249
192	ELO	2025-03-30	291
192	Massey	2025-03-30	272
192	USAU	2025-03-30	268
193	SWCI	2025-01-26	220
193	ELO	2025-01-26	200
193	Massey	2025-01-26	281
193	USAU	2025-01-26	187
193	SWCI	2025-02-02	249
193	ELO	2025-02-02	192
193	Massey	2025-02-02	192
193	USAU	2025-02-02	191
193	SWCI	2025-02-08	271
193	ELO	2025-02-08	192
193	Massey	2025-02-08	143
193	USAU	2025-02-08	191
193	SWCI	2025-02-09	271
193	ELO	2025-02-09	188
193	Massey	2025-02-09	115
193	USAU	2025-02-09	189
193	SWCI	2025-02-12	271
193	ELO	2025-02-12	190
193	Massey	2025-02-12	290
193	USAU	2025-02-12	189
193	SWCI	2025-02-16	282
193	ELO	2025-02-16	189
193	Massey	2025-02-16	84
193	USAU	2025-02-16	178
193	SWCI	2025-02-17	282
193	ELO	2025-02-17	189
193	Massey	2025-02-17	138
193	USAU	2025-02-17	176
193	SWCI	2025-02-22	177
193	ELO	2025-02-22	97
193	Massey	2025-02-22	368
193	USAU	2025-02-22	383
193	SWCI	2025-02-23	179
193	ELO	2025-02-23	101
193	Massey	2025-02-23	367
193	USAU	2025-02-23	387
193	SWCI	2025-03-02	240
193	ELO	2025-03-02	120
193	Massey	2025-03-02	359
193	USAU	2025-03-02	369
193	SWCI	2025-03-08	246
193	ELO	2025-03-08	151
193	Massey	2025-03-08	320
193	USAU	2025-03-08	371
193	SWCI	2025-03-09	250
193	ELO	2025-03-09	155
193	Massey	2025-03-09	313
193	USAU	2025-03-09	368
193	SWCI	2025-03-15	264
193	ELO	2025-03-15	157
193	Massey	2025-03-15	365
193	USAU	2025-03-15	357
193	SWCI	2025-03-16	263
193	ELO	2025-03-16	159
193	Massey	2025-03-16	360
193	USAU	2025-03-16	361
193	SWCI	2025-03-23	276
193	ELO	2025-03-23	164
193	Massey	2025-03-23	335
193	USAU	2025-03-23	317
193	SWCI	2025-03-29	272
193	ELO	2025-03-29	179
193	Massey	2025-03-29	322
193	USAU	2025-03-29	319
193	SWCI	2025-03-30	263
193	ELO	2025-03-30	180
193	Massey	2025-03-30	331
193	USAU	2025-03-30	326
194	SWCI	2025-01-26	221
194	ELO	2025-01-26	201
194	Massey	2025-01-26	179
194	USAU	2025-01-26	188
194	SWCI	2025-02-02	71
194	ELO	2025-02-02	193
194	Massey	2025-02-02	45
194	USAU	2025-02-02	344
194	SWCI	2025-02-08	94
194	ELO	2025-02-08	50
194	Massey	2025-02-08	111
194	USAU	2025-02-08	322
194	SWCI	2025-02-09	93
194	ELO	2025-02-09	53
194	Massey	2025-02-09	289
194	USAU	2025-02-09	320
194	SWCI	2025-02-12	93
194	ELO	2025-02-12	65
194	Massey	2025-02-12	107
194	USAU	2025-02-12	320
194	SWCI	2025-02-16	107
194	ELO	2025-02-16	65
194	Massey	2025-02-16	262
194	USAU	2025-02-16	295
194	SWCI	2025-02-17	107
194	ELO	2025-02-17	71
194	Massey	2025-02-17	288
194	USAU	2025-02-17	294
194	SWCI	2025-02-22	168
194	ELO	2025-02-22	72
194	Massey	2025-02-22	356
194	USAU	2025-02-22	370
194	SWCI	2025-02-23	165
194	ELO	2025-02-23	75
194	Massey	2025-02-23	351
194	USAU	2025-02-23	372
194	SWCI	2025-03-02	220
194	ELO	2025-03-02	330
194	Massey	2025-03-02	331
194	USAU	2025-03-02	350
194	SWCI	2025-03-08	222
194	ELO	2025-03-08	306
194	Massey	2025-03-08	280
194	USAU	2025-03-08	348
194	SWCI	2025-03-09	227
194	ELO	2025-03-09	305
194	Massey	2025-03-09	269
194	USAU	2025-03-09	348
194	SWCI	2025-03-15	250
194	ELO	2025-03-15	301
194	Massey	2025-03-15	328
194	USAU	2025-03-15	323
194	SWCI	2025-03-16	255
194	ELO	2025-03-16	300
194	Massey	2025-03-16	305
194	USAU	2025-03-16	328
194	SWCI	2025-03-23	269
194	ELO	2025-03-23	289
194	Massey	2025-03-23	304
194	USAU	2025-03-23	311
194	SWCI	2025-03-29	277
194	ELO	2025-03-29	277
194	Massey	2025-03-29	287
194	USAU	2025-03-29	298
194	SWCI	2025-03-30	260
194	ELO	2025-03-30	276
194	Massey	2025-03-30	273
194	USAU	2025-03-30	286
195	SWCI	2025-01-26	222
195	ELO	2025-01-26	202
195	Massey	2025-01-26	197
195	USAU	2025-01-26	189
195	SWCI	2025-02-02	250
195	ELO	2025-02-02	194
195	Massey	2025-02-02	301
195	USAU	2025-02-02	192
195	SWCI	2025-02-08	119
195	ELO	2025-02-08	193
195	Massey	2025-02-08	329
195	USAU	2025-02-08	346
195	SWCI	2025-02-09	151
195	ELO	2025-02-09	189
195	Massey	2025-02-09	317
195	USAU	2025-02-09	363
195	SWCI	2025-02-12	151
195	ELO	2025-02-12	385
195	Massey	2025-02-12	337
195	USAU	2025-02-12	363
195	SWCI	2025-02-16	168
195	ELO	2025-02-16	385
195	Massey	2025-02-16	369
195	USAU	2025-02-16	386
195	SWCI	2025-02-17	168
195	ELO	2025-02-17	384
195	Massey	2025-02-17	373
195	USAU	2025-02-17	387
195	SWCI	2025-02-22	209
195	ELO	2025-02-22	385
195	Massey	2025-02-22	358
195	USAU	2025-02-22	366
195	SWCI	2025-02-23	210
195	ELO	2025-02-23	384
195	Massey	2025-02-23	356
195	USAU	2025-02-23	369
195	SWCI	2025-03-02	277
195	ELO	2025-03-02	381
195	Massey	2025-03-02	343
195	USAU	2025-03-02	345
195	SWCI	2025-03-08	283
195	ELO	2025-03-08	377
195	Massey	2025-03-08	292
195	USAU	2025-03-08	345
195	SWCI	2025-03-09	287
195	ELO	2025-03-09	376
195	Massey	2025-03-09	279
195	USAU	2025-03-09	342
195	SWCI	2025-03-15	305
195	ELO	2025-03-15	376
195	Massey	2025-03-15	342
195	USAU	2025-03-15	332
195	SWCI	2025-03-16	306
195	ELO	2025-03-16	375
195	Massey	2025-03-16	333
195	USAU	2025-03-16	329
195	SWCI	2025-03-23	324
195	ELO	2025-03-23	374
195	Massey	2025-03-23	320
195	USAU	2025-03-23	303
195	SWCI	2025-03-29	336
195	ELO	2025-03-29	367
195	Massey	2025-03-29	297
195	USAU	2025-03-29	286
195	SWCI	2025-03-30	328
195	ELO	2025-03-30	366
195	Massey	2025-03-30	294
195	USAU	2025-03-30	281
196	SWCI	2025-01-26	223
196	ELO	2025-01-26	203
196	Massey	2025-01-26	180
196	USAU	2025-01-26	190
196	SWCI	2025-02-02	251
196	ELO	2025-02-02	195
196	Massey	2025-02-02	300
196	USAU	2025-02-02	193
196	SWCI	2025-02-08	145
196	ELO	2025-02-08	194
196	Massey	2025-02-08	307
196	USAU	2025-02-08	349
196	SWCI	2025-02-09	102
196	ELO	2025-02-09	190
196	Massey	2025-02-09	78
196	USAU	2025-02-09	327
196	SWCI	2025-02-12	102
196	ELO	2025-02-12	318
196	Massey	2025-02-12	118
196	USAU	2025-02-12	327
196	SWCI	2025-02-16	115
196	ELO	2025-02-16	315
196	Massey	2025-02-16	321
196	USAU	2025-02-16	351
196	SWCI	2025-02-17	115
196	ELO	2025-02-17	306
196	Massey	2025-02-17	319
196	USAU	2025-02-17	352
196	SWCI	2025-02-22	139
196	ELO	2025-02-22	302
196	Massey	2025-02-22	278
196	USAU	2025-02-22	312
196	SWCI	2025-02-23	139
196	ELO	2025-02-23	300
196	Massey	2025-02-23	279
196	USAU	2025-02-23	325
196	SWCI	2025-03-02	185
196	ELO	2025-03-02	283
196	Massey	2025-03-02	203
196	USAU	2025-03-02	276
196	SWCI	2025-03-08	187
196	ELO	2025-03-08	238
196	Massey	2025-03-08	192
196	USAU	2025-03-08	272
196	SWCI	2025-03-09	189
196	ELO	2025-03-09	237
196	Massey	2025-03-09	192
196	USAU	2025-03-09	271
196	SWCI	2025-03-15	199
196	ELO	2025-03-15	230
196	Massey	2025-03-15	251
196	USAU	2025-03-15	247
196	SWCI	2025-03-16	194
196	ELO	2025-03-16	227
196	Massey	2025-03-16	194
196	USAU	2025-03-16	246
196	SWCI	2025-03-23	200
196	ELO	2025-03-23	214
196	Massey	2025-03-23	215
196	USAU	2025-03-23	220
196	SWCI	2025-03-29	123
196	ELO	2025-03-29	211
196	Massey	2025-03-29	179
196	USAU	2025-03-29	170
196	SWCI	2025-03-30	113
196	ELO	2025-03-30	209
196	Massey	2025-03-30	163
196	USAU	2025-03-30	157
197	SWCI	2025-01-26	224
197	ELO	2025-01-26	204
197	Massey	2025-01-26	181
197	USAU	2025-01-26	191
197	SWCI	2025-02-02	252
197	ELO	2025-02-02	196
197	Massey	2025-02-02	304
197	USAU	2025-02-02	194
197	SWCI	2025-02-08	272
197	ELO	2025-02-08	195
197	Massey	2025-02-08	258
197	USAU	2025-02-08	192
197	SWCI	2025-02-09	272
197	ELO	2025-02-09	191
197	Massey	2025-02-09	249
197	USAU	2025-02-09	190
197	SWCI	2025-02-12	272
197	ELO	2025-02-12	191
197	Massey	2025-02-12	258
197	USAU	2025-02-12	190
197	SWCI	2025-02-16	283
197	ELO	2025-02-16	190
197	Massey	2025-02-16	166
197	USAU	2025-02-16	179
197	SWCI	2025-02-17	283
197	ELO	2025-02-17	190
197	Massey	2025-02-17	184
197	USAU	2025-02-17	177
197	SWCI	2025-02-22	306
197	ELO	2025-02-22	187
197	Massey	2025-02-22	316
197	USAU	2025-02-22	175
197	SWCI	2025-02-23	306
197	ELO	2025-02-23	185
197	Massey	2025-02-23	263
197	USAU	2025-02-23	177
197	SWCI	2025-03-02	203
197	ELO	2025-03-02	194
197	Massey	2025-03-02	316
197	USAU	2025-03-02	351
197	SWCI	2025-03-08	208
197	ELO	2025-03-08	305
197	Massey	2025-03-08	262
197	USAU	2025-03-08	350
197	SWCI	2025-03-09	211
197	ELO	2025-03-09	304
197	Massey	2025-03-09	253
197	USAU	2025-03-09	350
197	SWCI	2025-03-15	200
197	ELO	2025-03-15	319
197	Massey	2025-03-15	263
197	USAU	2025-03-15	248
197	SWCI	2025-03-16	195
197	ELO	2025-03-16	317
197	Massey	2025-03-16	210
197	USAU	2025-03-16	247
197	SWCI	2025-03-23	202
197	ELO	2025-03-23	309
197	Massey	2025-03-23	234
197	USAU	2025-03-23	222
197	SWCI	2025-03-29	209
197	ELO	2025-03-29	299
197	Massey	2025-03-29	204
197	USAU	2025-03-29	195
197	SWCI	2025-03-30	214
197	ELO	2025-03-30	299
197	Massey	2025-03-30	207
197	USAU	2025-03-30	197
198	SWCI	2025-01-26	225
198	ELO	2025-01-26	205
198	Massey	2025-01-26	182
198	USAU	2025-01-26	192
198	SWCI	2025-02-02	253
198	ELO	2025-02-02	197
198	Massey	2025-02-02	306
198	USAU	2025-02-02	195
198	SWCI	2025-02-08	273
198	ELO	2025-02-08	196
198	Massey	2025-02-08	240
198	USAU	2025-02-08	193
198	SWCI	2025-02-09	273
198	ELO	2025-02-09	192
198	Massey	2025-02-09	260
198	USAU	2025-02-09	191
198	SWCI	2025-02-12	273
198	ELO	2025-02-12	192
198	Massey	2025-02-12	213
198	USAU	2025-02-12	191
198	SWCI	2025-02-16	284
198	ELO	2025-02-16	191
198	Massey	2025-02-16	216
198	USAU	2025-02-16	180
198	SWCI	2025-02-17	284
198	ELO	2025-02-17	191
198	Massey	2025-02-17	153
198	USAU	2025-02-17	178
198	SWCI	2025-02-22	307
198	ELO	2025-02-22	188
198	Massey	2025-02-22	110
198	USAU	2025-02-22	176
198	SWCI	2025-02-23	307
198	ELO	2025-02-23	186
198	Massey	2025-02-23	310
198	USAU	2025-02-23	178
198	SWCI	2025-03-02	350
198	ELO	2025-03-02	195
198	Massey	2025-03-02	160
198	USAU	2025-03-02	170
198	SWCI	2025-03-08	352
198	ELO	2025-03-08	189
198	Massey	2025-03-08	204
198	USAU	2025-03-08	166
198	SWCI	2025-03-09	87
198	ELO	2025-03-09	188
198	Massey	2025-03-09	157
198	USAU	2025-03-09	254
198	SWCI	2025-03-15	166
198	ELO	2025-03-15	110
198	Massey	2025-03-15	246
198	USAU	2025-03-15	252
198	SWCI	2025-03-16	163
198	ELO	2025-03-16	111
198	Massey	2025-03-16	187
198	USAU	2025-03-16	252
198	SWCI	2025-03-23	167
198	ELO	2025-03-23	119
198	Massey	2025-03-23	218
198	USAU	2025-03-23	229
198	SWCI	2025-03-29	228
198	ELO	2025-03-29	128
198	Massey	2025-03-29	205
198	USAU	2025-03-29	218
198	SWCI	2025-03-30	247
198	ELO	2025-03-30	130
198	Massey	2025-03-30	204
198	USAU	2025-03-30	223
199	SWCI	2025-01-26	226
199	ELO	2025-01-26	206
199	Massey	2025-01-26	183
199	USAU	2025-01-26	193
199	SWCI	2025-02-02	254
199	ELO	2025-02-02	198
199	Massey	2025-02-02	305
199	USAU	2025-02-02	196
199	SWCI	2025-02-08	274
199	ELO	2025-02-08	197
199	Massey	2025-02-08	233
199	USAU	2025-02-08	194
199	SWCI	2025-02-09	274
199	ELO	2025-02-09	193
199	Massey	2025-02-09	261
199	USAU	2025-02-09	192
199	SWCI	2025-02-12	274
199	ELO	2025-02-12	193
199	Massey	2025-02-12	201
199	USAU	2025-02-12	192
199	SWCI	2025-02-16	285
199	ELO	2025-02-16	192
199	Massey	2025-02-16	204
199	USAU	2025-02-16	181
199	SWCI	2025-02-17	285
199	ELO	2025-02-17	192
199	Massey	2025-02-17	183
199	USAU	2025-02-17	179
199	SWCI	2025-02-22	308
199	ELO	2025-02-22	189
199	Massey	2025-02-22	123
199	USAU	2025-02-22	177
199	SWCI	2025-02-23	308
199	ELO	2025-02-23	187
199	Massey	2025-02-23	58
199	USAU	2025-02-23	179
199	SWCI	2025-03-02	351
199	ELO	2025-03-02	196
199	Massey	2025-03-02	200
199	USAU	2025-03-02	171
199	SWCI	2025-03-08	353
199	ELO	2025-03-08	190
199	Massey	2025-03-08	172
199	USAU	2025-03-08	167
199	SWCI	2025-03-09	355
199	ELO	2025-03-09	189
199	Massey	2025-03-09	367
199	USAU	2025-03-09	167
199	SWCI	2025-03-15	295
199	ELO	2025-03-15	270
199	Massey	2025-03-15	236
199	USAU	2025-03-15	242
199	SWCI	2025-03-16	296
199	ELO	2025-03-16	268
199	Massey	2025-03-16	178
199	USAU	2025-03-16	238
199	SWCI	2025-03-23	314
199	ELO	2025-03-23	257
199	Massey	2025-03-23	208
199	USAU	2025-03-23	213
199	SWCI	2025-03-29	279
199	ELO	2025-03-29	247
199	Massey	2025-03-29	202
199	USAU	2025-03-29	206
199	SWCI	2025-03-30	228
199	ELO	2025-03-30	249
199	Massey	2025-03-30	210
199	USAU	2025-03-30	217
200	SWCI	2025-01-26	227
200	ELO	2025-01-26	207
200	Massey	2025-01-26	198
200	USAU	2025-01-26	194
200	SWCI	2025-02-02	255
200	ELO	2025-02-02	199
200	Massey	2025-02-02	307
200	USAU	2025-02-02	197
200	SWCI	2025-02-08	275
200	ELO	2025-02-08	198
200	Massey	2025-02-08	268
200	USAU	2025-02-08	195
200	SWCI	2025-02-09	275
200	ELO	2025-02-09	194
200	Massey	2025-02-09	262
200	USAU	2025-02-09	193
200	SWCI	2025-02-12	275
200	ELO	2025-02-12	194
200	Massey	2025-02-12	271
200	USAU	2025-02-12	193
200	SWCI	2025-02-16	286
200	ELO	2025-02-16	193
200	Massey	2025-02-16	254
200	USAU	2025-02-16	182
200	SWCI	2025-02-17	286
200	ELO	2025-02-17	193
200	Massey	2025-02-17	169
200	USAU	2025-02-17	180
200	SWCI	2025-02-22	309
200	ELO	2025-02-22	190
200	Massey	2025-02-22	243
200	USAU	2025-02-22	178
200	SWCI	2025-02-23	309
200	ELO	2025-02-23	188
200	Massey	2025-02-23	201
200	USAU	2025-02-23	180
200	SWCI	2025-03-02	247
200	ELO	2025-03-02	197
200	Massey	2025-03-02	357
200	USAU	2025-03-02	357
200	SWCI	2025-03-08	253
200	ELO	2025-03-08	353
200	Massey	2025-03-08	307
200	USAU	2025-03-08	358
200	SWCI	2025-03-09	256
200	ELO	2025-03-09	351
200	Massey	2025-03-09	325
200	USAU	2025-03-09	359
200	SWCI	2025-03-15	274
200	ELO	2025-03-15	351
200	Massey	2025-03-15	359
200	USAU	2025-03-15	350
200	SWCI	2025-03-16	275
200	ELO	2025-03-16	349
200	Massey	2025-03-16	359
200	USAU	2025-03-16	357
200	SWCI	2025-03-23	292
200	ELO	2025-03-23	341
200	Massey	2025-03-23	345
200	USAU	2025-03-23	337
200	SWCI	2025-03-29	305
200	ELO	2025-03-29	336
200	Massey	2025-03-29	330
200	USAU	2025-03-29	321
200	SWCI	2025-03-30	311
200	ELO	2025-03-30	335
200	Massey	2025-03-30	326
200	USAU	2025-03-30	323
201	SWCI	2025-01-26	228
201	ELO	2025-01-26	208
201	Massey	2025-01-26	190
201	USAU	2025-01-26	195
201	SWCI	2025-02-02	256
201	ELO	2025-02-02	200
201	Massey	2025-02-02	308
201	USAU	2025-02-02	198
201	SWCI	2025-02-08	276
201	ELO	2025-02-08	199
201	Massey	2025-02-08	269
201	USAU	2025-02-08	196
201	SWCI	2025-02-09	276
201	ELO	2025-02-09	195
201	Massey	2025-02-09	238
201	USAU	2025-02-09	194
201	SWCI	2025-02-12	276
201	ELO	2025-02-12	195
201	Massey	2025-02-12	236
201	USAU	2025-02-12	194
201	SWCI	2025-02-16	287
201	ELO	2025-02-16	194
201	Massey	2025-02-16	250
201	USAU	2025-02-16	183
201	SWCI	2025-02-17	287
201	ELO	2025-02-17	194
201	Massey	2025-02-17	168
201	USAU	2025-02-17	181
201	SWCI	2025-02-22	310
201	ELO	2025-02-22	191
201	Massey	2025-02-22	46
201	USAU	2025-02-22	179
201	SWCI	2025-02-23	310
201	ELO	2025-02-23	189
201	Massey	2025-02-23	137
201	USAU	2025-02-23	181
201	SWCI	2025-03-02	175
201	ELO	2025-03-02	198
201	Massey	2025-03-02	282
201	USAU	2025-03-02	300
201	SWCI	2025-03-08	177
201	ELO	2025-03-08	116
201	Massey	2025-03-08	230
201	USAU	2025-03-08	296
201	SWCI	2025-03-09	180
201	ELO	2025-03-09	119
201	Massey	2025-03-09	230
201	USAU	2025-03-09	305
201	SWCI	2025-03-15	192
201	ELO	2025-03-15	123
201	Massey	2025-03-15	291
201	USAU	2025-03-15	287
201	SWCI	2025-03-16	187
201	ELO	2025-03-16	125
201	Massey	2025-03-16	243
201	USAU	2025-03-16	289
201	SWCI	2025-03-23	194
201	ELO	2025-03-23	131
201	Massey	2025-03-23	256
201	USAU	2025-03-23	254
201	SWCI	2025-03-29	210
201	ELO	2025-03-29	140
201	Massey	2025-03-29	233
201	USAU	2025-03-29	229
201	SWCI	2025-03-30	212
201	ELO	2025-03-30	143
201	Massey	2025-03-30	240
201	USAU	2025-03-30	242
202	SWCI	2025-01-26	229
202	ELO	2025-01-26	209
202	Massey	2025-01-26	186
202	USAU	2025-01-26	196
202	SWCI	2025-02-02	257
202	ELO	2025-02-02	201
202	Massey	2025-02-02	253
202	USAU	2025-02-02	199
202	SWCI	2025-02-08	117
202	ELO	2025-02-08	200
202	Massey	2025-02-08	381
202	USAU	2025-02-08	386
202	SWCI	2025-02-09	96
202	ELO	2025-02-09	196
202	Massey	2025-02-09	357
202	USAU	2025-02-09	366
202	SWCI	2025-02-12	96
202	ELO	2025-02-12	336
202	Massey	2025-02-12	355
202	USAU	2025-02-12	366
202	SWCI	2025-02-16	108
202	ELO	2025-02-16	336
202	Massey	2025-02-16	343
202	USAU	2025-02-16	344
202	SWCI	2025-02-17	108
202	ELO	2025-02-17	327
202	Massey	2025-02-17	345
202	USAU	2025-02-17	343
202	SWCI	2025-02-22	132
202	ELO	2025-02-22	325
202	Massey	2025-02-22	323
202	USAU	2025-02-22	336
202	SWCI	2025-02-23	132
202	ELO	2025-02-23	325
202	Massey	2025-02-23	313
202	USAU	2025-02-23	332
202	SWCI	2025-03-02	113
202	ELO	2025-03-02	307
202	Massey	2025-03-02	269
202	USAU	2025-03-02	282
202	SWCI	2025-03-08	123
202	ELO	2025-03-08	90
202	Massey	2025-03-08	217
202	USAU	2025-03-08	283
202	SWCI	2025-03-09	128
202	ELO	2025-03-09	92
202	Massey	2025-03-09	220
202	USAU	2025-03-09	285
202	SWCI	2025-03-15	137
202	ELO	2025-03-15	94
202	Massey	2025-03-15	277
202	USAU	2025-03-15	265
202	SWCI	2025-03-16	141
202	ELO	2025-03-16	96
202	Massey	2025-03-16	227
202	USAU	2025-03-16	266
202	SWCI	2025-03-23	145
202	ELO	2025-03-23	104
202	Massey	2025-03-23	247
202	USAU	2025-03-23	235
202	SWCI	2025-03-29	163
202	ELO	2025-03-29	111
202	Massey	2025-03-29	222
202	USAU	2025-03-29	205
202	SWCI	2025-03-30	169
202	ELO	2025-03-30	111
202	Massey	2025-03-30	231
202	USAU	2025-03-30	214
203	SWCI	2025-01-26	230
203	ELO	2025-01-26	210
203	Massey	2025-01-26	124
203	USAU	2025-01-26	197
203	SWCI	2025-02-02	96
203	ELO	2025-02-02	366
203	Massey	2025-02-02	310
203	USAU	2025-02-02	345
203	SWCI	2025-02-08	126
203	ELO	2025-02-08	354
203	Massey	2025-02-08	126
203	USAU	2025-02-08	86
203	SWCI	2025-02-09	126
203	ELO	2025-02-09	351
203	Massey	2025-02-09	84
203	USAU	2025-02-09	71
203	SWCI	2025-02-12	126
203	ELO	2025-02-12	343
203	Massey	2025-02-12	91
203	USAU	2025-02-12	71
203	SWCI	2025-02-16	138
203	ELO	2025-02-16	342
203	Massey	2025-02-16	96
203	USAU	2025-02-16	67
203	SWCI	2025-02-17	138
203	ELO	2025-02-17	335
203	Massey	2025-02-17	90
203	USAU	2025-02-17	69
203	SWCI	2025-02-22	137
203	ELO	2025-02-22	87
203	Massey	2025-02-22	97
203	USAU	2025-02-22	76
203	SWCI	2025-02-23	138
203	ELO	2025-02-23	91
203	Massey	2025-02-23	95
203	USAU	2025-02-23	77
203	SWCI	2025-03-02	177
203	ELO	2025-03-02	110
203	Massey	2025-03-02	81
203	USAU	2025-03-02	82
203	SWCI	2025-03-08	178
203	ELO	2025-03-08	142
203	Massey	2025-03-08	76
203	USAU	2025-03-08	82
203	SWCI	2025-03-09	181
203	ELO	2025-03-09	145
203	Massey	2025-03-09	77
203	USAU	2025-03-09	82
203	SWCI	2025-03-15	214
203	ELO	2025-03-15	147
203	Massey	2025-03-15	157
203	USAU	2025-03-15	113
203	SWCI	2025-03-16	214
203	ELO	2025-03-16	149
203	Massey	2025-03-16	115
203	USAU	2025-03-16	126
203	SWCI	2025-03-23	223
203	ELO	2025-03-23	291
203	Massey	2025-03-23	143
203	USAU	2025-03-23	126
203	SWCI	2025-03-29	212
203	ELO	2025-03-29	279
203	Massey	2025-03-29	107
203	USAU	2025-03-29	120
203	SWCI	2025-03-30	206
203	ELO	2025-03-30	278
203	Massey	2025-03-30	101
203	USAU	2025-03-30	104
204	SWCI	2025-01-26	231
204	ELO	2025-01-26	211
204	Massey	2025-01-26	120
204	USAU	2025-01-26	198
204	SWCI	2025-02-02	75
204	ELO	2025-02-02	362
204	Massey	2025-02-02	252
204	USAU	2025-02-02	342
204	SWCI	2025-02-08	99
204	ELO	2025-02-08	349
204	Massey	2025-02-08	114
204	USAU	2025-02-08	82
204	SWCI	2025-02-09	101
204	ELO	2025-02-09	346
204	Massey	2025-02-09	81
204	USAU	2025-02-09	66
204	SWCI	2025-02-12	101
204	ELO	2025-02-12	337
204	Massey	2025-02-12	83
204	USAU	2025-02-12	66
204	SWCI	2025-02-16	113
204	ELO	2025-02-16	337
204	Massey	2025-02-16	92
204	USAU	2025-02-16	62
204	SWCI	2025-02-17	113
204	ELO	2025-02-17	328
204	Massey	2025-02-17	84
204	USAU	2025-02-17	62
204	SWCI	2025-02-22	119
204	ELO	2025-02-22	326
204	Massey	2025-02-22	87
204	USAU	2025-02-22	60
204	SWCI	2025-02-23	119
204	ELO	2025-02-23	326
204	Massey	2025-02-23	87
204	USAU	2025-02-23	61
204	SWCI	2025-03-02	80
204	ELO	2025-03-02	308
204	Massey	2025-03-02	68
204	USAU	2025-03-02	62
204	SWCI	2025-03-08	86
204	ELO	2025-03-08	52
204	Massey	2025-03-08	64
204	USAU	2025-03-08	63
204	SWCI	2025-03-09	88
204	ELO	2025-03-09	53
204	Massey	2025-03-09	63
204	USAU	2025-03-09	63
204	SWCI	2025-03-15	86
204	ELO	2025-03-15	54
204	Massey	2025-03-15	122
204	USAU	2025-03-15	68
204	SWCI	2025-03-16	91
204	ELO	2025-03-16	56
204	Massey	2025-03-16	64
204	USAU	2025-03-16	70
204	SWCI	2025-03-23	81
204	ELO	2025-03-23	63
204	Massey	2025-03-23	89
204	USAU	2025-03-23	60
204	SWCI	2025-03-29	66
204	ELO	2025-03-29	71
204	Massey	2025-03-29	63
204	USAU	2025-03-29	63
204	SWCI	2025-03-30	51
204	ELO	2025-03-30	72
204	Massey	2025-03-30	59
204	USAU	2025-03-30	56
205	SWCI	2025-01-26	232
205	ELO	2025-01-26	212
205	Massey	2025-01-26	142
205	USAU	2025-01-26	199
205	SWCI	2025-02-02	258
205	ELO	2025-02-02	202
205	Massey	2025-02-02	249
205	USAU	2025-02-02	200
205	SWCI	2025-02-08	277
205	ELO	2025-02-08	201
205	Massey	2025-02-08	241
205	USAU	2025-02-08	197
205	SWCI	2025-02-09	277
205	ELO	2025-02-09	197
205	Massey	2025-02-09	250
205	USAU	2025-02-09	195
205	SWCI	2025-02-12	277
205	ELO	2025-02-12	196
205	Massey	2025-02-12	223
205	USAU	2025-02-12	195
205	SWCI	2025-02-16	288
205	ELO	2025-02-16	195
205	Massey	2025-02-16	234
205	USAU	2025-02-16	184
205	SWCI	2025-02-17	288
205	ELO	2025-02-17	195
205	Massey	2025-02-17	204
205	USAU	2025-02-17	182
205	SWCI	2025-02-22	311
205	ELO	2025-02-22	192
205	Massey	2025-02-22	162
205	USAU	2025-02-22	180
205	SWCI	2025-02-23	311
205	ELO	2025-02-23	190
205	Massey	2025-02-23	191
205	USAU	2025-02-23	182
205	SWCI	2025-03-02	264
205	ELO	2025-03-02	199
205	Massey	2025-03-02	272
205	USAU	2025-03-02	308
205	SWCI	2025-03-08	268
205	ELO	2025-03-08	320
205	Massey	2025-03-08	219
205	USAU	2025-03-08	302
205	SWCI	2025-03-09	272
205	ELO	2025-03-09	318
205	Massey	2025-03-09	213
205	USAU	2025-03-09	297
205	SWCI	2025-03-15	290
205	ELO	2025-03-15	316
205	Massey	2025-03-15	285
205	USAU	2025-03-15	299
205	SWCI	2025-03-16	290
205	ELO	2025-03-16	314
205	Massey	2025-03-16	225
205	USAU	2025-03-16	292
205	SWCI	2025-03-23	170
205	ELO	2025-03-23	306
205	Massey	2025-03-23	175
205	USAU	2025-03-23	137
205	SWCI	2025-03-29	97
205	ELO	2025-03-29	244
205	Massey	2025-03-29	126
205	USAU	2025-03-29	108
205	SWCI	2025-03-30	65
205	ELO	2025-03-30	246
205	Massey	2025-03-30	102
205	USAU	2025-03-30	82
206	SWCI	2025-01-26	233
206	ELO	2025-01-26	213
206	Massey	2025-01-26	238
206	USAU	2025-01-26	200
206	SWCI	2025-02-02	259
206	ELO	2025-02-02	203
206	Massey	2025-02-02	195
206	USAU	2025-02-02	201
206	SWCI	2025-02-08	278
206	ELO	2025-02-08	202
206	Massey	2025-02-08	175
206	USAU	2025-02-08	198
206	SWCI	2025-02-09	278
206	ELO	2025-02-09	198
206	Massey	2025-02-09	203
206	USAU	2025-02-09	196
206	SWCI	2025-02-12	278
206	ELO	2025-02-12	197
206	Massey	2025-02-12	193
206	USAU	2025-02-12	196
206	SWCI	2025-02-16	289
206	ELO	2025-02-16	196
206	Massey	2025-02-16	158
206	USAU	2025-02-16	185
206	SWCI	2025-02-17	289
206	ELO	2025-02-17	196
206	Massey	2025-02-17	181
206	USAU	2025-02-17	183
206	SWCI	2025-02-22	15
206	ELO	2025-02-22	193
206	Massey	2025-02-22	100
206	USAU	2025-02-22	31
206	SWCI	2025-02-23	18
206	ELO	2025-02-23	191
206	Massey	2025-02-23	48
206	USAU	2025-02-23	29
206	SWCI	2025-03-02	46
206	ELO	2025-03-02	49
206	Massey	2025-03-02	125
206	USAU	2025-03-02	127
206	SWCI	2025-03-08	40
206	ELO	2025-03-08	53
206	Massey	2025-03-08	106
206	USAU	2025-03-08	115
206	SWCI	2025-03-09	39
206	ELO	2025-03-09	54
206	Massey	2025-03-09	106
206	USAU	2025-03-09	111
206	SWCI	2025-03-15	44
206	ELO	2025-03-15	56
206	Massey	2025-03-15	175
206	USAU	2025-03-15	137
206	SWCI	2025-03-16	43
206	ELO	2025-03-16	58
206	Massey	2025-03-16	119
206	USAU	2025-03-16	130
206	SWCI	2025-03-23	47
206	ELO	2025-03-23	66
206	Massey	2025-03-23	146
206	USAU	2025-03-23	125
206	SWCI	2025-03-29	75
206	ELO	2025-03-29	75
206	Massey	2025-03-29	132
206	USAU	2025-03-29	131
206	SWCI	2025-03-30	46
206	ELO	2025-03-30	76
206	Massey	2025-03-30	118
206	USAU	2025-03-30	116
207	SWCI	2025-01-26	54
207	ELO	2025-01-26	214
207	Massey	2025-01-26	382
207	USAU	2025-01-26	389
207	SWCI	2025-02-02	106
207	ELO	2025-02-02	384
207	Massey	2025-02-02	366
207	USAU	2025-02-02	378
207	SWCI	2025-02-08	130
207	ELO	2025-02-08	369
207	Massey	2025-02-08	335
207	USAU	2025-02-08	345
207	SWCI	2025-02-09	132
207	ELO	2025-02-09	367
207	Massey	2025-02-09	360
207	USAU	2025-02-09	342
207	SWCI	2025-02-12	132
207	ELO	2025-02-12	360
207	Massey	2025-02-12	358
207	USAU	2025-02-12	342
207	SWCI	2025-02-16	147
207	ELO	2025-02-16	359
207	Massey	2025-02-16	341
207	USAU	2025-02-16	369
207	SWCI	2025-02-17	148
207	ELO	2025-02-17	350
207	Massey	2025-02-17	347
207	USAU	2025-02-17	369
207	SWCI	2025-02-22	170
207	ELO	2025-02-22	348
207	Massey	2025-02-22	293
207	USAU	2025-02-22	319
207	SWCI	2025-02-23	171
207	ELO	2025-02-23	347
207	Massey	2025-02-23	277
207	USAU	2025-02-23	306
207	SWCI	2025-03-02	245
207	ELO	2025-03-02	340
207	Massey	2025-03-02	169
207	USAU	2025-03-02	236
207	SWCI	2025-03-08	252
207	ELO	2025-03-08	321
207	Massey	2025-03-08	162
207	USAU	2025-03-08	233
207	SWCI	2025-03-09	255
207	ELO	2025-03-09	319
207	Massey	2025-03-09	164
207	USAU	2025-03-09	230
207	SWCI	2025-03-15	273
207	ELO	2025-03-15	318
207	Massey	2025-03-15	230
207	USAU	2025-03-15	222
207	SWCI	2025-03-16	271
207	ELO	2025-03-16	316
207	Massey	2025-03-16	174
207	USAU	2025-03-16	220
207	SWCI	2025-03-23	279
207	ELO	2025-03-23	307
207	Massey	2025-03-23	199
207	USAU	2025-03-23	192
207	SWCI	2025-03-29	289
207	ELO	2025-03-29	297
207	Massey	2025-03-29	192
207	USAU	2025-03-29	179
207	SWCI	2025-03-30	288
207	ELO	2025-03-30	297
207	Massey	2025-03-30	192
207	USAU	2025-03-30	179
208	SWCI	2025-01-26	234
208	ELO	2025-01-26	215
208	Massey	2025-01-26	254
208	USAU	2025-01-26	201
208	SWCI	2025-02-02	260
208	ELO	2025-02-02	204
208	Massey	2025-02-02	212
208	USAU	2025-02-02	202
208	SWCI	2025-02-08	279
208	ELO	2025-02-08	203
208	Massey	2025-02-08	176
208	USAU	2025-02-08	199
208	SWCI	2025-02-09	279
208	ELO	2025-02-09	199
208	Massey	2025-02-09	135
208	USAU	2025-02-09	197
208	SWCI	2025-02-12	279
208	ELO	2025-02-12	198
208	Massey	2025-02-12	195
208	USAU	2025-02-12	197
208	SWCI	2025-02-16	290
208	ELO	2025-02-16	197
208	Massey	2025-02-16	183
208	USAU	2025-02-16	186
208	SWCI	2025-02-17	290
208	ELO	2025-02-17	197
208	Massey	2025-02-17	195
208	USAU	2025-02-17	184
208	SWCI	2025-02-22	312
208	ELO	2025-02-22	194
208	Massey	2025-02-22	138
208	USAU	2025-02-22	181
208	SWCI	2025-02-23	312
208	ELO	2025-02-23	192
208	Massey	2025-02-23	325
208	USAU	2025-02-23	183
208	SWCI	2025-03-02	255
208	ELO	2025-03-02	200
208	Massey	2025-03-02	138
208	USAU	2025-03-02	220
208	SWCI	2025-03-08	259
208	ELO	2025-03-08	311
208	Massey	2025-03-08	133
208	USAU	2025-03-08	223
208	SWCI	2025-03-09	263
208	ELO	2025-03-09	310
208	Massey	2025-03-09	133
208	USAU	2025-03-09	219
208	SWCI	2025-03-15	282
208	ELO	2025-03-15	306
208	Massey	2025-03-15	205
208	USAU	2025-03-15	214
208	SWCI	2025-03-16	283
208	ELO	2025-03-16	305
208	Massey	2025-03-16	146
208	USAU	2025-03-16	206
208	SWCI	2025-03-23	282
208	ELO	2025-03-23	294
208	Massey	2025-03-23	188
208	USAU	2025-03-23	198
208	SWCI	2025-03-29	291
208	ELO	2025-03-29	289
208	Massey	2025-03-29	159
208	USAU	2025-03-29	171
208	SWCI	2025-03-30	287
208	ELO	2025-03-30	289
208	Massey	2025-03-30	159
208	USAU	2025-03-30	170
209	SWCI	2025-01-26	235
209	ELO	2025-01-26	216
209	Massey	2025-01-26	255
209	USAU	2025-01-26	202
209	SWCI	2025-02-02	261
209	ELO	2025-02-02	205
209	Massey	2025-02-02	164
209	USAU	2025-02-02	203
209	SWCI	2025-02-08	34
209	ELO	2025-02-08	52
209	Massey	2025-02-08	348
209	USAU	2025-02-08	347
209	SWCI	2025-02-09	34
209	ELO	2025-02-09	55
209	Massey	2025-02-09	373
209	USAU	2025-02-09	344
209	SWCI	2025-02-12	34
209	ELO	2025-02-12	67
209	Massey	2025-02-12	369
209	USAU	2025-02-12	344
209	SWCI	2025-02-16	37
209	ELO	2025-02-16	67
209	Massey	2025-02-16	355
209	USAU	2025-02-16	371
209	SWCI	2025-02-17	35
209	ELO	2025-02-17	73
209	Massey	2025-02-17	360
209	USAU	2025-02-17	371
209	SWCI	2025-02-22	45
209	ELO	2025-02-22	74
209	Massey	2025-02-22	282
209	USAU	2025-02-22	299
209	SWCI	2025-02-23	40
209	ELO	2025-02-23	77
209	Massey	2025-02-23	259
209	USAU	2025-02-23	281
209	SWCI	2025-03-02	137
209	ELO	2025-03-02	95
209	Massey	2025-03-02	96
209	USAU	2025-03-02	91
209	SWCI	2025-03-08	141
209	ELO	2025-03-08	131
209	Massey	2025-03-08	93
209	USAU	2025-03-08	93
209	SWCI	2025-03-09	141
209	ELO	2025-03-09	134
209	Massey	2025-03-09	90
209	USAU	2025-03-09	93
209	SWCI	2025-03-15	149
209	ELO	2025-03-15	137
209	Massey	2025-03-15	152
209	USAU	2025-03-15	106
209	SWCI	2025-03-16	153
209	ELO	2025-03-16	139
209	Massey	2025-03-16	94
209	USAU	2025-03-16	102
209	SWCI	2025-03-23	144
209	ELO	2025-03-23	144
209	Massey	2025-03-23	126
209	USAU	2025-03-23	110
209	SWCI	2025-03-29	181
209	ELO	2025-03-29	157
209	Massey	2025-03-29	114
209	USAU	2025-03-29	121
209	SWCI	2025-03-30	140
209	ELO	2025-03-30	160
209	Massey	2025-03-30	111
209	USAU	2025-03-30	109
210	SWCI	2025-01-26	236
210	ELO	2025-01-26	217
210	Massey	2025-01-26	256
210	USAU	2025-01-26	203
210	SWCI	2025-02-02	262
210	ELO	2025-02-02	206
210	Massey	2025-02-02	183
210	USAU	2025-02-02	204
210	SWCI	2025-02-08	280
210	ELO	2025-02-08	204
210	Massey	2025-02-08	194
210	USAU	2025-02-08	200
210	SWCI	2025-02-09	280
210	ELO	2025-02-09	200
210	Massey	2025-02-09	168
210	USAU	2025-02-09	198
210	SWCI	2025-02-12	280
210	ELO	2025-02-12	199
210	Massey	2025-02-12	141
210	USAU	2025-02-12	198
210	SWCI	2025-02-16	291
210	ELO	2025-02-16	198
210	Massey	2025-02-16	147
210	USAU	2025-02-16	187
210	SWCI	2025-02-17	291
210	ELO	2025-02-17	198
210	Massey	2025-02-17	255
210	USAU	2025-02-17	185
210	SWCI	2025-02-22	313
210	ELO	2025-02-22	195
210	Massey	2025-02-22	248
210	USAU	2025-02-22	182
210	SWCI	2025-02-23	313
210	ELO	2025-02-23	193
210	Massey	2025-02-23	104
210	USAU	2025-02-23	184
210	SWCI	2025-03-02	155
210	ELO	2025-03-02	201
210	Massey	2025-03-02	113
210	USAU	2025-03-02	121
210	SWCI	2025-03-08	156
210	ELO	2025-03-08	286
210	Massey	2025-03-08	107
210	USAU	2025-03-08	126
210	SWCI	2025-03-09	157
210	ELO	2025-03-09	286
210	Massey	2025-03-09	107
210	USAU	2025-03-09	124
210	SWCI	2025-03-15	173
210	ELO	2025-03-15	279
210	Massey	2025-03-15	174
210	USAU	2025-03-15	194
210	SWCI	2025-03-16	171
210	ELO	2025-03-16	276
210	Massey	2025-03-16	118
210	USAU	2025-03-16	143
210	SWCI	2025-03-23	174
210	ELO	2025-03-23	265
210	Massey	2025-03-23	171
210	USAU	2025-03-23	183
210	SWCI	2025-03-29	121
210	ELO	2025-03-29	254
210	Massey	2025-03-29	144
210	USAU	2025-03-29	147
210	SWCI	2025-03-30	67
210	ELO	2025-03-30	256
210	Massey	2025-03-30	126
210	USAU	2025-03-30	125
211	SWCI	2025-01-26	237
211	ELO	2025-01-26	218
211	Massey	2025-01-26	257
211	USAU	2025-01-26	204
211	SWCI	2025-02-02	263
211	ELO	2025-02-02	207
211	Massey	2025-02-02	190
211	USAU	2025-02-02	205
211	SWCI	2025-02-08	281
211	ELO	2025-02-08	205
211	Massey	2025-02-08	158
211	USAU	2025-02-08	201
211	SWCI	2025-02-09	281
211	ELO	2025-02-09	201
211	Massey	2025-02-09	133
211	USAU	2025-02-09	199
211	SWCI	2025-02-12	281
211	ELO	2025-02-12	200
211	Massey	2025-02-12	194
211	USAU	2025-02-12	199
211	SWCI	2025-02-16	292
211	ELO	2025-02-16	199
211	Massey	2025-02-16	249
211	USAU	2025-02-16	188
211	SWCI	2025-02-17	292
211	ELO	2025-02-17	199
211	Massey	2025-02-17	250
211	USAU	2025-02-17	186
211	SWCI	2025-02-22	314
211	ELO	2025-02-22	196
211	Massey	2025-02-22	280
211	USAU	2025-02-22	183
211	SWCI	2025-02-23	314
211	ELO	2025-02-23	194
211	Massey	2025-02-23	281
211	USAU	2025-02-23	185
211	SWCI	2025-03-02	352
211	ELO	2025-03-02	202
211	Massey	2025-03-02	287
211	USAU	2025-03-02	172
211	SWCI	2025-03-08	354
211	ELO	2025-03-08	191
211	Massey	2025-03-08	326
211	USAU	2025-03-08	168
211	SWCI	2025-03-09	356
211	ELO	2025-03-09	190
211	Massey	2025-03-09	355
211	USAU	2025-03-09	168
211	SWCI	2025-03-15	367
211	ELO	2025-03-15	188
211	Massey	2025-03-15	6
211	USAU	2025-03-15	159
211	SWCI	2025-03-16	367
211	ELO	2025-03-16	185
211	Massey	2025-03-16	267
211	USAU	2025-03-16	161
211	SWCI	2025-03-23	380
211	ELO	2025-03-23	182
211	Massey	2025-03-23	1
211	USAU	2025-03-23	156
211	SWCI	2025-03-29	363
211	ELO	2025-03-29	191
211	Massey	2025-03-29	361
211	USAU	2025-03-29	384
211	SWCI	2025-03-30	384
211	ELO	2025-03-30	191
211	Massey	2025-03-30	376
211	USAU	2025-03-30	385
212	SWCI	2025-01-26	238
212	ELO	2025-01-26	219
212	Massey	2025-01-26	75
212	USAU	2025-01-26	205
212	SWCI	2025-02-02	264
212	ELO	2025-02-02	208
212	Massey	2025-02-02	100
212	USAU	2025-02-02	206
212	SWCI	2025-02-08	282
212	ELO	2025-02-08	206
212	Massey	2025-02-08	197
212	USAU	2025-02-08	202
212	SWCI	2025-02-09	282
212	ELO	2025-02-09	202
212	Massey	2025-02-09	159
212	USAU	2025-02-09	200
212	SWCI	2025-02-12	282
212	ELO	2025-02-12	201
212	Massey	2025-02-12	249
212	USAU	2025-02-12	200
212	SWCI	2025-02-16	293
212	ELO	2025-02-16	200
212	Massey	2025-02-16	210
212	USAU	2025-02-16	189
212	SWCI	2025-02-17	293
212	ELO	2025-02-17	200
212	Massey	2025-02-17	239
212	USAU	2025-02-17	187
212	SWCI	2025-02-22	315
212	ELO	2025-02-22	197
212	Massey	2025-02-22	262
212	USAU	2025-02-22	184
212	SWCI	2025-02-23	315
212	ELO	2025-02-23	195
212	Massey	2025-02-23	128
212	USAU	2025-02-23	186
212	SWCI	2025-03-02	174
212	ELO	2025-03-02	203
212	Massey	2025-03-02	110
212	USAU	2025-03-02	102
212	SWCI	2025-03-08	176
212	ELO	2025-03-08	288
212	Massey	2025-03-08	103
212	USAU	2025-03-08	105
212	SWCI	2025-03-09	179
212	ELO	2025-03-09	288
212	Massey	2025-03-09	102
212	USAU	2025-03-09	103
212	SWCI	2025-03-15	209
212	ELO	2025-03-15	281
212	Massey	2025-03-15	176
212	USAU	2025-03-15	126
212	SWCI	2025-03-16	210
212	ELO	2025-03-16	278
212	Massey	2025-03-16	116
212	USAU	2025-03-16	117
212	SWCI	2025-03-23	218
212	ELO	2025-03-23	266
212	Massey	2025-03-23	168
212	USAU	2025-03-23	140
212	SWCI	2025-03-29	103
212	ELO	2025-03-29	255
212	Massey	2025-03-29	124
212	USAU	2025-03-29	134
212	SWCI	2025-03-30	108
212	ELO	2025-03-30	257
212	Massey	2025-03-30	137
212	USAU	2025-03-30	153
213	SWCI	2025-01-26	239
213	ELO	2025-01-26	220
213	Massey	2025-01-26	152
213	USAU	2025-01-26	206
213	SWCI	2025-02-02	265
213	ELO	2025-02-02	209
213	Massey	2025-02-02	127
213	USAU	2025-02-02	207
213	SWCI	2025-02-08	283
213	ELO	2025-02-08	207
213	Massey	2025-02-08	215
213	USAU	2025-02-08	203
213	SWCI	2025-02-09	283
213	ELO	2025-02-09	203
213	Massey	2025-02-09	150
213	USAU	2025-02-09	201
213	SWCI	2025-02-12	283
213	ELO	2025-02-12	202
213	Massey	2025-02-12	182
213	USAU	2025-02-12	201
213	SWCI	2025-02-16	294
213	ELO	2025-02-16	201
213	Massey	2025-02-16	142
213	USAU	2025-02-16	190
213	SWCI	2025-02-17	294
213	ELO	2025-02-17	201
213	Massey	2025-02-17	260
213	USAU	2025-02-17	188
213	SWCI	2025-02-22	316
213	ELO	2025-02-22	198
213	Massey	2025-02-22	258
213	USAU	2025-02-22	185
213	SWCI	2025-02-23	316
213	ELO	2025-02-23	196
213	Massey	2025-02-23	291
213	USAU	2025-02-23	187
213	SWCI	2025-03-02	353
213	ELO	2025-03-02	204
213	Massey	2025-03-02	338
213	USAU	2025-03-02	173
213	SWCI	2025-03-08	355
213	ELO	2025-03-08	192
213	Massey	2025-03-08	379
213	USAU	2025-03-08	169
213	SWCI	2025-03-09	357
213	ELO	2025-03-09	191
213	Massey	2025-03-09	254
213	USAU	2025-03-09	169
213	SWCI	2025-03-15	368
213	ELO	2025-03-15	189
213	Massey	2025-03-15	5
213	USAU	2025-03-15	160
213	SWCI	2025-03-16	368
213	ELO	2025-03-16	186
213	Massey	2025-03-16	258
213	USAU	2025-03-16	162
213	SWCI	2025-03-23	381
213	ELO	2025-03-23	183
213	Massey	2025-03-23	14
213	USAU	2025-03-23	157
213	SWCI	2025-03-29	312
213	ELO	2025-03-29	192
213	Massey	2025-03-29	345
213	USAU	2025-03-29	352
213	SWCI	2025-03-30	359
213	ELO	2025-03-30	192
213	Massey	2025-03-30	353
213	USAU	2025-03-30	361
214	SWCI	2025-01-26	240
214	ELO	2025-01-26	221
214	Massey	2025-01-26	338
214	USAU	2025-01-26	207
214	SWCI	2025-02-02	266
214	ELO	2025-02-02	210
214	Massey	2025-02-02	216
214	USAU	2025-02-02	208
214	SWCI	2025-02-08	284
214	ELO	2025-02-08	208
214	Massey	2025-02-08	147
214	USAU	2025-02-08	204
214	SWCI	2025-02-09	284
214	ELO	2025-02-09	204
214	Massey	2025-02-09	177
214	USAU	2025-02-09	202
214	SWCI	2025-02-12	284
214	ELO	2025-02-12	203
214	Massey	2025-02-12	139
214	USAU	2025-02-12	202
214	SWCI	2025-02-16	295
214	ELO	2025-02-16	202
214	Massey	2025-02-16	213
214	USAU	2025-02-16	191
214	SWCI	2025-02-17	295
214	ELO	2025-02-17	202
214	Massey	2025-02-17	258
214	USAU	2025-02-17	189
214	SWCI	2025-02-22	317
214	ELO	2025-02-22	199
214	Massey	2025-02-22	249
214	USAU	2025-02-22	186
214	SWCI	2025-02-23	317
214	ELO	2025-02-23	197
214	Massey	2025-02-23	188
214	USAU	2025-02-23	188
214	SWCI	2025-03-02	158
214	ELO	2025-03-02	205
214	Massey	2025-03-02	309
214	USAU	2025-03-02	327
214	SWCI	2025-03-08	174
214	ELO	2025-03-08	138
214	Massey	2025-03-08	259
214	USAU	2025-03-08	331
214	SWCI	2025-03-09	175
214	ELO	2025-03-09	141
214	Massey	2025-03-09	258
214	USAU	2025-03-09	331
214	SWCI	2025-03-15	193
214	ELO	2025-03-15	143
214	Massey	2025-03-15	347
214	USAU	2025-03-15	345
214	SWCI	2025-03-16	184
214	ELO	2025-03-16	145
214	Massey	2025-03-16	329
214	USAU	2025-03-16	339
214	SWCI	2025-03-23	193
214	ELO	2025-03-23	150
214	Massey	2025-03-23	344
214	USAU	2025-03-23	352
214	SWCI	2025-03-29	147
214	ELO	2025-03-29	163
214	Massey	2025-03-29	284
214	USAU	2025-03-29	274
214	SWCI	2025-03-30	199
214	ELO	2025-03-30	165
214	Massey	2025-03-30	305
214	USAU	2025-03-30	277
215	SWCI	2025-01-26	241
215	ELO	2025-01-26	222
215	Massey	2025-01-26	59
215	USAU	2025-01-26	208
215	SWCI	2025-02-02	267
215	ELO	2025-02-02	211
215	Massey	2025-02-02	173
215	USAU	2025-02-02	209
215	SWCI	2025-02-08	285
215	ELO	2025-02-08	209
215	Massey	2025-02-08	224
215	USAU	2025-02-08	205
215	SWCI	2025-02-09	285
215	ELO	2025-02-09	205
215	Massey	2025-02-09	182
215	USAU	2025-02-09	203
215	SWCI	2025-02-12	285
215	ELO	2025-02-12	204
215	Massey	2025-02-12	252
215	USAU	2025-02-12	203
215	SWCI	2025-02-16	296
215	ELO	2025-02-16	203
215	Massey	2025-02-16	225
215	USAU	2025-02-16	192
215	SWCI	2025-02-17	296
215	ELO	2025-02-17	203
215	Massey	2025-02-17	226
215	USAU	2025-02-17	190
215	SWCI	2025-02-22	318
215	ELO	2025-02-22	200
215	Massey	2025-02-22	269
215	USAU	2025-02-22	187
215	SWCI	2025-02-23	318
215	ELO	2025-02-23	198
215	Massey	2025-02-23	72
215	USAU	2025-02-23	189
215	SWCI	2025-03-02	354
215	ELO	2025-03-02	206
215	Massey	2025-03-02	229
215	USAU	2025-03-02	174
215	SWCI	2025-03-08	356
215	ELO	2025-03-08	193
215	Massey	2025-03-08	234
215	USAU	2025-03-08	170
215	SWCI	2025-03-09	358
215	ELO	2025-03-09	192
215	Massey	2025-03-09	382
215	USAU	2025-03-09	170
215	SWCI	2025-03-15	369
215	ELO	2025-03-15	190
215	Massey	2025-03-15	54
215	USAU	2025-03-15	161
215	SWCI	2025-03-16	369
215	ELO	2025-03-16	187
215	Massey	2025-03-16	283
215	USAU	2025-03-16	163
215	SWCI	2025-03-23	352
215	ELO	2025-03-23	184
215	Massey	2025-03-23	329
215	USAU	2025-03-23	335
215	SWCI	2025-03-29	368
215	ELO	2025-03-29	375
215	Massey	2025-03-29	289
215	USAU	2025-03-29	308
215	SWCI	2025-03-30	344
215	ELO	2025-03-30	375
215	Massey	2025-03-30	276
215	USAU	2025-03-30	300
216	SWCI	2025-01-26	242
216	ELO	2025-01-26	223
216	Massey	2025-01-26	336
216	USAU	2025-01-26	209
216	SWCI	2025-02-02	268
216	ELO	2025-02-02	212
216	Massey	2025-02-02	97
216	USAU	2025-02-02	210
216	SWCI	2025-02-08	286
216	ELO	2025-02-08	210
216	Massey	2025-02-08	149
216	USAU	2025-02-08	206
216	SWCI	2025-02-09	286
216	ELO	2025-02-09	206
216	Massey	2025-02-09	152
216	USAU	2025-02-09	204
216	SWCI	2025-02-12	286
216	ELO	2025-02-12	205
216	Massey	2025-02-12	161
216	USAU	2025-02-12	204
216	SWCI	2025-02-16	297
216	ELO	2025-02-16	204
216	Massey	2025-02-16	144
216	USAU	2025-02-16	193
216	SWCI	2025-02-17	297
216	ELO	2025-02-17	204
216	Massey	2025-02-17	211
216	USAU	2025-02-17	191
216	SWCI	2025-02-22	319
216	ELO	2025-02-22	201
216	Massey	2025-02-22	304
216	USAU	2025-02-22	188
216	SWCI	2025-02-23	319
216	ELO	2025-02-23	199
216	Massey	2025-02-23	256
216	USAU	2025-02-23	190
216	SWCI	2025-03-02	41
216	ELO	2025-03-02	207
216	Massey	2025-03-02	218
216	USAU	2025-03-02	270
216	SWCI	2025-03-08	81
216	ELO	2025-03-08	120
216	Massey	2025-03-08	202
216	USAU	2025-03-08	277
216	SWCI	2025-03-09	81
216	ELO	2025-03-09	123
216	Massey	2025-03-09	204
216	USAU	2025-03-09	279
216	SWCI	2025-03-15	85
216	ELO	2025-03-15	127
216	Massey	2025-03-15	294
216	USAU	2025-03-15	286
216	SWCI	2025-03-16	90
216	ELO	2025-03-16	129
216	Massey	2025-03-16	231
216	USAU	2025-03-16	276
216	SWCI	2025-03-23	76
216	ELO	2025-03-23	135
216	Massey	2025-03-23	287
216	USAU	2025-03-23	286
216	SWCI	2025-03-29	53
216	ELO	2025-03-29	143
216	Massey	2025-03-29	249
216	USAU	2025-03-29	224
216	SWCI	2025-03-30	63
216	ELO	2025-03-30	146
216	Massey	2025-03-30	254
216	USAU	2025-03-30	231
217	SWCI	2025-01-26	243
217	ELO	2025-01-26	224
217	Massey	2025-01-26	272
217	USAU	2025-01-26	210
217	SWCI	2025-02-02	269
217	ELO	2025-02-02	213
217	Massey	2025-02-02	295
217	USAU	2025-02-02	211
217	SWCI	2025-02-08	287
217	ELO	2025-02-08	211
217	Massey	2025-02-08	274
217	USAU	2025-02-08	207
217	SWCI	2025-02-09	287
217	ELO	2025-02-09	207
217	Massey	2025-02-09	224
217	USAU	2025-02-09	205
217	SWCI	2025-02-12	287
217	ELO	2025-02-12	206
217	Massey	2025-02-12	265
217	USAU	2025-02-12	205
217	SWCI	2025-02-16	298
217	ELO	2025-02-16	205
217	Massey	2025-02-16	157
217	USAU	2025-02-16	194
217	SWCI	2025-02-17	298
217	ELO	2025-02-17	205
217	Massey	2025-02-17	223
217	USAU	2025-02-17	192
217	SWCI	2025-02-22	320
217	ELO	2025-02-22	202
217	Massey	2025-02-22	296
217	USAU	2025-02-22	189
217	SWCI	2025-02-23	320
217	ELO	2025-02-23	200
217	Massey	2025-02-23	298
217	USAU	2025-02-23	191
217	SWCI	2025-03-02	355
217	ELO	2025-03-02	208
217	Massey	2025-03-02	373
217	USAU	2025-03-02	175
217	SWCI	2025-03-08	357
217	ELO	2025-03-08	194
217	Massey	2025-03-08	377
217	USAU	2025-03-08	171
217	SWCI	2025-03-09	245
217	ELO	2025-03-09	193
217	Massey	2025-03-09	352
217	USAU	2025-03-09	346
217	SWCI	2025-03-15	311
217	ELO	2025-03-15	358
217	Massey	2025-03-15	374
217	USAU	2025-03-15	359
217	SWCI	2025-03-16	309
217	ELO	2025-03-16	356
217	Massey	2025-03-16	370
217	USAU	2025-03-16	362
217	SWCI	2025-03-23	326
217	ELO	2025-03-23	351
217	Massey	2025-03-23	374
217	USAU	2025-03-23	360
217	SWCI	2025-03-29	356
217	ELO	2025-03-29	347
217	Massey	2025-03-29	363
217	USAU	2025-03-29	357
217	SWCI	2025-03-30	355
217	ELO	2025-03-30	345
217	Massey	2025-03-30	360
217	USAU	2025-03-30	358
218	SWCI	2025-01-26	244
218	ELO	2025-01-26	225
218	Massey	2025-01-26	267
218	USAU	2025-01-26	211
218	SWCI	2025-02-02	270
218	ELO	2025-02-02	214
218	Massey	2025-02-02	296
218	USAU	2025-02-02	212
218	SWCI	2025-02-08	288
218	ELO	2025-02-08	212
218	Massey	2025-02-08	272
218	USAU	2025-02-08	208
218	SWCI	2025-02-09	288
218	ELO	2025-02-09	208
218	Massey	2025-02-09	158
218	USAU	2025-02-09	206
218	SWCI	2025-02-12	288
218	ELO	2025-02-12	207
218	Massey	2025-02-12	242
218	USAU	2025-02-12	206
218	SWCI	2025-02-16	299
218	ELO	2025-02-16	206
218	Massey	2025-02-16	236
218	USAU	2025-02-16	195
218	SWCI	2025-02-17	299
218	ELO	2025-02-17	206
218	Massey	2025-02-17	210
218	USAU	2025-02-17	193
218	SWCI	2025-02-22	213
218	ELO	2025-02-22	203
218	Massey	2025-02-22	343
218	USAU	2025-02-22	346
218	SWCI	2025-02-23	182
218	ELO	2025-02-23	201
218	Massey	2025-02-23	269
218	USAU	2025-02-23	330
218	SWCI	2025-03-02	258
218	ELO	2025-03-02	328
218	Massey	2025-03-02	333
218	USAU	2025-03-02	367
218	SWCI	2025-03-08	261
218	ELO	2025-03-08	304
218	Massey	2025-03-08	250
218	USAU	2025-03-08	359
218	SWCI	2025-03-09	265
218	ELO	2025-03-09	303
218	Massey	2025-03-09	243
218	USAU	2025-03-09	356
218	SWCI	2025-03-15	283
218	ELO	2025-03-15	298
218	Massey	2025-03-15	343
218	USAU	2025-03-15	370
218	SWCI	2025-03-16	285
218	ELO	2025-03-16	296
218	Massey	2025-03-16	328
218	USAU	2025-03-16	368
218	SWCI	2025-03-23	311
218	ELO	2025-03-23	286
218	Massey	2025-03-23	342
218	USAU	2025-03-23	363
218	SWCI	2025-03-29	348
218	ELO	2025-03-29	274
218	Massey	2025-03-29	348
218	USAU	2025-03-29	353
218	SWCI	2025-03-30	297
218	ELO	2025-03-30	272
218	Massey	2025-03-30	324
218	USAU	2025-03-30	332
219	SWCI	2025-01-26	245
219	ELO	2025-01-26	226
219	Massey	2025-01-26	331
219	USAU	2025-01-26	212
219	SWCI	2025-02-02	271
219	ELO	2025-02-02	215
219	Massey	2025-02-02	294
219	USAU	2025-02-02	213
219	SWCI	2025-02-08	289
219	ELO	2025-02-08	213
219	Massey	2025-02-08	267
219	USAU	2025-02-08	209
219	SWCI	2025-02-09	289
219	ELO	2025-02-09	209
219	Massey	2025-02-09	240
219	USAU	2025-02-09	207
219	SWCI	2025-02-12	289
219	ELO	2025-02-12	208
219	Massey	2025-02-12	250
219	USAU	2025-02-12	207
219	SWCI	2025-02-16	300
219	ELO	2025-02-16	207
219	Massey	2025-02-16	177
219	USAU	2025-02-16	196
219	SWCI	2025-02-17	300
219	ELO	2025-02-17	207
219	Massey	2025-02-17	207
219	USAU	2025-02-17	194
219	SWCI	2025-02-22	321
219	ELO	2025-02-22	204
219	Massey	2025-02-22	306
219	USAU	2025-02-22	190
219	SWCI	2025-02-23	321
219	ELO	2025-02-23	202
219	Massey	2025-02-23	355
219	USAU	2025-02-23	192
219	SWCI	2025-03-02	192
219	ELO	2025-03-02	209
219	Massey	2025-03-02	321
219	USAU	2025-03-02	348
219	SWCI	2025-03-08	205
219	ELO	2025-03-08	256
219	Massey	2025-03-08	269
219	USAU	2025-03-08	351
219	SWCI	2025-03-09	206
219	ELO	2025-03-09	255
219	Massey	2025-03-09	267
219	USAU	2025-03-09	354
219	SWCI	2025-03-15	217
219	ELO	2025-03-15	249
219	Massey	2025-03-15	354
219	USAU	2025-03-15	369
219	SWCI	2025-03-16	217
219	ELO	2025-03-16	245
219	Massey	2025-03-16	340
219	USAU	2025-03-16	363
219	SWCI	2025-03-23	225
219	ELO	2025-03-23	234
219	Massey	2025-03-23	355
219	USAU	2025-03-23	366
219	SWCI	2025-03-29	194
219	ELO	2025-03-29	229
219	Massey	2025-03-29	309
219	USAU	2025-03-29	310
219	SWCI	2025-03-30	164
219	ELO	2025-03-30	230
219	Massey	2025-03-30	298
219	USAU	2025-03-30	298
220	SWCI	2025-01-26	246
220	ELO	2025-01-26	227
220	Massey	2025-01-26	332
220	USAU	2025-01-26	213
220	SWCI	2025-02-02	272
220	ELO	2025-02-02	216
220	Massey	2025-02-02	271
220	USAU	2025-02-02	214
220	SWCI	2025-02-08	290
220	ELO	2025-02-08	214
220	Massey	2025-02-08	247
220	USAU	2025-02-08	210
220	SWCI	2025-02-09	290
220	ELO	2025-02-09	210
220	Massey	2025-02-09	231
220	USAU	2025-02-09	208
220	SWCI	2025-02-12	290
220	ELO	2025-02-12	209
220	Massey	2025-02-12	170
220	USAU	2025-02-12	208
220	SWCI	2025-02-16	301
220	ELO	2025-02-16	208
220	Massey	2025-02-16	153
220	USAU	2025-02-16	197
220	SWCI	2025-02-17	301
220	ELO	2025-02-17	208
220	Massey	2025-02-17	206
220	USAU	2025-02-17	195
220	SWCI	2025-02-22	322
220	ELO	2025-02-22	205
220	Massey	2025-02-22	279
220	USAU	2025-02-22	191
220	SWCI	2025-02-23	322
220	ELO	2025-02-23	203
220	Massey	2025-02-23	114
220	USAU	2025-02-23	193
220	SWCI	2025-03-02	356
220	ELO	2025-03-02	210
220	Massey	2025-03-02	179
220	USAU	2025-03-02	176
220	SWCI	2025-03-08	358
220	ELO	2025-03-08	195
220	Massey	2025-03-08	301
220	USAU	2025-03-08	172
220	SWCI	2025-03-09	359
220	ELO	2025-03-09	194
220	Massey	2025-03-09	356
220	USAU	2025-03-09	171
220	SWCI	2025-03-15	370
220	ELO	2025-03-15	191
220	Massey	2025-03-15	18
220	USAU	2025-03-15	162
220	SWCI	2025-03-16	370
220	ELO	2025-03-16	188
220	Massey	2025-03-16	311
220	USAU	2025-03-16	164
220	SWCI	2025-03-23	382
220	ELO	2025-03-23	185
220	Massey	2025-03-23	24
220	USAU	2025-03-23	158
220	SWCI	2025-03-29	269
220	ELO	2025-03-29	193
220	Massey	2025-03-29	323
220	USAU	2025-03-29	367
220	SWCI	2025-03-30	351
220	ELO	2025-03-30	193
220	Massey	2025-03-30	345
220	USAU	2025-03-30	342
221	SWCI	2025-01-26	247
221	ELO	2025-01-26	228
221	Massey	2025-01-26	335
221	USAU	2025-01-26	214
221	SWCI	2025-02-02	273
221	ELO	2025-02-02	217
221	Massey	2025-02-02	272
221	USAU	2025-02-02	215
221	SWCI	2025-02-08	291
221	ELO	2025-02-08	215
221	Massey	2025-02-08	256
221	USAU	2025-02-08	211
221	SWCI	2025-02-09	291
221	ELO	2025-02-09	211
221	Massey	2025-02-09	183
221	USAU	2025-02-09	209
221	SWCI	2025-02-12	291
221	ELO	2025-02-12	210
221	Massey	2025-02-12	152
221	USAU	2025-02-12	209
221	SWCI	2025-02-16	302
221	ELO	2025-02-16	209
221	Massey	2025-02-16	154
221	USAU	2025-02-16	198
221	SWCI	2025-02-17	302
221	ELO	2025-02-17	209
221	Massey	2025-02-17	158
221	USAU	2025-02-17	196
221	SWCI	2025-02-22	323
221	ELO	2025-02-22	206
221	Massey	2025-02-22	144
221	USAU	2025-02-22	192
221	SWCI	2025-02-23	323
221	ELO	2025-02-23	204
221	Massey	2025-02-23	147
221	USAU	2025-02-23	194
221	SWCI	2025-03-02	357
221	ELO	2025-03-02	211
221	Massey	2025-03-02	204
221	USAU	2025-03-02	177
221	SWCI	2025-03-08	359
221	ELO	2025-03-08	196
221	Massey	2025-03-08	347
221	USAU	2025-03-08	173
221	SWCI	2025-03-09	360
221	ELO	2025-03-09	195
221	Massey	2025-03-09	301
221	USAU	2025-03-09	172
221	SWCI	2025-03-15	371
221	ELO	2025-03-15	192
221	Massey	2025-03-15	47
221	USAU	2025-03-15	163
221	SWCI	2025-03-16	371
221	ELO	2025-03-16	189
221	Massey	2025-03-16	253
221	USAU	2025-03-16	165
221	SWCI	2025-03-23	383
221	ELO	2025-03-23	186
221	Massey	2025-03-23	23
221	USAU	2025-03-23	159
221	SWCI	2025-03-29	358
221	ELO	2025-03-29	194
221	Massey	2025-03-29	362
221	USAU	2025-03-29	342
221	SWCI	2025-03-30	293
221	ELO	2025-03-30	194
221	Massey	2025-03-30	342
221	USAU	2025-03-30	328
222	SWCI	2025-01-26	248
222	ELO	2025-01-26	229
222	Massey	2025-01-26	333
222	USAU	2025-01-26	215
222	SWCI	2025-02-02	274
222	ELO	2025-02-02	218
222	Massey	2025-02-02	297
222	USAU	2025-02-02	216
222	SWCI	2025-02-08	292
222	ELO	2025-02-08	216
222	Massey	2025-02-08	260
222	USAU	2025-02-08	212
222	SWCI	2025-02-09	292
222	ELO	2025-02-09	212
222	Massey	2025-02-09	251
222	USAU	2025-02-09	210
222	SWCI	2025-02-12	292
222	ELO	2025-02-12	211
222	Massey	2025-02-12	220
222	USAU	2025-02-12	210
222	SWCI	2025-02-16	303
222	ELO	2025-02-16	210
222	Massey	2025-02-16	149
222	USAU	2025-02-16	199
222	SWCI	2025-02-17	303
222	ELO	2025-02-17	210
222	Massey	2025-02-17	165
222	USAU	2025-02-17	197
222	SWCI	2025-02-22	324
222	ELO	2025-02-22	207
222	Massey	2025-02-22	251
222	USAU	2025-02-22	193
222	SWCI	2025-02-23	324
222	ELO	2025-02-23	205
222	Massey	2025-02-23	85
222	USAU	2025-02-23	195
222	SWCI	2025-03-02	103
222	ELO	2025-03-02	212
222	Massey	2025-03-02	90
222	USAU	2025-03-02	89
222	SWCI	2025-03-08	103
222	ELO	2025-03-08	91
222	Massey	2025-03-08	85
222	USAU	2025-03-08	90
222	SWCI	2025-03-09	104
222	ELO	2025-03-09	94
222	Massey	2025-03-09	84
222	USAU	2025-03-09	90
222	SWCI	2025-03-15	117
222	ELO	2025-03-15	96
222	Massey	2025-03-15	147
222	USAU	2025-03-15	91
222	SWCI	2025-03-16	118
222	ELO	2025-03-16	98
222	Massey	2025-03-16	89
222	USAU	2025-03-16	89
222	SWCI	2025-03-23	72
222	ELO	2025-03-23	107
222	Massey	2025-03-23	115
222	USAU	2025-03-23	89
222	SWCI	2025-03-29	61
222	ELO	2025-03-29	79
222	Massey	2025-03-29	88
222	USAU	2025-03-29	88
222	SWCI	2025-03-30	47
222	ELO	2025-03-30	80
222	Massey	2025-03-30	81
222	USAU	2025-03-30	80
223	SWCI	2025-01-26	16
223	ELO	2025-01-26	2
223	Massey	2025-01-26	24
223	USAU	2025-01-26	13
223	SWCI	2025-02-02	9
223	ELO	2025-02-02	1
223	Massey	2025-02-02	14
223	USAU	2025-02-02	5
223	SWCI	2025-02-08	8
223	ELO	2025-02-08	1
223	Massey	2025-02-08	8
223	USAU	2025-02-08	5
223	SWCI	2025-02-09	9
223	ELO	2025-02-09	1
223	Massey	2025-02-09	10
223	USAU	2025-02-09	4
223	SWCI	2025-02-12	9
223	ELO	2025-02-12	1
223	Massey	2025-02-12	7
223	USAU	2025-02-12	4
223	SWCI	2025-02-16	9
223	ELO	2025-02-16	2
223	Massey	2025-02-16	13
223	USAU	2025-02-16	3
223	SWCI	2025-02-17	9
223	ELO	2025-02-17	3
223	Massey	2025-02-17	9
223	USAU	2025-02-17	3
223	SWCI	2025-02-22	8
223	ELO	2025-02-22	3
223	Massey	2025-02-22	10
223	USAU	2025-02-22	4
223	SWCI	2025-02-23	9
223	ELO	2025-02-23	3
223	Massey	2025-02-23	10
223	USAU	2025-02-23	3
223	SWCI	2025-03-02	18
223	ELO	2025-03-02	4
223	Massey	2025-03-02	4
223	USAU	2025-03-02	3
223	SWCI	2025-03-08	16
223	ELO	2025-03-08	5
223	Massey	2025-03-08	4
223	USAU	2025-03-08	5
223	SWCI	2025-03-09	17
223	ELO	2025-03-09	5
223	Massey	2025-03-09	4
223	USAU	2025-03-09	4
223	SWCI	2025-03-15	11
223	ELO	2025-03-15	7
223	Massey	2025-03-15	61
223	USAU	2025-03-15	5
223	SWCI	2025-03-16	11
223	ELO	2025-03-16	7
223	Massey	2025-03-16	5
223	USAU	2025-03-16	5
223	SWCI	2025-03-23	8
223	ELO	2025-03-23	4
223	Massey	2025-03-23	34
223	USAU	2025-03-23	8
223	SWCI	2025-03-29	11
223	ELO	2025-03-29	4
223	Massey	2025-03-29	8
223	USAU	2025-03-29	8
223	SWCI	2025-03-30	11
223	ELO	2025-03-30	4
223	Massey	2025-03-30	8
223	USAU	2025-03-30	8
224	SWCI	2025-01-26	52
224	ELO	2025-01-26	395
224	Massey	2025-01-26	357
224	USAU	2025-01-26	374
224	SWCI	2025-02-02	92
224	ELO	2025-02-02	375
224	Massey	2025-02-02	73
224	USAU	2025-02-02	46
224	SWCI	2025-02-08	121
224	ELO	2025-02-08	365
224	Massey	2025-02-08	72
224	USAU	2025-02-08	54
224	SWCI	2025-02-09	117
224	ELO	2025-02-09	363
224	Massey	2025-02-09	58
224	USAU	2025-02-09	39
224	SWCI	2025-02-12	117
224	ELO	2025-02-12	355
224	Massey	2025-02-12	53
224	USAU	2025-02-12	39
224	SWCI	2025-02-16	149
224	ELO	2025-02-16	355
224	Massey	2025-02-16	67
224	USAU	2025-02-16	47
224	SWCI	2025-02-17	147
224	ELO	2025-02-17	375
224	Massey	2025-02-17	65
224	USAU	2025-02-17	49
224	SWCI	2025-02-22	178
224	ELO	2025-02-22	376
224	Massey	2025-02-22	69
224	USAU	2025-02-22	55
224	SWCI	2025-02-23	181
224	ELO	2025-02-23	374
224	Massey	2025-02-23	65
224	USAU	2025-02-23	56
224	SWCI	2025-03-02	238
224	ELO	2025-03-02	369
224	Massey	2025-03-02	54
224	USAU	2025-03-02	52
224	SWCI	2025-03-08	241
224	ELO	2025-03-08	360
224	Massey	2025-03-08	50
224	USAU	2025-03-08	58
224	SWCI	2025-03-09	210
224	ELO	2025-03-09	358
224	Massey	2025-03-09	47
224	USAU	2025-03-09	49
224	SWCI	2025-03-15	220
224	ELO	2025-03-15	300
224	Massey	2025-03-15	96
224	USAU	2025-03-15	42
224	SWCI	2025-03-16	221
224	ELO	2025-03-16	299
224	Massey	2025-03-16	43
224	USAU	2025-03-16	44
224	SWCI	2025-03-23	205
224	ELO	2025-03-23	221
224	Massey	2025-03-23	58
224	USAU	2025-03-23	33
224	SWCI	2025-03-29	216
224	ELO	2025-03-29	217
224	Massey	2025-03-29	34
224	USAU	2025-03-29	34
224	SWCI	2025-03-30	224
224	ELO	2025-03-30	217
224	Massey	2025-03-30	33
224	USAU	2025-03-30	33
225	SWCI	2025-01-26	6
225	ELO	2025-01-26	1
225	Massey	2025-01-26	17
225	USAU	2025-01-26	8
225	SWCI	2025-02-02	10
225	ELO	2025-02-02	14
225	Massey	2025-02-02	8
225	USAU	2025-02-02	2
225	SWCI	2025-02-08	11
225	ELO	2025-02-08	19
225	Massey	2025-02-08	3
225	USAU	2025-02-08	2
225	SWCI	2025-02-09	11
225	ELO	2025-02-09	21
225	Massey	2025-02-09	6
225	USAU	2025-02-09	2
225	SWCI	2025-02-12	11
225	ELO	2025-02-12	25
225	Massey	2025-02-12	4
225	USAU	2025-02-12	2
225	SWCI	2025-02-16	12
225	ELO	2025-02-16	25
225	Massey	2025-02-16	15
225	USAU	2025-02-16	6
225	SWCI	2025-02-17	10
225	ELO	2025-02-17	5
225	Massey	2025-02-17	11
225	USAU	2025-02-17	4
225	SWCI	2025-02-22	10
225	ELO	2025-02-22	5
225	Massey	2025-02-22	13
225	USAU	2025-02-22	6
225	SWCI	2025-02-23	11
225	ELO	2025-02-23	5
225	Massey	2025-02-23	12
225	USAU	2025-02-23	6
225	SWCI	2025-03-02	19
225	ELO	2025-03-02	7
225	Massey	2025-03-02	6
225	USAU	2025-03-02	6
225	SWCI	2025-03-08	12
225	ELO	2025-03-08	12
225	Massey	2025-03-08	9
225	USAU	2025-03-08	9
225	SWCI	2025-03-09	13
225	ELO	2025-03-09	12
225	Massey	2025-03-09	9
225	USAU	2025-03-09	9
225	SWCI	2025-03-15	9
225	ELO	2025-03-15	6
225	Massey	2025-03-15	63
225	USAU	2025-03-15	7
225	SWCI	2025-03-16	7
225	ELO	2025-03-16	6
225	Massey	2025-03-16	7
225	USAU	2025-03-16	7
225	SWCI	2025-03-23	7
225	ELO	2025-03-23	7
225	Massey	2025-03-23	31
225	USAU	2025-03-23	6
225	SWCI	2025-03-29	10
225	ELO	2025-03-29	8
225	Massey	2025-03-29	6
225	USAU	2025-03-29	6
225	SWCI	2025-03-30	13
225	ELO	2025-03-30	8
225	Massey	2025-03-30	7
225	USAU	2025-03-30	6
226	SWCI	2025-01-26	5
226	ELO	2025-01-26	4
226	Massey	2025-01-26	13
226	USAU	2025-01-26	7
226	SWCI	2025-02-02	8
226	ELO	2025-02-02	18
226	Massey	2025-02-02	5
226	USAU	2025-02-02	1
226	SWCI	2025-02-08	7
226	ELO	2025-02-08	23
226	Massey	2025-02-08	2
226	USAU	2025-02-08	1
226	SWCI	2025-02-09	7
226	ELO	2025-02-09	26
226	Massey	2025-02-09	5
226	USAU	2025-02-09	1
226	SWCI	2025-02-12	7
226	ELO	2025-02-12	32
226	Massey	2025-02-12	3
226	USAU	2025-02-12	1
226	SWCI	2025-02-16	24
226	ELO	2025-02-16	33
226	Massey	2025-02-16	14
226	USAU	2025-02-16	5
226	SWCI	2025-02-17	24
226	ELO	2025-02-17	15
226	Massey	2025-02-17	10
226	USAU	2025-02-17	5
226	SWCI	2025-02-22	29
226	ELO	2025-02-22	15
226	Massey	2025-02-22	11
226	USAU	2025-02-22	7
226	SWCI	2025-02-23	29
226	ELO	2025-02-23	15
226	Massey	2025-02-23	11
226	USAU	2025-02-23	7
226	SWCI	2025-03-02	36
226	ELO	2025-03-02	18
226	Massey	2025-03-02	5
226	USAU	2025-03-02	8
226	SWCI	2025-03-08	27
226	ELO	2025-03-08	24
226	Massey	2025-03-08	5
226	USAU	2025-03-08	7
226	SWCI	2025-03-09	27
226	ELO	2025-03-09	24
226	Massey	2025-03-09	5
226	USAU	2025-03-09	7
226	SWCI	2025-03-15	27
226	ELO	2025-03-15	24
226	Massey	2025-03-15	60
226	USAU	2025-03-15	6
226	SWCI	2025-03-16	25
226	ELO	2025-03-16	26
226	Massey	2025-03-16	4
226	USAU	2025-03-16	6
226	SWCI	2025-03-23	24
226	ELO	2025-03-23	14
226	Massey	2025-03-23	30
226	USAU	2025-03-23	5
226	SWCI	2025-03-29	23
226	ELO	2025-03-29	16
226	Massey	2025-03-29	5
226	USAU	2025-03-29	7
226	SWCI	2025-03-30	20
226	ELO	2025-03-30	16
226	Massey	2025-03-30	5
226	USAU	2025-03-30	7
227	SWCI	2025-01-26	53
227	ELO	2025-01-26	394
227	Massey	2025-01-26	362
227	USAU	2025-01-26	385
227	SWCI	2025-02-02	91
227	ELO	2025-02-02	373
227	Massey	2025-02-02	94
227	USAU	2025-02-02	68
227	SWCI	2025-02-08	122
227	ELO	2025-02-08	362
227	Massey	2025-02-08	99
227	USAU	2025-02-08	75
227	SWCI	2025-02-09	121
227	ELO	2025-02-09	359
227	Massey	2025-02-09	72
227	USAU	2025-02-09	63
227	SWCI	2025-02-12	121
227	ELO	2025-02-12	350
227	Massey	2025-02-12	69
227	USAU	2025-02-12	63
227	SWCI	2025-02-16	131
227	ELO	2025-02-16	350
227	Massey	2025-02-16	63
227	USAU	2025-02-16	41
227	SWCI	2025-02-17	136
227	ELO	2025-02-17	368
227	Massey	2025-02-17	66
227	USAU	2025-02-17	48
227	SWCI	2025-02-22	165
227	ELO	2025-02-22	367
227	Massey	2025-02-22	71
227	USAU	2025-02-22	53
227	SWCI	2025-02-23	169
227	ELO	2025-02-23	365
227	Massey	2025-02-23	66
227	USAU	2025-02-23	54
227	SWCI	2025-03-02	217
227	ELO	2025-03-02	355
227	Massey	2025-03-02	53
227	USAU	2025-03-02	49
227	SWCI	2025-03-08	216
227	ELO	2025-03-08	339
227	Massey	2025-03-08	52
227	USAU	2025-03-08	55
227	SWCI	2025-03-09	218
227	ELO	2025-03-09	337
227	Massey	2025-03-09	51
227	USAU	2025-03-09	52
227	SWCI	2025-03-15	237
227	ELO	2025-03-15	338
227	Massey	2025-03-15	102
227	USAU	2025-03-15	48
227	SWCI	2025-03-16	232
227	ELO	2025-03-16	335
227	Massey	2025-03-16	47
227	USAU	2025-03-16	50
227	SWCI	2025-03-23	241
227	ELO	2025-03-23	325
227	Massey	2025-03-23	69
227	USAU	2025-03-23	40
227	SWCI	2025-03-29	222
227	ELO	2025-03-29	320
227	Massey	2025-03-29	46
227	USAU	2025-03-29	45
227	SWCI	2025-03-30	257
227	ELO	2025-03-30	320
227	Massey	2025-03-30	50
227	USAU	2025-03-30	49
228	SWCI	2025-01-26	249
228	ELO	2025-01-26	230
228	Massey	2025-01-26	221
228	USAU	2025-01-26	216
228	SWCI	2025-02-02	53
228	ELO	2025-02-02	44
228	Massey	2025-02-02	46
228	USAU	2025-02-02	31
228	SWCI	2025-02-08	72
228	ELO	2025-02-08	67
228	Massey	2025-02-08	43
228	USAU	2025-02-08	34
228	SWCI	2025-02-09	73
228	ELO	2025-02-09	72
228	Massey	2025-02-09	37
228	USAU	2025-02-09	22
228	SWCI	2025-02-12	73
228	ELO	2025-02-12	84
228	Massey	2025-02-12	25
228	USAU	2025-02-12	22
228	SWCI	2025-02-16	75
228	ELO	2025-02-16	84
228	Massey	2025-02-16	37
228	USAU	2025-02-16	26
228	SWCI	2025-02-17	75
228	ELO	2025-02-17	91
228	Massey	2025-02-17	33
228	USAU	2025-02-17	27
228	SWCI	2025-02-22	82
228	ELO	2025-02-22	92
228	Massey	2025-02-22	36
228	USAU	2025-02-22	23
228	SWCI	2025-02-23	86
228	ELO	2025-02-23	96
228	Massey	2025-02-23	33
228	USAU	2025-02-23	24
228	SWCI	2025-03-02	157
228	ELO	2025-03-02	116
228	Massey	2025-03-02	29
228	USAU	2025-03-02	30
228	SWCI	2025-03-08	159
228	ELO	2025-03-08	301
228	Massey	2025-03-08	27
228	USAU	2025-03-08	30
228	SWCI	2025-03-09	158
228	ELO	2025-03-09	300
228	Massey	2025-03-09	28
228	USAU	2025-03-09	31
228	SWCI	2025-03-15	175
228	ELO	2025-03-15	295
228	Massey	2025-03-15	84
228	USAU	2025-03-15	28
228	SWCI	2025-03-16	170
228	ELO	2025-03-16	293
228	Massey	2025-03-16	29
228	USAU	2025-03-16	29
228	SWCI	2025-03-23	189
228	ELO	2025-03-23	283
228	Massey	2025-03-23	55
228	USAU	2025-03-23	31
228	SWCI	2025-03-29	203
228	ELO	2025-03-29	272
228	Massey	2025-03-29	28
228	USAU	2025-03-29	29
228	SWCI	2025-03-30	225
228	ELO	2025-03-30	270
228	Massey	2025-03-30	29
228	USAU	2025-03-30	31
229	SWCI	2025-01-26	250
229	ELO	2025-01-26	231
229	Massey	2025-01-26	217
229	USAU	2025-01-26	217
229	SWCI	2025-02-02	100
229	ELO	2025-02-02	385
229	Massey	2025-02-02	201
229	USAU	2025-02-02	340
229	SWCI	2025-02-08	132
229	ELO	2025-02-08	380
229	Massey	2025-02-08	107
229	USAU	2025-02-08	78
229	SWCI	2025-02-09	134
229	ELO	2025-02-09	378
229	Massey	2025-02-09	74
229	USAU	2025-02-09	64
229	SWCI	2025-02-12	134
229	ELO	2025-02-12	373
229	Massey	2025-02-12	73
229	USAU	2025-02-12	64
229	SWCI	2025-02-16	116
229	ELO	2025-02-16	360
229	Massey	2025-02-16	86
229	USAU	2025-02-16	61
229	SWCI	2025-02-17	116
229	ELO	2025-02-17	351
229	Massey	2025-02-17	77
229	USAU	2025-02-17	60
229	SWCI	2025-02-22	142
229	ELO	2025-02-22	349
229	Massey	2025-02-22	83
229	USAU	2025-02-22	62
229	SWCI	2025-02-23	137
229	ELO	2025-02-23	348
229	Massey	2025-02-23	81
229	USAU	2025-02-23	62
229	SWCI	2025-03-02	191
229	ELO	2025-03-02	341
229	Massey	2025-03-02	63
229	USAU	2025-03-02	63
229	SWCI	2025-03-08	192
229	ELO	2025-03-08	323
229	Massey	2025-03-08	60
229	USAU	2025-03-08	64
229	SWCI	2025-03-09	196
229	ELO	2025-03-09	321
229	Massey	2025-03-09	60
229	USAU	2025-03-09	64
229	SWCI	2025-03-15	216
229	ELO	2025-03-15	321
229	Massey	2025-03-15	121
229	USAU	2025-03-15	67
229	SWCI	2025-03-16	209
229	ELO	2025-03-16	319
229	Massey	2025-03-16	63
229	USAU	2025-03-16	66
229	SWCI	2025-03-23	232
229	ELO	2025-03-23	311
229	Massey	2025-03-23	95
229	USAU	2025-03-23	72
229	SWCI	2025-03-29	167
229	ELO	2025-03-29	302
229	Massey	2025-03-29	64
229	USAU	2025-03-29	59
229	SWCI	2025-03-30	160
229	ELO	2025-03-30	301
229	Massey	2025-03-30	58
229	USAU	2025-03-30	48
230	SWCI	2025-01-26	251
230	ELO	2025-01-26	232
230	Massey	2025-01-26	86
230	USAU	2025-01-26	218
230	SWCI	2025-02-02	55
230	ELO	2025-02-02	36
230	Massey	2025-02-02	42
230	USAU	2025-02-02	25
230	SWCI	2025-02-08	73
230	ELO	2025-02-08	54
230	Massey	2025-02-08	37
230	USAU	2025-02-08	24
230	SWCI	2025-02-09	75
230	ELO	2025-02-09	57
230	Massey	2025-02-09	31
230	USAU	2025-02-09	18
230	SWCI	2025-02-12	75
230	ELO	2025-02-12	68
230	Massey	2025-02-12	22
230	USAU	2025-02-12	18
230	SWCI	2025-02-16	72
230	ELO	2025-02-16	68
230	Massey	2025-02-16	34
230	USAU	2025-02-16	23
230	SWCI	2025-02-17	72
230	ELO	2025-02-17	75
230	Massey	2025-02-17	30
230	USAU	2025-02-17	24
230	SWCI	2025-02-22	87
230	ELO	2025-02-22	76
230	Massey	2025-02-22	34
230	USAU	2025-02-22	20
230	SWCI	2025-02-23	88
230	ELO	2025-02-23	80
230	Massey	2025-02-23	32
230	USAU	2025-02-23	22
230	SWCI	2025-03-02	152
230	ELO	2025-03-02	98
230	Massey	2025-03-02	24
230	USAU	2025-03-02	22
230	SWCI	2025-03-08	152
230	ELO	2025-03-08	248
230	Massey	2025-03-08	22
230	USAU	2025-03-08	24
230	SWCI	2025-03-09	154
230	ELO	2025-03-09	247
230	Massey	2025-03-09	22
230	USAU	2025-03-09	23
230	SWCI	2025-03-15	167
230	ELO	2025-03-15	240
230	Massey	2025-03-15	79
230	USAU	2025-03-15	23
230	SWCI	2025-03-16	164
230	ELO	2025-03-16	236
230	Massey	2025-03-16	23
230	USAU	2025-03-16	21
230	SWCI	2025-03-23	173
230	ELO	2025-03-23	226
230	Massey	2025-03-23	54
230	USAU	2025-03-23	25
230	SWCI	2025-03-29	226
230	ELO	2025-03-29	222
230	Massey	2025-03-29	29
230	USAU	2025-03-29	31
230	SWCI	2025-03-30	208
230	ELO	2025-03-30	222
230	Massey	2025-03-30	28
230	USAU	2025-03-30	28
231	SWCI	2025-01-26	252
231	ELO	2025-01-26	233
231	Massey	2025-01-26	67
231	USAU	2025-01-26	219
231	SWCI	2025-02-02	61
231	ELO	2025-02-02	46
231	Massey	2025-02-02	67
231	USAU	2025-02-02	43
231	SWCI	2025-02-08	82
231	ELO	2025-02-08	71
231	Massey	2025-02-08	66
231	USAU	2025-02-08	53
231	SWCI	2025-02-09	81
231	ELO	2025-02-09	76
231	Massey	2025-02-09	52
231	USAU	2025-02-09	36
231	SWCI	2025-02-12	81
231	ELO	2025-02-12	88
231	Massey	2025-02-12	46
231	USAU	2025-02-12	36
231	SWCI	2025-02-16	90
231	ELO	2025-02-16	89
231	Massey	2025-02-16	52
231	USAU	2025-02-16	40
231	SWCI	2025-02-17	91
231	ELO	2025-02-17	96
231	Massey	2025-02-17	47
231	USAU	2025-02-17	41
231	SWCI	2025-02-22	70
231	ELO	2025-02-22	98
231	Massey	2025-02-22	57
231	USAU	2025-02-22	39
231	SWCI	2025-02-23	69
231	ELO	2025-02-23	102
231	Massey	2025-02-23	52
231	USAU	2025-02-23	34
231	SWCI	2025-03-02	79
231	ELO	2025-03-02	44
231	Massey	2025-03-02	36
231	USAU	2025-03-02	33
231	SWCI	2025-03-08	84
231	ELO	2025-03-08	63
231	Massey	2025-03-08	32
231	USAU	2025-03-08	33
231	SWCI	2025-03-09	83
231	ELO	2025-03-09	64
231	Massey	2025-03-09	33
231	USAU	2025-03-09	33
231	SWCI	2025-03-15	95
231	ELO	2025-03-15	65
231	Massey	2025-03-15	91
231	USAU	2025-03-15	33
231	SWCI	2025-03-16	95
231	ELO	2025-03-16	68
231	Massey	2025-03-16	35
231	USAU	2025-03-16	33
231	SWCI	2025-03-23	100
231	ELO	2025-03-23	77
231	Massey	2025-03-23	64
231	USAU	2025-03-23	34
231	SWCI	2025-03-29	159
231	ELO	2025-03-29	85
231	Massey	2025-03-29	47
231	USAU	2025-03-29	52
231	SWCI	2025-03-30	116
231	ELO	2025-03-30	85
231	Massey	2025-03-30	43
231	USAU	2025-03-30	45
232	SWCI	2025-01-26	253
232	ELO	2025-01-26	234
232	Massey	2025-01-26	94
232	USAU	2025-01-26	220
232	SWCI	2025-02-02	79
232	ELO	2025-02-02	359
232	Massey	2025-02-02	70
232	USAU	2025-02-02	48
232	SWCI	2025-02-08	106
232	ELO	2025-02-08	342
232	Massey	2025-02-08	71
232	USAU	2025-02-08	57
232	SWCI	2025-02-09	106
232	ELO	2025-02-09	339
232	Massey	2025-02-09	57
232	USAU	2025-02-09	43
232	SWCI	2025-02-12	106
232	ELO	2025-02-12	325
232	Massey	2025-02-12	51
232	USAU	2025-02-12	43
232	SWCI	2025-02-16	114
232	ELO	2025-02-16	324
232	Massey	2025-02-16	57
232	USAU	2025-02-16	46
232	SWCI	2025-02-17	114
232	ELO	2025-02-17	316
232	Massey	2025-02-17	52
232	USAU	2025-02-17	46
232	SWCI	2025-02-22	120
232	ELO	2025-02-22	313
232	Massey	2025-02-22	58
232	USAU	2025-02-22	44
232	SWCI	2025-02-23	123
232	ELO	2025-02-23	313
232	Massey	2025-02-23	56
232	USAU	2025-02-23	42
232	SWCI	2025-03-02	172
232	ELO	2025-03-02	295
232	Massey	2025-03-02	41
232	USAU	2025-03-02	40
232	SWCI	2025-03-08	172
232	ELO	2025-03-08	258
232	Massey	2025-03-08	40
232	USAU	2025-03-08	41
232	SWCI	2025-03-09	174
232	ELO	2025-03-09	257
232	Massey	2025-03-09	40
232	USAU	2025-03-09	40
232	SWCI	2025-03-15	225
232	ELO	2025-03-15	251
232	Massey	2025-03-15	109
232	USAU	2025-03-15	53
232	SWCI	2025-03-16	188
232	ELO	2025-03-16	247
232	Massey	2025-03-16	57
232	USAU	2025-03-16	56
232	SWCI	2025-03-23	197
232	ELO	2025-03-23	276
232	Massey	2025-03-23	85
232	USAU	2025-03-23	59
232	SWCI	2025-03-29	219
232	ELO	2025-03-29	263
232	Massey	2025-03-29	60
232	USAU	2025-03-29	61
232	SWCI	2025-03-30	229
232	ELO	2025-03-30	263
232	Massey	2025-03-30	62
232	USAU	2025-03-30	65
233	SWCI	2025-01-26	254
233	ELO	2025-01-26	235
233	Massey	2025-01-26	275
233	USAU	2025-01-26	221
233	SWCI	2025-02-02	65
233	ELO	2025-02-02	45
233	Massey	2025-02-02	40
233	USAU	2025-02-02	27
233	SWCI	2025-02-08	88
233	ELO	2025-02-08	70
233	Massey	2025-02-08	34
233	USAU	2025-02-08	30
233	SWCI	2025-02-09	85
233	ELO	2025-02-09	75
233	Massey	2025-02-09	30
233	USAU	2025-02-09	20
233	SWCI	2025-02-12	85
233	ELO	2025-02-12	87
233	Massey	2025-02-12	20
233	USAU	2025-02-12	20
233	SWCI	2025-02-16	95
233	ELO	2025-02-16	87
233	Massey	2025-02-16	32
233	USAU	2025-02-16	25
233	SWCI	2025-02-17	95
233	ELO	2025-02-17	94
233	Massey	2025-02-17	28
233	USAU	2025-02-17	26
233	SWCI	2025-02-22	114
233	ELO	2025-02-22	95
233	Massey	2025-02-22	29
233	USAU	2025-02-22	24
233	SWCI	2025-02-23	113
233	ELO	2025-02-23	99
233	Massey	2025-02-23	26
233	USAU	2025-02-23	25
233	SWCI	2025-03-02	124
233	ELO	2025-03-02	118
233	Massey	2025-03-02	14
233	USAU	2025-03-02	12
233	SWCI	2025-03-08	126
233	ELO	2025-03-08	92
233	Massey	2025-03-08	12
233	USAU	2025-03-08	12
233	SWCI	2025-03-09	126
233	ELO	2025-03-09	95
233	Massey	2025-03-09	12
233	USAU	2025-03-09	12
233	SWCI	2025-03-15	136
233	ELO	2025-03-15	97
233	Massey	2025-03-15	71
233	USAU	2025-03-15	13
233	SWCI	2025-03-16	137
233	ELO	2025-03-16	99
233	Massey	2025-03-16	15
233	USAU	2025-03-16	13
233	SWCI	2025-03-23	143
233	ELO	2025-03-23	108
233	Massey	2025-03-23	43
233	USAU	2025-03-23	16
233	SWCI	2025-03-29	145
233	ELO	2025-03-29	114
233	Massey	2025-03-29	16
233	USAU	2025-03-29	15
233	SWCI	2025-03-30	192
233	ELO	2025-03-30	114
233	Massey	2025-03-30	18
233	USAU	2025-03-30	22
234	SWCI	2025-01-26	23
234	ELO	2025-01-26	236
234	Massey	2025-01-26	20
234	USAU	2025-01-26	18
234	SWCI	2025-02-02	42
234	ELO	2025-02-02	32
234	Massey	2025-02-02	36
234	USAU	2025-02-02	38
234	SWCI	2025-02-08	55
234	ELO	2025-02-08	46
234	Massey	2025-02-08	85
234	USAU	2025-02-08	352
234	SWCI	2025-02-09	55
234	ELO	2025-02-09	49
234	Massey	2025-02-09	71
234	USAU	2025-02-09	319
234	SWCI	2025-02-12	56
234	ELO	2025-02-12	61
234	Massey	2025-02-12	66
234	USAU	2025-02-12	319
234	SWCI	2025-02-16	53
234	ELO	2025-02-16	60
234	Massey	2025-02-16	62
234	USAU	2025-02-16	50
234	SWCI	2025-02-17	58
234	ELO	2025-02-17	67
234	Massey	2025-02-17	49
234	USAU	2025-02-17	47
234	SWCI	2025-02-22	74
234	ELO	2025-02-22	69
234	Massey	2025-02-22	54
234	USAU	2025-02-22	52
234	SWCI	2025-02-23	74
234	ELO	2025-02-23	72
234	Massey	2025-02-23	49
234	USAU	2025-02-23	53
234	SWCI	2025-03-02	97
234	ELO	2025-03-02	89
234	Massey	2025-03-02	44
234	USAU	2025-03-02	55
234	SWCI	2025-03-08	72
234	ELO	2025-03-08	113
234	Massey	2025-03-08	30
234	USAU	2025-03-08	37
234	SWCI	2025-03-09	65
234	ELO	2025-03-09	116
234	Massey	2025-03-09	27
234	USAU	2025-03-09	26
234	SWCI	2025-03-15	67
234	ELO	2025-03-15	67
234	Massey	2025-03-15	82
234	USAU	2025-03-15	24
234	SWCI	2025-03-16	68
234	ELO	2025-03-16	70
234	Massey	2025-03-16	25
234	USAU	2025-03-16	25
234	SWCI	2025-03-23	85
234	ELO	2025-03-23	71
234	Massey	2025-03-23	48
234	USAU	2025-03-23	18
234	SWCI	2025-03-29	82
234	ELO	2025-03-29	78
234	Massey	2025-03-29	22
234	USAU	2025-03-29	19
234	SWCI	2025-03-30	83
234	ELO	2025-03-30	79
234	Massey	2025-03-30	24
234	USAU	2025-03-30	20
235	SWCI	2025-01-26	13
235	ELO	2025-01-26	237
235	Massey	2025-01-26	5
235	USAU	2025-01-26	5
235	SWCI	2025-02-02	23
235	ELO	2025-02-02	21
235	Massey	2025-02-02	17
235	USAU	2025-02-02	14
235	SWCI	2025-02-08	30
235	ELO	2025-02-08	26
235	Massey	2025-02-08	44
235	USAU	2025-02-08	321
235	SWCI	2025-02-09	31
235	ELO	2025-02-09	29
235	Massey	2025-02-09	47
235	USAU	2025-02-09	60
235	SWCI	2025-02-12	31
235	ELO	2025-02-12	36
235	Massey	2025-02-12	35
235	USAU	2025-02-12	60
235	SWCI	2025-02-16	36
235	ELO	2025-02-16	36
235	Massey	2025-02-16	29
235	USAU	2025-02-16	14
235	SWCI	2025-02-17	34
235	ELO	2025-02-17	20
235	Massey	2025-02-17	22
235	USAU	2025-02-17	11
235	SWCI	2025-02-22	41
235	ELO	2025-02-22	19
235	Massey	2025-02-22	25
235	USAU	2025-02-22	13
235	SWCI	2025-02-23	38
235	ELO	2025-02-23	19
235	Massey	2025-02-23	22
235	USAU	2025-02-23	13
235	SWCI	2025-03-02	57
235	ELO	2025-03-02	23
235	Massey	2025-03-02	15
235	USAU	2025-03-02	15
235	SWCI	2025-03-08	52
235	ELO	2025-03-08	35
235	Massey	2025-03-08	14
235	USAU	2025-03-08	14
235	SWCI	2025-03-09	52
235	ELO	2025-03-09	35
235	Massey	2025-03-09	14
235	USAU	2025-03-09	14
235	SWCI	2025-03-15	55
235	ELO	2025-03-15	35
235	Massey	2025-03-15	69
235	USAU	2025-03-15	11
235	SWCI	2025-03-16	55
235	ELO	2025-03-16	37
235	Massey	2025-03-16	14
235	USAU	2025-03-16	12
235	SWCI	2025-03-23	45
235	ELO	2025-03-23	23
235	Massey	2025-03-23	40
235	USAU	2025-03-23	10
235	SWCI	2025-03-29	41
235	ELO	2025-03-29	26
235	Massey	2025-03-29	14
235	USAU	2025-03-29	12
235	SWCI	2025-03-30	44
235	ELO	2025-03-30	26
235	Massey	2025-03-30	13
235	USAU	2025-03-30	11
236	SWCI	2025-01-26	255
236	ELO	2025-01-26	238
236	Massey	2025-01-26	278
236	USAU	2025-01-26	222
236	SWCI	2025-02-02	275
236	ELO	2025-02-02	219
236	Massey	2025-02-02	128
236	USAU	2025-02-02	217
236	SWCI	2025-02-08	293
236	ELO	2025-02-08	217
236	Massey	2025-02-08	195
236	USAU	2025-02-08	213
236	SWCI	2025-02-09	293
236	ELO	2025-02-09	213
236	Massey	2025-02-09	173
236	USAU	2025-02-09	211
236	SWCI	2025-02-12	293
236	ELO	2025-02-12	212
236	Massey	2025-02-12	240
236	USAU	2025-02-12	211
236	SWCI	2025-02-16	304
236	ELO	2025-02-16	211
236	Massey	2025-02-16	171
236	USAU	2025-02-16	200
236	SWCI	2025-02-17	304
236	ELO	2025-02-17	211
236	Massey	2025-02-17	154
236	USAU	2025-02-17	198
236	SWCI	2025-02-22	325
236	ELO	2025-02-22	208
236	Massey	2025-02-22	271
236	USAU	2025-02-22	194
236	SWCI	2025-02-23	325
236	ELO	2025-02-23	206
236	Massey	2025-02-23	252
236	USAU	2025-02-23	196
236	SWCI	2025-03-02	16
236	ELO	2025-03-02	213
236	Massey	2025-03-02	107
236	USAU	2025-03-02	122
236	SWCI	2025-03-08	17
236	ELO	2025-03-08	65
236	Massey	2025-03-08	98
236	USAU	2025-03-08	112
236	SWCI	2025-03-09	18
236	ELO	2025-03-09	66
236	Massey	2025-03-09	98
236	USAU	2025-03-09	118
236	SWCI	2025-03-15	17
236	ELO	2025-03-15	66
236	Massey	2025-03-15	151
236	USAU	2025-03-15	121
236	SWCI	2025-03-16	14
236	ELO	2025-03-16	69
236	Massey	2025-03-16	96
236	USAU	2025-03-16	118
236	SWCI	2025-03-23	240
236	ELO	2025-03-23	344
236	Massey	2025-03-23	142
236	USAU	2025-03-23	104
236	SWCI	2025-03-29	252
236	ELO	2025-03-29	339
236	Massey	2025-03-29	113
236	USAU	2025-03-29	101
236	SWCI	2025-03-30	259
236	ELO	2025-03-30	338
236	Massey	2025-03-30	120
236	USAU	2025-03-30	110
237	SWCI	2025-01-26	256
237	ELO	2025-01-26	239
237	Massey	2025-01-26	280
237	USAU	2025-01-26	223
237	SWCI	2025-02-02	57
237	ELO	2025-02-02	26
237	Massey	2025-02-02	61
237	USAU	2025-02-02	37
237	SWCI	2025-02-08	74
237	ELO	2025-02-08	38
237	Massey	2025-02-08	51
237	USAU	2025-02-08	42
237	SWCI	2025-02-09	76
237	ELO	2025-02-09	41
237	Massey	2025-02-09	48
237	USAU	2025-02-09	30
237	SWCI	2025-02-12	77
237	ELO	2025-02-12	51
237	Massey	2025-02-12	37
237	USAU	2025-02-12	30
237	SWCI	2025-02-16	71
237	ELO	2025-02-16	52
237	Massey	2025-02-16	45
237	USAU	2025-02-16	29
237	SWCI	2025-02-17	71
237	ELO	2025-02-17	58
237	Massey	2025-02-17	37
237	USAU	2025-02-17	31
237	SWCI	2025-02-22	94
237	ELO	2025-02-22	59
237	Massey	2025-02-22	45
237	USAU	2025-02-22	29
237	SWCI	2025-02-23	92
237	ELO	2025-02-23	62
237	Massey	2025-02-23	44
237	USAU	2025-02-23	30
237	SWCI	2025-03-02	107
237	ELO	2025-03-02	74
237	Massey	2025-03-02	30
237	USAU	2025-03-02	28
237	SWCI	2025-03-08	107
237	ELO	2025-03-08	99
237	Massey	2025-03-08	28
237	USAU	2025-03-08	28
237	SWCI	2025-03-09	107
237	ELO	2025-03-09	102
237	Massey	2025-03-09	29
237	USAU	2025-03-09	29
237	SWCI	2025-03-15	115
237	ELO	2025-03-15	105
237	Massey	2025-03-15	86
237	USAU	2025-03-15	32
237	SWCI	2025-03-16	101
237	ELO	2025-03-16	106
237	Massey	2025-03-16	27
237	USAU	2025-03-16	27
237	SWCI	2025-03-23	159
237	ELO	2025-03-23	159
237	Massey	2025-03-23	67
237	USAU	2025-03-23	41
237	SWCI	2025-03-29	166
237	ELO	2025-03-29	175
237	Massey	2025-03-29	38
237	USAU	2025-03-29	39
237	SWCI	2025-03-30	171
237	ELO	2025-03-30	176
237	Massey	2025-03-30	37
237	USAU	2025-03-30	41
238	SWCI	2025-01-26	60
238	ELO	2025-01-26	240
238	Massey	2025-01-26	389
238	USAU	2025-01-26	391
238	SWCI	2025-02-02	122
238	ELO	2025-02-02	391
238	Massey	2025-02-02	367
238	USAU	2025-02-02	382
238	SWCI	2025-02-08	165
238	ELO	2025-02-08	390
238	Massey	2025-02-08	379
238	USAU	2025-02-08	375
238	SWCI	2025-02-09	162
238	ELO	2025-02-09	390
238	Massey	2025-02-09	393
238	USAU	2025-02-09	395
238	SWCI	2025-02-12	162
238	ELO	2025-02-12	386
238	Massey	2025-02-12	389
238	USAU	2025-02-12	395
238	SWCI	2025-02-16	182
238	ELO	2025-02-16	386
238	Massey	2025-02-16	388
238	USAU	2025-02-16	394
238	SWCI	2025-02-17	181
238	ELO	2025-02-17	385
238	Massey	2025-02-17	392
238	USAU	2025-02-17	394
238	SWCI	2025-02-22	223
238	ELO	2025-02-22	386
238	Massey	2025-02-22	385
238	USAU	2025-02-22	393
238	SWCI	2025-02-23	224
238	ELO	2025-02-23	385
238	Massey	2025-02-23	385
238	USAU	2025-02-23	392
238	SWCI	2025-03-02	306
238	ELO	2025-03-02	396
238	Massey	2025-03-02	380
238	USAU	2025-03-02	380
238	SWCI	2025-03-08	313
238	ELO	2025-03-08	394
238	Massey	2025-03-08	361
238	USAU	2025-03-08	380
238	SWCI	2025-03-09	317
238	ELO	2025-03-09	394
238	Massey	2025-03-09	368
238	USAU	2025-03-09	378
238	SWCI	2025-03-15	344
238	ELO	2025-03-15	394
238	Massey	2025-03-15	373
238	USAU	2025-03-15	373
238	SWCI	2025-03-16	345
238	ELO	2025-03-16	394
238	Massey	2025-03-16	375
238	USAU	2025-03-16	373
238	SWCI	2025-03-23	362
238	ELO	2025-03-23	394
238	Massey	2025-03-23	367
238	USAU	2025-03-23	365
238	SWCI	2025-03-29	372
238	ELO	2025-03-29	392
238	Massey	2025-03-29	351
238	USAU	2025-03-29	356
238	SWCI	2025-03-30	378
238	ELO	2025-03-30	391
238	Massey	2025-03-30	357
238	USAU	2025-03-30	360
239	SWCI	2025-01-26	257
239	ELO	2025-01-26	241
239	Massey	2025-01-26	279
239	USAU	2025-01-26	224
239	SWCI	2025-02-02	276
239	ELO	2025-02-02	220
239	Massey	2025-02-02	101
239	USAU	2025-02-02	218
239	SWCI	2025-02-08	85
239	ELO	2025-02-08	218
239	Massey	2025-02-08	42
239	USAU	2025-02-08	320
239	SWCI	2025-02-09	86
239	ELO	2025-02-09	70
239	Massey	2025-02-09	76
239	USAU	2025-02-09	83
239	SWCI	2025-02-12	86
239	ELO	2025-02-12	81
239	Massey	2025-02-12	77
239	USAU	2025-02-12	83
239	SWCI	2025-02-16	97
239	ELO	2025-02-16	81
239	Massey	2025-02-16	68
239	USAU	2025-02-16	80
239	SWCI	2025-02-17	97
239	ELO	2025-02-17	88
239	Massey	2025-02-17	68
239	USAU	2025-02-17	79
239	SWCI	2025-02-22	118
239	ELO	2025-02-22	89
239	Massey	2025-02-22	90
239	USAU	2025-02-22	96
239	SWCI	2025-02-23	117
239	ELO	2025-02-23	93
239	Massey	2025-02-23	84
239	USAU	2025-02-23	101
239	SWCI	2025-03-02	53
239	ELO	2025-03-02	36
239	Massey	2025-03-02	123
239	USAU	2025-03-02	108
239	SWCI	2025-03-08	53
239	ELO	2025-03-08	49
239	Massey	2025-03-08	111
239	USAU	2025-03-08	104
239	SWCI	2025-03-09	54
239	ELO	2025-03-09	50
239	Massey	2025-03-09	111
239	USAU	2025-03-09	105
239	SWCI	2025-03-15	58
239	ELO	2025-03-15	51
239	Massey	2025-03-15	162
239	USAU	2025-03-15	100
239	SWCI	2025-03-16	59
239	ELO	2025-03-16	53
239	Massey	2025-03-16	109
239	USAU	2025-03-16	104
239	SWCI	2025-03-23	62
239	ELO	2025-03-23	59
239	Massey	2025-03-23	132
239	USAU	2025-03-23	96
239	SWCI	2025-03-29	37
239	ELO	2025-03-29	66
239	Massey	2025-03-29	99
239	USAU	2025-03-29	103
239	SWCI	2025-03-30	54
239	ELO	2025-03-30	67
239	Massey	2025-03-30	107
239	USAU	2025-03-30	120
240	SWCI	2025-01-26	258
240	ELO	2025-01-26	242
240	Massey	2025-01-26	330
240	USAU	2025-01-26	225
240	SWCI	2025-02-02	277
240	ELO	2025-02-02	221
240	Massey	2025-02-02	242
240	USAU	2025-02-02	219
240	SWCI	2025-02-08	294
240	ELO	2025-02-08	219
240	Massey	2025-02-08	254
240	USAU	2025-02-08	214
240	SWCI	2025-02-09	294
240	ELO	2025-02-09	214
240	Massey	2025-02-09	252
240	USAU	2025-02-09	212
240	SWCI	2025-02-12	294
240	ELO	2025-02-12	213
240	Massey	2025-02-12	199
240	USAU	2025-02-12	212
240	SWCI	2025-02-16	305
240	ELO	2025-02-16	212
240	Massey	2025-02-16	159
240	USAU	2025-02-16	201
240	SWCI	2025-02-17	305
240	ELO	2025-02-17	212
240	Massey	2025-02-17	218
240	USAU	2025-02-17	199
240	SWCI	2025-02-22	326
240	ELO	2025-02-22	209
240	Massey	2025-02-22	266
240	USAU	2025-02-22	195
240	SWCI	2025-02-23	326
240	ELO	2025-02-23	207
240	Massey	2025-02-23	271
240	USAU	2025-02-23	197
240	SWCI	2025-03-02	207
240	ELO	2025-03-02	335
240	Massey	2025-03-02	326
240	USAU	2025-03-02	321
240	SWCI	2025-03-08	210
240	ELO	2025-03-08	312
240	Massey	2025-03-08	266
240	USAU	2025-03-08	315
240	SWCI	2025-03-09	214
240	ELO	2025-03-09	311
240	Massey	2025-03-09	259
240	USAU	2025-03-09	314
240	SWCI	2025-03-15	230
240	ELO	2025-03-15	307
240	Massey	2025-03-15	317
240	USAU	2025-03-15	294
240	SWCI	2025-03-16	225
240	ELO	2025-03-16	306
240	Massey	2025-03-16	273
240	USAU	2025-03-16	293
240	SWCI	2025-03-23	235
240	ELO	2025-03-23	296
240	Massey	2025-03-23	289
240	USAU	2025-03-23	266
240	SWCI	2025-03-29	232
240	ELO	2025-03-29	282
240	Massey	2025-03-29	272
240	USAU	2025-03-29	241
240	SWCI	2025-03-30	283
240	ELO	2025-03-30	282
240	Massey	2025-03-30	293
240	USAU	2025-03-30	261
241	SWCI	2025-01-26	259
241	ELO	2025-01-26	243
241	Massey	2025-01-26	329
241	USAU	2025-01-26	226
241	SWCI	2025-02-02	111
241	ELO	2025-02-02	222
241	Massey	2025-02-02	393
241	USAU	2025-02-02	393
241	SWCI	2025-02-08	151
241	ELO	2025-02-08	384
241	Massey	2025-02-08	389
241	USAU	2025-02-08	391
241	SWCI	2025-02-09	140
241	ELO	2025-02-09	383
241	Massey	2025-02-09	376
241	USAU	2025-02-09	385
241	SWCI	2025-02-12	141
241	ELO	2025-02-12	389
241	Massey	2025-02-12	371
241	USAU	2025-02-12	385
241	SWCI	2025-02-16	160
241	ELO	2025-02-16	389
241	Massey	2025-02-16	360
241	USAU	2025-02-16	362
241	SWCI	2025-02-17	162
241	ELO	2025-02-17	388
241	Massey	2025-02-17	362
241	USAU	2025-02-17	362
241	SWCI	2025-02-22	201
241	ELO	2025-02-22	389
241	Massey	2025-02-22	348
241	USAU	2025-02-22	359
241	SWCI	2025-02-23	200
241	ELO	2025-02-23	388
241	Massey	2025-02-23	336
241	USAU	2025-02-23	355
241	SWCI	2025-03-02	275
241	ELO	2025-03-02	387
241	Massey	2025-03-02	312
241	USAU	2025-03-02	326
241	SWCI	2025-03-08	281
241	ELO	2025-03-08	382
241	Massey	2025-03-08	253
241	USAU	2025-03-08	322
241	SWCI	2025-03-09	284
241	ELO	2025-03-09	381
241	Massey	2025-03-09	250
241	USAU	2025-03-09	321
241	SWCI	2025-03-15	314
241	ELO	2025-03-15	380
241	Massey	2025-03-15	304
241	USAU	2025-03-15	300
241	SWCI	2025-03-16	312
241	ELO	2025-03-16	379
241	Massey	2025-03-16	251
241	USAU	2025-03-16	299
241	SWCI	2025-03-23	330
241	ELO	2025-03-23	389
241	Massey	2025-03-23	275
241	USAU	2025-03-23	269
241	SWCI	2025-03-29	344
241	ELO	2025-03-29	386
241	Massey	2025-03-29	254
241	USAU	2025-03-29	253
241	SWCI	2025-03-30	342
241	ELO	2025-03-30	385
241	Massey	2025-03-30	262
241	USAU	2025-03-30	262
242	SWCI	2025-01-26	24
242	ELO	2025-01-26	8
242	Massey	2025-01-26	43
242	USAU	2025-01-26	29
242	SWCI	2025-02-02	32
242	ELO	2025-02-02	41
242	Massey	2025-02-02	27
242	USAU	2025-02-02	18
242	SWCI	2025-02-08	38
242	ELO	2025-02-08	62
242	Massey	2025-02-08	22
242	USAU	2025-02-08	15
242	SWCI	2025-02-09	39
242	ELO	2025-02-09	65
242	Massey	2025-02-09	19
242	USAU	2025-02-09	12
242	SWCI	2025-02-12	39
242	ELO	2025-02-12	76
242	Massey	2025-02-12	15
242	USAU	2025-02-12	12
242	SWCI	2025-02-16	46
242	ELO	2025-02-16	74
242	Massey	2025-02-16	36
242	USAU	2025-02-16	22
242	SWCI	2025-02-17	46
242	ELO	2025-02-17	82
242	Massey	2025-02-17	31
242	USAU	2025-02-17	21
242	SWCI	2025-02-22	58
242	ELO	2025-02-22	82
242	Massey	2025-02-22	30
242	USAU	2025-02-22	25
242	SWCI	2025-02-23	61
242	ELO	2025-02-23	86
242	Massey	2025-02-23	29
242	USAU	2025-02-23	26
242	SWCI	2025-03-02	70
242	ELO	2025-03-02	105
242	Massey	2025-03-02	20
242	USAU	2025-03-02	24
242	SWCI	2025-03-08	43
242	ELO	2025-03-08	133
242	Massey	2025-03-08	17
242	USAU	2025-03-08	22
242	SWCI	2025-03-09	58
242	ELO	2025-03-09	136
242	Massey	2025-03-09	17
242	USAU	2025-03-09	20
242	SWCI	2025-03-15	62
242	ELO	2025-03-15	49
242	Massey	2025-03-15	73
242	USAU	2025-03-15	18
242	SWCI	2025-03-16	63
242	ELO	2025-03-16	51
242	Massey	2025-03-16	17
242	USAU	2025-03-16	18
242	SWCI	2025-03-23	51
242	ELO	2025-03-23	29
242	Massey	2025-03-23	37
242	USAU	2025-03-23	12
242	SWCI	2025-03-29	51
242	ELO	2025-03-29	31
242	Massey	2025-03-29	11
242	USAU	2025-03-29	11
242	SWCI	2025-03-30	50
242	ELO	2025-03-30	31
242	Massey	2025-03-30	12
242	USAU	2025-03-30	12
243	SWCI	2025-01-26	61
243	ELO	2025-01-26	397
243	Massey	2025-01-26	392
243	USAU	2025-01-26	393
243	SWCI	2025-02-02	72
243	ELO	2025-02-02	386
243	Massey	2025-02-02	358
243	USAU	2025-02-02	360
243	SWCI	2025-02-08	79
243	ELO	2025-02-08	337
243	Massey	2025-02-08	333
243	USAU	2025-02-08	338
243	SWCI	2025-02-09	62
243	ELO	2025-02-09	332
243	Massey	2025-02-09	297
243	USAU	2025-02-09	318
243	SWCI	2025-02-12	62
243	ELO	2025-02-12	23
243	Massey	2025-02-12	295
243	USAU	2025-02-12	318
243	SWCI	2025-02-16	70
243	ELO	2025-02-16	23
243	Massey	2025-02-16	276
243	USAU	2025-02-16	81
243	SWCI	2025-02-17	70
243	ELO	2025-02-17	27
243	Massey	2025-02-17	144
243	USAU	2025-02-17	81
243	SWCI	2025-02-22	93
243	ELO	2025-02-22	28
243	Massey	2025-02-22	146
243	USAU	2025-02-22	97
243	SWCI	2025-02-23	90
243	ELO	2025-02-23	28
243	Massey	2025-02-23	144
243	USAU	2025-02-23	97
243	SWCI	2025-03-02	101
243	ELO	2025-03-02	35
243	Massey	2025-03-02	122
243	USAU	2025-03-02	104
243	SWCI	2025-03-08	106
243	ELO	2025-03-08	48
243	Massey	2025-03-08	120
243	USAU	2025-03-08	107
243	SWCI	2025-03-09	109
243	ELO	2025-03-09	49
243	Massey	2025-03-09	121
243	USAU	2025-03-09	107
243	SWCI	2025-03-15	120
243	ELO	2025-03-15	50
243	Massey	2025-03-15	168
243	USAU	2025-03-15	101
243	SWCI	2025-03-16	121
243	ELO	2025-03-16	52
243	Massey	2025-03-16	114
243	USAU	2025-03-16	103
243	SWCI	2025-03-23	121
243	ELO	2025-03-23	58
243	Massey	2025-03-23	128
243	USAU	2025-03-23	87
243	SWCI	2025-03-29	129
243	ELO	2025-03-29	65
243	Massey	2025-03-29	103
243	USAU	2025-03-29	89
243	SWCI	2025-03-30	127
243	ELO	2025-03-30	66
243	Massey	2025-03-30	108
243	USAU	2025-03-30	91
244	SWCI	2025-01-26	26
244	ELO	2025-01-26	5
244	Massey	2025-01-26	49
244	USAU	2025-01-26	30
244	SWCI	2025-02-02	36
244	ELO	2025-02-02	34
244	Massey	2025-02-02	44
244	USAU	2025-02-02	22
244	SWCI	2025-02-08	48
244	ELO	2025-02-08	48
244	Massey	2025-02-08	40
244	USAU	2025-02-08	23
244	SWCI	2025-02-09	49
244	ELO	2025-02-09	51
244	Massey	2025-02-09	34
244	USAU	2025-02-09	16
244	SWCI	2025-02-12	49
244	ELO	2025-02-12	63
244	Massey	2025-02-12	24
244	USAU	2025-02-12	16
244	SWCI	2025-02-16	110
244	ELO	2025-02-16	63
244	Massey	2025-02-16	55
244	USAU	2025-02-16	42
244	SWCI	2025-02-17	109
244	ELO	2025-02-17	330
244	Massey	2025-02-17	44
244	USAU	2025-02-17	39
244	SWCI	2025-02-22	133
244	ELO	2025-02-22	328
244	Massey	2025-02-22	50
244	USAU	2025-02-22	45
244	SWCI	2025-02-23	133
244	ELO	2025-02-23	328
244	Massey	2025-02-23	47
244	USAU	2025-02-23	43
244	SWCI	2025-03-02	168
244	ELO	2025-03-02	310
244	Massey	2025-03-02	32
244	USAU	2025-03-02	39
244	SWCI	2025-03-08	154
244	ELO	2025-03-08	281
244	Massey	2025-03-08	36
244	USAU	2025-03-08	42
244	SWCI	2025-03-09	153
244	ELO	2025-03-09	281
244	Massey	2025-03-09	34
244	USAU	2025-03-09	39
244	SWCI	2025-03-15	155
244	ELO	2025-03-15	274
244	Massey	2025-03-15	85
244	USAU	2025-03-15	31
244	SWCI	2025-03-16	161
244	ELO	2025-03-16	272
244	Massey	2025-03-16	31
244	USAU	2025-03-16	32
244	SWCI	2025-03-23	132
244	ELO	2025-03-23	141
244	Massey	2025-03-23	45
244	USAU	2025-03-23	19
244	SWCI	2025-03-29	128
244	ELO	2025-03-29	151
244	Massey	2025-03-29	19
244	USAU	2025-03-29	20
244	SWCI	2025-03-30	132
244	ELO	2025-03-30	154
244	Massey	2025-03-30	23
244	USAU	2025-03-30	21
245	SWCI	2025-01-26	31
245	ELO	2025-01-26	6
245	Massey	2025-01-26	42
245	USAU	2025-01-26	28
245	SWCI	2025-02-02	63
245	ELO	2025-02-02	37
245	Massey	2025-02-02	30
245	USAU	2025-02-02	19
245	SWCI	2025-02-08	86
245	ELO	2025-02-08	56
245	Massey	2025-02-08	26
245	USAU	2025-02-08	18
245	SWCI	2025-02-09	83
245	ELO	2025-02-09	59
245	Massey	2025-02-09	23
245	USAU	2025-02-09	13
245	SWCI	2025-02-12	83
245	ELO	2025-02-12	70
245	Massey	2025-02-12	17
245	USAU	2025-02-12	13
245	SWCI	2025-02-16	67
245	ELO	2025-02-16	70
245	Massey	2025-02-16	35
245	USAU	2025-02-16	17
245	SWCI	2025-02-17	60
245	ELO	2025-02-17	48
245	Massey	2025-02-17	25
245	USAU	2025-02-17	16
245	SWCI	2025-02-22	75
245	ELO	2025-02-22	49
245	Massey	2025-02-22	27
245	USAU	2025-02-22	17
245	SWCI	2025-02-23	77
245	ELO	2025-02-23	50
245	Massey	2025-02-23	24
245	USAU	2025-02-23	17
245	SWCI	2025-03-02	95
245	ELO	2025-03-02	60
245	Massey	2025-03-02	16
245	USAU	2025-03-02	17
245	SWCI	2025-03-08	60
245	ELO	2025-03-08	80
245	Massey	2025-03-08	15
245	USAU	2025-03-08	16
245	SWCI	2025-03-09	38
245	ELO	2025-03-09	82
245	Massey	2025-03-09	13
245	USAU	2025-03-09	11
245	SWCI	2025-03-15	37
245	ELO	2025-03-15	15
245	Massey	2025-03-15	67
245	USAU	2025-03-15	10
245	SWCI	2025-03-16	34
245	ELO	2025-03-16	15
245	Massey	2025-03-16	11
245	USAU	2025-03-16	10
245	SWCI	2025-03-23	37
245	ELO	2025-03-23	12
245	Massey	2025-03-23	35
245	USAU	2025-03-23	9
245	SWCI	2025-03-29	33
245	ELO	2025-03-29	13
245	Massey	2025-03-29	9
245	USAU	2025-03-29	9
245	SWCI	2025-03-30	32
245	ELO	2025-03-30	13
245	Massey	2025-03-30	9
245	USAU	2025-03-30	9
246	SWCI	2025-01-26	14
246	ELO	2025-01-26	3
246	Massey	2025-01-26	21
246	USAU	2025-01-26	14
246	SWCI	2025-02-02	17
246	ELO	2025-02-02	17
246	Massey	2025-02-02	13
246	USAU	2025-02-02	7
246	SWCI	2025-02-08	23
246	ELO	2025-02-08	22
246	Massey	2025-02-08	6
246	USAU	2025-02-08	6
246	SWCI	2025-02-09	23
246	ELO	2025-02-09	25
246	Massey	2025-02-09	9
246	USAU	2025-02-09	5
246	SWCI	2025-02-12	23
246	ELO	2025-02-12	30
246	Massey	2025-02-12	6
246	USAU	2025-02-12	5
246	SWCI	2025-02-16	32
246	ELO	2025-02-16	31
246	Massey	2025-02-16	18
246	USAU	2025-02-16	11
246	SWCI	2025-02-17	43
246	ELO	2025-02-17	33
246	Massey	2025-02-17	16
246	USAU	2025-02-17	12
246	SWCI	2025-02-22	52
246	ELO	2025-02-22	35
246	Massey	2025-02-22	17
246	USAU	2025-02-22	12
246	SWCI	2025-02-23	51
246	ELO	2025-02-23	35
246	Massey	2025-02-23	17
246	USAU	2025-02-23	12
246	SWCI	2025-03-02	68
246	ELO	2025-03-02	45
246	Massey	2025-03-02	10
246	USAU	2025-03-02	11
246	SWCI	2025-03-08	58
246	ELO	2025-03-08	64
246	Massey	2025-03-08	13
246	USAU	2025-03-08	17
246	SWCI	2025-03-09	57
246	ELO	2025-03-09	65
246	Massey	2025-03-09	15
246	USAU	2025-03-09	19
246	SWCI	2025-03-15	54
246	ELO	2025-03-15	30
246	Massey	2025-03-15	68
246	USAU	2025-03-15	14
246	SWCI	2025-03-16	56
246	ELO	2025-03-16	32
246	Massey	2025-03-16	12
246	USAU	2025-03-16	15
246	SWCI	2025-03-23	50
246	ELO	2025-03-23	38
246	Massey	2025-03-23	38
246	USAU	2025-03-23	13
246	SWCI	2025-03-29	38
246	ELO	2025-03-29	42
246	Massey	2025-03-29	10
246	USAU	2025-03-29	10
246	SWCI	2025-03-30	60
246	ELO	2025-03-30	44
246	Massey	2025-03-30	11
246	USAU	2025-03-30	14
247	SWCI	2025-01-26	260
247	ELO	2025-01-26	244
247	Massey	2025-01-26	268
247	USAU	2025-01-26	227
247	SWCI	2025-02-02	278
247	ELO	2025-02-02	223
247	Massey	2025-02-02	223
247	USAU	2025-02-02	220
247	SWCI	2025-02-08	295
247	ELO	2025-02-08	220
247	Massey	2025-02-08	261
247	USAU	2025-02-08	215
247	SWCI	2025-02-09	295
247	ELO	2025-02-09	215
247	Massey	2025-02-09	226
247	USAU	2025-02-09	213
247	SWCI	2025-02-12	295
247	ELO	2025-02-12	214
247	Massey	2025-02-12	224
247	USAU	2025-02-12	213
247	SWCI	2025-02-16	306
247	ELO	2025-02-16	213
247	Massey	2025-02-16	215
247	USAU	2025-02-16	202
247	SWCI	2025-02-17	306
247	ELO	2025-02-17	213
247	Massey	2025-02-17	152
247	USAU	2025-02-17	200
247	SWCI	2025-02-22	327
247	ELO	2025-02-22	210
247	Massey	2025-02-22	250
247	USAU	2025-02-22	196
247	SWCI	2025-02-23	327
247	ELO	2025-02-23	208
247	Massey	2025-02-23	139
247	USAU	2025-02-23	198
247	SWCI	2025-03-02	358
247	ELO	2025-03-02	214
247	Massey	2025-03-02	318
247	USAU	2025-03-02	178
247	SWCI	2025-03-08	289
247	ELO	2025-03-08	197
247	Massey	2025-03-08	151
247	USAU	2025-03-08	227
247	SWCI	2025-03-09	286
247	ELO	2025-03-09	196
247	Massey	2025-03-09	143
247	USAU	2025-03-09	218
247	SWCI	2025-03-15	296
247	ELO	2025-03-15	333
247	Massey	2025-03-15	188
247	USAU	2025-03-15	132
247	SWCI	2025-03-16	297
247	ELO	2025-03-16	330
247	Massey	2025-03-16	137
247	USAU	2025-03-16	140
247	SWCI	2025-03-23	310
247	ELO	2025-03-23	321
247	Massey	2025-03-23	148
247	USAU	2025-03-23	121
247	SWCI	2025-03-29	259
247	ELO	2025-03-29	313
247	Massey	2025-03-29	141
247	USAU	2025-03-29	136
247	SWCI	2025-03-30	267
247	ELO	2025-03-30	312
247	Massey	2025-03-30	146
247	USAU	2025-03-30	141
248	SWCI	2025-01-26	261
248	ELO	2025-01-26	245
248	Massey	2025-01-26	269
248	USAU	2025-01-26	228
248	SWCI	2025-02-02	43
248	ELO	2025-02-02	224
248	Massey	2025-02-02	372
248	USAU	2025-02-02	377
248	SWCI	2025-02-08	60
248	ELO	2025-02-08	55
248	Massey	2025-02-08	358
248	USAU	2025-02-08	363
248	SWCI	2025-02-09	63
248	ELO	2025-02-09	58
248	Massey	2025-02-09	341
248	USAU	2025-02-09	348
248	SWCI	2025-02-12	63
248	ELO	2025-02-12	69
248	Massey	2025-02-12	338
248	USAU	2025-02-12	348
248	SWCI	2025-02-16	77
248	ELO	2025-02-16	69
248	Massey	2025-02-16	303
248	USAU	2025-02-16	307
248	SWCI	2025-02-17	79
248	ELO	2025-02-17	76
248	Massey	2025-02-17	295
248	USAU	2025-02-17	306
248	SWCI	2025-02-22	99
248	ELO	2025-02-22	77
248	Massey	2025-02-22	255
248	USAU	2025-02-22	281
248	SWCI	2025-02-23	98
248	ELO	2025-02-23	81
248	Massey	2025-02-23	249
248	USAU	2025-02-23	282
248	SWCI	2025-03-02	121
248	ELO	2025-03-02	99
248	Massey	2025-03-02	172
248	USAU	2025-03-02	224
248	SWCI	2025-03-08	199
248	ELO	2025-03-08	126
248	Massey	2025-03-08	147
248	USAU	2025-03-08	127
248	SWCI	2025-03-09	220
248	ELO	2025-03-09	129
248	Massey	2025-03-09	156
248	USAU	2025-03-09	217
248	SWCI	2025-03-15	240
248	ELO	2025-03-15	340
248	Massey	2025-03-15	200
248	USAU	2025-03-15	131
248	SWCI	2025-03-16	237
248	ELO	2025-03-16	337
248	Massey	2025-03-16	149
248	USAU	2025-03-16	133
248	SWCI	2025-03-23	247
248	ELO	2025-03-23	327
248	Massey	2025-03-23	159
248	USAU	2025-03-23	116
248	SWCI	2025-03-29	256
248	ELO	2025-03-29	321
248	Massey	2025-03-29	142
248	USAU	2025-03-29	125
248	SWCI	2025-03-30	265
248	ELO	2025-03-30	321
248	Massey	2025-03-30	156
248	USAU	2025-03-30	140
249	SWCI	2025-01-26	41
249	ELO	2025-01-26	393
249	Massey	2025-01-26	353
249	USAU	2025-01-26	376
249	SWCI	2025-02-02	25
249	ELO	2025-02-02	372
249	Massey	2025-02-02	95
249	USAU	2025-02-02	63
249	SWCI	2025-02-08	31
249	ELO	2025-02-08	13
249	Massey	2025-02-08	103
249	USAU	2025-02-08	69
249	SWCI	2025-02-09	32
249	ELO	2025-02-09	13
249	Massey	2025-02-09	75
249	USAU	2025-02-09	59
249	SWCI	2025-02-12	32
249	ELO	2025-02-12	17
249	Massey	2025-02-12	74
249	USAU	2025-02-12	59
249	SWCI	2025-02-16	64
249	ELO	2025-02-16	17
249	Massey	2025-02-16	76
249	USAU	2025-02-16	43
249	SWCI	2025-02-17	69
249	ELO	2025-02-17	74
249	Massey	2025-02-17	61
249	USAU	2025-02-17	42
249	SWCI	2025-02-22	89
249	ELO	2025-02-22	75
249	Massey	2025-02-22	66
249	USAU	2025-02-22	49
249	SWCI	2025-02-23	89
249	ELO	2025-02-23	79
249	Massey	2025-02-23	63
249	USAU	2025-02-23	48
249	SWCI	2025-03-02	108
249	ELO	2025-03-02	97
249	Massey	2025-03-02	49
249	USAU	2025-03-02	47
249	SWCI	2025-03-08	99
249	ELO	2025-03-08	125
249	Massey	2025-03-08	47
249	USAU	2025-03-08	49
249	SWCI	2025-03-09	114
249	ELO	2025-03-09	128
249	Massey	2025-03-09	48
249	USAU	2025-03-09	47
249	SWCI	2025-03-15	124
249	ELO	2025-03-15	104
249	Massey	2025-03-15	95
249	USAU	2025-03-15	39
249	SWCI	2025-03-16	127
249	ELO	2025-03-16	105
249	Massey	2025-03-16	40
249	USAU	2025-03-16	41
249	SWCI	2025-03-23	126
249	ELO	2025-03-23	114
249	Massey	2025-03-23	60
249	USAU	2025-03-23	35
249	SWCI	2025-03-29	119
249	ELO	2025-03-29	122
249	Massey	2025-03-29	40
249	USAU	2025-03-29	36
249	SWCI	2025-03-30	141
249	ELO	2025-03-30	123
249	Massey	2025-03-30	44
249	USAU	2025-03-30	42
250	SWCI	2025-01-26	262
250	ELO	2025-01-26	246
250	Massey	2025-01-26	270
250	USAU	2025-01-26	229
250	SWCI	2025-02-02	59
250	ELO	2025-02-02	40
250	Massey	2025-02-02	51
250	USAU	2025-02-02	36
250	SWCI	2025-02-08	78
250	ELO	2025-02-08	61
250	Massey	2025-02-08	47
250	USAU	2025-02-08	39
250	SWCI	2025-02-09	78
250	ELO	2025-02-09	64
250	Massey	2025-02-09	44
250	USAU	2025-02-09	28
250	SWCI	2025-02-12	79
250	ELO	2025-02-12	75
250	Massey	2025-02-12	32
250	USAU	2025-02-12	28
250	SWCI	2025-02-16	85
250	ELO	2025-02-16	73
250	Massey	2025-02-16	39
250	USAU	2025-02-16	28
250	SWCI	2025-02-17	86
250	ELO	2025-02-17	80
250	Massey	2025-02-17	34
250	USAU	2025-02-17	29
250	SWCI	2025-02-22	91
250	ELO	2025-02-22	80
250	Massey	2025-02-22	39
250	USAU	2025-02-22	26
250	SWCI	2025-02-23	93
250	ELO	2025-02-23	84
250	Massey	2025-02-23	35
250	USAU	2025-02-23	27
250	SWCI	2025-03-02	120
250	ELO	2025-03-02	102
250	Massey	2025-03-02	27
250	USAU	2025-03-02	29
250	SWCI	2025-03-08	120
250	ELO	2025-03-08	130
250	Massey	2025-03-08	24
250	USAU	2025-03-08	29
250	SWCI	2025-03-09	123
250	ELO	2025-03-09	133
250	Massey	2025-03-09	24
250	USAU	2025-03-09	30
250	SWCI	2025-03-15	128
250	ELO	2025-03-15	136
250	Massey	2025-03-15	83
250	USAU	2025-03-15	30
250	SWCI	2025-03-16	131
250	ELO	2025-03-16	138
250	Massey	2025-03-16	26
250	USAU	2025-03-16	30
250	SWCI	2025-03-23	208
250	ELO	2025-03-23	312
250	Massey	2025-03-23	66
250	USAU	2025-03-23	47
250	SWCI	2025-03-29	215
250	ELO	2025-03-29	303
250	Massey	2025-03-29	36
250	USAU	2025-03-29	40
250	SWCI	2025-03-30	219
250	ELO	2025-03-30	302
250	Massey	2025-03-30	32
250	USAU	2025-03-30	39
251	SWCI	2025-01-26	263
251	ELO	2025-01-26	247
251	Massey	2025-01-26	271
251	USAU	2025-01-26	230
251	SWCI	2025-02-02	279
251	ELO	2025-02-02	225
251	Massey	2025-02-02	251
251	USAU	2025-02-02	221
251	SWCI	2025-02-08	20
251	ELO	2025-02-08	221
251	Massey	2025-02-08	27
251	USAU	2025-02-08	25
251	SWCI	2025-02-09	12
251	ELO	2025-02-09	216
251	Massey	2025-02-09	116
251	USAU	2025-02-09	69
251	SWCI	2025-02-12	12
251	ELO	2025-02-12	9
251	Massey	2025-02-12	121
251	USAU	2025-02-12	69
251	SWCI	2025-02-16	15
251	ELO	2025-02-16	10
251	Massey	2025-02-16	124
251	USAU	2025-02-16	55
251	SWCI	2025-02-17	15
251	ELO	2025-02-17	16
251	Massey	2025-02-17	110
251	USAU	2025-02-17	55
251	SWCI	2025-02-22	18
251	ELO	2025-02-22	16
251	Massey	2025-02-22	113
251	USAU	2025-02-22	64
251	SWCI	2025-02-23	19
251	ELO	2025-02-23	16
251	Massey	2025-02-23	112
251	USAU	2025-02-23	64
251	SWCI	2025-03-02	15
251	ELO	2025-03-02	19
251	Massey	2025-03-02	92
251	USAU	2025-03-02	68
251	SWCI	2025-03-08	75
251	ELO	2025-03-08	27
251	Massey	2025-03-08	92
251	USAU	2025-03-08	98
251	SWCI	2025-03-09	138
251	ELO	2025-03-09	27
251	Massey	2025-03-09	105
251	USAU	2025-03-09	130
251	SWCI	2025-03-15	134
251	ELO	2025-03-15	155
251	Massey	2025-03-15	154
251	USAU	2025-03-15	119
251	SWCI	2025-03-16	139
251	ELO	2025-03-16	157
251	Massey	2025-03-16	101
251	USAU	2025-03-16	122
251	SWCI	2025-03-23	139
251	ELO	2025-03-23	162
251	Massey	2025-03-23	120
251	USAU	2025-03-23	107
251	SWCI	2025-03-29	141
251	ELO	2025-03-29	154
251	Massey	2025-03-29	92
251	USAU	2025-03-29	109
251	SWCI	2025-03-30	145
251	ELO	2025-03-30	158
251	Massey	2025-03-30	91
251	USAU	2025-03-30	117
252	SWCI	2025-01-26	264
252	ELO	2025-01-26	248
252	Massey	2025-01-26	239
252	USAU	2025-01-26	231
252	SWCI	2025-02-02	280
252	ELO	2025-02-02	226
252	Massey	2025-02-02	104
252	USAU	2025-02-02	222
252	SWCI	2025-02-08	144
252	ELO	2025-02-08	222
252	Massey	2025-02-08	341
252	USAU	2025-02-08	355
252	SWCI	2025-02-09	152
252	ELO	2025-02-09	217
252	Massey	2025-02-09	380
252	USAU	2025-02-09	389
252	SWCI	2025-02-12	152
252	ELO	2025-02-12	378
252	Massey	2025-02-12	375
252	USAU	2025-02-12	389
252	SWCI	2025-02-16	174
252	ELO	2025-02-16	377
252	Massey	2025-02-16	373
252	USAU	2025-02-16	384
252	SWCI	2025-02-17	173
252	ELO	2025-02-17	373
252	Massey	2025-02-17	376
252	USAU	2025-02-17	382
252	SWCI	2025-02-22	217
252	ELO	2025-02-22	374
252	Massey	2025-02-22	364
252	USAU	2025-02-22	384
252	SWCI	2025-02-23	217
252	ELO	2025-02-23	372
252	Massey	2025-02-23	360
252	USAU	2025-02-23	382
252	SWCI	2025-03-02	287
252	ELO	2025-03-02	367
252	Massey	2025-03-02	344
252	USAU	2025-03-02	354
252	SWCI	2025-03-08	301
252	ELO	2025-03-08	357
252	Massey	2025-03-08	290
252	USAU	2025-03-08	355
252	SWCI	2025-03-09	307
252	ELO	2025-03-09	355
252	Massey	2025-03-09	288
252	USAU	2025-03-09	358
252	SWCI	2025-03-15	334
252	ELO	2025-03-15	355
252	Massey	2025-03-15	346
252	USAU	2025-03-15	342
252	SWCI	2025-03-16	331
252	ELO	2025-03-16	353
252	Massey	2025-03-16	338
252	USAU	2025-03-16	345
252	SWCI	2025-03-23	349
252	ELO	2025-03-23	347
252	Massey	2025-03-23	328
252	USAU	2025-03-23	330
252	SWCI	2025-03-29	376
252	ELO	2025-03-29	342
252	Massey	2025-03-29	310
252	USAU	2025-03-29	316
252	SWCI	2025-03-30	375
252	ELO	2025-03-30	341
252	Massey	2025-03-30	313
252	USAU	2025-03-30	316
253	SWCI	2025-01-26	265
253	ELO	2025-01-26	249
253	Massey	2025-01-26	240
253	USAU	2025-01-26	232
253	SWCI	2025-02-02	281
253	ELO	2025-02-02	227
253	Massey	2025-02-02	105
253	USAU	2025-02-02	223
253	SWCI	2025-02-08	102
253	ELO	2025-02-08	223
253	Massey	2025-02-08	313
253	USAU	2025-02-08	328
253	SWCI	2025-02-09	120
253	ELO	2025-02-09	218
253	Massey	2025-02-09	362
253	USAU	2025-02-09	379
253	SWCI	2025-02-12	120
253	ELO	2025-02-12	327
253	Massey	2025-02-12	360
253	USAU	2025-02-12	379
253	SWCI	2025-02-16	136
253	ELO	2025-02-16	326
253	Massey	2025-02-16	351
253	USAU	2025-02-16	359
253	SWCI	2025-02-17	134
253	ELO	2025-02-17	317
253	Massey	2025-02-17	353
253	USAU	2025-02-17	359
253	SWCI	2025-02-22	162
253	ELO	2025-02-22	315
253	Massey	2025-02-22	332
253	USAU	2025-02-22	354
253	SWCI	2025-02-23	166
253	ELO	2025-02-23	315
253	Massey	2025-02-23	329
253	USAU	2025-02-23	352
253	SWCI	2025-03-02	206
253	ELO	2025-03-02	297
253	Massey	2025-03-02	283
253	USAU	2025-03-02	314
253	SWCI	2025-03-08	242
253	ELO	2025-03-08	260
253	Massey	2025-03-08	232
253	USAU	2025-03-08	306
253	SWCI	2025-03-09	257
253	ELO	2025-03-09	259
253	Massey	2025-03-09	234
253	USAU	2025-03-09	309
253	SWCI	2025-03-15	275
253	ELO	2025-03-15	252
253	Massey	2025-03-15	296
253	USAU	2025-03-15	291
253	SWCI	2025-03-16	277
253	ELO	2025-03-16	248
253	Massey	2025-03-16	247
253	USAU	2025-03-16	291
253	SWCI	2025-03-23	294
253	ELO	2025-03-23	236
253	Massey	2025-03-23	264
253	USAU	2025-03-23	259
253	SWCI	2025-03-29	319
253	ELO	2025-03-29	231
253	Massey	2025-03-29	248
253	USAU	2025-03-29	239
253	SWCI	2025-03-30	321
253	ELO	2025-03-30	232
253	Massey	2025-03-30	250
253	USAU	2025-03-30	248
254	SWCI	2025-01-26	266
254	ELO	2025-01-26	250
254	Massey	2025-01-26	276
254	USAU	2025-01-26	233
254	SWCI	2025-02-02	282
254	ELO	2025-02-02	228
254	Massey	2025-02-02	184
254	USAU	2025-02-02	224
254	SWCI	2025-02-08	67
254	ELO	2025-02-08	224
254	Massey	2025-02-08	312
254	USAU	2025-02-08	323
254	SWCI	2025-02-09	119
254	ELO	2025-02-09	219
254	Massey	2025-02-09	363
254	USAU	2025-02-09	380
254	SWCI	2025-02-12	119
254	ELO	2025-02-12	358
254	Massey	2025-02-12	362
254	USAU	2025-02-12	380
254	SWCI	2025-02-16	130
254	ELO	2025-02-16	357
254	Massey	2025-02-16	352
254	USAU	2025-02-16	360
254	SWCI	2025-02-17	130
254	ELO	2025-02-17	348
254	Massey	2025-02-17	357
254	USAU	2025-02-17	360
254	SWCI	2025-02-22	158
254	ELO	2025-02-22	345
254	Massey	2025-02-22	336
254	USAU	2025-02-22	355
254	SWCI	2025-02-23	161
254	ELO	2025-02-23	344
254	Massey	2025-02-23	332
254	USAU	2025-02-23	353
254	SWCI	2025-03-02	156
254	ELO	2025-03-02	336
254	Massey	2025-03-02	280
254	USAU	2025-03-02	312
254	SWCI	2025-03-08	173
254	ELO	2025-03-08	274
254	Massey	2025-03-08	224
254	USAU	2025-03-08	303
254	SWCI	2025-03-09	178
254	ELO	2025-03-09	273
254	Massey	2025-03-09	226
254	USAU	2025-03-09	308
254	SWCI	2025-03-15	186
254	ELO	2025-03-15	266
254	Massey	2025-03-15	283
254	USAU	2025-03-15	288
254	SWCI	2025-03-16	181
254	ELO	2025-03-16	263
254	Massey	2025-03-16	232
254	USAU	2025-03-16	288
254	SWCI	2025-03-23	217
254	ELO	2025-03-23	250
254	Massey	2025-03-23	255
254	USAU	2025-03-23	256
254	SWCI	2025-03-29	247
254	ELO	2025-03-29	290
254	Massey	2025-03-29	240
254	USAU	2025-03-29	228
254	SWCI	2025-03-30	253
254	ELO	2025-03-30	290
254	Massey	2025-03-30	244
254	USAU	2025-03-30	233
255	SWCI	2025-01-26	51
255	ELO	2025-01-26	392
255	Massey	2025-01-26	368
255	USAU	2025-01-26	383
255	SWCI	2025-02-02	104
255	ELO	2025-02-02	370
255	Massey	2025-02-02	88
255	USAU	2025-02-02	59
255	SWCI	2025-02-08	138
255	ELO	2025-02-08	360
255	Massey	2025-02-08	92
255	USAU	2025-02-08	66
255	SWCI	2025-02-09	139
255	ELO	2025-02-09	357
255	Massey	2025-02-09	67
255	USAU	2025-02-09	55
255	SWCI	2025-02-12	140
255	ELO	2025-02-12	348
255	Massey	2025-02-12	63
255	USAU	2025-02-12	55
255	SWCI	2025-02-16	166
255	ELO	2025-02-16	347
255	Massey	2025-02-16	71
255	USAU	2025-02-16	45
255	SWCI	2025-02-17	159
255	ELO	2025-02-17	365
255	Massey	2025-02-17	57
255	USAU	2025-02-17	44
255	SWCI	2025-02-22	194
255	ELO	2025-02-22	363
255	Massey	2025-02-22	61
255	USAU	2025-02-22	50
255	SWCI	2025-02-23	192
255	ELO	2025-02-23	361
255	Massey	2025-02-23	59
255	USAU	2025-02-23	50
255	SWCI	2025-03-02	269
255	ELO	2025-03-02	351
255	Massey	2025-03-02	47
255	USAU	2025-03-02	50
255	SWCI	2025-03-08	218
255	ELO	2025-03-08	334
255	Massey	2025-03-08	48
255	USAU	2025-03-08	53
255	SWCI	2025-03-09	219
255	ELO	2025-03-09	332
255	Massey	2025-03-09	49
255	USAU	2025-03-09	53
255	SWCI	2025-03-15	239
255	ELO	2025-03-15	317
255	Massey	2025-03-15	99
255	USAU	2025-03-15	50
255	SWCI	2025-03-16	235
255	ELO	2025-03-16	315
255	Massey	2025-03-16	44
255	USAU	2025-03-16	51
255	SWCI	2025-03-23	230
255	ELO	2025-03-23	298
255	Massey	2025-03-23	61
255	USAU	2025-03-23	38
255	SWCI	2025-03-29	241
255	ELO	2025-03-29	284
255	Massey	2025-03-29	37
255	USAU	2025-03-29	37
255	SWCI	2025-03-30	252
255	ELO	2025-03-30	284
255	Massey	2025-03-30	39
255	USAU	2025-03-30	40
256	SWCI	2025-01-26	45
256	ELO	2025-01-26	391
256	Massey	2025-01-26	381
256	USAU	2025-01-26	387
256	SWCI	2025-02-02	83
256	ELO	2025-02-02	368
256	Massey	2025-02-02	314
256	USAU	2025-02-02	65
256	SWCI	2025-02-08	104
256	ELO	2025-02-08	356
256	Massey	2025-02-08	130
256	USAU	2025-02-08	73
256	SWCI	2025-02-09	104
256	ELO	2025-02-09	353
256	Massey	2025-02-09	88
256	USAU	2025-02-09	61
256	SWCI	2025-02-12	104
256	ELO	2025-02-12	344
256	Massey	2025-02-12	96
256	USAU	2025-02-12	62
256	SWCI	2025-02-16	150
256	ELO	2025-02-16	343
256	Massey	2025-02-16	101
256	USAU	2025-02-16	68
256	SWCI	2025-02-17	158
256	ELO	2025-02-17	380
256	Massey	2025-02-17	92
256	USAU	2025-02-17	65
256	SWCI	2025-02-22	192
256	ELO	2025-02-22	381
256	Massey	2025-02-22	94
256	USAU	2025-02-22	79
256	SWCI	2025-02-23	189
256	ELO	2025-02-23	381
256	Massey	2025-02-23	91
256	USAU	2025-02-23	76
256	SWCI	2025-03-02	257
256	ELO	2025-03-02	378
256	Massey	2025-03-02	75
256	USAU	2025-03-02	81
256	SWCI	2025-03-08	248
256	ELO	2025-03-08	371
256	Massey	2025-03-08	78
256	USAU	2025-03-08	86
256	SWCI	2025-03-09	222
256	ELO	2025-03-09	369
256	Massey	2025-03-09	72
256	USAU	2025-03-09	72
256	SWCI	2025-03-15	242
256	ELO	2025-03-15	334
256	Massey	2025-03-15	119
256	USAU	2025-03-15	62
256	SWCI	2025-03-16	241
256	ELO	2025-03-16	331
256	Massey	2025-03-16	62
256	USAU	2025-03-16	68
256	SWCI	2025-03-23	222
256	ELO	2025-03-23	304
256	Massey	2025-03-23	81
256	USAU	2025-03-23	51
256	SWCI	2025-03-29	229
256	ELO	2025-03-29	293
256	Massey	2025-03-29	57
256	USAU	2025-03-29	51
256	SWCI	2025-03-30	239
256	ELO	2025-03-30	293
256	Massey	2025-03-30	57
256	USAU	2025-03-30	53
257	SWCI	2025-01-26	267
257	ELO	2025-01-26	251
257	Massey	2025-01-26	277
257	USAU	2025-01-26	234
257	SWCI	2025-02-02	283
257	ELO	2025-02-02	229
257	Massey	2025-02-02	144
257	USAU	2025-02-02	225
257	SWCI	2025-02-08	296
257	ELO	2025-02-08	225
257	Massey	2025-02-08	164
257	USAU	2025-02-08	216
257	SWCI	2025-02-09	296
257	ELO	2025-02-09	220
257	Massey	2025-02-09	209
257	USAU	2025-02-09	214
257	SWCI	2025-02-12	296
257	ELO	2025-02-12	215
257	Massey	2025-02-12	147
257	USAU	2025-02-12	214
257	SWCI	2025-02-16	307
257	ELO	2025-02-16	214
257	Massey	2025-02-16	169
257	USAU	2025-02-16	203
257	SWCI	2025-02-17	307
257	ELO	2025-02-17	214
257	Massey	2025-02-17	155
257	USAU	2025-02-17	201
257	SWCI	2025-02-22	328
257	ELO	2025-02-22	211
257	Massey	2025-02-22	171
257	USAU	2025-02-22	197
257	SWCI	2025-02-23	328
257	ELO	2025-02-23	209
257	Massey	2025-02-23	251
257	USAU	2025-02-23	199
257	SWCI	2025-03-02	359
257	ELO	2025-03-02	215
257	Massey	2025-03-02	327
257	USAU	2025-03-02	179
257	SWCI	2025-03-08	298
257	ELO	2025-03-08	198
257	Massey	2025-03-08	159
257	USAU	2025-03-08	344
257	SWCI	2025-03-09	273
257	ELO	2025-03-09	197
257	Massey	2025-03-09	132
257	USAU	2025-03-09	126
257	SWCI	2025-03-15	234
257	ELO	2025-03-15	324
257	Massey	2025-03-15	172
257	USAU	2025-03-15	122
257	SWCI	2025-03-16	231
257	ELO	2025-03-16	321
257	Massey	2025-03-16	140
257	USAU	2025-03-16	141
257	SWCI	2025-03-23	245
257	ELO	2025-03-23	295
257	Massey	2025-03-23	157
257	USAU	2025-03-23	131
257	SWCI	2025-03-29	196
257	ELO	2025-03-29	281
257	Massey	2025-03-29	123
257	USAU	2025-03-29	117
257	SWCI	2025-03-30	178
257	ELO	2025-03-30	281
257	Massey	2025-03-30	129
257	USAU	2025-03-30	123
258	SWCI	2025-01-26	40
258	ELO	2025-01-26	252
258	Massey	2025-01-26	356
258	USAU	2025-01-26	370
258	SWCI	2025-02-02	86
258	ELO	2025-02-02	363
258	Massey	2025-02-02	322
258	USAU	2025-02-02	351
258	SWCI	2025-02-08	113
258	ELO	2025-02-08	350
258	Massey	2025-02-08	339
258	USAU	2025-02-08	377
258	SWCI	2025-02-09	112
258	ELO	2025-02-09	347
258	Massey	2025-02-09	320
258	USAU	2025-02-09	353
258	SWCI	2025-02-12	112
258	ELO	2025-02-12	338
258	Massey	2025-02-12	319
258	USAU	2025-02-12	354
258	SWCI	2025-02-16	123
258	ELO	2025-02-16	338
258	Massey	2025-02-16	290
258	USAU	2025-02-16	316
258	SWCI	2025-02-17	125
258	ELO	2025-02-17	331
258	Massey	2025-02-17	269
258	USAU	2025-02-17	313
258	SWCI	2025-02-22	152
258	ELO	2025-02-22	329
258	Massey	2025-02-22	159
258	USAU	2025-02-22	290
258	SWCI	2025-02-23	156
258	ELO	2025-02-23	329
258	Massey	2025-02-23	156
258	USAU	2025-02-23	288
258	SWCI	2025-03-02	204
258	ELO	2025-03-02	312
258	Massey	2025-03-02	156
258	USAU	2025-03-02	238
258	SWCI	2025-03-08	203
258	ELO	2025-03-08	284
258	Massey	2025-03-08	142
258	USAU	2025-03-08	215
258	SWCI	2025-03-09	204
258	ELO	2025-03-09	284
258	Massey	2025-03-09	141
258	USAU	2025-03-09	128
258	SWCI	2025-03-15	218
258	ELO	2025-03-15	277
258	Massey	2025-03-15	197
258	USAU	2025-03-15	133
258	SWCI	2025-03-16	219
258	ELO	2025-03-16	274
258	Massey	2025-03-16	143
258	USAU	2025-03-16	136
258	SWCI	2025-03-23	231
258	ELO	2025-03-23	263
258	Massey	2025-03-23	165
258	USAU	2025-03-23	120
258	SWCI	2025-03-29	202
258	ELO	2025-03-29	236
258	Massey	2025-03-29	118
258	USAU	2025-03-29	92
258	SWCI	2025-03-30	207
258	ELO	2025-03-30	236
258	Massey	2025-03-30	123
258	USAU	2025-03-30	96
259	SWCI	2025-01-26	268
259	ELO	2025-01-26	253
259	Massey	2025-01-26	146
259	USAU	2025-01-26	235
259	SWCI	2025-02-02	44
259	ELO	2025-02-02	28
259	Massey	2025-02-02	53
259	USAU	2025-02-02	28
259	SWCI	2025-02-08	56
259	ELO	2025-02-08	42
259	Massey	2025-02-08	49
259	USAU	2025-02-08	32
259	SWCI	2025-02-09	56
259	ELO	2025-02-09	45
259	Massey	2025-02-09	46
259	USAU	2025-02-09	21
259	SWCI	2025-02-12	57
259	ELO	2025-02-12	55
259	Massey	2025-02-12	33
259	USAU	2025-02-12	21
259	SWCI	2025-02-16	59
259	ELO	2025-02-16	55
259	Massey	2025-02-16	42
259	USAU	2025-02-16	24
259	SWCI	2025-02-17	59
259	ELO	2025-02-17	61
259	Massey	2025-02-17	36
259	USAU	2025-02-17	25
259	SWCI	2025-02-22	56
259	ELO	2025-02-22	63
259	Massey	2025-02-22	42
259	USAU	2025-02-22	22
259	SWCI	2025-02-23	60
259	ELO	2025-02-23	66
259	Massey	2025-02-23	41
259	USAU	2025-02-23	23
259	SWCI	2025-03-02	87
259	ELO	2025-03-02	78
259	Massey	2025-03-02	21
259	USAU	2025-03-02	19
259	SWCI	2025-03-08	89
259	ELO	2025-03-08	72
259	Massey	2025-03-08	19
259	USAU	2025-03-08	19
259	SWCI	2025-03-09	92
259	ELO	2025-03-09	73
259	Massey	2025-03-09	19
259	USAU	2025-03-09	18
259	SWCI	2025-03-15	96
259	ELO	2025-03-15	76
259	Massey	2025-03-15	76
259	USAU	2025-03-15	19
259	SWCI	2025-03-16	99
259	ELO	2025-03-16	80
259	Massey	2025-03-16	20
259	USAU	2025-03-16	17
259	SWCI	2025-03-23	103
259	ELO	2025-03-23	85
259	Massey	2025-03-23	49
259	USAU	2025-03-23	20
259	SWCI	2025-03-29	107
259	ELO	2025-03-29	95
259	Massey	2025-03-29	24
259	USAU	2025-03-29	22
259	SWCI	2025-03-30	78
259	ELO	2025-03-30	95
259	Massey	2025-03-30	20
259	USAU	2025-03-30	16
260	SWCI	2025-01-26	269
260	ELO	2025-01-26	254
260	Massey	2025-01-26	341
260	USAU	2025-01-26	236
260	SWCI	2025-02-02	284
260	ELO	2025-02-02	230
260	Massey	2025-02-02	200
260	USAU	2025-02-02	226
260	SWCI	2025-02-08	297
260	ELO	2025-02-08	226
260	Massey	2025-02-08	148
260	USAU	2025-02-08	217
260	SWCI	2025-02-09	297
260	ELO	2025-02-09	221
260	Massey	2025-02-09	155
260	USAU	2025-02-09	215
260	SWCI	2025-02-12	297
260	ELO	2025-02-12	216
260	Massey	2025-02-12	138
260	USAU	2025-02-12	215
260	SWCI	2025-02-16	25
260	ELO	2025-02-16	215
260	Massey	2025-02-16	19
260	USAU	2025-02-16	12
260	SWCI	2025-02-17	42
260	ELO	2025-02-17	51
260	Massey	2025-02-17	19
260	USAU	2025-02-17	14
260	SWCI	2025-02-22	51
260	ELO	2025-02-22	52
260	Massey	2025-02-22	21
260	USAU	2025-02-22	15
260	SWCI	2025-02-23	50
260	ELO	2025-02-23	54
260	Massey	2025-02-23	19
260	USAU	2025-02-23	14
260	SWCI	2025-03-02	38
260	ELO	2025-03-02	64
260	Massey	2025-03-02	8
260	USAU	2025-03-02	9
260	SWCI	2025-03-08	35
260	ELO	2025-03-08	21
260	Massey	2025-03-08	8
260	USAU	2025-03-08	8
260	SWCI	2025-03-09	35
260	ELO	2025-03-09	21
260	Massey	2025-03-09	8
260	USAU	2025-03-09	8
260	SWCI	2025-03-15	36
260	ELO	2025-03-15	22
260	Massey	2025-03-15	64
260	USAU	2025-03-15	8
260	SWCI	2025-03-16	32
260	ELO	2025-03-16	23
260	Massey	2025-03-16	8
260	USAU	2025-03-16	8
260	SWCI	2025-03-23	35
260	ELO	2025-03-23	27
260	Massey	2025-03-23	33
260	USAU	2025-03-23	7
260	SWCI	2025-03-29	16
260	ELO	2025-03-29	29
260	Massey	2025-03-29	4
260	USAU	2025-03-29	4
260	SWCI	2025-03-30	10
260	ELO	2025-03-30	29
260	Massey	2025-03-30	4
260	USAU	2025-03-30	2
261	SWCI	2025-01-26	270
261	ELO	2025-01-26	255
261	Massey	2025-01-26	58
261	USAU	2025-01-26	237
261	SWCI	2025-02-02	28
261	ELO	2025-02-02	24
261	Massey	2025-02-02	29
261	USAU	2025-02-02	16
261	SWCI	2025-02-08	37
261	ELO	2025-02-08	34
261	Massey	2025-02-08	23
261	USAU	2025-02-08	12
261	SWCI	2025-02-09	38
261	ELO	2025-02-09	37
261	Massey	2025-02-09	21
261	USAU	2025-02-09	9
261	SWCI	2025-02-12	38
261	ELO	2025-02-12	46
261	Massey	2025-02-12	16
261	USAU	2025-02-12	10
261	SWCI	2025-02-16	39
261	ELO	2025-02-16	46
261	Massey	2025-02-16	27
261	USAU	2025-02-16	13
261	SWCI	2025-02-17	37
261	ELO	2025-02-17	52
261	Massey	2025-02-17	21
261	USAU	2025-02-17	13
261	SWCI	2025-02-22	40
261	ELO	2025-02-22	53
261	Massey	2025-02-22	23
261	USAU	2025-02-22	11
261	SWCI	2025-02-23	37
261	ELO	2025-02-23	55
261	Massey	2025-02-23	21
261	USAU	2025-02-23	11
261	SWCI	2025-03-02	110
261	ELO	2025-03-02	65
261	Massey	2025-03-02	19
261	USAU	2025-03-02	21
261	SWCI	2025-03-08	111
261	ELO	2025-03-08	127
261	Massey	2025-03-08	18
261	USAU	2025-03-08	21
261	SWCI	2025-03-09	111
261	ELO	2025-03-09	130
261	Massey	2025-03-09	18
261	USAU	2025-03-09	22
261	SWCI	2025-03-15	119
261	ELO	2025-03-15	133
261	Massey	2025-03-15	74
261	USAU	2025-03-15	21
261	SWCI	2025-03-16	120
261	ELO	2025-03-16	135
261	Massey	2025-03-16	18
261	USAU	2025-03-16	20
261	SWCI	2025-03-23	127
261	ELO	2025-03-23	143
261	Massey	2025-03-23	47
261	USAU	2025-03-23	22
261	SWCI	2025-03-29	142
261	ELO	2025-03-29	155
261	Massey	2025-03-29	21
261	USAU	2025-03-29	23
261	SWCI	2025-03-30	126
261	ELO	2025-03-30	159
261	Massey	2025-03-30	19
261	USAU	2025-03-30	17
262	SWCI	2025-01-26	271
262	ELO	2025-01-26	256
262	Massey	2025-01-26	207
262	USAU	2025-01-26	238
262	SWCI	2025-02-02	285
262	ELO	2025-02-02	231
262	Massey	2025-02-02	174
262	USAU	2025-02-02	227
262	SWCI	2025-02-08	298
262	ELO	2025-02-08	227
262	Massey	2025-02-08	210
262	USAU	2025-02-08	218
262	SWCI	2025-02-09	298
262	ELO	2025-02-09	222
262	Massey	2025-02-09	146
262	USAU	2025-02-09	216
262	SWCI	2025-02-12	298
262	ELO	2025-02-12	217
262	Massey	2025-02-12	162
262	USAU	2025-02-12	216
262	SWCI	2025-02-16	19
262	ELO	2025-02-16	44
262	Massey	2025-02-16	33
262	USAU	2025-02-16	21
262	SWCI	2025-02-17	19
262	ELO	2025-02-17	47
262	Massey	2025-02-17	29
262	USAU	2025-02-17	22
262	SWCI	2025-02-22	25
262	ELO	2025-02-22	48
262	Massey	2025-02-22	31
262	USAU	2025-02-22	19
262	SWCI	2025-02-23	22
262	ELO	2025-02-23	49
262	Massey	2025-02-23	27
262	USAU	2025-02-23	20
262	SWCI	2025-03-02	131
262	ELO	2025-03-02	59
262	Massey	2025-03-02	23
262	USAU	2025-03-02	25
262	SWCI	2025-03-08	132
262	ELO	2025-03-08	246
262	Massey	2025-03-08	21
262	USAU	2025-03-08	25
262	SWCI	2025-03-09	132
262	ELO	2025-03-09	245
262	Massey	2025-03-09	21
262	USAU	2025-03-09	25
262	SWCI	2025-03-15	139
262	ELO	2025-03-15	238
262	Massey	2025-03-15	78
262	USAU	2025-03-15	25
262	SWCI	2025-03-16	142
262	ELO	2025-03-16	234
262	Massey	2025-03-16	22
262	USAU	2025-03-16	24
262	SWCI	2025-03-23	146
262	ELO	2025-03-23	223
262	Massey	2025-03-23	52
262	USAU	2025-03-23	26
262	SWCI	2025-03-29	157
262	ELO	2025-03-29	219
262	Massey	2025-03-29	26
262	USAU	2025-03-29	24
262	SWCI	2025-03-30	181
262	ELO	2025-03-30	219
262	Massey	2025-03-30	25
262	USAU	2025-03-30	25
263	SWCI	2025-01-26	272
263	ELO	2025-01-26	257
263	Massey	2025-01-26	154
263	USAU	2025-01-26	239
263	SWCI	2025-02-02	19
263	ELO	2025-02-02	15
263	Massey	2025-02-02	23
263	USAU	2025-02-02	11
263	SWCI	2025-02-08	25
263	ELO	2025-02-08	20
263	Massey	2025-02-08	15
263	USAU	2025-02-08	10
263	SWCI	2025-02-09	26
263	ELO	2025-02-09	23
263	Massey	2025-02-09	12
263	USAU	2025-02-09	8
263	SWCI	2025-02-12	26
263	ELO	2025-02-12	28
263	Massey	2025-02-12	10
263	USAU	2025-02-12	8
263	SWCI	2025-02-16	27
263	ELO	2025-02-16	29
263	Massey	2025-02-16	17
263	USAU	2025-02-16	10
263	SWCI	2025-02-17	26
263	ELO	2025-02-17	32
263	Massey	2025-02-17	15
263	USAU	2025-02-17	10
263	SWCI	2025-02-22	32
263	ELO	2025-02-22	34
263	Massey	2025-02-22	16
263	USAU	2025-02-22	9
263	SWCI	2025-02-23	31
263	ELO	2025-02-23	34
263	Massey	2025-02-23	16
263	USAU	2025-02-23	8
263	SWCI	2025-03-02	85
263	ELO	2025-03-02	42
263	Massey	2025-03-02	12
263	USAU	2025-03-02	13
263	SWCI	2025-03-08	87
263	ELO	2025-03-08	62
263	Massey	2025-03-08	10
263	USAU	2025-03-08	11
263	SWCI	2025-03-09	91
263	ELO	2025-03-09	63
263	Massey	2025-03-09	10
263	USAU	2025-03-09	13
263	SWCI	2025-03-15	52
263	ELO	2025-03-15	64
263	Massey	2025-03-15	65
263	USAU	2025-03-15	9
263	SWCI	2025-03-16	42
263	ELO	2025-03-16	67
263	Massey	2025-03-16	10
263	USAU	2025-03-16	11
263	SWCI	2025-03-23	40
263	ELO	2025-03-23	19
263	Massey	2025-03-23	39
263	USAU	2025-03-23	14
263	SWCI	2025-03-29	44
263	ELO	2025-03-29	21
263	Massey	2025-03-29	12
263	USAU	2025-03-29	14
263	SWCI	2025-03-30	45
263	ELO	2025-03-30	21
263	Massey	2025-03-30	10
263	USAU	2025-03-30	13
264	SWCI	2025-01-26	1
264	ELO	2025-01-26	258
264	Massey	2025-01-26	3
264	USAU	2025-01-26	1
264	SWCI	2025-02-02	3
264	ELO	2025-02-02	5
264	Massey	2025-02-02	9
264	USAU	2025-02-02	3
264	SWCI	2025-02-08	4
264	ELO	2025-02-08	6
264	Massey	2025-02-08	28
264	USAU	2025-02-08	56
264	SWCI	2025-02-09	4
264	ELO	2025-02-09	6
264	Massey	2025-02-09	26
264	USAU	2025-02-09	26
264	SWCI	2025-02-12	4
264	ELO	2025-02-12	8
264	Massey	2025-02-12	19
264	USAU	2025-02-12	26
264	SWCI	2025-02-16	4
264	ELO	2025-02-16	9
264	Massey	2025-02-16	21
264	USAU	2025-02-16	2
264	SWCI	2025-02-17	2
264	ELO	2025-02-17	1
264	Massey	2025-02-17	14
264	USAU	2025-02-17	1
264	SWCI	2025-02-22	2
264	ELO	2025-02-22	1
264	Massey	2025-02-22	15
264	USAU	2025-02-22	2
264	SWCI	2025-02-23	3
264	ELO	2025-02-23	1
264	Massey	2025-02-23	14
264	USAU	2025-02-23	2
264	SWCI	2025-03-02	8
264	ELO	2025-03-02	2
264	Massey	2025-03-02	9
264	USAU	2025-03-02	5
264	SWCI	2025-03-08	7
264	ELO	2025-03-08	2
264	Massey	2025-03-08	7
264	USAU	2025-03-08	3
264	SWCI	2025-03-09	7
264	ELO	2025-03-09	2
264	Massey	2025-03-09	7
264	USAU	2025-03-09	3
264	SWCI	2025-03-15	6
264	ELO	2025-03-15	3
264	Massey	2025-03-15	62
264	USAU	2025-03-15	3
264	SWCI	2025-03-16	5
264	ELO	2025-03-16	3
264	Massey	2025-03-16	6
264	USAU	2025-03-16	3
264	SWCI	2025-03-23	5
264	ELO	2025-03-23	3
264	Massey	2025-03-23	32
264	USAU	2025-03-23	2
264	SWCI	2025-03-29	7
264	ELO	2025-03-29	3
264	Massey	2025-03-29	7
264	USAU	2025-03-29	5
264	SWCI	2025-03-30	7
264	ELO	2025-03-30	3
264	Massey	2025-03-30	6
264	USAU	2025-03-30	5
265	SWCI	2025-01-26	273
265	ELO	2025-01-26	259
265	Massey	2025-01-26	79
265	USAU	2025-01-26	240
265	SWCI	2025-02-02	286
265	ELO	2025-02-02	232
265	Massey	2025-02-02	226
265	USAU	2025-02-02	228
265	SWCI	2025-02-08	299
265	ELO	2025-02-08	228
265	Massey	2025-02-08	277
265	USAU	2025-02-08	219
265	SWCI	2025-02-09	299
265	ELO	2025-02-09	223
265	Massey	2025-02-09	239
265	USAU	2025-02-09	217
265	SWCI	2025-02-12	299
265	ELO	2025-02-12	218
265	Massey	2025-02-12	144
265	USAU	2025-02-12	217
265	SWCI	2025-02-16	48
265	ELO	2025-02-16	216
265	Massey	2025-02-16	24
265	USAU	2025-02-16	9
265	SWCI	2025-02-17	48
265	ELO	2025-02-17	43
265	Massey	2025-02-17	17
265	USAU	2025-02-17	9
265	SWCI	2025-02-22	61
265	ELO	2025-02-22	45
265	Massey	2025-02-22	18
265	USAU	2025-02-22	10
265	SWCI	2025-02-23	65
265	ELO	2025-02-23	46
265	Massey	2025-02-23	18
265	USAU	2025-02-23	10
265	SWCI	2025-03-02	123
265	ELO	2025-03-02	57
265	Massey	2025-03-02	17
265	USAU	2025-03-02	18
265	SWCI	2025-03-08	121
265	ELO	2025-03-08	144
265	Massey	2025-03-08	16
265	USAU	2025-03-08	18
265	SWCI	2025-03-09	124
265	ELO	2025-03-09	147
265	Massey	2025-03-09	16
265	USAU	2025-03-09	17
265	SWCI	2025-03-15	132
265	ELO	2025-03-15	148
265	Massey	2025-03-15	72
265	USAU	2025-03-15	15
265	SWCI	2025-03-16	135
265	ELO	2025-03-16	150
265	Massey	2025-03-16	16
265	USAU	2025-03-16	14
265	SWCI	2025-03-23	135
265	ELO	2025-03-23	154
265	Massey	2025-03-23	41
265	USAU	2025-03-23	15
265	SWCI	2025-03-29	171
265	ELO	2025-03-29	169
265	Massey	2025-03-29	17
265	USAU	2025-03-29	18
265	SWCI	2025-03-30	172
265	ELO	2025-03-30	170
265	Massey	2025-03-30	16
265	USAU	2025-03-30	19
266	SWCI	2025-01-26	274
266	ELO	2025-01-26	260
266	Massey	2025-01-26	203
266	USAU	2025-01-26	241
266	SWCI	2025-02-02	287
266	ELO	2025-02-02	233
266	Massey	2025-02-02	246
266	USAU	2025-02-02	229
266	SWCI	2025-02-08	300
266	ELO	2025-02-08	229
266	Massey	2025-02-08	282
266	USAU	2025-02-08	220
266	SWCI	2025-02-09	300
266	ELO	2025-02-09	224
266	Massey	2025-02-09	206
266	USAU	2025-02-09	218
266	SWCI	2025-02-12	300
266	ELO	2025-02-12	219
266	Massey	2025-02-12	230
266	USAU	2025-02-12	218
266	SWCI	2025-02-16	308
266	ELO	2025-02-16	217
266	Massey	2025-02-16	170
266	USAU	2025-02-16	204
266	SWCI	2025-02-17	308
266	ELO	2025-02-17	215
266	Massey	2025-02-17	167
266	USAU	2025-02-17	202
266	SWCI	2025-02-22	329
266	ELO	2025-02-22	212
266	Massey	2025-02-22	204
266	USAU	2025-02-22	198
266	SWCI	2025-02-23	329
266	ELO	2025-02-23	210
266	Massey	2025-02-23	181
266	USAU	2025-02-23	200
266	SWCI	2025-03-02	133
266	ELO	2025-03-02	216
266	Massey	2025-03-02	337
266	USAU	2025-03-02	322
266	SWCI	2025-03-08	134
266	ELO	2025-03-08	255
266	Massey	2025-03-08	271
266	USAU	2025-03-08	314
266	SWCI	2025-03-09	134
266	ELO	2025-03-09	254
266	Massey	2025-03-09	263
266	USAU	2025-03-09	307
266	SWCI	2025-03-15	156
266	ELO	2025-03-15	248
266	Massey	2025-03-15	341
266	USAU	2025-03-15	319
266	SWCI	2025-03-16	144
266	ELO	2025-03-16	244
266	Massey	2025-03-16	312
266	USAU	2025-03-16	315
266	SWCI	2025-03-23	165
266	ELO	2025-03-23	233
266	Massey	2025-03-23	319
266	USAU	2025-03-23	305
266	SWCI	2025-03-29	206
266	ELO	2025-03-29	228
266	Massey	2025-03-29	312
266	USAU	2025-03-29	306
266	SWCI	2025-03-30	209
266	ELO	2025-03-30	229
266	Massey	2025-03-30	307
266	USAU	2025-03-30	287
267	SWCI	2025-01-26	275
267	ELO	2025-01-26	261
267	Massey	2025-01-26	204
267	USAU	2025-01-26	242
267	SWCI	2025-02-02	288
267	ELO	2025-02-02	234
267	Massey	2025-02-02	247
267	USAU	2025-02-02	230
267	SWCI	2025-02-08	301
267	ELO	2025-02-08	230
267	Massey	2025-02-08	284
267	USAU	2025-02-08	221
267	SWCI	2025-02-09	301
267	ELO	2025-02-09	225
267	Massey	2025-02-09	243
267	USAU	2025-02-09	219
267	SWCI	2025-02-12	301
267	ELO	2025-02-12	220
267	Massey	2025-02-12	254
267	USAU	2025-02-12	219
267	SWCI	2025-02-16	309
267	ELO	2025-02-16	218
267	Massey	2025-02-16	238
267	USAU	2025-02-16	205
267	SWCI	2025-02-17	309
267	ELO	2025-02-17	216
267	Massey	2025-02-17	160
267	USAU	2025-02-17	203
267	SWCI	2025-02-22	100
267	ELO	2025-02-22	213
267	Massey	2025-02-22	283
267	USAU	2025-02-22	280
267	SWCI	2025-02-23	42
267	ELO	2025-02-23	211
267	Massey	2025-02-23	123
267	USAU	2025-02-23	92
267	SWCI	2025-03-02	83
267	ELO	2025-03-02	30
267	Massey	2025-03-02	216
267	USAU	2025-03-02	293
267	SWCI	2025-03-08	80
267	ELO	2025-03-08	51
267	Massey	2025-03-08	185
267	USAU	2025-03-08	281
267	SWCI	2025-03-09	76
267	ELO	2025-03-09	52
267	Massey	2025-03-09	184
267	USAU	2025-03-09	274
267	SWCI	2025-03-15	92
267	ELO	2025-03-15	53
267	Massey	2025-03-15	274
267	USAU	2025-03-15	295
267	SWCI	2025-03-16	104
267	ELO	2025-03-16	55
267	Massey	2025-03-16	215
267	USAU	2025-03-16	285
267	SWCI	2025-03-23	106
267	ELO	2025-03-23	76
267	Massey	2025-03-23	254
267	USAU	2025-03-23	272
267	SWCI	2025-03-29	122
267	ELO	2025-03-29	83
267	Massey	2025-03-29	255
267	USAU	2025-03-29	264
267	SWCI	2025-03-30	123
267	ELO	2025-03-30	83
267	Massey	2025-03-30	248
267	USAU	2025-03-30	259
268	SWCI	2025-01-26	276
268	ELO	2025-01-26	262
268	Massey	2025-01-26	125
268	USAU	2025-01-26	243
268	SWCI	2025-02-02	289
268	ELO	2025-02-02	235
268	Massey	2025-02-02	244
268	USAU	2025-02-02	231
268	SWCI	2025-02-08	302
268	ELO	2025-02-08	231
268	Massey	2025-02-08	239
268	USAU	2025-02-08	222
268	SWCI	2025-02-09	302
268	ELO	2025-02-09	226
268	Massey	2025-02-09	193
268	USAU	2025-02-09	220
268	SWCI	2025-02-12	302
268	ELO	2025-02-12	221
268	Massey	2025-02-12	267
268	USAU	2025-02-12	220
268	SWCI	2025-02-16	310
268	ELO	2025-02-16	219
268	Massey	2025-02-16	226
268	USAU	2025-02-16	206
268	SWCI	2025-02-17	310
268	ELO	2025-02-17	217
268	Massey	2025-02-17	192
268	USAU	2025-02-17	204
268	SWCI	2025-02-22	330
268	ELO	2025-02-22	214
268	Massey	2025-02-22	196
268	USAU	2025-02-22	199
268	SWCI	2025-02-23	330
268	ELO	2025-02-23	212
268	Massey	2025-02-23	185
268	USAU	2025-02-23	201
268	SWCI	2025-03-02	11
268	ELO	2025-03-02	217
268	Massey	2025-03-02	67
268	USAU	2025-03-02	10
268	SWCI	2025-03-08	11
268	ELO	2025-03-08	16
268	Massey	2025-03-08	135
268	USAU	2025-03-08	10
268	SWCI	2025-03-09	11
268	ELO	2025-03-09	16
268	Massey	2025-03-09	136
268	USAU	2025-03-09	10
268	SWCI	2025-03-15	8
268	ELO	2025-03-15	17
268	Massey	2025-03-15	130
268	USAU	2025-03-15	90
268	SWCI	2025-03-16	9
268	ELO	2025-03-16	17
268	Massey	2025-03-16	98
268	USAU	2025-03-16	113
268	SWCI	2025-03-23	11
268	ELO	2025-03-23	22
268	Massey	2025-03-23	122
268	USAU	2025-03-23	105
268	SWCI	2025-03-29	27
268	ELO	2025-03-29	24
268	Massey	2025-03-29	89
268	USAU	2025-03-29	93
268	SWCI	2025-03-30	64
268	ELO	2025-03-30	24
268	Massey	2025-03-30	124
268	USAU	2025-03-30	148
269	SWCI	2025-01-26	277
269	ELO	2025-01-26	263
269	Massey	2025-01-26	126
269	USAU	2025-01-26	244
269	SWCI	2025-02-02	34
269	ELO	2025-02-02	236
269	Massey	2025-02-02	313
269	USAU	2025-02-02	370
269	SWCI	2025-02-08	45
269	ELO	2025-02-08	14
269	Massey	2025-02-08	133
269	USAU	2025-02-08	344
269	SWCI	2025-02-09	40
269	ELO	2025-02-09	14
269	Massey	2025-02-09	91
269	USAU	2025-02-09	328
269	SWCI	2025-02-12	40
269	ELO	2025-02-12	18
269	Massey	2025-02-12	99
269	USAU	2025-02-12	328
269	SWCI	2025-02-16	47
269	ELO	2025-02-16	18
269	Massey	2025-02-16	78
269	USAU	2025-02-16	73
269	SWCI	2025-02-17	47
269	ELO	2025-02-17	23
269	Massey	2025-02-17	69
269	USAU	2025-02-17	71
269	SWCI	2025-02-22	59
269	ELO	2025-02-22	23
269	Massey	2025-02-22	73
269	USAU	2025-02-22	90
269	SWCI	2025-02-23	62
269	ELO	2025-02-23	23
269	Massey	2025-02-23	68
269	USAU	2025-02-23	88
269	SWCI	2025-03-02	82
269	ELO	2025-03-02	28
269	Massey	2025-03-02	59
269	USAU	2025-03-02	97
269	SWCI	2025-03-08	82
269	ELO	2025-03-08	43
269	Massey	2025-03-08	49
269	USAU	2025-03-08	95
269	SWCI	2025-03-09	85
269	ELO	2025-03-09	44
269	Massey	2025-03-09	52
269	USAU	2025-03-09	97
269	SWCI	2025-03-15	91
269	ELO	2025-03-15	44
269	Massey	2025-03-15	98
269	USAU	2025-03-15	85
269	SWCI	2025-03-16	92
269	ELO	2025-03-16	46
269	Massey	2025-03-16	42
269	USAU	2025-03-16	88
269	SWCI	2025-03-23	92
269	ELO	2025-03-23	54
269	Massey	2025-03-23	68
269	USAU	2025-03-23	77
269	SWCI	2025-03-29	102
269	ELO	2025-03-29	62
269	Massey	2025-03-29	49
269	USAU	2025-03-29	83
269	SWCI	2025-03-30	109
269	ELO	2025-03-30	63
269	Massey	2025-03-30	51
269	USAU	2025-03-30	92
270	SWCI	2025-01-26	278
270	ELO	2025-01-26	264
270	Massey	2025-01-26	87
270	USAU	2025-01-26	245
270	SWCI	2025-02-02	102
270	ELO	2025-02-02	237
270	Massey	2025-02-02	383
270	USAU	2025-02-02	387
270	SWCI	2025-02-08	136
270	ELO	2025-02-08	381
270	Massey	2025-02-08	374
270	USAU	2025-02-08	383
270	SWCI	2025-02-09	136
270	ELO	2025-02-09	379
270	Massey	2025-02-09	356
270	USAU	2025-02-09	370
270	SWCI	2025-02-12	137
270	ELO	2025-02-12	374
270	Massey	2025-02-12	353
270	USAU	2025-02-12	370
270	SWCI	2025-02-16	172
270	ELO	2025-02-16	373
270	Massey	2025-02-16	318
270	USAU	2025-02-16	326
270	SWCI	2025-02-17	185
270	ELO	2025-02-17	397
270	Massey	2025-02-17	316
270	USAU	2025-02-17	325
270	SWCI	2025-02-22	226
270	ELO	2025-02-22	397
270	Massey	2025-02-22	286
270	USAU	2025-02-22	315
270	SWCI	2025-02-23	227
270	ELO	2025-02-23	397
270	Massey	2025-02-23	274
270	USAU	2025-02-23	309
270	SWCI	2025-03-02	298
270	ELO	2025-03-02	397
270	Massey	2025-03-02	199
270	USAU	2025-03-02	260
270	SWCI	2025-03-08	304
270	ELO	2025-03-08	396
270	Massey	2025-03-08	189
270	USAU	2025-03-08	257
270	SWCI	2025-03-09	305
270	ELO	2025-03-09	396
270	Massey	2025-03-09	188
270	USAU	2025-03-09	255
270	SWCI	2025-03-15	333
270	ELO	2025-03-15	396
270	Massey	2025-03-15	240
270	USAU	2025-03-15	223
270	SWCI	2025-03-16	330
270	ELO	2025-03-16	396
270	Massey	2025-03-16	186
270	USAU	2025-03-16	227
270	SWCI	2025-03-23	348
270	ELO	2025-03-23	396
270	Massey	2025-03-23	204
270	USAU	2025-03-23	186
270	SWCI	2025-03-29	364
270	ELO	2025-03-29	394
270	Massey	2025-03-29	184
270	USAU	2025-03-29	164
270	SWCI	2025-03-30	365
270	ELO	2025-03-30	393
270	Massey	2025-03-30	187
270	USAU	2025-03-30	171
271	SWCI	2025-01-26	279
271	ELO	2025-01-26	265
271	Massey	2025-01-26	88
271	USAU	2025-01-26	246
271	SWCI	2025-02-02	89
271	ELO	2025-02-02	238
271	Massey	2025-02-02	390
271	USAU	2025-02-02	391
271	SWCI	2025-02-08	118
271	ELO	2025-02-08	359
271	Massey	2025-02-08	385
271	USAU	2025-02-08	387
271	SWCI	2025-02-09	116
271	ELO	2025-02-09	356
271	Massey	2025-02-09	375
271	USAU	2025-02-09	382
271	SWCI	2025-02-12	116
271	ELO	2025-02-12	347
271	Massey	2025-02-12	370
271	USAU	2025-02-12	382
271	SWCI	2025-02-16	134
271	ELO	2025-02-16	346
271	Massey	2025-02-16	346
271	USAU	2025-02-16	353
271	SWCI	2025-02-17	133
271	ELO	2025-02-17	338
271	Massey	2025-02-17	350
271	USAU	2025-02-17	350
271	SWCI	2025-02-22	161
271	ELO	2025-02-22	334
271	Massey	2025-02-22	327
271	USAU	2025-02-22	345
271	SWCI	2025-02-23	164
271	ELO	2025-02-23	333
271	Massey	2025-02-23	320
271	USAU	2025-02-23	343
271	SWCI	2025-03-02	216
271	ELO	2025-03-02	318
271	Massey	2025-03-02	284
271	USAU	2025-03-02	296
271	SWCI	2025-03-08	234
271	ELO	2025-03-08	296
271	Massey	2025-03-08	222
271	USAU	2025-03-08	288
271	SWCI	2025-03-09	246
271	ELO	2025-03-09	295
271	Massey	2025-03-09	215
271	USAU	2025-03-09	288
271	SWCI	2025-03-15	266
271	ELO	2025-03-15	288
271	Massey	2025-03-15	269
271	USAU	2025-03-15	261
271	SWCI	2025-03-16	264
271	ELO	2025-03-16	285
271	Massey	2025-03-16	216
271	USAU	2025-03-16	259
271	SWCI	2025-03-23	280
271	ELO	2025-03-23	272
271	Massey	2025-03-23	240
271	USAU	2025-03-23	231
271	SWCI	2025-03-29	335
271	ELO	2025-03-29	258
271	Massey	2025-03-29	264
271	USAU	2025-03-29	249
271	SWCI	2025-03-30	348
271	ELO	2025-03-30	259
271	Massey	2025-03-30	289
271	USAU	2025-03-30	282
272	SWCI	2025-01-26	29
272	ELO	2025-01-26	266
272	Massey	2025-01-26	369
272	USAU	2025-01-26	371
272	SWCI	2025-02-02	56
272	ELO	2025-02-02	358
272	Massey	2025-02-02	337
272	USAU	2025-02-02	352
272	SWCI	2025-02-08	75
272	ELO	2025-02-08	340
272	Massey	2025-02-08	357
272	USAU	2025-02-08	380
272	SWCI	2025-02-09	74
272	ELO	2025-02-09	337
272	Massey	2025-02-09	334
272	USAU	2025-02-09	356
272	SWCI	2025-02-12	74
272	ELO	2025-02-12	317
272	Massey	2025-02-12	332
272	USAU	2025-02-12	356
272	SWCI	2025-02-16	76
272	ELO	2025-02-16	314
272	Massey	2025-02-16	310
272	USAU	2025-02-16	322
272	SWCI	2025-02-17	76
272	ELO	2025-02-17	305
272	Massey	2025-02-17	306
272	USAU	2025-02-17	321
272	SWCI	2025-02-22	97
272	ELO	2025-02-22	301
272	Massey	2025-02-22	270
272	USAU	2025-02-22	305
272	SWCI	2025-02-23	96
272	ELO	2025-02-23	299
272	Massey	2025-02-23	262
272	USAU	2025-02-23	303
272	SWCI	2025-03-02	104
272	ELO	2025-03-02	282
272	Massey	2025-03-02	190
272	USAU	2025-03-02	262
272	SWCI	2025-03-08	98
272	ELO	2025-03-08	237
272	Massey	2025-03-08	177
272	USAU	2025-03-08	251
272	SWCI	2025-03-09	100
272	ELO	2025-03-09	236
272	Massey	2025-03-09	177
272	USAU	2025-03-09	248
272	SWCI	2025-03-15	126
272	ELO	2025-03-15	228
272	Massey	2025-03-15	234
272	USAU	2025-03-15	240
272	SWCI	2025-03-16	138
272	ELO	2025-03-16	225
272	Massey	2025-03-16	181
272	USAU	2025-03-16	240
272	SWCI	2025-03-23	141
272	ELO	2025-03-23	219
272	Massey	2025-03-23	203
272	USAU	2025-03-23	204
272	SWCI	2025-03-29	144
272	ELO	2025-03-29	215
272	Massey	2025-03-29	177
272	USAU	2025-03-29	175
272	SWCI	2025-03-30	149
272	ELO	2025-03-30	214
272	Massey	2025-03-30	181
272	USAU	2025-03-30	174
273	SWCI	2025-01-26	44
273	ELO	2025-01-26	267
273	Massey	2025-01-26	367
273	USAU	2025-01-26	384
273	SWCI	2025-02-02	90
273	ELO	2025-02-02	365
273	Massey	2025-02-02	334
273	USAU	2025-02-02	369
273	SWCI	2025-02-08	123
273	ELO	2025-02-08	352
273	Massey	2025-02-08	356
273	USAU	2025-02-08	389
273	SWCI	2025-02-09	122
273	ELO	2025-02-09	349
273	Massey	2025-02-09	333
273	USAU	2025-02-09	369
273	SWCI	2025-02-12	122
273	ELO	2025-02-12	341
273	Massey	2025-02-12	331
273	USAU	2025-02-12	369
273	SWCI	2025-02-16	135
273	ELO	2025-02-16	341
273	Massey	2025-02-16	307
273	USAU	2025-02-16	343
273	SWCI	2025-02-17	135
273	ELO	2025-02-17	334
273	Massey	2025-02-17	301
273	USAU	2025-02-17	342
273	SWCI	2025-02-22	163
273	ELO	2025-02-22	332
273	Massey	2025-02-22	259
273	USAU	2025-02-22	332
273	SWCI	2025-02-23	167
273	ELO	2025-02-23	331
273	Massey	2025-02-23	255
273	USAU	2025-02-23	331
273	SWCI	2025-03-02	180
273	ELO	2025-03-02	314
273	Massey	2025-03-02	195
273	USAU	2025-03-02	283
273	SWCI	2025-03-08	182
273	ELO	2025-03-08	263
273	Massey	2025-03-08	180
273	USAU	2025-03-08	274
273	SWCI	2025-03-09	184
273	ELO	2025-03-09	262
273	Massey	2025-03-09	180
273	USAU	2025-03-09	276
273	SWCI	2025-03-15	195
273	ELO	2025-03-15	255
273	Massey	2025-03-15	237
273	USAU	2025-03-15	258
273	SWCI	2025-03-16	189
273	ELO	2025-03-16	251
273	Massey	2025-03-16	182
273	USAU	2025-03-16	258
273	SWCI	2025-03-23	226
273	ELO	2025-03-23	239
273	Massey	2025-03-23	211
273	USAU	2025-03-23	230
273	SWCI	2025-03-29	239
273	ELO	2025-03-29	234
273	Massey	2025-03-29	174
273	USAU	2025-03-29	187
273	SWCI	2025-03-30	244
273	ELO	2025-03-30	235
273	Massey	2025-03-30	178
273	USAU	2025-03-30	190
274	SWCI	2025-01-26	37
274	ELO	2025-01-26	268
274	Massey	2025-01-26	359
274	USAU	2025-01-26	380
274	SWCI	2025-02-02	82
274	ELO	2025-02-02	42
274	Massey	2025-02-02	330
274	USAU	2025-02-02	364
274	SWCI	2025-02-08	109
274	ELO	2025-02-08	64
274	Massey	2025-02-08	351
274	USAU	2025-02-08	388
274	SWCI	2025-02-09	109
274	ELO	2025-02-09	67
274	Massey	2025-02-09	328
274	USAU	2025-02-09	368
274	SWCI	2025-02-12	110
274	ELO	2025-02-12	78
274	Massey	2025-02-12	322
274	USAU	2025-02-12	368
274	SWCI	2025-02-16	121
274	ELO	2025-02-16	78
274	Massey	2025-02-16	300
274	USAU	2025-02-16	340
274	SWCI	2025-02-17	121
274	ELO	2025-02-17	86
274	Massey	2025-02-17	291
274	USAU	2025-02-17	338
274	SWCI	2025-02-22	148
274	ELO	2025-02-22	86
274	Massey	2025-02-22	244
274	USAU	2025-02-22	327
274	SWCI	2025-02-23	151
274	ELO	2025-02-23	90
274	Massey	2025-02-23	224
274	USAU	2025-02-23	328
274	SWCI	2025-03-02	142
274	ELO	2025-03-02	108
274	Massey	2025-03-02	187
274	USAU	2025-03-02	278
274	SWCI	2025-03-08	139
274	ELO	2025-03-08	239
274	Massey	2025-03-08	173
274	USAU	2025-03-08	267
274	SWCI	2025-03-09	140
274	ELO	2025-03-09	238
274	Massey	2025-03-09	174
274	USAU	2025-03-09	270
274	SWCI	2025-03-15	151
274	ELO	2025-03-15	231
274	Massey	2025-03-15	225
274	USAU	2025-03-15	253
274	SWCI	2025-03-16	154
274	ELO	2025-03-16	228
274	Massey	2025-03-16	175
274	USAU	2025-03-16	253
274	SWCI	2025-03-23	212
274	ELO	2025-03-23	216
274	Massey	2025-03-23	201
274	USAU	2025-03-23	221
274	SWCI	2025-03-29	230
274	ELO	2025-03-29	213
274	Massey	2025-03-29	170
274	USAU	2025-03-29	185
274	SWCI	2025-03-30	235
274	ELO	2025-03-30	211
274	Massey	2025-03-30	174
274	USAU	2025-03-30	188
275	SWCI	2025-01-26	62
275	ELO	2025-01-26	269
275	Massey	2025-01-26	396
275	USAU	2025-01-26	394
275	SWCI	2025-02-02	124
275	ELO	2025-02-02	395
275	Massey	2025-02-02	392
275	USAU	2025-02-02	388
275	SWCI	2025-02-08	166
275	ELO	2025-02-08	395
275	Massey	2025-02-08	397
275	USAU	2025-02-08	397
275	SWCI	2025-02-09	166
275	ELO	2025-02-09	395
275	Massey	2025-02-09	389
275	USAU	2025-02-09	394
275	SWCI	2025-02-12	166
275	ELO	2025-02-12	394
275	Massey	2025-02-12	385
275	USAU	2025-02-12	394
275	SWCI	2025-02-16	187
275	ELO	2025-02-16	394
275	Massey	2025-02-16	382
275	USAU	2025-02-16	387
275	SWCI	2025-02-17	187
275	ELO	2025-02-17	393
275	Massey	2025-02-17	387
275	USAU	2025-02-17	385
275	SWCI	2025-02-22	229
275	ELO	2025-02-22	394
275	Massey	2025-02-22	379
275	USAU	2025-02-22	385
275	SWCI	2025-02-23	230
275	ELO	2025-02-23	393
275	Massey	2025-02-23	373
275	USAU	2025-02-23	385
275	SWCI	2025-03-02	311
275	ELO	2025-03-02	392
275	Massey	2025-03-02	378
275	USAU	2025-03-02	383
275	SWCI	2025-03-08	319
275	ELO	2025-03-08	397
275	Massey	2025-03-08	362
275	USAU	2025-03-08	383
275	SWCI	2025-03-09	323
275	ELO	2025-03-09	397
275	Massey	2025-03-09	366
275	USAU	2025-03-09	382
275	SWCI	2025-03-15	346
275	ELO	2025-03-15	397
275	Massey	2025-03-15	378
275	USAU	2025-03-15	374
275	SWCI	2025-03-16	346
275	ELO	2025-03-16	397
275	Massey	2025-03-16	377
275	USAU	2025-03-16	378
275	SWCI	2025-03-23	367
275	ELO	2025-03-23	397
275	Massey	2025-03-23	370
275	USAU	2025-03-23	369
275	SWCI	2025-03-29	387
275	ELO	2025-03-29	395
275	Massey	2025-03-29	350
275	USAU	2025-03-29	349
275	SWCI	2025-03-30	386
275	ELO	2025-03-30	394
275	Massey	2025-03-30	351
275	USAU	2025-03-30	353
276	SWCI	2025-01-26	280
276	ELO	2025-01-26	270
276	Massey	2025-01-26	296
276	USAU	2025-01-26	247
276	SWCI	2025-02-02	66
276	ELO	2025-02-02	239
276	Massey	2025-02-02	370
276	USAU	2025-02-02	383
276	SWCI	2025-02-08	54
276	ELO	2025-02-08	35
276	Massey	2025-02-08	344
276	USAU	2025-02-08	366
276	SWCI	2025-02-09	65
276	ELO	2025-02-09	38
276	Massey	2025-02-09	331
276	USAU	2025-02-09	354
276	SWCI	2025-02-12	65
276	ELO	2025-02-12	31
276	Massey	2025-02-12	326
276	USAU	2025-02-12	355
276	SWCI	2025-02-16	88
276	ELO	2025-02-16	32
276	Massey	2025-02-16	305
276	USAU	2025-02-16	323
276	SWCI	2025-02-17	89
276	ELO	2025-02-17	35
276	Massey	2025-02-17	297
276	USAU	2025-02-17	322
276	SWCI	2025-02-22	107
276	ELO	2025-02-22	37
276	Massey	2025-02-22	256
276	USAU	2025-02-22	309
276	SWCI	2025-02-23	107
276	ELO	2025-02-23	37
276	Massey	2025-02-23	250
276	USAU	2025-02-23	304
276	SWCI	2025-03-02	138
276	ELO	2025-03-02	47
276	Massey	2025-03-02	171
276	USAU	2025-03-02	253
276	SWCI	2025-03-08	142
276	ELO	2025-03-08	67
276	Massey	2025-03-08	157
276	USAU	2025-03-08	245
276	SWCI	2025-03-09	142
276	ELO	2025-03-09	68
276	Massey	2025-03-09	161
276	USAU	2025-03-09	245
276	SWCI	2025-03-15	114
276	ELO	2025-03-15	71
276	Massey	2025-03-15	198
276	USAU	2025-03-15	195
276	SWCI	2025-03-16	94
276	ELO	2025-03-16	74
276	Massey	2025-03-16	142
276	USAU	2025-03-16	195
276	SWCI	2025-03-23	98
276	ELO	2025-03-23	36
276	Massey	2025-03-23	161
276	USAU	2025-03-23	134
276	SWCI	2025-03-29	95
276	ELO	2025-03-29	41
276	Massey	2025-03-29	139
276	USAU	2025-03-29	140
276	SWCI	2025-03-30	90
276	ELO	2025-03-30	43
276	Massey	2025-03-30	140
276	USAU	2025-03-30	137
277	SWCI	2025-01-26	281
277	ELO	2025-01-26	271
277	Massey	2025-01-26	318
277	USAU	2025-01-26	248
277	SWCI	2025-02-02	290
277	ELO	2025-02-02	240
277	Massey	2025-02-02	186
277	USAU	2025-02-02	232
277	SWCI	2025-02-08	148
277	ELO	2025-02-08	232
277	Massey	2025-02-08	355
277	USAU	2025-02-08	348
277	SWCI	2025-02-09	128
277	ELO	2025-02-09	227
277	Massey	2025-02-09	370
277	USAU	2025-02-09	378
277	SWCI	2025-02-12	128
277	ELO	2025-02-12	340
277	Massey	2025-02-12	368
277	USAU	2025-02-12	378
277	SWCI	2025-02-16	139
277	ELO	2025-02-16	340
277	Massey	2025-02-16	363
277	USAU	2025-02-16	356
277	SWCI	2025-02-17	139
277	ELO	2025-02-17	333
277	Massey	2025-02-17	363
277	USAU	2025-02-17	354
277	SWCI	2025-02-22	169
277	ELO	2025-02-22	331
277	Massey	2025-02-22	349
277	USAU	2025-02-22	351
277	SWCI	2025-02-23	172
277	ELO	2025-02-23	330
277	Massey	2025-02-23	337
277	USAU	2025-02-23	348
277	SWCI	2025-03-02	226
277	ELO	2025-03-02	313
277	Massey	2025-03-02	305
277	USAU	2025-03-02	311
277	SWCI	2025-03-08	229
277	ELO	2025-03-08	287
277	Massey	2025-03-08	247
277	USAU	2025-03-08	304
277	SWCI	2025-03-09	233
277	ELO	2025-03-09	287
277	Massey	2025-03-09	244
277	USAU	2025-03-09	304
277	SWCI	2025-03-15	303
277	ELO	2025-03-15	280
277	Massey	2025-03-15	307
277	USAU	2025-03-15	302
277	SWCI	2025-03-16	315
277	ELO	2025-03-16	277
277	Massey	2025-03-16	257
277	USAU	2025-03-16	308
277	SWCI	2025-03-23	332
277	ELO	2025-03-23	369
277	Massey	2025-03-23	277
277	USAU	2025-03-23	274
277	SWCI	2025-03-29	354
277	ELO	2025-03-29	361
277	Massey	2025-03-29	259
277	USAU	2025-03-29	259
277	SWCI	2025-03-30	350
277	ELO	2025-03-30	360
277	Massey	2025-03-30	264
277	USAU	2025-03-30	265
278	SWCI	2025-01-26	282
278	ELO	2025-01-26	272
278	Massey	2025-01-26	297
278	USAU	2025-01-26	249
278	SWCI	2025-02-02	58
278	ELO	2025-02-02	241
278	Massey	2025-02-02	363
278	USAU	2025-02-02	376
278	SWCI	2025-02-08	65
278	ELO	2025-02-08	36
278	Massey	2025-02-08	336
278	USAU	2025-02-08	359
278	SWCI	2025-02-09	68
278	ELO	2025-02-09	39
278	Massey	2025-02-09	315
278	USAU	2025-02-09	340
278	SWCI	2025-02-12	68
278	ELO	2025-02-12	49
278	Massey	2025-02-12	308
278	USAU	2025-02-12	340
278	SWCI	2025-02-16	79
278	ELO	2025-02-16	49
278	Massey	2025-02-16	280
278	USAU	2025-02-16	301
278	SWCI	2025-02-17	80
278	ELO	2025-02-17	65
278	Massey	2025-02-17	150
278	USAU	2025-02-17	298
278	SWCI	2025-02-22	101
278	ELO	2025-02-22	67
278	Massey	2025-02-22	148
278	USAU	2025-02-22	274
278	SWCI	2025-02-23	99
278	ELO	2025-02-23	70
278	Massey	2025-02-23	148
278	USAU	2025-02-23	275
278	SWCI	2025-03-02	125
278	ELO	2025-03-02	87
278	Massey	2025-03-02	129
278	USAU	2025-03-02	125
278	SWCI	2025-03-08	140
278	ELO	2025-03-08	110
278	Massey	2025-03-08	115
278	USAU	2025-03-08	120
278	SWCI	2025-03-09	143
278	ELO	2025-03-09	113
278	Massey	2025-03-09	118
278	USAU	2025-03-09	122
278	SWCI	2025-03-15	142
278	ELO	2025-03-15	118
278	Massey	2025-03-15	160
278	USAU	2025-03-15	108
278	SWCI	2025-03-16	143
278	ELO	2025-03-16	119
278	Massey	2025-03-16	106
278	USAU	2025-03-16	110
278	SWCI	2025-03-23	147
278	ELO	2025-03-23	127
278	Massey	2025-03-23	123
278	USAU	2025-03-23	99
278	SWCI	2025-03-29	154
278	ELO	2025-03-29	136
278	Massey	2025-03-29	102
278	USAU	2025-03-29	104
278	SWCI	2025-03-30	170
278	ELO	2025-03-30	139
278	Massey	2025-03-30	113
278	USAU	2025-03-30	114
279	SWCI	2025-01-26	32
279	ELO	2025-01-26	7
279	Massey	2025-01-26	350
279	USAU	2025-01-26	367
279	SWCI	2025-02-02	51
279	ELO	2025-02-02	38
279	Massey	2025-02-02	64
279	USAU	2025-02-02	34
279	SWCI	2025-02-08	70
279	ELO	2025-02-08	58
279	Massey	2025-02-08	61
279	USAU	2025-02-08	38
279	SWCI	2025-02-09	70
279	ELO	2025-02-09	61
279	Massey	2025-02-09	51
279	USAU	2025-02-09	27
279	SWCI	2025-02-12	70
279	ELO	2025-02-12	72
279	Massey	2025-02-12	44
279	USAU	2025-02-12	27
279	SWCI	2025-02-16	91
279	ELO	2025-02-16	71
279	Massey	2025-02-16	54
279	USAU	2025-02-16	31
279	SWCI	2025-02-17	92
279	ELO	2025-02-17	78
279	Massey	2025-02-17	41
279	USAU	2025-02-17	30
279	SWCI	2025-02-22	109
279	ELO	2025-02-22	79
279	Massey	2025-02-22	47
279	USAU	2025-02-22	35
279	SWCI	2025-02-23	110
279	ELO	2025-02-23	83
279	Massey	2025-02-23	45
279	USAU	2025-02-23	33
279	SWCI	2025-03-02	140
279	ELO	2025-03-02	101
279	Massey	2025-03-02	34
279	USAU	2025-03-02	35
279	SWCI	2025-03-08	129
279	ELO	2025-03-08	129
279	Massey	2025-03-08	39
279	USAU	2025-03-08	38
279	SWCI	2025-03-09	127
279	ELO	2025-03-09	132
279	Massey	2025-03-09	38
279	USAU	2025-03-09	38
279	SWCI	2025-03-15	100
279	ELO	2025-03-15	135
279	Massey	2025-03-15	77
279	USAU	2025-03-15	22
279	SWCI	2025-03-16	83
279	ELO	2025-03-16	137
279	Massey	2025-03-16	21
279	USAU	2025-03-16	22
279	SWCI	2025-03-23	88
279	ELO	2025-03-23	64
279	Massey	2025-03-23	51
279	USAU	2025-03-23	24
279	SWCI	2025-03-29	88
279	ELO	2025-03-29	73
279	Massey	2025-03-29	25
279	USAU	2025-03-29	27
279	SWCI	2025-03-30	92
279	ELO	2025-03-30	74
279	Massey	2025-03-30	27
279	USAU	2025-03-30	29
280	SWCI	2025-01-26	34
280	ELO	2025-01-26	390
280	Massey	2025-01-26	61
280	USAU	2025-01-26	365
280	SWCI	2025-02-02	69
280	ELO	2025-02-02	360
280	Massey	2025-02-02	49
280	USAU	2025-02-02	26
280	SWCI	2025-02-08	91
280	ELO	2025-02-08	343
280	Massey	2025-02-08	45
280	USAU	2025-02-08	26
280	SWCI	2025-02-09	90
280	ELO	2025-02-09	340
280	Massey	2025-02-09	41
280	USAU	2025-02-09	19
280	SWCI	2025-02-12	90
280	ELO	2025-02-12	326
280	Massey	2025-02-12	29
280	USAU	2025-02-12	19
280	SWCI	2025-02-16	94
280	ELO	2025-02-16	325
280	Massey	2025-02-16	44
280	USAU	2025-02-16	27
280	SWCI	2025-02-17	77
280	ELO	2025-02-17	55
280	Massey	2025-02-17	35
280	USAU	2025-02-17	23
280	SWCI	2025-02-22	98
280	ELO	2025-02-22	56
280	Massey	2025-02-22	40
280	USAU	2025-02-22	27
280	SWCI	2025-02-23	97
280	ELO	2025-02-23	59
280	Massey	2025-02-23	37
280	USAU	2025-02-23	28
280	SWCI	2025-03-02	127
280	ELO	2025-03-02	71
280	Massey	2025-03-02	26
280	USAU	2025-03-02	26
280	SWCI	2025-03-08	124
280	ELO	2025-03-08	97
280	Massey	2025-03-08	26
280	USAU	2025-03-08	27
280	SWCI	2025-03-09	119
280	ELO	2025-03-09	100
280	Massey	2025-03-09	26
280	USAU	2025-03-09	27
280	SWCI	2025-03-15	131
280	ELO	2025-03-15	102
280	Massey	2025-03-15	80
280	USAU	2025-03-15	26
280	SWCI	2025-03-16	134
280	ELO	2025-03-16	103
280	Massey	2025-03-16	24
280	USAU	2025-03-16	26
280	SWCI	2025-03-23	137
280	ELO	2025-03-23	98
280	Massey	2025-03-23	50
280	USAU	2025-03-23	23
280	SWCI	2025-03-29	146
280	ELO	2025-03-29	106
280	Massey	2025-03-29	23
280	USAU	2025-03-29	25
280	SWCI	2025-03-30	153
280	ELO	2025-03-30	106
280	Massey	2025-03-30	26
280	USAU	2025-03-30	26
281	SWCI	2025-01-26	283
281	ELO	2025-01-26	273
281	Massey	2025-01-26	298
281	USAU	2025-01-26	250
281	SWCI	2025-02-02	11
281	ELO	2025-02-02	242
281	Massey	2025-02-02	74
281	USAU	2025-02-02	29
281	SWCI	2025-02-08	13
281	ELO	2025-02-08	27
281	Massey	2025-02-08	57
281	USAU	2025-02-08	19
281	SWCI	2025-02-09	13
281	ELO	2025-02-09	30
281	Massey	2025-02-09	70
281	USAU	2025-02-09	25
281	SWCI	2025-02-12	13
281	ELO	2025-02-12	37
281	Massey	2025-02-12	41
281	USAU	2025-02-12	24
281	SWCI	2025-02-16	10
281	ELO	2025-02-16	37
281	Massey	2025-02-16	31
281	USAU	2025-02-16	20
281	SWCI	2025-02-17	11
281	ELO	2025-02-17	39
281	Massey	2025-02-17	27
281	USAU	2025-02-17	20
281	SWCI	2025-02-22	9
281	ELO	2025-02-22	41
281	Massey	2025-02-22	33
281	USAU	2025-02-22	21
281	SWCI	2025-02-23	8
281	ELO	2025-02-23	41
281	Massey	2025-02-23	28
281	USAU	2025-02-23	19
281	SWCI	2025-03-02	62
281	ELO	2025-03-02	51
281	Massey	2025-03-02	22
281	USAU	2025-03-02	20
281	SWCI	2025-03-08	63
281	ELO	2025-03-08	93
281	Massey	2025-03-08	20
281	USAU	2025-03-08	20
281	SWCI	2025-03-09	64
281	ELO	2025-03-09	96
281	Massey	2025-03-09	20
281	USAU	2025-03-09	21
281	SWCI	2025-03-15	68
281	ELO	2025-03-15	98
281	Massey	2025-03-15	75
281	USAU	2025-03-15	20
281	SWCI	2025-03-16	67
281	ELO	2025-03-16	100
281	Massey	2025-03-16	19
281	USAU	2025-03-16	19
281	SWCI	2025-03-23	68
281	ELO	2025-03-23	109
281	Massey	2025-03-23	46
281	USAU	2025-03-23	21
281	SWCI	2025-03-29	81
281	ELO	2025-03-29	115
281	Massey	2025-03-29	18
281	USAU	2025-03-29	21
281	SWCI	2025-03-30	85
281	ELO	2025-03-30	115
281	Massey	2025-03-30	22
281	USAU	2025-03-30	23
282	SWCI	2025-01-26	284
282	ELO	2025-01-26	274
282	Massey	2025-01-26	312
282	USAU	2025-01-26	251
282	SWCI	2025-02-02	73
282	ELO	2025-02-02	243
282	Massey	2025-02-02	379
282	USAU	2025-02-02	386
282	SWCI	2025-02-08	111
282	ELO	2025-02-08	338
282	Massey	2025-02-08	375
282	USAU	2025-02-08	381
282	SWCI	2025-02-09	131
282	ELO	2025-02-09	334
282	Massey	2025-02-09	364
282	USAU	2025-02-09	384
282	SWCI	2025-02-12	131
282	ELO	2025-02-12	366
282	Massey	2025-02-12	364
282	USAU	2025-02-12	384
282	SWCI	2025-02-16	153
282	ELO	2025-02-16	366
282	Massey	2025-02-16	347
282	USAU	2025-02-16	358
282	SWCI	2025-02-17	152
282	ELO	2025-02-17	357
282	Massey	2025-02-17	351
282	USAU	2025-02-17	358
282	SWCI	2025-02-22	189
282	ELO	2025-02-22	355
282	Massey	2025-02-22	329
282	USAU	2025-02-22	352
282	SWCI	2025-02-23	186
282	ELO	2025-02-23	353
282	Massey	2025-02-23	323
282	USAU	2025-02-23	351
282	SWCI	2025-03-02	251
282	ELO	2025-03-02	345
282	Massey	2025-03-02	285
282	USAU	2025-03-02	310
282	SWCI	2025-03-08	262
282	ELO	2025-03-08	327
282	Massey	2025-03-08	227
282	USAU	2025-03-08	301
282	SWCI	2025-03-09	271
282	ELO	2025-03-09	325
282	Massey	2025-03-09	225
282	USAU	2025-03-09	301
282	SWCI	2025-03-15	288
282	ELO	2025-03-15	326
282	Massey	2025-03-15	273
282	USAU	2025-03-15	278
282	SWCI	2025-03-16	288
282	ELO	2025-03-16	323
282	Massey	2025-03-16	220
282	USAU	2025-03-16	278
282	SWCI	2025-03-23	305
282	ELO	2025-03-23	315
282	Massey	2025-03-23	243
282	USAU	2025-03-23	241
282	SWCI	2025-03-29	307
282	ELO	2025-03-29	306
282	Massey	2025-03-29	216
282	USAU	2025-03-29	213
282	SWCI	2025-03-30	268
282	ELO	2025-03-30	305
282	Massey	2025-03-30	216
282	USAU	2025-03-30	207
283	SWCI	2025-01-26	285
283	ELO	2025-01-26	275
283	Massey	2025-01-26	313
283	USAU	2025-01-26	252
283	SWCI	2025-02-02	291
283	ELO	2025-02-02	244
283	Massey	2025-02-02	175
283	USAU	2025-02-02	233
283	SWCI	2025-02-08	155
283	ELO	2025-02-08	233
283	Massey	2025-02-08	393
283	USAU	2025-02-08	396
283	SWCI	2025-02-09	146
283	ELO	2025-02-09	228
283	Massey	2025-02-09	382
283	USAU	2025-02-09	387
283	SWCI	2025-02-12	147
283	ELO	2025-02-12	375
283	Massey	2025-02-12	377
283	USAU	2025-02-12	387
283	SWCI	2025-02-16	163
283	ELO	2025-02-16	374
283	Massey	2025-02-16	374
283	USAU	2025-02-16	374
283	SWCI	2025-02-17	164
283	ELO	2025-02-17	370
283	Massey	2025-02-17	377
283	USAU	2025-02-17	374
283	SWCI	2025-02-22	207
283	ELO	2025-02-22	370
283	Massey	2025-02-22	365
283	USAU	2025-02-22	373
283	SWCI	2025-02-23	203
283	ELO	2025-02-23	368
283	Massey	2025-02-23	361
283	USAU	2025-02-23	373
283	SWCI	2025-03-02	253
283	ELO	2025-03-02	360
283	Massey	2025-03-02	349
283	USAU	2025-03-02	343
283	SWCI	2025-03-08	257
283	ELO	2025-03-08	345
283	Massey	2025-03-08	294
283	USAU	2025-03-08	337
283	SWCI	2025-03-09	261
283	ELO	2025-03-09	343
283	Massey	2025-03-09	287
283	USAU	2025-03-09	341
283	SWCI	2025-03-15	291
283	ELO	2025-03-15	345
283	Massey	2025-03-15	345
283	USAU	2025-03-15	334
283	SWCI	2025-03-16	294
283	ELO	2025-03-16	343
283	Massey	2025-03-16	337
283	USAU	2025-03-16	336
283	SWCI	2025-03-23	309
283	ELO	2025-03-23	332
283	Massey	2025-03-23	324
283	USAU	2025-03-23	307
283	SWCI	2025-03-29	353
283	ELO	2025-03-29	325
283	Massey	2025-03-29	294
283	USAU	2025-03-29	284
283	SWCI	2025-03-30	358
283	ELO	2025-03-30	325
283	Massey	2025-03-30	301
283	USAU	2025-03-30	304
284	SWCI	2025-01-26	286
284	ELO	2025-01-26	276
284	Massey	2025-01-26	282
284	USAU	2025-01-26	253
284	SWCI	2025-02-02	118
284	ELO	2025-02-02	245
284	Massey	2025-02-02	396
284	USAU	2025-02-02	397
284	SWCI	2025-02-08	162
284	ELO	2025-02-08	387
284	Massey	2025-02-08	395
284	USAU	2025-02-08	395
284	SWCI	2025-02-09	164
284	ELO	2025-02-09	386
284	Massey	2025-02-09	391
284	USAU	2025-02-09	397
284	SWCI	2025-02-12	164
284	ELO	2025-02-12	381
284	Massey	2025-02-12	387
284	USAU	2025-02-12	397
284	SWCI	2025-02-16	179
284	ELO	2025-02-16	381
284	Massey	2025-02-16	380
284	USAU	2025-02-16	391
284	SWCI	2025-02-17	178
284	ELO	2025-02-17	379
284	Massey	2025-02-17	386
284	USAU	2025-02-17	390
284	SWCI	2025-02-22	221
284	ELO	2025-02-22	380
284	Massey	2025-02-22	376
284	USAU	2025-02-22	391
284	SWCI	2025-02-23	221
284	ELO	2025-02-23	380
284	Massey	2025-02-23	369
284	USAU	2025-02-23	390
284	SWCI	2025-03-02	295
284	ELO	2025-03-02	377
284	Massey	2025-03-02	366
284	USAU	2025-03-02	376
284	SWCI	2025-03-08	303
284	ELO	2025-03-08	370
284	Massey	2025-03-08	314
284	USAU	2025-03-08	374
284	SWCI	2025-03-09	306
284	ELO	2025-03-09	368
284	Massey	2025-03-09	321
284	USAU	2025-03-09	374
284	SWCI	2025-03-15	330
284	ELO	2025-03-15	368
284	Massey	2025-03-15	356
284	USAU	2025-03-15	363
284	SWCI	2025-03-16	329
284	ELO	2025-03-16	367
284	Massey	2025-03-16	350
284	USAU	2025-03-16	367
284	SWCI	2025-03-23	346
284	ELO	2025-03-23	364
284	Massey	2025-03-23	339
284	USAU	2025-03-23	351
284	SWCI	2025-03-29	371
284	ELO	2025-03-29	357
284	Massey	2025-03-29	338
284	USAU	2025-03-29	346
284	SWCI	2025-03-30	369
284	ELO	2025-03-30	356
284	Massey	2025-03-30	338
284	USAU	2025-03-30	354
285	SWCI	2025-01-26	287
285	ELO	2025-01-26	277
285	Massey	2025-01-26	299
285	USAU	2025-01-26	254
285	SWCI	2025-02-02	292
285	ELO	2025-02-02	246
285	Massey	2025-02-02	171
285	USAU	2025-02-02	234
285	SWCI	2025-02-08	96
285	ELO	2025-02-08	234
285	Massey	2025-02-08	69
285	USAU	2025-02-08	49
285	SWCI	2025-02-09	53
285	ELO	2025-02-09	229
285	Massey	2025-02-09	311
285	USAU	2025-02-09	345
285	SWCI	2025-02-12	53
285	ELO	2025-02-12	26
285	Massey	2025-02-12	305
285	USAU	2025-02-12	345
285	SWCI	2025-02-16	52
285	ELO	2025-02-16	27
285	Massey	2025-02-16	289
285	USAU	2025-02-16	317
285	SWCI	2025-02-17	52
285	ELO	2025-02-17	29
285	Massey	2025-02-17	274
285	USAU	2025-02-17	316
285	SWCI	2025-02-22	67
285	ELO	2025-02-22	31
285	Massey	2025-02-22	161
285	USAU	2025-02-22	295
285	SWCI	2025-02-23	70
285	ELO	2025-02-23	31
285	Massey	2025-02-23	159
285	USAU	2025-02-23	294
285	SWCI	2025-03-02	89
285	ELO	2025-03-02	39
285	Massey	2025-03-02	144
285	USAU	2025-03-02	239
285	SWCI	2025-03-08	92
285	ELO	2025-03-08	57
285	Massey	2025-03-08	134
285	USAU	2025-03-08	230
285	SWCI	2025-03-09	94
285	ELO	2025-03-09	58
285	Massey	2025-03-09	134
285	USAU	2025-03-09	231
285	SWCI	2025-03-15	107
285	ELO	2025-03-15	60
285	Massey	2025-03-15	184
285	USAU	2025-03-15	203
285	SWCI	2025-03-16	112
285	ELO	2025-03-16	63
285	Massey	2025-03-16	130
285	USAU	2025-03-16	207
285	SWCI	2025-03-23	118
285	ELO	2025-03-23	70
285	Massey	2025-03-23	149
285	USAU	2025-03-23	147
285	SWCI	2025-03-29	139
285	ELO	2025-03-29	86
285	Massey	2025-03-29	143
285	USAU	2025-03-29	165
285	SWCI	2025-03-30	150
285	ELO	2025-03-30	86
285	Massey	2025-03-30	143
285	USAU	2025-03-30	166
286	SWCI	2025-01-26	288
286	ELO	2025-01-26	278
286	Massey	2025-01-26	159
286	USAU	2025-01-26	255
286	SWCI	2025-02-02	13
286	ELO	2025-02-02	9
286	Massey	2025-02-02	16
286	USAU	2025-02-02	8
286	SWCI	2025-02-08	17
286	ELO	2025-02-08	11
286	Massey	2025-02-08	9
286	USAU	2025-02-08	7
286	SWCI	2025-02-09	16
286	ELO	2025-02-09	11
286	Massey	2025-02-09	11
286	USAU	2025-02-09	6
286	SWCI	2025-02-12	16
286	ELO	2025-02-12	15
286	Massey	2025-02-12	8
286	USAU	2025-02-12	6
286	SWCI	2025-02-16	22
286	ELO	2025-02-16	15
286	Massey	2025-02-16	11
286	USAU	2025-02-16	4
286	SWCI	2025-02-17	22
286	ELO	2025-02-17	21
286	Massey	2025-02-17	8
286	USAU	2025-02-17	6
286	SWCI	2025-02-22	22
286	ELO	2025-02-22	20
286	Massey	2025-02-22	9
286	USAU	2025-02-22	3
286	SWCI	2025-02-23	23
286	ELO	2025-02-23	20
286	Massey	2025-02-23	8
286	USAU	2025-02-23	4
286	SWCI	2025-03-02	17
286	ELO	2025-03-02	24
286	Massey	2025-03-02	2
286	USAU	2025-03-02	2
286	SWCI	2025-03-08	18
286	ELO	2025-03-08	7
286	Massey	2025-03-08	2
286	USAU	2025-03-08	2
286	SWCI	2025-03-09	19
286	ELO	2025-03-09	7
286	Massey	2025-03-09	2
286	USAU	2025-03-09	2
286	SWCI	2025-03-15	18
286	ELO	2025-03-15	9
286	Massey	2025-03-15	58
286	USAU	2025-03-15	2
286	SWCI	2025-03-16	15
286	ELO	2025-03-16	9
286	Massey	2025-03-16	2
286	USAU	2025-03-16	2
286	SWCI	2025-03-23	12
286	ELO	2025-03-23	9
286	Massey	2025-03-23	28
286	USAU	2025-03-23	3
286	SWCI	2025-03-29	9
286	ELO	2025-03-29	10
286	Massey	2025-03-29	2
286	USAU	2025-03-29	1
286	SWCI	2025-03-30	9
286	ELO	2025-03-30	10
286	Massey	2025-03-30	1
286	USAU	2025-03-30	1
287	SWCI	2025-01-26	289
287	ELO	2025-01-26	279
287	Massey	2025-01-26	127
287	USAU	2025-01-26	256
287	SWCI	2025-02-02	293
287	ELO	2025-02-02	247
287	Massey	2025-02-02	273
287	USAU	2025-02-02	235
287	SWCI	2025-02-08	303
287	ELO	2025-02-08	235
287	Massey	2025-02-08	253
287	USAU	2025-02-08	223
287	SWCI	2025-02-09	303
287	ELO	2025-02-09	230
287	Massey	2025-02-09	241
287	USAU	2025-02-09	221
287	SWCI	2025-02-12	303
287	ELO	2025-02-12	222
287	Massey	2025-02-12	261
287	USAU	2025-02-12	221
287	SWCI	2025-02-16	7
287	ELO	2025-02-16	26
287	Massey	2025-02-16	16
287	USAU	2025-02-16	8
287	SWCI	2025-02-17	7
287	ELO	2025-02-17	28
287	Massey	2025-02-17	12
287	USAU	2025-02-17	8
287	SWCI	2025-02-22	7
287	ELO	2025-02-22	30
287	Massey	2025-02-22	14
287	USAU	2025-02-22	5
287	SWCI	2025-02-23	7
287	ELO	2025-02-23	30
287	Massey	2025-02-23	15
287	USAU	2025-02-23	9
287	SWCI	2025-03-02	12
287	ELO	2025-03-02	38
287	Massey	2025-03-02	7
287	USAU	2025-03-02	7
287	SWCI	2025-03-08	13
287	ELO	2025-03-08	55
287	Massey	2025-03-08	6
287	USAU	2025-03-08	6
287	SWCI	2025-03-09	12
287	ELO	2025-03-09	56
287	Massey	2025-03-09	6
287	USAU	2025-03-09	6
287	SWCI	2025-03-15	19
287	ELO	2025-03-15	58
287	Massey	2025-03-15	66
287	USAU	2025-03-15	12
287	SWCI	2025-03-16	8
287	ELO	2025-03-16	61
287	Massey	2025-03-16	9
287	USAU	2025-03-16	9
287	SWCI	2025-03-23	10
287	ELO	2025-03-23	18
287	Massey	2025-03-23	36
287	USAU	2025-03-23	11
287	SWCI	2025-03-29	24
287	ELO	2025-03-29	20
287	Massey	2025-03-29	15
287	USAU	2025-03-29	16
287	SWCI	2025-03-30	29
287	ELO	2025-03-30	20
287	Massey	2025-03-30	15
287	USAU	2025-03-30	18
288	SWCI	2025-01-26	290
288	ELO	2025-01-26	280
288	Massey	2025-01-26	128
288	USAU	2025-01-26	257
288	SWCI	2025-02-02	294
288	ELO	2025-02-02	248
288	Massey	2025-02-02	286
288	USAU	2025-02-02	236
288	SWCI	2025-02-08	304
288	ELO	2025-02-08	236
288	Massey	2025-02-08	243
288	USAU	2025-02-08	224
288	SWCI	2025-02-09	304
288	ELO	2025-02-09	231
288	Massey	2025-02-09	242
288	USAU	2025-02-09	222
288	SWCI	2025-02-12	304
288	ELO	2025-02-12	223
288	Massey	2025-02-12	272
288	USAU	2025-02-12	222
288	SWCI	2025-02-16	311
288	ELO	2025-02-16	220
288	Massey	2025-02-16	229
288	USAU	2025-02-16	207
288	SWCI	2025-02-17	311
288	ELO	2025-02-17	218
288	Massey	2025-02-17	190
288	USAU	2025-02-17	205
288	SWCI	2025-02-22	331
288	ELO	2025-02-22	215
288	Massey	2025-02-22	215
288	USAU	2025-02-22	200
288	SWCI	2025-02-23	331
288	ELO	2025-02-23	213
288	Massey	2025-02-23	174
288	USAU	2025-02-23	202
288	SWCI	2025-03-02	305
288	ELO	2025-03-02	384
288	Massey	2025-03-02	384
288	USAU	2025-03-02	387
288	SWCI	2025-03-08	312
288	ELO	2025-03-08	380
288	Massey	2025-03-08	363
288	USAU	2025-03-08	387
288	SWCI	2025-03-09	316
288	ELO	2025-03-09	379
288	Massey	2025-03-09	372
288	USAU	2025-03-09	386
288	SWCI	2025-03-15	343
288	ELO	2025-03-15	379
288	Massey	2025-03-15	379
288	USAU	2025-03-15	379
288	SWCI	2025-03-16	342
288	ELO	2025-03-16	378
288	Massey	2025-03-16	376
288	USAU	2025-03-16	381
288	SWCI	2025-03-23	360
288	ELO	2025-03-23	377
288	Massey	2025-03-23	369
288	USAU	2025-03-23	375
288	SWCI	2025-03-29	381
288	ELO	2025-03-29	372
288	Massey	2025-03-29	352
288	USAU	2025-03-29	364
288	SWCI	2025-03-30	381
288	ELO	2025-03-30	371
288	Massey	2025-03-30	355
288	USAU	2025-03-30	368
289	SWCI	2025-01-26	291
289	ELO	2025-01-26	281
289	Massey	2025-01-26	129
289	USAU	2025-01-26	258
289	SWCI	2025-02-02	37
289	ELO	2025-02-02	249
289	Massey	2025-02-02	309
289	USAU	2025-02-02	53
289	SWCI	2025-02-08	49
289	ELO	2025-02-08	63
289	Massey	2025-02-08	98
289	USAU	2025-02-08	47
289	SWCI	2025-02-09	50
289	ELO	2025-02-09	66
289	Massey	2025-02-09	101
289	USAU	2025-02-09	50
289	SWCI	2025-02-12	50
289	ELO	2025-02-12	77
289	Massey	2025-02-12	67
289	USAU	2025-02-12	50
289	SWCI	2025-02-16	44
289	ELO	2025-02-16	76
289	Massey	2025-02-16	60
289	USAU	2025-02-16	44
289	SWCI	2025-02-17	44
289	ELO	2025-02-17	84
289	Massey	2025-02-17	53
289	USAU	2025-02-17	45
289	SWCI	2025-02-22	53
289	ELO	2025-02-22	84
289	Massey	2025-02-22	59
289	USAU	2025-02-22	48
289	SWCI	2025-02-23	45
289	ELO	2025-02-23	88
289	Massey	2025-02-23	54
289	USAU	2025-02-23	40
289	SWCI	2025-03-02	60
289	ELO	2025-03-02	40
289	Massey	2025-03-02	38
289	USAU	2025-03-02	36
289	SWCI	2025-03-08	61
289	ELO	2025-03-08	58
289	Massey	2025-03-08	35
289	USAU	2025-03-08	35
289	SWCI	2025-03-09	62
289	ELO	2025-03-09	59
289	Massey	2025-03-09	36
289	USAU	2025-03-09	36
289	SWCI	2025-03-15	66
289	ELO	2025-03-15	61
289	Massey	2025-03-15	92
289	USAU	2025-03-15	36
289	SWCI	2025-03-16	66
289	ELO	2025-03-16	64
289	Massey	2025-03-16	36
289	USAU	2025-03-16	35
289	SWCI	2025-03-23	96
289	ELO	2025-03-23	83
289	Massey	2025-03-23	59
289	USAU	2025-03-23	32
289	SWCI	2025-03-29	93
289	ELO	2025-03-29	93
289	Massey	2025-03-29	33
289	USAU	2025-03-29	33
289	SWCI	2025-03-30	98
289	ELO	2025-03-30	93
289	Massey	2025-03-30	31
289	USAU	2025-03-30	32
290	SWCI	2025-01-26	292
290	ELO	2025-01-26	282
290	Massey	2025-01-26	130
290	USAU	2025-01-26	259
290	SWCI	2025-02-02	295
290	ELO	2025-02-02	250
290	Massey	2025-02-02	267
290	USAU	2025-02-02	237
290	SWCI	2025-02-08	305
290	ELO	2025-02-08	237
290	Massey	2025-02-08	251
290	USAU	2025-02-08	225
290	SWCI	2025-02-09	305
290	ELO	2025-02-09	232
290	Massey	2025-02-09	214
290	USAU	2025-02-09	223
290	SWCI	2025-02-12	305
290	ELO	2025-02-12	224
290	Massey	2025-02-12	264
290	USAU	2025-02-12	223
290	SWCI	2025-02-16	312
290	ELO	2025-02-16	221
290	Massey	2025-02-16	251
290	USAU	2025-02-16	208
290	SWCI	2025-02-17	312
290	ELO	2025-02-17	219
290	Massey	2025-02-17	193
290	USAU	2025-02-17	206
290	SWCI	2025-02-22	332
290	ELO	2025-02-22	216
290	Massey	2025-02-22	216
290	USAU	2025-02-22	201
290	SWCI	2025-02-23	332
290	ELO	2025-02-23	214
290	Massey	2025-02-23	163
290	USAU	2025-02-23	203
290	SWCI	2025-03-02	243
290	ELO	2025-03-02	218
290	Massey	2025-03-02	340
290	USAU	2025-03-02	360
290	SWCI	2025-03-08	250
290	ELO	2025-03-08	285
290	Massey	2025-03-08	285
290	USAU	2025-03-08	361
290	SWCI	2025-03-09	253
290	ELO	2025-03-09	285
290	Massey	2025-03-09	276
290	USAU	2025-03-09	360
290	SWCI	2025-03-15	262
290	ELO	2025-03-15	278
290	Massey	2025-03-15	324
290	USAU	2025-03-15	324
290	SWCI	2025-03-16	260
290	ELO	2025-03-16	275
290	Massey	2025-03-16	290
290	USAU	2025-03-16	327
290	SWCI	2025-03-23	272
290	ELO	2025-03-23	264
290	Massey	2025-03-23	313
290	USAU	2025-03-23	318
290	SWCI	2025-03-29	271
290	ELO	2025-03-29	253
290	Massey	2025-03-29	290
290	USAU	2025-03-29	301
290	SWCI	2025-03-30	284
290	ELO	2025-03-30	255
290	Massey	2025-03-30	291
290	USAU	2025-03-30	306
291	SWCI	2025-01-26	293
291	ELO	2025-01-26	283
291	Massey	2025-01-26	131
291	USAU	2025-01-26	260
291	SWCI	2025-02-02	296
291	ELO	2025-02-02	251
291	Massey	2025-02-02	268
291	USAU	2025-02-02	238
291	SWCI	2025-02-08	306
291	ELO	2025-02-08	238
291	Massey	2025-02-08	252
291	USAU	2025-02-08	226
291	SWCI	2025-02-09	306
291	ELO	2025-02-09	233
291	Massey	2025-02-09	230
291	USAU	2025-02-09	224
291	SWCI	2025-02-12	306
291	ELO	2025-02-12	225
291	Massey	2025-02-12	263
291	USAU	2025-02-12	224
291	SWCI	2025-02-16	313
291	ELO	2025-02-16	222
291	Massey	2025-02-16	252
291	USAU	2025-02-16	209
291	SWCI	2025-02-17	313
291	ELO	2025-02-17	220
291	Massey	2025-02-17	243
291	USAU	2025-02-17	207
291	SWCI	2025-02-22	333
291	ELO	2025-02-22	217
291	Massey	2025-02-22	220
291	USAU	2025-02-22	202
291	SWCI	2025-02-23	333
291	ELO	2025-02-23	215
291	Massey	2025-02-23	180
291	USAU	2025-02-23	204
291	SWCI	2025-03-02	249
291	ELO	2025-03-02	219
291	Massey	2025-03-02	324
291	USAU	2025-03-02	347
291	SWCI	2025-03-08	255
291	ELO	2025-03-08	338
291	Massey	2025-03-08	268
291	USAU	2025-03-08	347
291	SWCI	2025-03-09	259
291	ELO	2025-03-09	336
291	Massey	2025-03-09	262
291	USAU	2025-03-09	345
291	SWCI	2025-03-15	222
291	ELO	2025-03-15	337
291	Massey	2025-03-15	284
291	USAU	2025-03-15	273
291	SWCI	2025-03-16	234
291	ELO	2025-03-16	334
291	Massey	2025-03-16	239
291	USAU	2025-03-16	273
291	SWCI	2025-03-23	244
291	ELO	2025-03-23	308
291	Massey	2025-03-23	269
291	USAU	2025-03-23	253
291	SWCI	2025-03-29	245
291	ELO	2025-03-29	298
291	Massey	2025-03-29	234
291	USAU	2025-03-29	216
291	SWCI	2025-03-30	250
291	ELO	2025-03-30	298
291	Massey	2025-03-30	236
291	USAU	2025-03-30	220
292	SWCI	2025-01-26	294
292	ELO	2025-01-26	284
292	Massey	2025-01-26	132
292	USAU	2025-01-26	261
292	SWCI	2025-02-02	297
292	ELO	2025-02-02	252
292	Massey	2025-02-02	287
292	USAU	2025-02-02	239
292	SWCI	2025-02-08	307
292	ELO	2025-02-08	239
292	Massey	2025-02-08	266
292	USAU	2025-02-08	227
292	SWCI	2025-02-09	307
292	ELO	2025-02-09	234
292	Massey	2025-02-09	228
292	USAU	2025-02-09	225
292	SWCI	2025-02-12	307
292	ELO	2025-02-12	226
292	Massey	2025-02-12	257
292	USAU	2025-02-12	225
292	SWCI	2025-02-16	314
292	ELO	2025-02-16	223
292	Massey	2025-02-16	237
292	USAU	2025-02-16	210
292	SWCI	2025-02-17	314
292	ELO	2025-02-17	221
292	Massey	2025-02-17	171
292	USAU	2025-02-17	208
292	SWCI	2025-02-22	334
292	ELO	2025-02-22	218
292	Massey	2025-02-22	231
292	USAU	2025-02-22	203
292	SWCI	2025-02-23	334
292	ELO	2025-02-23	216
292	Massey	2025-02-23	165
292	USAU	2025-02-23	205
292	SWCI	2025-03-02	78
292	ELO	2025-03-02	220
292	Massey	2025-03-02	164
292	USAU	2025-03-02	250
292	SWCI	2025-03-08	83
292	ELO	2025-03-08	105
292	Massey	2025-03-08	155
292	USAU	2025-03-08	250
292	SWCI	2025-03-09	82
292	ELO	2025-03-09	108
292	Massey	2025-03-09	155
292	USAU	2025-03-09	247
292	SWCI	2025-03-15	89
292	ELO	2025-03-15	113
292	Massey	2025-03-15	199
292	USAU	2025-03-15	138
292	SWCI	2025-03-16	97
292	ELO	2025-03-16	114
292	Massey	2025-03-16	145
292	USAU	2025-03-16	142
292	SWCI	2025-03-23	97
292	ELO	2025-03-23	122
292	Massey	2025-03-23	178
292	USAU	2025-03-23	146
292	SWCI	2025-03-29	105
292	ELO	2025-03-29	131
292	Massey	2025-03-29	158
292	USAU	2025-03-29	155
292	SWCI	2025-03-30	95
292	ELO	2025-03-30	134
292	Massey	2025-03-30	161
292	USAU	2025-03-30	156
293	SWCI	2025-01-26	295
293	ELO	2025-01-26	285
293	Massey	2025-01-26	133
293	USAU	2025-01-26	262
293	SWCI	2025-02-02	298
293	ELO	2025-02-02	253
293	Massey	2025-02-02	293
293	USAU	2025-02-02	240
293	SWCI	2025-02-08	80
293	ELO	2025-02-08	240
293	Massey	2025-02-08	340
293	USAU	2025-02-08	356
293	SWCI	2025-02-09	79
293	ELO	2025-02-09	235
293	Massey	2025-02-09	343
293	USAU	2025-02-09	346
293	SWCI	2025-02-12	76
293	ELO	2025-02-12	47
293	Massey	2025-02-12	314
293	USAU	2025-02-12	346
293	SWCI	2025-02-16	81
293	ELO	2025-02-16	47
293	Massey	2025-02-16	288
293	USAU	2025-02-16	327
293	SWCI	2025-02-17	82
293	ELO	2025-02-17	53
293	Massey	2025-02-17	278
293	USAU	2025-02-17	329
293	SWCI	2025-02-22	103
293	ELO	2025-02-22	54
293	Massey	2025-02-22	240
293	USAU	2025-02-22	307
293	SWCI	2025-02-23	102
293	ELO	2025-02-23	56
293	Massey	2025-02-23	189
293	USAU	2025-02-23	299
293	SWCI	2025-03-02	44
293	ELO	2025-03-02	66
293	Massey	2025-03-02	105
293	USAU	2025-03-02	98
293	SWCI	2025-03-08	42
293	ELO	2025-03-08	19
293	Massey	2025-03-08	99
293	USAU	2025-03-08	99
293	SWCI	2025-03-09	44
293	ELO	2025-03-09	19
293	Massey	2025-03-09	97
293	USAU	2025-03-09	100
293	SWCI	2025-03-15	46
293	ELO	2025-03-15	20
293	Massey	2025-03-15	143
293	USAU	2025-03-15	73
293	SWCI	2025-03-16	47
293	ELO	2025-03-16	20
293	Massey	2025-03-16	84
293	USAU	2025-03-16	75
293	SWCI	2025-03-23	18
293	ELO	2025-03-23	24
293	Massey	2025-03-23	121
293	USAU	2025-03-23	78
293	SWCI	2025-03-29	26
293	ELO	2025-03-29	5
293	Massey	2025-03-29	96
293	USAU	2025-03-29	90
293	SWCI	2025-03-30	26
293	ELO	2025-03-30	5
293	Massey	2025-03-30	93
293	USAU	2025-03-30	83
294	SWCI	2025-01-26	296
294	ELO	2025-01-26	286
294	Massey	2025-01-26	134
294	USAU	2025-01-26	263
294	SWCI	2025-02-02	299
294	ELO	2025-02-02	254
294	Massey	2025-02-02	275
294	USAU	2025-02-02	241
294	SWCI	2025-02-08	308
294	ELO	2025-02-08	241
294	Massey	2025-02-08	249
294	USAU	2025-02-08	228
294	SWCI	2025-02-09	308
294	ELO	2025-02-09	236
294	Massey	2025-02-09	201
294	USAU	2025-02-09	226
294	SWCI	2025-02-12	308
294	ELO	2025-02-12	227
294	Massey	2025-02-12	270
294	USAU	2025-02-12	226
294	SWCI	2025-02-16	315
294	ELO	2025-02-16	224
294	Massey	2025-02-16	217
294	USAU	2025-02-16	211
294	SWCI	2025-02-17	315
294	ELO	2025-02-17	222
294	Massey	2025-02-17	245
294	USAU	2025-02-17	209
294	SWCI	2025-02-22	335
294	ELO	2025-02-22	219
294	Massey	2025-02-22	222
294	USAU	2025-02-22	204
294	SWCI	2025-02-23	335
294	ELO	2025-02-23	217
294	Massey	2025-02-23	164
294	USAU	2025-02-23	206
294	SWCI	2025-03-02	297
294	ELO	2025-03-02	221
294	Massey	2025-03-02	383
294	USAU	2025-03-02	394
294	SWCI	2025-03-08	306
294	ELO	2025-03-08	378
294	Massey	2025-03-08	371
294	USAU	2025-03-08	394
294	SWCI	2025-03-09	309
294	ELO	2025-03-09	377
294	Massey	2025-03-09	373
294	USAU	2025-03-09	393
294	SWCI	2025-03-15	339
294	ELO	2025-03-15	377
294	Massey	2025-03-15	382
294	USAU	2025-03-15	384
294	SWCI	2025-03-16	336
294	ELO	2025-03-16	376
294	Massey	2025-03-16	378
294	USAU	2025-03-16	387
294	SWCI	2025-03-23	354
294	ELO	2025-03-23	375
294	Massey	2025-03-23	375
294	USAU	2025-03-23	385
294	SWCI	2025-03-29	380
294	ELO	2025-03-29	370
294	Massey	2025-03-29	368
294	USAU	2025-03-29	381
294	SWCI	2025-03-30	376
294	ELO	2025-03-30	369
294	Massey	2025-03-30	366
294	USAU	2025-03-30	387
295	SWCI	2025-01-26	297
295	ELO	2025-01-26	287
295	Massey	2025-01-26	135
295	USAU	2025-01-26	264
295	SWCI	2025-02-02	54
295	ELO	2025-02-02	255
295	Massey	2025-02-02	312
295	USAU	2025-02-02	58
295	SWCI	2025-02-08	63
295	ELO	2025-02-08	68
295	Massey	2025-02-08	102
295	USAU	2025-02-08	55
295	SWCI	2025-02-09	66
295	ELO	2025-02-09	73
295	Massey	2025-02-09	105
295	USAU	2025-02-09	58
295	SWCI	2025-02-12	66
295	ELO	2025-02-12	85
295	Massey	2025-02-12	72
295	USAU	2025-02-12	57
295	SWCI	2025-02-16	58
295	ELO	2025-02-16	85
295	Massey	2025-02-16	61
295	USAU	2025-02-16	49
295	SWCI	2025-02-17	57
295	ELO	2025-02-17	92
295	Massey	2025-02-17	54
295	USAU	2025-02-17	50
295	SWCI	2025-02-22	72
295	ELO	2025-02-22	93
295	Massey	2025-02-22	68
295	USAU	2025-02-22	54
295	SWCI	2025-02-23	71
295	ELO	2025-02-23	97
295	Massey	2025-02-23	60
295	USAU	2025-02-23	49
295	SWCI	2025-03-02	65
295	ELO	2025-03-02	117
295	Massey	2025-03-02	66
295	USAU	2025-03-02	65
295	SWCI	2025-03-08	67
295	ELO	2025-03-08	56
295	Massey	2025-03-08	62
295	USAU	2025-03-08	65
295	SWCI	2025-03-09	68
295	ELO	2025-03-09	57
295	Massey	2025-03-09	61
295	USAU	2025-03-09	65
295	SWCI	2025-03-15	63
295	ELO	2025-03-15	59
295	Massey	2025-03-15	117
295	USAU	2025-03-15	66
295	SWCI	2025-03-16	61
295	ELO	2025-03-16	62
295	Massey	2025-03-16	60
295	USAU	2025-03-16	64
295	SWCI	2025-03-23	58
295	ELO	2025-03-23	69
295	Massey	2025-03-23	87
295	USAU	2025-03-23	62
295	SWCI	2025-03-29	40
295	ELO	2025-03-29	77
295	Massey	2025-03-29	61
295	USAU	2025-03-29	64
295	SWCI	2025-03-30	73
295	ELO	2025-03-30	78
295	Massey	2025-03-30	65
295	USAU	2025-03-30	72
296	SWCI	2025-01-26	298
296	ELO	2025-01-26	288
296	Massey	2025-01-26	184
296	USAU	2025-01-26	265
296	SWCI	2025-02-02	300
296	ELO	2025-02-02	256
296	Massey	2025-02-02	266
296	USAU	2025-02-02	242
296	SWCI	2025-02-08	149
296	ELO	2025-02-08	242
296	Massey	2025-02-08	377
296	USAU	2025-02-08	379
296	SWCI	2025-02-09	147
296	ELO	2025-02-09	237
296	Massey	2025-02-09	374
296	USAU	2025-02-09	375
296	SWCI	2025-02-12	136
296	ELO	2025-02-12	351
296	Massey	2025-02-12	346
296	USAU	2025-02-12	372
296	SWCI	2025-02-16	148
296	ELO	2025-02-16	351
296	Massey	2025-02-16	325
296	USAU	2025-02-16	363
296	SWCI	2025-02-17	149
296	ELO	2025-02-17	342
296	Massey	2025-02-17	329
296	USAU	2025-02-17	367
296	SWCI	2025-02-22	184
296	ELO	2025-02-22	338
296	Massey	2025-02-22	309
296	USAU	2025-02-22	348
296	SWCI	2025-02-23	183
296	ELO	2025-02-23	337
296	Massey	2025-02-23	296
296	USAU	2025-02-23	345
296	SWCI	2025-03-02	181
296	ELO	2025-03-02	324
296	Massey	2025-03-02	163
296	USAU	2025-03-02	263
296	SWCI	2025-03-08	184
296	ELO	2025-03-08	247
296	Massey	2025-03-08	154
296	USAU	2025-03-08	259
296	SWCI	2025-03-09	185
296	ELO	2025-03-09	246
296	Massey	2025-03-09	154
296	USAU	2025-03-09	256
296	SWCI	2025-03-15	204
296	ELO	2025-03-15	239
296	Massey	2025-03-15	207
296	USAU	2025-03-15	212
296	SWCI	2025-03-16	202
296	ELO	2025-03-16	235
296	Massey	2025-03-16	151
296	USAU	2025-03-16	216
296	SWCI	2025-03-23	215
296	ELO	2025-03-23	224
296	Massey	2025-03-23	181
296	USAU	2025-03-23	193
296	SWCI	2025-03-29	195
296	ELO	2025-03-29	220
296	Massey	2025-03-29	149
296	USAU	2025-03-29	159
296	SWCI	2025-03-30	223
296	ELO	2025-03-30	220
296	Massey	2025-03-30	168
296	USAU	2025-03-30	178
297	SWCI	2025-01-26	299
297	ELO	2025-01-26	289
297	Massey	2025-01-26	185
297	USAU	2025-01-26	266
297	SWCI	2025-02-02	301
297	ELO	2025-02-02	257
297	Massey	2025-02-02	269
297	USAU	2025-02-02	243
297	SWCI	2025-02-08	112
297	ELO	2025-02-08	243
297	Massey	2025-02-08	370
297	USAU	2025-02-08	371
297	SWCI	2025-02-09	111
297	ELO	2025-02-09	238
297	Massey	2025-02-09	359
297	USAU	2025-02-09	367
297	SWCI	2025-02-12	108
297	ELO	2025-02-12	330
297	Massey	2025-02-12	341
297	USAU	2025-02-12	367
297	SWCI	2025-02-16	118
297	ELO	2025-02-16	330
297	Massey	2025-02-16	322
297	USAU	2025-02-16	355
297	SWCI	2025-02-17	118
297	ELO	2025-02-17	322
297	Massey	2025-02-17	320
297	USAU	2025-02-17	356
297	SWCI	2025-02-22	146
297	ELO	2025-02-22	320
297	Massey	2025-02-22	303
297	USAU	2025-02-22	341
297	SWCI	2025-02-23	148
297	ELO	2025-02-23	320
297	Massey	2025-02-23	289
297	USAU	2025-02-23	334
297	SWCI	2025-03-02	126
297	ELO	2025-03-02	301
297	Massey	2025-03-02	181
297	USAU	2025-03-02	267
297	SWCI	2025-03-08	127
297	ELO	2025-03-08	95
297	Massey	2025-03-08	168
297	USAU	2025-03-08	264
297	SWCI	2025-03-09	129
297	ELO	2025-03-09	98
297	Massey	2025-03-09	170
297	USAU	2025-03-09	263
297	SWCI	2025-03-15	138
297	ELO	2025-03-15	100
297	Massey	2025-03-15	217
297	USAU	2025-03-15	207
297	SWCI	2025-03-16	140
297	ELO	2025-03-16	101
297	Massey	2025-03-16	163
297	USAU	2025-03-16	209
297	SWCI	2025-03-23	142
297	ELO	2025-03-23	110
297	Massey	2025-03-23	192
297	USAU	2025-03-23	189
297	SWCI	2025-03-29	108
297	ELO	2025-03-29	117
297	Massey	2025-03-29	168
297	USAU	2025-03-29	163
297	SWCI	2025-03-30	130
297	ELO	2025-03-30	117
297	Massey	2025-03-30	167
297	USAU	2025-03-30	161
298	SWCI	2025-01-26	300
298	ELO	2025-01-26	290
298	Massey	2025-01-26	300
298	USAU	2025-01-26	267
298	SWCI	2025-02-02	302
298	ELO	2025-02-02	258
298	Massey	2025-02-02	142
298	USAU	2025-02-02	244
298	SWCI	2025-02-08	59
298	ELO	2025-02-08	244
298	Massey	2025-02-08	361
298	USAU	2025-02-08	362
298	SWCI	2025-02-09	59
298	ELO	2025-02-09	239
298	Massey	2025-02-09	355
298	USAU	2025-02-09	355
298	SWCI	2025-02-12	54
298	ELO	2025-02-12	56
298	Massey	2025-02-12	334
298	USAU	2025-02-12	353
298	SWCI	2025-02-16	51
298	ELO	2025-02-16	56
298	Massey	2025-02-16	311
298	USAU	2025-02-16	339
298	SWCI	2025-02-17	51
298	ELO	2025-02-17	63
298	Massey	2025-02-17	310
298	USAU	2025-02-17	341
298	SWCI	2025-02-22	64
298	ELO	2025-02-22	65
298	Massey	2025-02-22	287
298	USAU	2025-02-22	321
298	SWCI	2025-02-23	67
298	ELO	2025-02-23	68
298	Massey	2025-02-23	270
298	USAU	2025-02-23	311
298	SWCI	2025-03-02	115
298	ELO	2025-03-02	83
298	Massey	2025-03-02	167
298	USAU	2025-03-02	259
298	SWCI	2025-03-08	115
298	ELO	2025-03-08	114
298	Massey	2025-03-08	160
298	USAU	2025-03-08	252
298	SWCI	2025-03-09	116
298	ELO	2025-03-09	117
298	Massey	2025-03-09	160
298	USAU	2025-03-09	249
298	SWCI	2025-03-15	118
298	ELO	2025-03-15	121
298	Massey	2025-03-15	201
298	USAU	2025-03-15	139
298	SWCI	2025-03-16	123
298	ELO	2025-03-16	123
298	Massey	2025-03-16	141
298	USAU	2025-03-16	138
298	SWCI	2025-03-23	124
298	ELO	2025-03-23	130
298	Massey	2025-03-23	173
298	USAU	2025-03-23	141
298	SWCI	2025-03-29	160
298	ELO	2025-03-29	139
298	Massey	2025-03-29	148
298	USAU	2025-03-29	148
298	SWCI	2025-03-30	185
298	ELO	2025-03-30	142
298	Massey	2025-03-30	149
298	USAU	2025-03-30	154
299	SWCI	2025-01-26	301
299	ELO	2025-01-26	291
299	Massey	2025-01-26	283
299	USAU	2025-01-26	268
299	SWCI	2025-02-02	303
299	ELO	2025-02-02	259
299	Massey	2025-02-02	166
299	USAU	2025-02-02	245
299	SWCI	2025-02-08	154
299	ELO	2025-02-08	245
299	Massey	2025-02-08	392
299	USAU	2025-02-08	390
299	SWCI	2025-02-09	153
299	ELO	2025-02-09	240
299	Massey	2025-02-09	392
299	USAU	2025-02-09	390
299	SWCI	2025-02-12	159
299	ELO	2025-02-12	388
299	Massey	2025-02-12	381
299	USAU	2025-02-12	391
299	SWCI	2025-02-16	176
299	ELO	2025-02-16	388
299	Massey	2025-02-16	377
299	USAU	2025-02-16	389
299	SWCI	2025-02-17	175
299	ELO	2025-02-17	387
299	Massey	2025-02-17	384
299	USAU	2025-02-17	389
299	SWCI	2025-02-22	219
299	ELO	2025-02-22	388
299	Massey	2025-02-22	380
299	USAU	2025-02-22	387
299	SWCI	2025-02-23	220
299	ELO	2025-02-23	387
299	Massey	2025-02-23	371
299	USAU	2025-02-23	386
299	SWCI	2025-03-02	289
299	ELO	2025-03-02	383
299	Massey	2025-03-02	342
299	USAU	2025-03-02	353
299	SWCI	2025-03-08	294
299	ELO	2025-03-08	379
299	Massey	2025-03-08	286
299	USAU	2025-03-08	357
299	SWCI	2025-03-09	298
299	ELO	2025-03-09	378
299	Massey	2025-03-09	277
299	USAU	2025-03-09	357
299	SWCI	2025-03-15	321
299	ELO	2025-03-15	378
299	Massey	2025-03-15	337
299	USAU	2025-03-15	331
299	SWCI	2025-03-16	322
299	ELO	2025-03-16	377
299	Massey	2025-03-16	321
299	USAU	2025-03-16	333
299	SWCI	2025-03-23	335
299	ELO	2025-03-23	376
299	Massey	2025-03-23	325
299	USAU	2025-03-23	321
299	SWCI	2025-03-29	322
299	ELO	2025-03-29	371
299	Massey	2025-03-29	304
299	USAU	2025-03-29	329
299	SWCI	2025-03-30	301
299	ELO	2025-03-30	370
299	Massey	2025-03-30	306
299	USAU	2025-03-30	330
300	SWCI	2025-01-26	302
300	ELO	2025-01-26	292
300	Massey	2025-01-26	284
300	USAU	2025-01-26	269
300	SWCI	2025-02-02	304
300	ELO	2025-02-02	260
300	Massey	2025-02-02	167
300	USAU	2025-02-02	246
300	SWCI	2025-02-08	309
300	ELO	2025-02-08	246
300	Massey	2025-02-08	155
300	USAU	2025-02-08	229
300	SWCI	2025-02-09	309
300	ELO	2025-02-09	241
300	Massey	2025-02-09	153
300	USAU	2025-02-09	227
300	SWCI	2025-02-12	309
300	ELO	2025-02-12	228
300	Massey	2025-02-12	215
300	USAU	2025-02-12	227
300	SWCI	2025-02-16	316
300	ELO	2025-02-16	225
300	Massey	2025-02-16	137
300	USAU	2025-02-16	212
300	SWCI	2025-02-17	316
300	ELO	2025-02-17	223
300	Massey	2025-02-17	189
300	USAU	2025-02-17	210
300	SWCI	2025-02-22	336
300	ELO	2025-02-22	220
300	Massey	2025-02-22	219
300	USAU	2025-02-22	205
300	SWCI	2025-02-23	336
300	ELO	2025-02-23	218
300	Massey	2025-02-23	195
300	USAU	2025-02-23	207
300	SWCI	2025-03-02	360
300	ELO	2025-03-02	222
300	Massey	2025-03-02	211
300	USAU	2025-03-02	180
300	SWCI	2025-03-08	360
300	ELO	2025-03-08	199
300	Massey	2025-03-08	293
300	USAU	2025-03-08	174
300	SWCI	2025-03-09	361
300	ELO	2025-03-09	198
300	Massey	2025-03-09	293
300	USAU	2025-03-09	173
300	SWCI	2025-03-15	372
300	ELO	2025-03-15	193
300	Massey	2025-03-15	42
300	USAU	2025-03-15	164
300	SWCI	2025-03-16	372
300	ELO	2025-03-16	190
300	Massey	2025-03-16	284
300	USAU	2025-03-16	166
300	SWCI	2025-03-23	191
300	ELO	2025-03-23	187
300	Massey	2025-03-23	212
300	USAU	2025-03-23	203
300	SWCI	2025-03-29	177
300	ELO	2025-03-29	259
300	Massey	2025-03-29	175
300	USAU	2025-03-29	156
300	SWCI	2025-03-30	177
300	ELO	2025-03-30	260
300	Massey	2025-03-30	172
300	USAU	2025-03-30	150
301	SWCI	2025-01-26	303
301	ELO	2025-01-26	293
301	Massey	2025-01-26	285
301	USAU	2025-01-26	270
301	SWCI	2025-02-02	305
301	ELO	2025-02-02	261
301	Massey	2025-02-02	168
301	USAU	2025-02-02	247
301	SWCI	2025-02-08	310
301	ELO	2025-02-08	247
301	Massey	2025-02-08	156
301	USAU	2025-02-08	230
301	SWCI	2025-02-09	310
301	ELO	2025-02-09	242
301	Massey	2025-02-09	154
301	USAU	2025-02-09	228
301	SWCI	2025-02-12	310
301	ELO	2025-02-12	229
301	Massey	2025-02-12	206
301	USAU	2025-02-12	228
301	SWCI	2025-02-16	317
301	ELO	2025-02-16	226
301	Massey	2025-02-16	138
301	USAU	2025-02-16	213
301	SWCI	2025-02-17	317
301	ELO	2025-02-17	224
301	Massey	2025-02-17	188
301	USAU	2025-02-17	211
301	SWCI	2025-02-22	337
301	ELO	2025-02-22	221
301	Massey	2025-02-22	218
301	USAU	2025-02-22	206
301	SWCI	2025-02-23	337
301	ELO	2025-02-23	219
301	Massey	2025-02-23	211
301	USAU	2025-02-23	208
301	SWCI	2025-03-02	361
301	ELO	2025-03-02	223
301	Massey	2025-03-02	194
301	USAU	2025-03-02	181
301	SWCI	2025-03-08	361
301	ELO	2025-03-08	200
301	Massey	2025-03-08	278
301	USAU	2025-03-08	175
301	SWCI	2025-03-09	362
301	ELO	2025-03-09	199
301	Massey	2025-03-09	316
301	USAU	2025-03-09	174
301	SWCI	2025-03-15	373
301	ELO	2025-03-15	194
301	Massey	2025-03-15	41
301	USAU	2025-03-15	165
301	SWCI	2025-03-16	373
301	ELO	2025-03-16	191
301	Massey	2025-03-16	320
301	USAU	2025-03-16	167
301	SWCI	2025-03-23	4
301	ELO	2025-03-23	188
301	Massey	2025-03-23	53
301	USAU	2025-03-23	30
301	SWCI	2025-03-29	3
301	ELO	2025-03-29	25
301	Massey	2025-03-29	20
301	USAU	2025-03-29	26
301	SWCI	2025-03-30	3
301	ELO	2025-03-30	25
301	Massey	2025-03-30	17
301	USAU	2025-03-30	24
302	SWCI	2025-01-26	304
302	ELO	2025-01-26	294
302	Massey	2025-01-26	286
302	USAU	2025-01-26	271
302	SWCI	2025-02-02	306
302	ELO	2025-02-02	262
302	Massey	2025-02-02	169
302	USAU	2025-02-02	248
302	SWCI	2025-02-08	311
302	ELO	2025-02-08	248
302	Massey	2025-02-08	152
302	USAU	2025-02-08	231
302	SWCI	2025-02-09	311
302	ELO	2025-02-09	243
302	Massey	2025-02-09	151
302	USAU	2025-02-09	229
302	SWCI	2025-02-12	311
302	ELO	2025-02-12	230
302	Massey	2025-02-12	217
302	USAU	2025-02-12	229
302	SWCI	2025-02-16	318
302	ELO	2025-02-16	227
302	Massey	2025-02-16	145
302	USAU	2025-02-16	214
302	SWCI	2025-02-17	318
302	ELO	2025-02-17	225
302	Massey	2025-02-17	205
302	USAU	2025-02-17	212
302	SWCI	2025-02-22	24
302	ELO	2025-02-22	222
302	Massey	2025-02-22	56
302	USAU	2025-02-22	28
302	SWCI	2025-02-23	52
302	ELO	2025-02-23	220
302	Massey	2025-02-23	51
302	USAU	2025-02-23	36
302	SWCI	2025-03-02	74
302	ELO	2025-03-02	68
302	Massey	2025-03-02	120
302	USAU	2025-03-02	232
302	SWCI	2025-03-08	65
302	ELO	2025-03-08	87
302	Massey	2025-03-08	96
302	USAU	2025-03-08	111
302	SWCI	2025-03-09	61
302	ELO	2025-03-09	89
302	Massey	2025-03-09	95
302	USAU	2025-03-09	112
302	SWCI	2025-03-15	65
302	ELO	2025-03-15	91
302	Massey	2025-03-15	167
302	USAU	2025-03-15	192
302	SWCI	2025-03-16	64
302	ELO	2025-03-16	93
302	Massey	2025-03-16	105
302	USAU	2025-03-16	139
302	SWCI	2025-03-23	186
302	ELO	2025-03-23	101
302	Massey	2025-03-23	191
302	USAU	2025-03-23	225
302	SWCI	2025-03-29	165
302	ELO	2025-03-29	171
302	Massey	2025-03-29	176
302	USAU	2025-03-29	193
302	SWCI	2025-03-30	111
302	ELO	2025-03-30	172
302	Massey	2025-03-30	158
302	USAU	2025-03-30	176
303	SWCI	2025-01-26	305
303	ELO	2025-01-26	295
303	Massey	2025-01-26	287
303	USAU	2025-01-26	272
303	SWCI	2025-02-02	26
303	ELO	2025-02-02	263
303	Massey	2025-02-02	276
303	USAU	2025-02-02	44
303	SWCI	2025-02-08	33
303	ELO	2025-02-08	57
303	Massey	2025-02-08	94
303	USAU	2025-02-08	37
303	SWCI	2025-02-09	33
303	ELO	2025-02-09	60
303	Massey	2025-02-09	98
303	USAU	2025-02-09	41
303	SWCI	2025-02-12	33
303	ELO	2025-02-12	71
303	Massey	2025-02-12	64
303	USAU	2025-02-12	40
303	SWCI	2025-02-16	41
303	ELO	2025-02-16	75
303	Massey	2025-02-16	65
303	USAU	2025-02-16	39
303	SWCI	2025-02-17	39
303	ELO	2025-02-17	83
303	Massey	2025-02-17	58
303	USAU	2025-02-17	40
303	SWCI	2025-02-22	48
303	ELO	2025-02-22	83
303	Massey	2025-02-22	65
303	USAU	2025-02-22	40
303	SWCI	2025-02-23	47
303	ELO	2025-02-23	87
303	Massey	2025-02-23	61
303	USAU	2025-02-23	37
303	SWCI	2025-03-02	55
303	ELO	2025-03-02	106
303	Massey	2025-03-02	48
303	USAU	2025-03-02	37
303	SWCI	2025-03-08	55
303	ELO	2025-03-08	134
303	Massey	2025-03-08	44
303	USAU	2025-03-08	36
303	SWCI	2025-03-09	55
303	ELO	2025-03-09	137
303	Massey	2025-03-09	43
303	USAU	2025-03-09	37
303	SWCI	2025-03-15	59
303	ELO	2025-03-15	139
303	Massey	2025-03-15	103
303	USAU	2025-03-15	38
303	SWCI	2025-03-16	60
303	ELO	2025-03-16	141
303	Massey	2025-03-16	46
303	USAU	2025-03-16	38
303	SWCI	2025-03-23	64
303	ELO	2025-03-23	146
303	Massey	2025-03-23	75
303	USAU	2025-03-23	39
303	SWCI	2025-03-29	31
303	ELO	2025-03-29	160
303	Massey	2025-03-29	52
303	USAU	2025-03-29	47
303	SWCI	2025-03-30	31
303	ELO	2025-03-30	163
303	Massey	2025-03-30	55
303	USAU	2025-03-30	50
304	SWCI	2025-01-26	306
304	ELO	2025-01-26	296
304	Massey	2025-01-26	74
304	USAU	2025-01-26	273
304	SWCI	2025-02-02	307
304	ELO	2025-02-02	264
304	Massey	2025-02-02	102
304	USAU	2025-02-02	249
304	SWCI	2025-02-08	312
304	ELO	2025-02-08	249
304	Massey	2025-02-08	216
304	USAU	2025-02-08	232
304	SWCI	2025-02-09	312
304	ELO	2025-02-09	244
304	Massey	2025-02-09	187
304	USAU	2025-02-09	230
304	SWCI	2025-02-12	312
304	ELO	2025-02-12	231
304	Massey	2025-02-12	231
304	USAU	2025-02-12	230
304	SWCI	2025-02-16	319
304	ELO	2025-02-16	228
304	Massey	2025-02-16	253
304	USAU	2025-02-16	215
304	SWCI	2025-02-17	319
304	ELO	2025-02-17	226
304	Massey	2025-02-17	241
304	USAU	2025-02-17	213
304	SWCI	2025-02-22	338
304	ELO	2025-02-22	223
304	Massey	2025-02-22	191
304	USAU	2025-02-22	207
304	SWCI	2025-02-23	338
304	ELO	2025-02-23	221
304	Massey	2025-02-23	240
304	USAU	2025-02-23	209
304	SWCI	2025-03-02	362
304	ELO	2025-03-02	224
304	Massey	2025-03-02	238
304	USAU	2025-03-02	182
304	SWCI	2025-03-08	362
304	ELO	2025-03-08	201
304	Massey	2025-03-08	382
304	USAU	2025-03-08	176
304	SWCI	2025-03-09	363
304	ELO	2025-03-09	200
304	Massey	2025-03-09	302
304	USAU	2025-03-09	175
304	SWCI	2025-03-15	374
304	ELO	2025-03-15	195
304	Massey	2025-03-15	14
304	USAU	2025-03-15	166
304	SWCI	2025-03-16	374
304	ELO	2025-03-16	192
304	Massey	2025-03-16	268
304	USAU	2025-03-16	168
304	SWCI	2025-03-23	344
304	ELO	2025-03-23	189
304	Massey	2025-03-23	377
304	USAU	2025-03-23	373
304	SWCI	2025-03-29	366
304	ELO	2025-03-29	366
304	Massey	2025-03-29	379
304	USAU	2025-03-29	379
304	SWCI	2025-03-30	374
304	ELO	2025-03-30	365
304	Massey	2025-03-30	384
304	USAU	2025-03-30	386
305	SWCI	2025-01-26	307
305	ELO	2025-01-26	297
305	Massey	2025-01-26	153
305	USAU	2025-01-26	274
305	SWCI	2025-02-02	308
305	ELO	2025-02-02	265
305	Massey	2025-02-02	160
305	USAU	2025-02-02	250
305	SWCI	2025-02-08	313
305	ELO	2025-02-08	250
305	Massey	2025-02-08	188
305	USAU	2025-02-08	233
305	SWCI	2025-02-09	313
305	ELO	2025-02-09	245
305	Massey	2025-02-09	124
305	USAU	2025-02-09	231
305	SWCI	2025-02-12	313
305	ELO	2025-02-12	232
305	Massey	2025-02-12	244
305	USAU	2025-02-12	231
305	SWCI	2025-02-16	320
305	ELO	2025-02-16	229
305	Massey	2025-02-16	235
305	USAU	2025-02-16	216
305	SWCI	2025-02-17	320
305	ELO	2025-02-17	227
305	Massey	2025-02-17	156
305	USAU	2025-02-17	214
305	SWCI	2025-02-22	339
305	ELO	2025-02-22	224
305	Massey	2025-02-22	172
305	USAU	2025-02-22	208
305	SWCI	2025-02-23	339
305	ELO	2025-02-23	222
305	Massey	2025-02-23	242
305	USAU	2025-02-23	210
305	SWCI	2025-03-02	363
305	ELO	2025-03-02	225
305	Massey	2025-03-02	213
305	USAU	2025-03-02	183
305	SWCI	2025-03-08	363
305	ELO	2025-03-08	202
305	Massey	2025-03-08	295
305	USAU	2025-03-08	177
305	SWCI	2025-03-09	364
305	ELO	2025-03-09	201
305	Massey	2025-03-09	309
305	USAU	2025-03-09	176
305	SWCI	2025-03-15	375
305	ELO	2025-03-15	196
305	Massey	2025-03-15	44
305	USAU	2025-03-15	167
305	SWCI	2025-03-16	375
305	ELO	2025-03-16	193
305	Massey	2025-03-16	341
305	USAU	2025-03-16	169
305	SWCI	2025-03-23	261
305	ELO	2025-03-23	190
305	Massey	2025-03-23	348
305	USAU	2025-03-23	344
305	SWCI	2025-03-29	266
305	ELO	2025-03-29	300
305	Massey	2025-03-29	346
305	USAU	2025-03-29	341
305	SWCI	2025-03-30	286
305	ELO	2025-03-30	300
305	Massey	2025-03-30	346
305	USAU	2025-03-30	355
306	SWCI	2025-01-26	308
306	ELO	2025-01-26	298
306	Massey	2025-01-26	339
306	USAU	2025-01-26	275
306	SWCI	2025-02-02	309
306	ELO	2025-02-02	266
306	Massey	2025-02-02	215
306	USAU	2025-02-02	251
306	SWCI	2025-02-08	314
306	ELO	2025-02-08	251
306	Massey	2025-02-08	163
306	USAU	2025-02-08	234
306	SWCI	2025-02-09	314
306	ELO	2025-02-09	246
306	Massey	2025-02-09	175
306	USAU	2025-02-09	232
306	SWCI	2025-02-12	314
306	ELO	2025-02-12	233
306	Massey	2025-02-12	160
306	USAU	2025-02-12	232
306	SWCI	2025-02-16	321
306	ELO	2025-02-16	230
306	Massey	2025-02-16	161
306	USAU	2025-02-16	217
306	SWCI	2025-02-17	321
306	ELO	2025-02-17	228
306	Massey	2025-02-17	180
306	USAU	2025-02-17	215
306	SWCI	2025-02-22	340
306	ELO	2025-02-22	225
306	Massey	2025-02-22	195
306	USAU	2025-02-22	209
306	SWCI	2025-02-23	340
306	ELO	2025-02-23	223
306	Massey	2025-02-23	203
306	USAU	2025-02-23	211
306	SWCI	2025-03-02	179
306	ELO	2025-03-02	226
306	Massey	2025-03-02	155
306	USAU	2025-03-02	226
306	SWCI	2025-03-08	181
306	ELO	2025-03-08	276
306	Massey	2025-03-08	143
306	USAU	2025-03-08	219
306	SWCI	2025-03-09	183
306	ELO	2025-03-09	275
306	Massey	2025-03-09	146
306	USAU	2025-03-09	216
306	SWCI	2025-03-15	188
306	ELO	2025-03-15	267
306	Massey	2025-03-15	219
306	USAU	2025-03-15	193
306	SWCI	2025-03-16	186
306	ELO	2025-03-16	264
306	Massey	2025-03-16	158
306	USAU	2025-03-16	196
306	SWCI	2025-03-23	91
306	ELO	2025-03-23	252
306	Massey	2025-03-23	177
306	USAU	2025-03-23	136
306	SWCI	2025-03-29	100
306	ELO	2025-03-29	72
306	Massey	2025-03-29	165
306	USAU	2025-03-29	149
306	SWCI	2025-03-30	103
306	ELO	2025-03-30	73
306	Massey	2025-03-30	160
306	USAU	2025-03-30	146
307	SWCI	2025-01-26	309
307	ELO	2025-01-26	299
307	Massey	2025-01-26	63
307	USAU	2025-01-26	276
307	SWCI	2025-02-02	310
307	ELO	2025-02-02	267
307	Massey	2025-02-02	197
307	USAU	2025-02-02	252
307	SWCI	2025-02-08	315
307	ELO	2025-02-08	252
307	Massey	2025-02-08	180
307	USAU	2025-02-08	235
307	SWCI	2025-02-09	315
307	ELO	2025-02-09	247
307	Massey	2025-02-09	225
307	USAU	2025-02-09	233
307	SWCI	2025-02-12	315
307	ELO	2025-02-12	234
307	Massey	2025-02-12	169
307	USAU	2025-02-12	233
307	SWCI	2025-02-16	322
307	ELO	2025-02-16	231
307	Massey	2025-02-16	163
307	USAU	2025-02-16	218
307	SWCI	2025-02-17	322
307	ELO	2025-02-17	229
307	Massey	2025-02-17	197
307	USAU	2025-02-17	216
307	SWCI	2025-02-22	341
307	ELO	2025-02-22	226
307	Massey	2025-02-22	233
307	USAU	2025-02-22	210
307	SWCI	2025-02-23	341
307	ELO	2025-02-23	224
307	Massey	2025-02-23	232
307	USAU	2025-02-23	212
307	SWCI	2025-03-02	364
307	ELO	2025-03-02	227
307	Massey	2025-03-02	335
307	USAU	2025-03-02	184
307	SWCI	2025-03-08	364
307	ELO	2025-03-08	203
307	Massey	2025-03-08	273
307	USAU	2025-03-08	178
307	SWCI	2025-03-09	365
307	ELO	2025-03-09	202
307	Massey	2025-03-09	335
307	USAU	2025-03-09	177
307	SWCI	2025-03-15	376
307	ELO	2025-03-15	197
307	Massey	2025-03-15	12
307	USAU	2025-03-15	168
307	SWCI	2025-03-16	376
307	ELO	2025-03-16	194
307	Massey	2025-03-16	289
307	USAU	2025-03-16	170
307	SWCI	2025-03-23	163
307	ELO	2025-03-23	191
307	Massey	2025-03-23	293
307	USAU	2025-03-23	273
307	SWCI	2025-03-29	151
307	ELO	2025-03-29	153
307	Massey	2025-03-29	293
307	USAU	2025-03-29	275
307	SWCI	2025-03-30	166
307	ELO	2025-03-30	157
307	Massey	2025-03-30	296
307	USAU	2025-03-30	293
308	SWCI	2025-01-26	310
308	ELO	2025-01-26	300
308	Massey	2025-01-26	155
308	USAU	2025-01-26	277
308	SWCI	2025-02-02	311
308	ELO	2025-02-02	268
308	Massey	2025-02-02	291
308	USAU	2025-02-02	253
308	SWCI	2025-02-08	316
308	ELO	2025-02-08	253
308	Massey	2025-02-08	244
308	USAU	2025-02-08	236
308	SWCI	2025-02-09	316
308	ELO	2025-02-09	248
308	Massey	2025-02-09	223
308	USAU	2025-02-09	234
308	SWCI	2025-02-12	316
308	ELO	2025-02-12	235
308	Massey	2025-02-12	166
308	USAU	2025-02-12	234
308	SWCI	2025-02-16	323
308	ELO	2025-02-16	232
308	Massey	2025-02-16	207
308	USAU	2025-02-16	219
308	SWCI	2025-02-17	323
308	ELO	2025-02-17	230
308	Massey	2025-02-17	178
308	USAU	2025-02-17	217
308	SWCI	2025-02-22	342
308	ELO	2025-02-22	227
308	Massey	2025-02-22	202
308	USAU	2025-02-22	211
308	SWCI	2025-02-23	342
308	ELO	2025-02-23	225
308	Massey	2025-02-23	179
308	USAU	2025-02-23	213
308	SWCI	2025-03-02	365
308	ELO	2025-03-02	228
308	Massey	2025-03-02	281
308	USAU	2025-03-02	185
308	SWCI	2025-03-08	365
308	ELO	2025-03-08	204
308	Massey	2025-03-08	322
308	USAU	2025-03-08	179
308	SWCI	2025-03-09	366
308	ELO	2025-03-09	203
308	Massey	2025-03-09	299
308	USAU	2025-03-09	178
308	SWCI	2025-03-15	162
308	ELO	2025-03-15	198
308	Massey	2025-03-15	17
308	USAU	2025-03-15	190
308	SWCI	2025-03-16	199
308	ELO	2025-03-16	195
308	Massey	2025-03-16	281
308	USAU	2025-03-16	212
308	SWCI	2025-03-23	281
308	ELO	2025-03-23	245
308	Massey	2025-03-23	356
308	USAU	2025-03-23	355
308	SWCI	2025-03-29	304
308	ELO	2025-03-29	328
308	Massey	2025-03-29	354
308	USAU	2025-03-29	355
308	SWCI	2025-03-30	306
308	ELO	2025-03-30	328
308	Massey	2025-03-30	349
308	USAU	2025-03-30	356
309	SWCI	2025-01-26	311
309	ELO	2025-01-26	301
309	Massey	2025-01-26	222
309	USAU	2025-01-26	278
309	SWCI	2025-02-02	312
309	ELO	2025-02-02	269
309	Massey	2025-02-02	288
309	USAU	2025-02-02	254
309	SWCI	2025-02-08	317
309	ELO	2025-02-08	254
309	Massey	2025-02-08	265
309	USAU	2025-02-08	237
309	SWCI	2025-02-09	317
309	ELO	2025-02-09	249
309	Massey	2025-02-09	256
309	USAU	2025-02-09	235
309	SWCI	2025-02-12	317
309	ELO	2025-02-12	236
309	Massey	2025-02-12	237
309	USAU	2025-02-12	235
309	SWCI	2025-02-16	324
309	ELO	2025-02-16	233
309	Massey	2025-02-16	190
309	USAU	2025-02-16	220
309	SWCI	2025-02-17	324
309	ELO	2025-02-17	231
309	Massey	2025-02-17	202
309	USAU	2025-02-17	218
309	SWCI	2025-02-22	343
309	ELO	2025-02-22	228
309	Massey	2025-02-22	178
309	USAU	2025-02-22	212
309	SWCI	2025-02-23	343
309	ELO	2025-02-23	226
309	Massey	2025-02-23	178
309	USAU	2025-02-23	214
309	SWCI	2025-03-02	366
309	ELO	2025-03-02	229
309	Massey	2025-03-02	237
309	USAU	2025-03-02	186
309	SWCI	2025-03-08	366
309	ELO	2025-03-08	205
309	Massey	2025-03-08	370
309	USAU	2025-03-08	180
309	SWCI	2025-03-09	367
309	ELO	2025-03-09	204
309	Massey	2025-03-09	303
309	USAU	2025-03-09	179
309	SWCI	2025-03-15	377
309	ELO	2025-03-15	199
309	Massey	2025-03-15	40
309	USAU	2025-03-15	169
309	SWCI	2025-03-16	377
309	ELO	2025-03-16	196
309	Massey	2025-03-16	325
309	USAU	2025-03-16	171
309	SWCI	2025-03-23	384
309	ELO	2025-03-23	192
309	Massey	2025-03-23	7
309	USAU	2025-03-23	160
309	SWCI	2025-03-29	375
309	ELO	2025-03-29	195
309	Massey	2025-03-29	394
309	USAU	2025-03-29	394
309	SWCI	2025-03-30	394
309	ELO	2025-03-30	195
309	Massey	2025-03-30	396
309	USAU	2025-03-30	396
310	SWCI	2025-01-26	312
310	ELO	2025-01-26	302
310	Massey	2025-01-26	223
310	USAU	2025-01-26	279
310	SWCI	2025-02-02	313
310	ELO	2025-02-02	270
310	Massey	2025-02-02	292
310	USAU	2025-02-02	255
310	SWCI	2025-02-08	318
310	ELO	2025-02-08	255
310	Massey	2025-02-08	236
310	USAU	2025-02-08	238
310	SWCI	2025-02-09	318
310	ELO	2025-02-09	250
310	Massey	2025-02-09	237
310	USAU	2025-02-09	236
310	SWCI	2025-02-12	318
310	ELO	2025-02-12	237
310	Massey	2025-02-12	208
310	USAU	2025-02-12	236
310	SWCI	2025-02-16	325
310	ELO	2025-02-16	234
310	Massey	2025-02-16	186
310	USAU	2025-02-16	221
310	SWCI	2025-02-17	325
310	ELO	2025-02-17	232
310	Massey	2025-02-17	208
310	USAU	2025-02-17	219
310	SWCI	2025-02-22	344
310	ELO	2025-02-22	229
310	Massey	2025-02-22	229
310	USAU	2025-02-22	213
310	SWCI	2025-02-23	344
310	ELO	2025-02-23	227
310	Massey	2025-02-23	166
310	USAU	2025-02-23	215
310	SWCI	2025-03-02	367
310	ELO	2025-03-02	230
310	Massey	2025-03-02	228
310	USAU	2025-03-02	187
310	SWCI	2025-03-08	367
310	ELO	2025-03-08	206
310	Massey	2025-03-08	373
310	USAU	2025-03-08	181
310	SWCI	2025-03-09	368
310	ELO	2025-03-09	205
310	Massey	2025-03-09	306
310	USAU	2025-03-09	180
310	SWCI	2025-03-15	378
310	ELO	2025-03-15	200
310	Massey	2025-03-15	19
310	USAU	2025-03-15	170
310	SWCI	2025-03-16	378
310	ELO	2025-03-16	197
310	Massey	2025-03-16	318
310	USAU	2025-03-16	172
310	SWCI	2025-03-23	385
310	ELO	2025-03-23	193
310	Massey	2025-03-23	5
310	USAU	2025-03-23	161
310	SWCI	2025-03-29	294
310	ELO	2025-03-29	196
310	Massey	2025-03-29	387
310	USAU	2025-03-29	368
310	SWCI	2025-03-30	303
310	ELO	2025-03-30	196
310	Massey	2025-03-30	383
310	USAU	2025-03-30	369
311	SWCI	2025-01-26	313
311	ELO	2025-01-26	303
311	Massey	2025-01-26	136
311	USAU	2025-01-26	280
311	SWCI	2025-02-02	70
311	ELO	2025-02-02	271
311	Massey	2025-02-02	327
311	USAU	2025-02-02	347
311	SWCI	2025-02-08	92
311	ELO	2025-02-08	347
311	Massey	2025-02-08	146
311	USAU	2025-02-08	74
311	SWCI	2025-02-09	91
311	ELO	2025-02-09	344
311	Massey	2025-02-09	272
311	USAU	2025-02-09	75
311	SWCI	2025-02-12	91
311	ELO	2025-02-12	333
311	Massey	2025-02-12	106
311	USAU	2025-02-12	74
311	SWCI	2025-02-16	100
311	ELO	2025-02-16	333
311	Massey	2025-02-16	87
311	USAU	2025-02-16	64
311	SWCI	2025-02-17	100
311	ELO	2025-02-17	324
311	Massey	2025-02-17	76
311	USAU	2025-02-17	66
311	SWCI	2025-02-22	123
311	ELO	2025-02-22	322
311	Massey	2025-02-22	98
311	USAU	2025-02-22	85
311	SWCI	2025-02-23	114
311	ELO	2025-02-23	322
311	Massey	2025-02-23	89
311	USAU	2025-02-23	75
311	SWCI	2025-03-02	136
311	ELO	2025-03-02	302
311	Massey	2025-03-02	73
311	USAU	2025-03-02	77
311	SWCI	2025-03-08	138
311	ELO	2025-03-08	269
311	Massey	2025-03-08	67
311	USAU	2025-03-08	78
311	SWCI	2025-03-09	139
311	ELO	2025-03-09	268
311	Massey	2025-03-09	67
311	USAU	2025-03-09	78
311	SWCI	2025-03-15	152
311	ELO	2025-03-15	261
311	Massey	2025-03-15	125
311	USAU	2025-03-15	79
311	SWCI	2025-03-16	152
311	ELO	2025-03-16	258
311	Massey	2025-03-16	69
311	USAU	2025-03-16	79
311	SWCI	2025-03-23	151
311	ELO	2025-03-23	244
311	Massey	2025-03-23	113
311	USAU	2025-03-23	97
311	SWCI	2025-03-29	150
311	ELO	2025-03-29	209
311	Massey	2025-03-29	87
311	USAU	2025-03-29	96
311	SWCI	2025-03-30	158
311	ELO	2025-03-30	207
311	Massey	2025-03-30	86
311	USAU	2025-03-30	100
312	SWCI	2025-01-26	314
312	ELO	2025-01-26	304
312	Massey	2025-01-26	89
312	USAU	2025-01-26	281
312	SWCI	2025-02-02	314
312	ELO	2025-02-02	272
312	Massey	2025-02-02	280
312	USAU	2025-02-02	256
312	SWCI	2025-02-08	319
312	ELO	2025-02-08	256
312	Massey	2025-02-08	259
312	USAU	2025-02-08	239
312	SWCI	2025-02-09	319
312	ELO	2025-02-09	251
312	Massey	2025-02-09	233
312	USAU	2025-02-09	237
312	SWCI	2025-02-12	319
312	ELO	2025-02-12	238
312	Massey	2025-02-12	245
312	USAU	2025-02-12	237
312	SWCI	2025-02-16	326
312	ELO	2025-02-16	235
312	Massey	2025-02-16	140
312	USAU	2025-02-16	222
312	SWCI	2025-02-17	326
312	ELO	2025-02-17	233
312	Massey	2025-02-17	161
312	USAU	2025-02-17	220
312	SWCI	2025-02-22	345
312	ELO	2025-02-22	230
312	Massey	2025-02-22	185
312	USAU	2025-02-22	214
312	SWCI	2025-02-23	345
312	ELO	2025-02-23	228
312	Massey	2025-02-23	184
312	USAU	2025-02-23	216
312	SWCI	2025-03-02	222
312	ELO	2025-03-02	231
312	Massey	2025-03-02	157
312	USAU	2025-03-02	264
312	SWCI	2025-03-08	224
312	ELO	2025-03-08	293
312	Massey	2025-03-08	152
312	USAU	2025-03-08	260
312	SWCI	2025-03-09	229
312	ELO	2025-03-09	293
312	Massey	2025-03-09	152
312	USAU	2025-03-09	258
312	SWCI	2025-03-15	129
312	ELO	2025-03-15	286
312	Massey	2025-03-15	178
312	USAU	2025-03-15	224
312	SWCI	2025-03-16	78
312	ELO	2025-03-16	283
312	Massey	2025-03-16	113
312	USAU	2025-03-16	215
312	SWCI	2025-03-23	73
312	ELO	2025-03-23	31
312	Massey	2025-03-23	140
312	USAU	2025-03-23	178
312	SWCI	2025-03-29	161
312	ELO	2025-03-29	34
312	Massey	2025-03-29	153
312	USAU	2025-03-29	182
312	SWCI	2025-03-30	162
312	ELO	2025-03-30	35
312	Massey	2025-03-30	144
312	USAU	2025-03-30	177
313	SWCI	2025-01-26	315
313	ELO	2025-01-26	305
313	Massey	2025-01-26	90
313	USAU	2025-01-26	282
313	SWCI	2025-02-02	315
313	ELO	2025-02-02	273
313	Massey	2025-02-02	281
313	USAU	2025-02-02	257
313	SWCI	2025-02-08	58
313	ELO	2025-02-08	41
313	Massey	2025-02-08	338
313	USAU	2025-02-08	343
313	SWCI	2025-02-09	58
313	ELO	2025-02-09	44
313	Massey	2025-02-09	365
313	USAU	2025-02-09	341
313	SWCI	2025-02-12	59
313	ELO	2025-02-12	54
313	Massey	2025-02-12	363
313	USAU	2025-02-12	341
313	SWCI	2025-02-16	63
313	ELO	2025-02-16	54
313	Massey	2025-02-16	350
313	USAU	2025-02-16	368
313	SWCI	2025-02-17	64
313	ELO	2025-02-17	60
313	Massey	2025-02-17	355
313	USAU	2025-02-17	368
313	SWCI	2025-02-22	78
313	ELO	2025-02-22	62
313	Massey	2025-02-22	276
313	USAU	2025-02-22	296
313	SWCI	2025-02-23	79
313	ELO	2025-02-23	65
313	Massey	2025-02-23	257
313	USAU	2025-02-23	280
313	SWCI	2025-03-02	146
313	ELO	2025-03-02	77
313	Massey	2025-03-02	121
313	USAU	2025-03-02	128
313	SWCI	2025-03-08	148
313	ELO	2025-03-08	135
313	Massey	2025-03-08	119
313	USAU	2025-03-08	128
313	SWCI	2025-03-09	150
313	ELO	2025-03-09	138
313	Massey	2025-03-09	117
313	USAU	2025-03-09	127
313	SWCI	2025-03-15	150
313	ELO	2025-03-15	140
313	Massey	2025-03-15	177
313	USAU	2025-03-15	140
313	SWCI	2025-03-16	149
313	ELO	2025-03-16	142
313	Massey	2025-03-16	120
313	USAU	2025-03-16	134
313	SWCI	2025-03-23	102
313	ELO	2025-03-23	147
313	Massey	2025-03-23	125
313	USAU	2025-03-23	100
313	SWCI	2025-03-29	113
313	ELO	2025-03-29	94
313	Massey	2025-03-29	112
313	USAU	2025-03-29	110
313	SWCI	2025-03-30	114
313	ELO	2025-03-30	94
313	Massey	2025-03-30	114
313	USAU	2025-03-30	113
314	SWCI	2025-01-26	316
314	ELO	2025-01-26	306
314	Massey	2025-01-26	77
314	USAU	2025-01-26	283
314	SWCI	2025-02-02	316
314	ELO	2025-02-02	274
314	Massey	2025-02-02	298
314	USAU	2025-02-02	258
314	SWCI	2025-02-08	146
314	ELO	2025-02-08	370
314	Massey	2025-02-08	378
314	USAU	2025-02-08	382
314	SWCI	2025-02-09	144
314	ELO	2025-02-09	368
314	Massey	2025-02-09	387
314	USAU	2025-02-09	381
314	SWCI	2025-02-12	145
314	ELO	2025-02-12	361
314	Massey	2025-02-12	382
314	USAU	2025-02-12	381
314	SWCI	2025-02-16	162
314	ELO	2025-02-16	361
314	Massey	2025-02-16	378
314	USAU	2025-02-16	392
314	SWCI	2025-02-17	163
314	ELO	2025-02-17	352
314	Massey	2025-02-17	385
314	USAU	2025-02-17	392
314	SWCI	2025-02-22	205
314	ELO	2025-02-22	350
314	Massey	2025-02-22	340
314	USAU	2025-02-22	361
314	SWCI	2025-02-23	202
314	ELO	2025-02-23	349
314	Massey	2025-02-23	318
314	USAU	2025-02-23	346
314	SWCI	2025-03-02	106
314	ELO	2025-03-02	342
314	Massey	2025-03-02	104
314	USAU	2025-03-02	101
314	SWCI	2025-03-08	105
314	ELO	2025-03-08	81
314	Massey	2025-03-08	100
314	USAU	2025-03-08	106
314	SWCI	2025-03-09	106
314	ELO	2025-03-09	83
314	Massey	2025-03-09	99
314	USAU	2025-03-09	104
314	SWCI	2025-03-15	105
314	ELO	2025-03-15	86
314	Massey	2025-03-15	155
314	USAU	2025-03-15	110
314	SWCI	2025-03-16	109
314	ELO	2025-03-16	88
314	Massey	2025-03-16	97
314	USAU	2025-03-16	105
314	SWCI	2025-03-23	95
314	ELO	2025-03-23	96
314	Massey	2025-03-23	110
314	USAU	2025-03-23	86
314	SWCI	2025-03-29	174
314	ELO	2025-03-29	104
314	Massey	2025-03-29	111
314	USAU	2025-03-29	122
314	SWCI	2025-03-30	198
314	ELO	2025-03-30	104
314	Massey	2025-03-30	127
314	USAU	2025-03-30	132
315	SWCI	2025-01-26	317
315	ELO	2025-01-26	307
315	Massey	2025-01-26	68
315	USAU	2025-01-26	284
315	SWCI	2025-02-02	317
315	ELO	2025-02-02	275
315	Massey	2025-02-02	265
315	USAU	2025-02-02	259
315	SWCI	2025-02-08	320
315	ELO	2025-02-08	257
315	Massey	2025-02-08	238
315	USAU	2025-02-08	240
315	SWCI	2025-02-09	320
315	ELO	2025-02-09	252
315	Massey	2025-02-09	235
315	USAU	2025-02-09	238
315	SWCI	2025-02-12	320
315	ELO	2025-02-12	239
315	Massey	2025-02-12	200
315	USAU	2025-02-12	238
315	SWCI	2025-02-16	327
315	ELO	2025-02-16	236
315	Massey	2025-02-16	150
315	USAU	2025-02-16	223
315	SWCI	2025-02-17	327
315	ELO	2025-02-17	234
315	Massey	2025-02-17	247
315	USAU	2025-02-17	221
315	SWCI	2025-02-22	346
315	ELO	2025-02-22	231
315	Massey	2025-02-22	173
315	USAU	2025-02-22	215
315	SWCI	2025-02-23	346
315	ELO	2025-02-23	229
315	Massey	2025-02-23	162
315	USAU	2025-02-23	217
315	SWCI	2025-03-02	71
315	ELO	2025-03-02	232
315	Massey	2025-03-02	214
315	USAU	2025-03-02	85
315	SWCI	2025-03-08	73
315	ELO	2025-03-08	103
315	Massey	2025-03-08	272
315	USAU	2025-03-08	84
315	SWCI	2025-03-09	73
315	ELO	2025-03-09	106
315	Massey	2025-03-09	268
315	USAU	2025-03-09	84
315	SWCI	2025-03-15	81
315	ELO	2025-03-15	111
315	Massey	2025-03-15	271
315	USAU	2025-03-15	275
315	SWCI	2025-03-16	98
315	ELO	2025-03-16	112
315	Massey	2025-03-16	248
315	USAU	2025-03-16	286
315	SWCI	2025-03-23	101
315	ELO	2025-03-23	120
315	Massey	2025-03-23	276
315	USAU	2025-03-23	262
315	SWCI	2025-03-29	98
315	ELO	2025-03-29	129
315	Massey	2025-03-29	237
315	USAU	2025-03-29	232
315	SWCI	2025-03-30	118
315	ELO	2025-03-30	132
315	Massey	2025-03-30	255
315	USAU	2025-03-30	250
316	SWCI	2025-01-26	318
316	ELO	2025-01-26	308
316	Massey	2025-01-26	194
316	USAU	2025-01-26	285
316	SWCI	2025-02-02	318
316	ELO	2025-02-02	276
316	Massey	2025-02-02	270
316	USAU	2025-02-02	260
316	SWCI	2025-02-08	321
316	ELO	2025-02-08	258
316	Massey	2025-02-08	273
316	USAU	2025-02-08	241
316	SWCI	2025-02-09	321
316	ELO	2025-02-09	253
316	Massey	2025-02-09	253
316	USAU	2025-02-09	239
316	SWCI	2025-02-12	321
316	ELO	2025-02-12	240
316	Massey	2025-02-12	187
316	USAU	2025-02-12	239
316	SWCI	2025-02-16	328
316	ELO	2025-02-16	237
316	Massey	2025-02-16	244
316	USAU	2025-02-16	224
316	SWCI	2025-02-17	328
316	ELO	2025-02-17	235
316	Massey	2025-02-17	249
316	USAU	2025-02-17	222
316	SWCI	2025-02-22	347
316	ELO	2025-02-22	232
316	Massey	2025-02-22	227
316	USAU	2025-02-22	216
316	SWCI	2025-02-23	347
316	ELO	2025-02-23	230
316	Massey	2025-02-23	169
316	USAU	2025-02-23	218
316	SWCI	2025-03-02	368
316	ELO	2025-03-02	233
316	Massey	2025-03-02	223
316	USAU	2025-03-02	188
316	SWCI	2025-03-08	368
316	ELO	2025-03-08	207
316	Massey	2025-03-08	356
316	USAU	2025-03-08	182
316	SWCI	2025-03-09	369
316	ELO	2025-03-09	206
316	Massey	2025-03-09	304
316	USAU	2025-03-09	181
316	SWCI	2025-03-15	233
316	ELO	2025-03-15	201
316	Massey	2025-03-15	243
316	USAU	2025-03-15	245
316	SWCI	2025-03-16	274
316	ELO	2025-03-16	198
316	Massey	2025-03-16	229
316	USAU	2025-03-16	274
316	SWCI	2025-03-23	291
316	ELO	2025-03-23	349
316	Massey	2025-03-23	257
316	USAU	2025-03-23	249
316	SWCI	2025-03-29	320
316	ELO	2025-03-29	345
316	Massey	2025-03-29	228
316	USAU	2025-03-29	227
316	SWCI	2025-03-30	310
316	ELO	2025-03-30	352
316	Massey	2025-03-30	246
316	USAU	2025-03-30	249
317	SWCI	2025-01-26	319
317	ELO	2025-01-26	309
317	Massey	2025-01-26	195
317	USAU	2025-01-26	286
317	SWCI	2025-02-02	319
317	ELO	2025-02-02	277
317	Massey	2025-02-02	264
317	USAU	2025-02-02	261
317	SWCI	2025-02-08	322
317	ELO	2025-02-08	259
317	Massey	2025-02-08	234
317	USAU	2025-02-08	242
317	SWCI	2025-02-09	322
317	ELO	2025-02-09	254
317	Massey	2025-02-09	254
317	USAU	2025-02-09	240
317	SWCI	2025-02-12	322
317	ELO	2025-02-12	241
317	Massey	2025-02-12	256
317	USAU	2025-02-12	240
317	SWCI	2025-02-16	5
317	ELO	2025-02-16	238
317	Massey	2025-02-16	48
317	USAU	2025-02-16	15
317	SWCI	2025-02-17	5
317	ELO	2025-02-17	36
317	Massey	2025-02-17	24
317	USAU	2025-02-17	15
317	SWCI	2025-02-22	4
317	ELO	2025-02-22	38
317	Massey	2025-02-22	67
317	USAU	2025-02-22	18
317	SWCI	2025-02-23	5
317	ELO	2025-02-23	38
317	Massey	2025-02-23	39
317	USAU	2025-02-23	18
317	SWCI	2025-03-02	4
317	ELO	2025-03-02	48
317	Massey	2025-03-02	89
317	USAU	2025-03-02	75
317	SWCI	2025-03-08	4
317	ELO	2025-03-08	68
317	Massey	2025-03-08	80
317	USAU	2025-03-08	68
317	SWCI	2025-03-09	4
317	ELO	2025-03-09	69
317	Massey	2025-03-09	80
317	USAU	2025-03-09	67
317	SWCI	2025-03-15	14
317	ELO	2025-03-15	72
317	Massey	2025-03-15	116
317	USAU	2025-03-15	35
317	SWCI	2025-03-16	16
317	ELO	2025-03-16	75
317	Massey	2025-03-16	54
317	USAU	2025-03-16	46
317	SWCI	2025-03-23	14
317	ELO	2025-03-23	21
317	Massey	2025-03-23	78
317	USAU	2025-03-23	42
317	SWCI	2025-03-29	6
317	ELO	2025-03-29	23
317	Massey	2025-03-29	27
317	USAU	2025-03-29	17
317	SWCI	2025-03-30	4
317	ELO	2025-03-30	23
317	Massey	2025-03-30	21
317	USAU	2025-03-30	10
318	SWCI	2025-01-26	320
318	ELO	2025-01-26	310
318	Massey	2025-01-26	187
318	USAU	2025-01-26	287
318	SWCI	2025-02-02	320
318	ELO	2025-02-02	278
318	Massey	2025-02-02	227
318	USAU	2025-02-02	262
318	SWCI	2025-02-08	323
318	ELO	2025-02-08	260
318	Massey	2025-02-08	237
318	USAU	2025-02-08	243
318	SWCI	2025-02-09	323
318	ELO	2025-02-09	255
318	Massey	2025-02-09	232
318	USAU	2025-02-09	241
318	SWCI	2025-02-12	323
318	ELO	2025-02-12	242
318	Massey	2025-02-12	262
318	USAU	2025-02-12	241
318	SWCI	2025-02-16	183
318	ELO	2025-02-16	239
318	Massey	2025-02-16	366
318	USAU	2025-02-16	366
318	SWCI	2025-02-17	182
318	ELO	2025-02-17	366
318	Massey	2025-02-17	348
318	USAU	2025-02-17	364
318	SWCI	2025-02-22	224
318	ELO	2025-02-22	364
318	Massey	2025-02-22	367
318	USAU	2025-02-22	363
318	SWCI	2025-02-23	225
318	ELO	2025-02-23	362
318	Massey	2025-02-23	343
318	USAU	2025-02-23	361
318	SWCI	2025-03-02	301
318	ELO	2025-03-02	352
318	Massey	2025-03-02	385
318	USAU	2025-03-02	395
318	SWCI	2025-03-08	309
318	ELO	2025-03-08	389
318	Massey	2025-03-08	375
318	USAU	2025-03-08	395
318	SWCI	2025-03-09	312
318	ELO	2025-03-09	389
318	Massey	2025-03-09	376
318	USAU	2025-03-09	395
318	SWCI	2025-03-15	335
318	ELO	2025-03-15	388
318	Massey	2025-03-15	380
318	USAU	2025-03-15	385
318	SWCI	2025-03-16	334
318	ELO	2025-03-16	388
318	Massey	2025-03-16	374
318	USAU	2025-03-16	386
318	SWCI	2025-03-23	350
318	ELO	2025-03-23	388
318	Massey	2025-03-23	365
318	USAU	2025-03-23	370
318	SWCI	2025-03-29	378
318	ELO	2025-03-29	385
318	Massey	2025-03-29	339
318	USAU	2025-03-29	334
318	SWCI	2025-03-30	377
318	ELO	2025-03-30	395
318	Massey	2025-03-30	350
318	USAU	2025-03-30	344
319	SWCI	2025-01-26	321
319	ELO	2025-01-26	311
319	Massey	2025-01-26	188
319	USAU	2025-01-26	288
319	SWCI	2025-02-02	321
319	ELO	2025-02-02	279
319	Massey	2025-02-02	243
319	USAU	2025-02-02	263
319	SWCI	2025-02-08	324
319	ELO	2025-02-08	261
319	Massey	2025-02-08	255
319	USAU	2025-02-08	244
319	SWCI	2025-02-09	324
319	ELO	2025-02-09	256
319	Massey	2025-02-09	197
319	USAU	2025-02-09	242
319	SWCI	2025-02-12	324
319	ELO	2025-02-12	243
319	Massey	2025-02-12	233
319	USAU	2025-02-12	242
319	SWCI	2025-02-16	117
319	ELO	2025-02-16	240
319	Massey	2025-02-16	331
319	USAU	2025-02-16	372
319	SWCI	2025-02-17	117
319	ELO	2025-02-17	329
319	Massey	2025-02-17	335
319	USAU	2025-02-17	372
319	SWCI	2025-02-22	145
319	ELO	2025-02-22	327
319	Massey	2025-02-22	315
319	USAU	2025-02-22	369
319	SWCI	2025-02-23	146
319	ELO	2025-02-23	327
319	Massey	2025-02-23	301
319	USAU	2025-02-23	363
319	SWCI	2025-03-02	171
319	ELO	2025-03-02	309
319	Massey	2025-03-02	273
319	USAU	2025-03-02	302
319	SWCI	2025-03-08	171
319	ELO	2025-03-08	279
319	Massey	2025-03-08	214
319	USAU	2025-03-08	293
319	SWCI	2025-03-09	173
319	ELO	2025-03-09	279
319	Massey	2025-03-09	211
319	USAU	2025-03-09	292
319	SWCI	2025-03-15	178
319	ELO	2025-03-15	272
319	Massey	2025-03-15	275
319	USAU	2025-03-15	272
319	SWCI	2025-03-16	175
319	ELO	2025-03-16	270
319	Massey	2025-03-16	219
319	USAU	2025-03-16	270
319	SWCI	2025-03-23	303
319	ELO	2025-03-23	260
319	Massey	2025-03-23	285
319	USAU	2025-03-23	265
319	SWCI	2025-03-29	311
319	ELO	2025-03-29	388
319	Massey	2025-03-29	268
319	USAU	2025-03-29	243
319	SWCI	2025-03-30	316
319	ELO	2025-03-30	384
319	Massey	2025-03-30	270
319	USAU	2025-03-30	256
320	SWCI	2025-01-26	322
320	ELO	2025-01-26	312
320	Massey	2025-01-26	314
320	USAU	2025-01-26	289
320	SWCI	2025-02-02	322
320	ELO	2025-02-02	280
320	Massey	2025-02-02	176
320	USAU	2025-02-02	264
320	SWCI	2025-02-08	325
320	ELO	2025-02-08	262
320	Massey	2025-02-08	159
320	USAU	2025-02-08	245
320	SWCI	2025-02-09	325
320	ELO	2025-02-09	257
320	Massey	2025-02-09	172
320	USAU	2025-02-09	243
320	SWCI	2025-02-12	325
320	ELO	2025-02-12	244
320	Massey	2025-02-12	235
320	USAU	2025-02-12	243
320	SWCI	2025-02-16	152
320	ELO	2025-02-16	241
320	Massey	2025-02-16	319
320	USAU	2025-02-16	331
320	SWCI	2025-02-17	151
320	ELO	2025-02-17	340
320	Massey	2025-02-17	277
320	USAU	2025-02-17	327
320	SWCI	2025-02-22	186
320	ELO	2025-02-22	336
320	Massey	2025-02-22	312
320	USAU	2025-02-22	322
320	SWCI	2025-02-23	185
320	ELO	2025-02-23	335
320	Massey	2025-02-23	264
320	USAU	2025-02-23	322
320	SWCI	2025-03-02	227
320	ELO	2025-03-02	320
320	Massey	2025-03-02	317
320	USAU	2025-03-02	370
320	SWCI	2025-03-08	230
320	ELO	2025-03-08	297
320	Massey	2025-03-08	257
320	USAU	2025-03-08	365
320	SWCI	2025-03-09	235
320	ELO	2025-03-09	296
320	Massey	2025-03-09	249
320	USAU	2025-03-09	365
320	SWCI	2025-03-15	251
320	ELO	2025-03-15	290
320	Massey	2025-03-15	320
320	USAU	2025-03-15	355
320	SWCI	2025-03-16	245
320	ELO	2025-03-16	287
320	Massey	2025-03-16	264
320	USAU	2025-03-16	352
320	SWCI	2025-03-23	253
320	ELO	2025-03-23	274
320	Massey	2025-03-23	270
320	USAU	2025-03-23	298
320	SWCI	2025-03-29	328
320	ELO	2025-03-29	261
320	Massey	2025-03-29	231
320	USAU	2025-03-29	247
320	SWCI	2025-03-30	230
320	ELO	2025-03-30	240
320	Massey	2025-03-30	205
320	USAU	2025-03-30	199
321	SWCI	2025-01-26	323
321	ELO	2025-01-26	313
321	Massey	2025-01-26	315
321	USAU	2025-01-26	290
321	SWCI	2025-02-02	323
321	ELO	2025-02-02	281
321	Massey	2025-02-02	177
321	USAU	2025-02-02	265
321	SWCI	2025-02-08	326
321	ELO	2025-02-08	263
321	Massey	2025-02-08	198
321	USAU	2025-02-08	246
321	SWCI	2025-02-09	326
321	ELO	2025-02-09	258
321	Massey	2025-02-09	149
321	USAU	2025-02-09	244
321	SWCI	2025-02-12	326
321	ELO	2025-02-12	245
321	Massey	2025-02-12	197
321	USAU	2025-02-12	244
321	SWCI	2025-02-16	329
321	ELO	2025-02-16	242
321	Massey	2025-02-16	160
321	USAU	2025-02-16	225
321	SWCI	2025-02-17	329
321	ELO	2025-02-17	236
321	Massey	2025-02-17	194
321	USAU	2025-02-17	223
321	SWCI	2025-02-22	348
321	ELO	2025-02-22	233
321	Massey	2025-02-22	226
321	USAU	2025-02-22	217
321	SWCI	2025-02-23	348
321	ELO	2025-02-23	231
321	Massey	2025-02-23	230
321	USAU	2025-02-23	219
321	SWCI	2025-03-02	98
321	ELO	2025-03-02	234
321	Massey	2025-03-02	268
321	USAU	2025-03-02	298
321	SWCI	2025-03-08	108
321	ELO	2025-03-08	73
321	Massey	2025-03-08	221
321	USAU	2025-03-08	300
321	SWCI	2025-03-09	108
321	ELO	2025-03-09	74
321	Massey	2025-03-09	223
321	USAU	2025-03-09	306
321	SWCI	2025-03-15	123
321	ELO	2025-03-15	77
321	Massey	2025-03-15	311
321	USAU	2025-03-15	326
321	SWCI	2025-03-16	125
321	ELO	2025-03-16	81
321	Massey	2025-03-16	254
321	USAU	2025-03-16	313
321	SWCI	2025-03-23	129
321	ELO	2025-03-23	87
321	Massey	2025-03-23	303
321	USAU	2025-03-23	328
321	SWCI	2025-03-29	85
321	ELO	2025-03-29	97
321	Massey	2025-03-29	260
321	USAU	2025-03-29	255
321	SWCI	2025-03-30	84
321	ELO	2025-03-30	97
321	Massey	2025-03-30	263
321	USAU	2025-03-30	255
322	SWCI	2025-01-26	324
322	ELO	2025-01-26	314
322	Massey	2025-01-26	288
322	USAU	2025-01-26	291
322	SWCI	2025-02-02	324
322	ELO	2025-02-02	282
322	Massey	2025-02-02	170
322	USAU	2025-02-02	266
322	SWCI	2025-02-08	327
322	ELO	2025-02-08	264
322	Massey	2025-02-08	157
322	USAU	2025-02-08	247
322	SWCI	2025-02-09	327
322	ELO	2025-02-09	259
322	Massey	2025-02-09	131
322	USAU	2025-02-09	245
322	SWCI	2025-02-12	327
322	ELO	2025-02-12	246
322	Massey	2025-02-12	191
322	USAU	2025-02-12	245
322	SWCI	2025-02-16	330
322	ELO	2025-02-16	243
322	Massey	2025-02-16	195
322	USAU	2025-02-16	226
322	SWCI	2025-02-17	330
322	ELO	2025-02-17	237
322	Massey	2025-02-17	214
322	USAU	2025-02-17	224
322	SWCI	2025-02-22	349
322	ELO	2025-02-22	234
322	Massey	2025-02-22	190
322	USAU	2025-02-22	218
322	SWCI	2025-02-23	349
322	ELO	2025-02-23	232
322	Massey	2025-02-23	218
322	USAU	2025-02-23	220
322	SWCI	2025-03-02	284
322	ELO	2025-03-02	235
322	Massey	2025-03-02	374
322	USAU	2025-03-02	374
322	SWCI	2025-03-08	296
322	ELO	2025-03-08	366
322	Massey	2025-03-08	357
322	USAU	2025-03-08	378
322	SWCI	2025-03-09	300
322	ELO	2025-03-09	364
322	Massey	2025-03-09	365
322	USAU	2025-03-09	379
322	SWCI	2025-03-15	325
322	ELO	2025-03-15	364
322	Massey	2025-03-15	387
322	USAU	2025-03-15	387
322	SWCI	2025-03-16	324
322	ELO	2025-03-16	362
322	Massey	2025-03-16	382
322	USAU	2025-03-16	384
322	SWCI	2025-03-23	339
322	ELO	2025-03-23	358
322	Massey	2025-03-23	387
322	USAU	2025-03-23	389
322	SWCI	2025-03-29	234
322	ELO	2025-03-29	349
322	Massey	2025-03-29	343
322	USAU	2025-03-29	328
322	SWCI	2025-03-30	251
322	ELO	2025-03-30	347
322	Massey	2025-03-30	341
322	USAU	2025-03-30	317
323	SWCI	2025-01-26	325
323	ELO	2025-01-26	315
323	Massey	2025-01-26	301
323	USAU	2025-01-26	292
323	SWCI	2025-02-02	325
323	ELO	2025-02-02	283
323	Massey	2025-02-02	179
323	USAU	2025-02-02	267
323	SWCI	2025-02-08	328
323	ELO	2025-02-08	265
323	Massey	2025-02-08	177
323	USAU	2025-02-08	248
323	SWCI	2025-02-09	328
323	ELO	2025-02-09	260
323	Massey	2025-02-09	160
323	USAU	2025-02-09	246
323	SWCI	2025-02-12	328
323	ELO	2025-02-12	247
323	Massey	2025-02-12	190
323	USAU	2025-02-12	246
323	SWCI	2025-02-16	331
323	ELO	2025-02-16	244
323	Massey	2025-02-16	148
323	USAU	2025-02-16	227
323	SWCI	2025-02-17	331
323	ELO	2025-02-17	238
323	Massey	2025-02-17	248
323	USAU	2025-02-17	225
323	SWCI	2025-02-22	350
323	ELO	2025-02-22	235
323	Massey	2025-02-22	201
323	USAU	2025-02-22	219
323	SWCI	2025-02-23	350
323	ELO	2025-02-23	233
323	Massey	2025-02-23	221
323	USAU	2025-02-23	221
323	SWCI	2025-03-02	161
323	ELO	2025-03-02	236
323	Massey	2025-03-02	299
323	USAU	2025-03-02	373
323	SWCI	2025-03-08	162
323	ELO	2025-03-08	94
323	Massey	2025-03-08	243
323	USAU	2025-03-08	373
323	SWCI	2025-03-09	164
323	ELO	2025-03-09	97
323	Massey	2025-03-09	236
323	USAU	2025-03-09	371
323	SWCI	2025-03-15	111
323	ELO	2025-03-15	99
323	Massey	2025-03-15	272
323	USAU	2025-03-15	264
323	SWCI	2025-03-16	116
323	ELO	2025-03-16	59
323	Massey	2025-03-16	214
323	USAU	2025-03-16	262
323	SWCI	2025-03-23	120
323	ELO	2025-03-23	67
323	Massey	2025-03-23	245
323	USAU	2025-03-23	236
323	SWCI	2025-03-29	118
323	ELO	2025-03-29	76
323	Massey	2025-03-29	214
323	USAU	2025-03-29	200
323	SWCI	2025-03-30	121
323	ELO	2025-03-30	77
323	Massey	2025-03-30	217
323	USAU	2025-03-30	195
324	SWCI	2025-01-26	326
324	ELO	2025-01-26	316
324	Massey	2025-01-26	302
324	USAU	2025-01-26	293
324	SWCI	2025-02-02	326
324	ELO	2025-02-02	284
324	Massey	2025-02-02	193
324	USAU	2025-02-02	268
324	SWCI	2025-02-08	329
324	ELO	2025-02-08	266
324	Massey	2025-02-08	154
324	USAU	2025-02-08	249
324	SWCI	2025-02-09	329
324	ELO	2025-02-09	261
324	Massey	2025-02-09	192
324	USAU	2025-02-09	247
324	SWCI	2025-02-12	329
324	ELO	2025-02-12	248
324	Massey	2025-02-12	226
324	USAU	2025-02-12	247
324	SWCI	2025-02-16	332
324	ELO	2025-02-16	245
324	Massey	2025-02-16	245
324	USAU	2025-02-16	228
324	SWCI	2025-02-17	332
324	ELO	2025-02-17	239
324	Massey	2025-02-17	166
324	USAU	2025-02-17	226
324	SWCI	2025-02-22	351
324	ELO	2025-02-22	236
324	Massey	2025-02-22	232
324	USAU	2025-02-22	220
324	SWCI	2025-02-23	351
324	ELO	2025-02-23	234
324	Massey	2025-02-23	194
324	USAU	2025-02-23	222
324	SWCI	2025-03-02	307
324	ELO	2025-03-02	237
324	Massey	2025-03-02	393
324	USAU	2025-03-02	397
324	SWCI	2025-03-08	314
324	ELO	2025-03-08	385
324	Massey	2025-03-08	384
324	USAU	2025-03-08	397
324	SWCI	2025-03-09	318
324	ELO	2025-03-09	384
324	Massey	2025-03-09	388
324	USAU	2025-03-09	397
324	SWCI	2025-03-15	340
324	ELO	2025-03-15	383
324	Massey	2025-03-15	389
324	USAU	2025-03-15	389
324	SWCI	2025-03-16	340
324	ELO	2025-03-16	383
324	Massey	2025-03-16	386
324	USAU	2025-03-16	389
324	SWCI	2025-03-23	358
324	ELO	2025-03-23	382
324	Massey	2025-03-23	384
324	USAU	2025-03-23	381
324	SWCI	2025-03-29	373
324	ELO	2025-03-29	379
324	Massey	2025-03-29	371
324	USAU	2025-03-29	345
324	SWCI	2025-03-30	372
324	ELO	2025-03-30	379
324	Massey	2025-03-30	368
324	USAU	2025-03-30	349
325	SWCI	2025-01-26	327
325	ELO	2025-01-26	317
325	Massey	2025-01-26	303
325	USAU	2025-01-26	294
325	SWCI	2025-02-02	327
325	ELO	2025-02-02	285
325	Massey	2025-02-02	198
325	USAU	2025-02-02	269
325	SWCI	2025-02-08	330
325	ELO	2025-02-08	267
325	Massey	2025-02-08	150
325	USAU	2025-02-08	250
325	SWCI	2025-02-09	330
325	ELO	2025-02-09	262
325	Massey	2025-02-09	170
325	USAU	2025-02-09	248
325	SWCI	2025-02-12	330
325	ELO	2025-02-12	249
325	Massey	2025-02-12	203
325	USAU	2025-02-12	248
325	SWCI	2025-02-16	333
325	ELO	2025-02-16	246
325	Massey	2025-02-16	214
325	USAU	2025-02-16	229
325	SWCI	2025-02-17	333
325	ELO	2025-02-17	240
325	Massey	2025-02-17	191
325	USAU	2025-02-17	227
325	SWCI	2025-02-22	352
325	ELO	2025-02-22	237
325	Massey	2025-02-22	241
325	USAU	2025-02-22	221
325	SWCI	2025-02-23	352
325	ELO	2025-02-23	235
325	Massey	2025-02-23	207
325	USAU	2025-02-23	223
325	SWCI	2025-03-02	230
325	ELO	2025-03-02	238
325	Massey	2025-03-02	358
325	USAU	2025-03-02	393
325	SWCI	2025-03-08	233
325	ELO	2025-03-08	322
325	Massey	2025-03-08	315
325	USAU	2025-03-08	391
325	SWCI	2025-03-09	238
325	ELO	2025-03-09	320
325	Massey	2025-03-09	307
325	USAU	2025-03-09	390
325	SWCI	2025-03-15	247
325	ELO	2025-03-15	320
325	Massey	2025-03-15	349
325	USAU	2025-03-15	351
325	SWCI	2025-03-16	246
325	ELO	2025-03-16	318
325	Massey	2025-03-16	345
325	USAU	2025-03-16	353
325	SWCI	2025-03-23	260
325	ELO	2025-03-23	310
325	Massey	2025-03-23	333
325	USAU	2025-03-23	334
325	SWCI	2025-03-29	249
325	ELO	2025-03-29	301
325	Massey	2025-03-29	286
325	USAU	2025-03-29	262
325	SWCI	2025-03-30	277
325	ELO	2025-03-30	316
325	Massey	2025-03-30	284
325	USAU	2025-03-30	254
326	SWCI	2025-01-26	328
326	ELO	2025-01-26	318
326	Massey	2025-01-26	304
326	USAU	2025-01-26	295
326	SWCI	2025-02-02	328
326	ELO	2025-02-02	286
326	Massey	2025-02-02	182
326	USAU	2025-02-02	270
326	SWCI	2025-02-08	331
326	ELO	2025-02-08	268
326	Massey	2025-02-08	187
326	USAU	2025-02-08	251
326	SWCI	2025-02-09	331
326	ELO	2025-02-09	263
326	Massey	2025-02-09	127
326	USAU	2025-02-09	249
326	SWCI	2025-02-12	331
326	ELO	2025-02-12	250
326	Massey	2025-02-12	171
326	USAU	2025-02-12	249
326	SWCI	2025-02-16	334
326	ELO	2025-02-16	247
326	Massey	2025-02-16	168
326	USAU	2025-02-16	230
326	SWCI	2025-02-17	334
326	ELO	2025-02-17	241
326	Massey	2025-02-17	179
326	USAU	2025-02-17	228
326	SWCI	2025-02-22	353
326	ELO	2025-02-22	238
326	Massey	2025-02-22	175
326	USAU	2025-02-22	222
326	SWCI	2025-02-23	353
326	ELO	2025-02-23	236
326	Massey	2025-02-23	219
326	USAU	2025-02-23	224
326	SWCI	2025-03-02	369
326	ELO	2025-03-02	239
326	Massey	2025-03-02	239
326	USAU	2025-03-02	189
326	SWCI	2025-03-08	369
326	ELO	2025-03-08	208
326	Massey	2025-03-08	338
326	USAU	2025-03-08	183
326	SWCI	2025-03-09	370
326	ELO	2025-03-09	207
326	Massey	2025-03-09	298
326	USAU	2025-03-09	182
326	SWCI	2025-03-15	379
326	ELO	2025-03-15	202
326	Massey	2025-03-15	43
326	USAU	2025-03-15	171
326	SWCI	2025-03-16	379
326	ELO	2025-03-16	199
326	Massey	2025-03-16	327
326	USAU	2025-03-16	173
326	SWCI	2025-03-23	386
326	ELO	2025-03-23	194
326	Massey	2025-03-23	6
326	USAU	2025-03-23	162
326	SWCI	2025-03-29	345
326	ELO	2025-03-29	197
326	Massey	2025-03-29	381
326	USAU	2025-03-29	369
326	SWCI	2025-03-30	393
326	ELO	2025-03-30	372
326	Massey	2025-03-30	381
326	USAU	2025-03-30	373
327	SWCI	2025-01-26	10
327	ELO	2025-01-26	319
327	Massey	2025-01-26	23
327	USAU	2025-01-26	16
327	SWCI	2025-02-02	18
327	ELO	2025-02-02	20
327	Massey	2025-02-02	55
327	USAU	2025-02-02	33
327	SWCI	2025-02-08	24
327	ELO	2025-02-08	25
327	Massey	2025-02-08	36
327	USAU	2025-02-08	17
327	SWCI	2025-02-09	25
327	ELO	2025-02-09	28
327	Massey	2025-02-09	97
327	USAU	2025-02-09	24
327	SWCI	2025-02-12	25
327	ELO	2025-02-12	35
327	Massey	2025-02-12	109
327	USAU	2025-02-12	25
327	SWCI	2025-02-16	31
327	ELO	2025-02-16	35
327	Massey	2025-02-16	93
327	USAU	2025-02-16	74
327	SWCI	2025-02-17	30
327	ELO	2025-02-17	38
327	Massey	2025-02-17	85
327	USAU	2025-02-17	76
327	SWCI	2025-02-22	35
327	ELO	2025-02-22	40
327	Massey	2025-02-22	78
327	USAU	2025-02-22	63
327	SWCI	2025-02-23	28
327	ELO	2025-02-23	40
327	Massey	2025-02-23	79
327	USAU	2025-02-23	67
327	SWCI	2025-03-02	31
327	ELO	2025-03-02	50
327	Massey	2025-03-02	57
327	USAU	2025-03-02	57
327	SWCI	2025-03-08	29
327	ELO	2025-03-08	69
327	Massey	2025-03-08	54
327	USAU	2025-03-08	59
327	SWCI	2025-03-09	29
327	ELO	2025-03-09	70
327	Massey	2025-03-09	53
327	USAU	2025-03-09	59
327	SWCI	2025-03-15	33
327	ELO	2025-03-15	73
327	Massey	2025-03-15	113
327	USAU	2025-03-15	63
327	SWCI	2025-03-16	27
327	ELO	2025-03-16	76
327	Massey	2025-03-16	55
327	USAU	2025-03-16	62
327	SWCI	2025-03-23	29
327	ELO	2025-03-23	81
327	Massey	2025-03-23	88
327	USAU	2025-03-23	67
327	SWCI	2025-03-29	13
327	ELO	2025-03-29	91
327	Massey	2025-03-29	53
327	USAU	2025-03-29	50
327	SWCI	2025-03-30	14
327	ELO	2025-03-30	91
327	Massey	2025-03-30	46
327	USAU	2025-03-30	37
328	SWCI	2025-01-26	50
328	ELO	2025-01-26	320
328	Massey	2025-01-26	376
328	USAU	2025-01-26	379
328	SWCI	2025-02-02	101
328	ELO	2025-02-02	381
328	Massey	2025-02-02	360
328	USAU	2025-02-02	363
328	SWCI	2025-02-08	133
328	ELO	2025-02-08	377
328	Massey	2025-02-08	325
328	USAU	2025-02-08	327
328	SWCI	2025-02-09	135
328	ELO	2025-02-09	375
328	Massey	2025-02-09	354
328	USAU	2025-02-09	325
328	SWCI	2025-02-12	135
328	ELO	2025-02-12	369
328	Massey	2025-02-12	351
328	USAU	2025-02-12	325
328	SWCI	2025-02-16	158
328	ELO	2025-02-16	369
328	Massey	2025-02-16	330
328	USAU	2025-02-16	349
328	SWCI	2025-02-17	157
328	ELO	2025-02-17	360
328	Massey	2025-02-17	334
328	USAU	2025-02-17	351
328	SWCI	2025-02-22	185
328	ELO	2025-02-22	357
328	Massey	2025-02-22	297
328	USAU	2025-02-22	317
328	SWCI	2025-02-23	184
328	ELO	2025-02-23	355
328	Massey	2025-02-23	287
328	USAU	2025-02-23	315
328	SWCI	2025-03-02	244
328	ELO	2025-03-02	346
328	Massey	2025-03-02	192
328	USAU	2025-03-02	245
328	SWCI	2025-03-08	251
328	ELO	2025-03-08	330
328	Massey	2025-03-08	184
328	USAU	2025-03-08	243
328	SWCI	2025-03-09	254
328	ELO	2025-03-09	328
328	Massey	2025-03-09	182
328	USAU	2025-03-09	240
328	SWCI	2025-03-15	271
328	ELO	2025-03-15	329
328	Massey	2025-03-15	247
328	USAU	2025-03-15	229
328	SWCI	2025-03-16	269
328	ELO	2025-03-16	326
328	Massey	2025-03-16	190
328	USAU	2025-03-16	228
328	SWCI	2025-03-23	283
328	ELO	2025-03-23	319
328	Massey	2025-03-23	219
328	USAU	2025-03-23	206
328	SWCI	2025-03-29	313
328	ELO	2025-03-29	311
328	Massey	2025-03-29	215
328	USAU	2025-03-29	192
328	SWCI	2025-03-30	340
328	ELO	2025-03-30	310
328	Massey	2025-03-30	237
328	USAU	2025-03-30	210
329	SWCI	2025-01-26	329
329	ELO	2025-01-26	321
329	Massey	2025-01-26	241
329	USAU	2025-01-26	296
329	SWCI	2025-02-02	329
329	ELO	2025-02-02	287
329	Massey	2025-02-02	107
329	USAU	2025-02-02	271
329	SWCI	2025-02-08	332
329	ELO	2025-02-08	269
329	Massey	2025-02-08	173
329	USAU	2025-02-08	252
329	SWCI	2025-02-09	332
329	ELO	2025-02-09	264
329	Massey	2025-02-09	164
329	USAU	2025-02-09	250
329	SWCI	2025-02-12	332
329	ELO	2025-02-12	251
329	Massey	2025-02-12	198
329	USAU	2025-02-12	250
329	SWCI	2025-02-16	335
329	ELO	2025-02-16	248
329	Massey	2025-02-16	206
329	USAU	2025-02-16	231
329	SWCI	2025-02-17	335
329	ELO	2025-02-17	242
329	Massey	2025-02-17	222
329	USAU	2025-02-17	229
329	SWCI	2025-02-22	354
329	ELO	2025-02-22	239
329	Massey	2025-02-22	230
329	USAU	2025-02-22	223
329	SWCI	2025-02-23	354
329	ELO	2025-02-23	237
329	Massey	2025-02-23	214
329	USAU	2025-02-23	225
329	SWCI	2025-03-02	370
329	ELO	2025-03-02	240
329	Massey	2025-03-02	243
329	USAU	2025-03-02	190
329	SWCI	2025-03-08	370
329	ELO	2025-03-08	209
329	Massey	2025-03-08	317
329	USAU	2025-03-08	184
329	SWCI	2025-03-09	371
329	ELO	2025-03-09	208
329	Massey	2025-03-09	315
329	USAU	2025-03-09	183
329	SWCI	2025-03-15	380
329	ELO	2025-03-15	203
329	Massey	2025-03-15	34
329	USAU	2025-03-15	172
329	SWCI	2025-03-16	380
329	ELO	2025-03-16	200
329	Massey	2025-03-16	278
329	USAU	2025-03-16	174
329	SWCI	2025-03-23	387
329	ELO	2025-03-23	195
329	Massey	2025-03-23	4
329	USAU	2025-03-23	163
329	SWCI	2025-03-29	357
329	ELO	2025-03-29	198
329	Massey	2025-03-29	336
329	USAU	2025-03-29	343
329	SWCI	2025-03-30	373
329	ELO	2025-03-30	197
329	Massey	2025-03-30	339
329	USAU	2025-03-30	357
330	SWCI	2025-01-26	330
330	ELO	2025-01-26	322
330	Massey	2025-01-26	242
330	USAU	2025-01-26	297
330	SWCI	2025-02-02	330
330	ELO	2025-02-02	288
330	Massey	2025-02-02	108
330	USAU	2025-02-02	272
330	SWCI	2025-02-08	333
330	ELO	2025-02-08	270
330	Massey	2025-02-08	153
330	USAU	2025-02-08	253
330	SWCI	2025-02-09	333
330	ELO	2025-02-09	265
330	Massey	2025-02-09	212
330	USAU	2025-02-09	251
330	SWCI	2025-02-12	333
330	ELO	2025-02-12	252
330	Massey	2025-02-12	146
330	USAU	2025-02-12	251
330	SWCI	2025-02-16	56
330	ELO	2025-02-16	249
330	Massey	2025-02-16	114
330	USAU	2025-02-16	318
330	SWCI	2025-02-17	55
330	ELO	2025-02-17	49
330	Massey	2025-02-17	104
330	USAU	2025-02-17	318
330	SWCI	2025-02-22	71
330	ELO	2025-02-22	50
330	Massey	2025-02-22	112
330	USAU	2025-02-22	298
330	SWCI	2025-02-23	73
330	ELO	2025-02-23	52
330	Massey	2025-02-23	108
330	USAU	2025-02-23	289
330	SWCI	2025-03-02	119
330	ELO	2025-03-02	62
330	Massey	2025-03-02	140
330	USAU	2025-03-02	237
330	SWCI	2025-03-08	119
330	ELO	2025-03-08	122
330	Massey	2025-03-08	130
330	USAU	2025-03-08	229
330	SWCI	2025-03-09	122
330	ELO	2025-03-09	125
330	Massey	2025-03-09	130
330	USAU	2025-03-09	227
330	SWCI	2025-03-15	116
330	ELO	2025-03-15	129
330	Massey	2025-03-15	192
330	USAU	2025-03-15	200
330	SWCI	2025-03-16	117
330	ELO	2025-03-16	131
330	Massey	2025-03-16	132
330	USAU	2025-03-16	198
330	SWCI	2025-03-23	125
330	ELO	2025-03-23	137
330	Massey	2025-03-23	169
330	USAU	2025-03-23	175
330	SWCI	2025-03-29	182
330	ELO	2025-03-29	146
330	Massey	2025-03-29	154
330	USAU	2025-03-29	168
330	SWCI	2025-03-30	152
330	ELO	2025-03-30	149
330	Massey	2025-03-30	141
330	USAU	2025-03-30	151
331	SWCI	2025-01-26	331
331	ELO	2025-01-26	323
331	Massey	2025-01-26	137
331	USAU	2025-01-26	298
331	SWCI	2025-02-02	331
331	ELO	2025-02-02	289
331	Massey	2025-02-02	282
331	USAU	2025-02-02	273
331	SWCI	2025-02-08	334
331	ELO	2025-02-08	271
331	Massey	2025-02-08	245
331	USAU	2025-02-08	254
331	SWCI	2025-02-09	334
331	ELO	2025-02-09	266
331	Massey	2025-02-09	245
331	USAU	2025-02-09	252
331	SWCI	2025-02-12	334
331	ELO	2025-02-12	253
331	Massey	2025-02-12	253
331	USAU	2025-02-12	252
331	SWCI	2025-02-16	336
331	ELO	2025-02-16	250
331	Massey	2025-02-16	188
331	USAU	2025-02-16	232
331	SWCI	2025-02-17	336
331	ELO	2025-02-17	243
331	Massey	2025-02-17	203
331	USAU	2025-02-17	230
331	SWCI	2025-02-22	355
331	ELO	2025-02-22	240
331	Massey	2025-02-22	236
331	USAU	2025-02-22	224
331	SWCI	2025-02-23	355
331	ELO	2025-02-23	238
331	Massey	2025-02-23	170
331	USAU	2025-02-23	226
331	SWCI	2025-03-02	232
331	ELO	2025-03-02	241
331	Massey	2025-03-02	330
331	USAU	2025-03-02	254
331	SWCI	2025-03-08	236
331	ELO	2025-03-08	318
331	Massey	2025-03-08	367
331	USAU	2025-03-08	249
331	SWCI	2025-03-09	240
331	ELO	2025-03-09	316
331	Massey	2025-03-09	375
331	USAU	2025-03-09	244
331	SWCI	2025-03-15	243
331	ELO	2025-03-15	314
331	Massey	2025-03-15	339
331	USAU	2025-03-15	340
331	SWCI	2025-03-16	273
331	ELO	2025-03-16	338
331	Massey	2025-03-16	351
331	USAU	2025-03-16	344
331	SWCI	2025-03-23	289
331	ELO	2025-03-23	328
331	Massey	2025-03-23	343
331	USAU	2025-03-23	332
331	SWCI	2025-03-29	303
331	ELO	2025-03-29	322
331	Massey	2025-03-29	305
331	USAU	2025-03-29	300
331	SWCI	2025-03-30	309
331	ELO	2025-03-30	322
331	Massey	2025-03-30	314
331	USAU	2025-03-30	299
332	SWCI	2025-01-26	332
332	ELO	2025-01-26	324
332	Massey	2025-01-26	138
332	USAU	2025-01-26	299
332	SWCI	2025-02-02	332
332	ELO	2025-02-02	290
332	Massey	2025-02-02	289
332	USAU	2025-02-02	274
332	SWCI	2025-02-08	335
332	ELO	2025-02-08	272
332	Massey	2025-02-08	250
332	USAU	2025-02-08	255
332	SWCI	2025-02-09	335
332	ELO	2025-02-09	267
332	Massey	2025-02-09	257
332	USAU	2025-02-09	253
332	SWCI	2025-02-12	335
332	ELO	2025-02-12	254
332	Massey	2025-02-12	247
332	USAU	2025-02-12	253
332	SWCI	2025-02-16	337
332	ELO	2025-02-16	251
332	Massey	2025-02-16	187
332	USAU	2025-02-16	233
332	SWCI	2025-02-17	337
332	ELO	2025-02-17	244
332	Massey	2025-02-17	186
332	USAU	2025-02-17	231
332	SWCI	2025-02-22	356
332	ELO	2025-02-22	241
332	Massey	2025-02-22	238
332	USAU	2025-02-22	225
332	SWCI	2025-02-23	356
332	ELO	2025-02-23	239
332	Massey	2025-02-23	172
332	USAU	2025-02-23	227
332	SWCI	2025-03-02	173
332	ELO	2025-03-02	242
332	Massey	2025-03-02	311
332	USAU	2025-03-02	344
332	SWCI	2025-03-08	175
332	ELO	2025-03-08	109
332	Massey	2025-03-08	245
332	USAU	2025-03-08	334
332	SWCI	2025-03-09	177
332	ELO	2025-03-09	112
332	Massey	2025-03-09	238
332	USAU	2025-03-09	332
332	SWCI	2025-03-15	194
332	ELO	2025-03-15	117
332	Massey	2025-03-15	327
332	USAU	2025-03-15	348
332	SWCI	2025-03-16	190
332	ELO	2025-03-16	118
332	Massey	2025-03-16	285
332	USAU	2025-03-16	351
332	SWCI	2025-03-23	199
332	ELO	2025-03-23	126
332	Massey	2025-03-23	307
332	USAU	2025-03-23	345
332	SWCI	2025-03-29	221
332	ELO	2025-03-29	135
332	Massey	2025-03-29	296
332	USAU	2025-03-29	336
332	SWCI	2025-03-30	232
332	ELO	2025-03-30	138
332	Massey	2025-03-30	285
332	USAU	2025-03-30	320
333	SWCI	2025-01-26	333
333	ELO	2025-01-26	325
333	Massey	2025-01-26	139
333	USAU	2025-01-26	300
333	SWCI	2025-02-02	333
333	ELO	2025-02-02	291
333	Massey	2025-02-02	284
333	USAU	2025-02-02	275
333	SWCI	2025-02-08	336
333	ELO	2025-02-08	273
333	Massey	2025-02-08	257
333	USAU	2025-02-08	256
333	SWCI	2025-02-09	336
333	ELO	2025-02-09	268
333	Massey	2025-02-09	259
333	USAU	2025-02-09	254
333	SWCI	2025-02-12	336
333	ELO	2025-02-12	255
333	Massey	2025-02-12	239
333	USAU	2025-02-12	254
333	SWCI	2025-02-16	338
333	ELO	2025-02-16	252
333	Massey	2025-02-16	197
333	USAU	2025-02-16	234
333	SWCI	2025-02-17	338
333	ELO	2025-02-17	245
333	Massey	2025-02-17	212
333	USAU	2025-02-17	232
333	SWCI	2025-02-22	112
333	ELO	2025-02-22	242
333	Massey	2025-02-22	115
333	USAU	2025-02-22	58
333	SWCI	2025-02-23	95
333	ELO	2025-02-23	240
333	Massey	2025-02-23	86
333	USAU	2025-02-23	60
333	SWCI	2025-03-02	118
333	ELO	2025-03-02	80
333	Massey	2025-03-02	184
333	USAU	2025-03-02	268
333	SWCI	2025-03-08	47
333	ELO	2025-03-08	26
333	Massey	2025-03-08	108
333	USAU	2025-03-08	129
333	SWCI	2025-03-09	42
333	ELO	2025-03-09	26
333	Massey	2025-03-09	110
333	USAU	2025-03-09	132
333	SWCI	2025-03-15	48
333	ELO	2025-03-15	26
333	Massey	2025-03-15	195
333	USAU	2025-03-15	213
333	SWCI	2025-03-16	50
333	ELO	2025-03-16	28
333	Massey	2025-03-16	133
333	USAU	2025-03-16	203
333	SWCI	2025-03-23	59
333	ELO	2025-03-23	32
333	Massey	2025-03-23	185
333	USAU	2025-03-23	207
333	SWCI	2025-03-29	79
333	ELO	2025-03-29	38
333	Massey	2025-03-29	164
333	USAU	2025-03-29	160
333	SWCI	2025-03-30	129
333	ELO	2025-03-30	39
333	Massey	2025-03-30	173
333	USAU	2025-03-30	175
334	SWCI	2025-01-26	334
334	ELO	2025-01-26	326
334	Massey	2025-01-26	140
334	USAU	2025-01-26	301
334	SWCI	2025-02-02	334
334	ELO	2025-02-02	292
334	Massey	2025-02-02	285
334	USAU	2025-02-02	276
334	SWCI	2025-02-08	337
334	ELO	2025-02-08	274
334	Massey	2025-02-08	248
334	USAU	2025-02-08	257
334	SWCI	2025-02-09	337
334	ELO	2025-02-09	269
334	Massey	2025-02-09	255
334	USAU	2025-02-09	255
334	SWCI	2025-02-12	337
334	ELO	2025-02-12	256
334	Massey	2025-02-12	234
334	USAU	2025-02-12	255
334	SWCI	2025-02-16	339
334	ELO	2025-02-16	253
334	Massey	2025-02-16	184
334	USAU	2025-02-16	235
334	SWCI	2025-02-17	339
334	ELO	2025-02-17	246
334	Massey	2025-02-17	216
334	USAU	2025-02-17	233
334	SWCI	2025-02-22	54
334	ELO	2025-02-22	243
334	Massey	2025-02-22	166
334	USAU	2025-02-22	80
334	SWCI	2025-02-23	127
334	ELO	2025-02-23	241
334	Massey	2025-02-23	173
334	USAU	2025-02-23	287
334	SWCI	2025-03-02	176
334	ELO	2025-03-02	121
334	Massey	2025-03-02	295
334	USAU	2025-03-02	336
334	SWCI	2025-03-08	170
334	ELO	2025-03-08	152
334	Massey	2025-03-08	210
334	USAU	2025-03-08	319
334	SWCI	2025-03-09	156
334	ELO	2025-03-09	156
334	Massey	2025-03-09	207
334	USAU	2025-03-09	313
334	SWCI	2025-03-15	170
334	ELO	2025-03-15	158
334	Massey	2025-03-15	302
334	USAU	2025-03-15	322
334	SWCI	2025-03-16	167
334	ELO	2025-03-16	160
334	Massey	2025-03-16	246
334	USAU	2025-03-16	318
334	SWCI	2025-03-23	166
334	ELO	2025-03-23	165
334	Massey	2025-03-23	268
334	USAU	2025-03-23	287
334	SWCI	2025-03-29	223
334	ELO	2025-03-29	180
334	Massey	2025-03-29	265
334	USAU	2025-03-29	277
334	SWCI	2025-03-30	168
334	ELO	2025-03-30	181
334	Massey	2025-03-30	232
334	USAU	2025-03-30	244
335	SWCI	2025-01-26	335
335	ELO	2025-01-26	327
335	Massey	2025-01-26	141
335	USAU	2025-01-26	302
335	SWCI	2025-02-02	335
335	ELO	2025-02-02	293
335	Massey	2025-02-02	290
335	USAU	2025-02-02	277
335	SWCI	2025-02-08	338
335	ELO	2025-02-08	275
335	Massey	2025-02-08	242
335	USAU	2025-02-08	258
335	SWCI	2025-02-09	338
335	ELO	2025-02-09	270
335	Massey	2025-02-09	263
335	USAU	2025-02-09	256
335	SWCI	2025-02-12	338
335	ELO	2025-02-12	257
335	Massey	2025-02-12	209
335	USAU	2025-02-12	256
335	SWCI	2025-02-16	340
335	ELO	2025-02-16	254
335	Massey	2025-02-16	211
335	USAU	2025-02-16	236
335	SWCI	2025-02-17	340
335	ELO	2025-02-17	247
335	Massey	2025-02-17	162
335	USAU	2025-02-17	234
335	SWCI	2025-02-22	357
335	ELO	2025-02-22	244
335	Massey	2025-02-22	200
335	USAU	2025-02-22	226
335	SWCI	2025-02-23	357
335	ELO	2025-02-23	242
335	Massey	2025-02-23	177
335	USAU	2025-02-23	228
335	SWCI	2025-03-02	371
335	ELO	2025-03-02	243
335	Massey	2025-03-02	220
335	USAU	2025-03-02	191
335	SWCI	2025-03-08	371
335	ELO	2025-03-08	210
335	Massey	2025-03-08	340
335	USAU	2025-03-08	185
335	SWCI	2025-03-09	372
335	ELO	2025-03-09	209
335	Massey	2025-03-09	328
335	USAU	2025-03-09	184
335	SWCI	2025-03-15	381
335	ELO	2025-03-15	204
335	Massey	2025-03-15	28
335	USAU	2025-03-15	173
335	SWCI	2025-03-16	381
335	ELO	2025-03-16	201
335	Massey	2025-03-16	261
335	USAU	2025-03-16	175
335	SWCI	2025-03-23	388
335	ELO	2025-03-23	196
335	Massey	2025-03-23	16
335	USAU	2025-03-23	164
335	SWCI	2025-03-29	292
335	ELO	2025-03-29	199
335	Massey	2025-03-29	262
335	USAU	2025-03-29	282
335	SWCI	2025-03-30	110
335	ELO	2025-03-30	198
335	Massey	2025-03-30	194
335	USAU	2025-03-30	203
336	SWCI	2025-01-26	336
336	ELO	2025-01-26	328
336	Massey	2025-01-26	121
336	USAU	2025-01-26	303
336	SWCI	2025-02-02	336
336	ELO	2025-02-02	294
336	Massey	2025-02-02	245
336	USAU	2025-02-02	278
336	SWCI	2025-02-08	339
336	ELO	2025-02-08	276
336	Massey	2025-02-08	275
336	USAU	2025-02-08	259
336	SWCI	2025-02-09	339
336	ELO	2025-02-09	271
336	Massey	2025-02-09	234
336	USAU	2025-02-09	257
336	SWCI	2025-02-12	339
336	ELO	2025-02-12	258
336	Massey	2025-02-12	251
336	USAU	2025-02-12	257
336	SWCI	2025-02-16	341
336	ELO	2025-02-16	255
336	Massey	2025-02-16	151
336	USAU	2025-02-16	237
336	SWCI	2025-02-17	341
336	ELO	2025-02-17	248
336	Massey	2025-02-17	187
336	USAU	2025-02-17	235
336	SWCI	2025-02-22	358
336	ELO	2025-02-22	245
336	Massey	2025-02-22	193
336	USAU	2025-02-22	227
336	SWCI	2025-02-23	358
336	ELO	2025-02-23	243
336	Massey	2025-02-23	182
336	USAU	2025-02-23	229
336	SWCI	2025-03-02	276
336	ELO	2025-03-02	244
336	Massey	2025-03-02	322
336	USAU	2025-03-02	352
336	SWCI	2025-03-08	282
336	ELO	2025-03-08	347
336	Massey	2025-03-08	265
336	USAU	2025-03-08	349
336	SWCI	2025-03-09	285
336	ELO	2025-03-09	345
336	Massey	2025-03-09	256
336	USAU	2025-03-09	349
336	SWCI	2025-03-15	304
336	ELO	2025-03-15	346
336	Massey	2025-03-15	323
336	USAU	2025-03-15	346
336	SWCI	2025-03-16	304
336	ELO	2025-03-16	344
336	Massey	2025-03-16	279
336	USAU	2025-03-16	346
336	SWCI	2025-03-23	300
336	ELO	2025-03-23	333
336	Massey	2025-03-23	259
336	USAU	2025-03-23	246
336	SWCI	2025-03-29	188
336	ELO	2025-03-29	329
336	Massey	2025-03-29	221
336	USAU	2025-03-29	211
336	SWCI	2025-03-30	200
336	ELO	2025-03-30	329
336	Massey	2025-03-30	227
336	USAU	2025-03-30	225
337	SWCI	2025-01-26	337
337	ELO	2025-01-26	329
337	Massey	2025-01-26	160
337	USAU	2025-01-26	304
337	SWCI	2025-02-02	337
337	ELO	2025-02-02	295
337	Massey	2025-02-02	231
337	USAU	2025-02-02	279
337	SWCI	2025-02-08	340
337	ELO	2025-02-08	277
337	Massey	2025-02-08	270
337	USAU	2025-02-08	260
337	SWCI	2025-02-09	340
337	ELO	2025-02-09	272
337	Massey	2025-02-09	188
337	USAU	2025-02-09	258
337	SWCI	2025-02-12	340
337	ELO	2025-02-12	259
337	Massey	2025-02-12	210
337	USAU	2025-02-12	258
337	SWCI	2025-02-16	342
337	ELO	2025-02-16	256
337	Massey	2025-02-16	241
337	USAU	2025-02-16	238
337	SWCI	2025-02-17	342
337	ELO	2025-02-17	249
337	Massey	2025-02-17	227
337	USAU	2025-02-17	236
337	SWCI	2025-02-22	359
337	ELO	2025-02-22	246
337	Massey	2025-02-22	183
337	USAU	2025-02-22	228
337	SWCI	2025-02-23	359
337	ELO	2025-02-23	244
337	Massey	2025-02-23	176
337	USAU	2025-02-23	230
337	SWCI	2025-03-02	99
337	ELO	2025-03-02	86
337	Massey	2025-03-02	185
337	USAU	2025-03-02	249
337	SWCI	2025-03-08	100
337	ELO	2025-03-08	107
337	Massey	2025-03-08	167
337	USAU	2025-03-08	240
337	SWCI	2025-03-09	101
337	ELO	2025-03-09	110
337	Massey	2025-03-09	173
337	USAU	2025-03-09	238
337	SWCI	2025-03-15	112
337	ELO	2025-03-15	115
337	Massey	2025-03-15	221
337	USAU	2025-03-15	208
337	SWCI	2025-03-16	119
337	ELO	2025-03-16	116
337	Massey	2025-03-16	168
337	USAU	2025-03-16	213
337	SWCI	2025-03-23	122
337	ELO	2025-03-23	124
337	Massey	2025-03-23	190
337	USAU	2025-03-23	181
337	SWCI	2025-03-29	116
337	ELO	2025-03-29	133
337	Massey	2025-03-29	156
337	USAU	2025-03-29	157
337	SWCI	2025-03-30	134
337	ELO	2025-03-30	136
337	Massey	2025-03-30	164
337	USAU	2025-03-30	165
338	SWCI	2025-01-26	338
338	ELO	2025-01-26	330
338	Massey	2025-01-26	161
338	USAU	2025-01-26	305
338	SWCI	2025-02-02	338
338	ELO	2025-02-02	296
338	Massey	2025-02-02	233
338	USAU	2025-02-02	280
338	SWCI	2025-02-08	341
338	ELO	2025-02-08	278
338	Massey	2025-02-08	271
338	USAU	2025-02-08	261
338	SWCI	2025-02-09	341
338	ELO	2025-02-09	273
338	Massey	2025-02-09	204
338	USAU	2025-02-09	259
338	SWCI	2025-02-12	341
338	ELO	2025-02-12	260
338	Massey	2025-02-12	238
338	USAU	2025-02-12	259
338	SWCI	2025-02-16	343
338	ELO	2025-02-16	257
338	Massey	2025-02-16	198
338	USAU	2025-02-16	239
338	SWCI	2025-02-17	343
338	ELO	2025-02-17	250
338	Massey	2025-02-17	252
338	USAU	2025-02-17	237
338	SWCI	2025-02-22	360
338	ELO	2025-02-22	247
338	Massey	2025-02-22	189
338	USAU	2025-02-22	229
338	SWCI	2025-02-23	360
338	ELO	2025-02-23	245
338	Massey	2025-02-23	183
338	USAU	2025-02-23	231
338	SWCI	2025-03-02	248
338	ELO	2025-03-02	365
338	Massey	2025-03-02	370
338	USAU	2025-03-02	368
338	SWCI	2025-03-08	254
338	ELO	2025-03-08	355
338	Massey	2025-03-08	332
338	USAU	2025-03-08	363
338	SWCI	2025-03-09	258
338	ELO	2025-03-09	353
338	Massey	2025-03-09	354
338	USAU	2025-03-09	364
338	SWCI	2025-03-15	277
338	ELO	2025-03-15	353
338	Massey	2025-03-15	364
338	USAU	2025-03-15	354
338	SWCI	2025-03-16	282
338	ELO	2025-03-16	351
338	Massey	2025-03-16	362
338	USAU	2025-03-16	360
338	SWCI	2025-03-23	299
338	ELO	2025-03-23	345
338	Massey	2025-03-23	357
338	USAU	2025-03-23	347
338	SWCI	2025-03-29	302
338	ELO	2025-03-29	340
338	Massey	2025-03-29	337
338	USAU	2025-03-29	330
338	SWCI	2025-03-30	318
338	ELO	2025-03-30	339
338	Massey	2025-03-30	333
338	USAU	2025-03-30	338
339	SWCI	2025-01-26	339
339	ELO	2025-01-26	331
339	Massey	2025-01-26	162
339	USAU	2025-01-26	306
339	SWCI	2025-02-02	339
339	ELO	2025-02-02	297
339	Massey	2025-02-02	232
339	USAU	2025-02-02	281
339	SWCI	2025-02-08	342
339	ELO	2025-02-08	279
339	Massey	2025-02-08	276
339	USAU	2025-02-08	262
339	SWCI	2025-02-09	342
339	ELO	2025-02-09	274
339	Massey	2025-02-09	229
339	USAU	2025-02-09	260
339	SWCI	2025-02-12	342
339	ELO	2025-02-12	261
339	Massey	2025-02-12	229
339	USAU	2025-02-12	260
339	SWCI	2025-02-16	344
339	ELO	2025-02-16	258
339	Massey	2025-02-16	231
339	USAU	2025-02-16	240
339	SWCI	2025-02-17	344
339	ELO	2025-02-17	251
339	Massey	2025-02-17	262
339	USAU	2025-02-17	238
339	SWCI	2025-02-22	361
339	ELO	2025-02-22	248
339	Massey	2025-02-22	198
339	USAU	2025-02-22	230
339	SWCI	2025-02-23	361
339	ELO	2025-02-23	246
339	Massey	2025-02-23	171
339	USAU	2025-02-23	232
339	SWCI	2025-03-02	218
339	ELO	2025-03-02	245
339	Massey	2025-03-02	334
339	USAU	2025-03-02	338
339	SWCI	2025-03-08	220
339	ELO	2025-03-08	329
339	Massey	2025-03-08	283
339	USAU	2025-03-08	336
339	SWCI	2025-03-09	225
339	ELO	2025-03-09	327
339	Massey	2025-03-09	272
339	USAU	2025-03-09	335
339	SWCI	2025-03-15	238
339	ELO	2025-03-15	328
339	Massey	2025-03-15	322
339	USAU	2025-03-15	290
339	SWCI	2025-03-16	238
339	ELO	2025-03-16	325
339	Massey	2025-03-16	282
339	USAU	2025-03-16	290
339	SWCI	2025-03-23	248
339	ELO	2025-03-23	318
339	Massey	2025-03-23	300
339	USAU	2025-03-23	271
339	SWCI	2025-03-29	193
339	ELO	2025-03-29	309
339	Massey	2025-03-29	274
339	USAU	2025-03-29	251
339	SWCI	2025-03-30	233
339	ELO	2025-03-30	308
339	Massey	2025-03-30	268
339	USAU	2025-03-30	253
340	SWCI	2025-01-26	340
340	ELO	2025-01-26	332
340	Massey	2025-01-26	163
340	USAU	2025-01-26	307
340	SWCI	2025-02-02	340
340	ELO	2025-02-02	298
340	Massey	2025-02-02	228
340	USAU	2025-02-02	282
340	SWCI	2025-02-08	343
340	ELO	2025-02-08	280
340	Massey	2025-02-08	263
340	USAU	2025-02-08	263
340	SWCI	2025-02-09	343
340	ELO	2025-02-09	275
340	Massey	2025-02-09	207
340	USAU	2025-02-09	261
340	SWCI	2025-02-12	343
340	ELO	2025-02-12	262
340	Massey	2025-02-12	219
340	USAU	2025-02-12	261
340	SWCI	2025-02-16	345
340	ELO	2025-02-16	259
340	Massey	2025-02-16	209
340	USAU	2025-02-16	241
340	SWCI	2025-02-17	345
340	ELO	2025-02-17	252
340	Massey	2025-02-17	254
340	USAU	2025-02-17	239
340	SWCI	2025-02-22	31
340	ELO	2025-02-22	249
340	Massey	2025-02-22	275
340	USAU	2025-02-22	285
340	SWCI	2025-02-23	54
340	ELO	2025-02-23	247
340	Massey	2025-02-23	278
340	USAU	2025-02-23	314
340	SWCI	2025-03-02	67
340	ELO	2025-03-02	70
340	Massey	2025-03-02	202
340	USAU	2025-03-02	273
340	SWCI	2025-03-08	69
340	ELO	2025-03-08	96
340	Massey	2025-03-08	191
340	USAU	2025-03-08	270
340	SWCI	2025-03-09	71
340	ELO	2025-03-09	99
340	Massey	2025-03-09	191
340	USAU	2025-03-09	267
340	SWCI	2025-03-15	69
340	ELO	2025-03-15	101
340	Massey	2025-03-15	235
340	USAU	2025-03-15	210
340	SWCI	2025-03-16	73
340	ELO	2025-03-16	102
340	Massey	2025-03-16	179
340	USAU	2025-03-16	218
340	SWCI	2025-03-23	69
340	ELO	2025-03-23	111
340	Massey	2025-03-23	205
340	USAU	2025-03-23	190
340	SWCI	2025-03-29	94
340	ELO	2025-03-29	118
340	Massey	2025-03-29	166
340	USAU	2025-03-29	153
340	SWCI	2025-03-30	77
340	ELO	2025-03-30	118
340	Massey	2025-03-30	157
340	USAU	2025-03-30	155
341	SWCI	2025-01-26	341
341	ELO	2025-01-26	333
341	Massey	2025-01-26	164
341	USAU	2025-01-26	308
341	SWCI	2025-02-02	341
341	ELO	2025-02-02	299
341	Massey	2025-02-02	229
341	USAU	2025-02-02	283
341	SWCI	2025-02-08	344
341	ELO	2025-02-08	281
341	Massey	2025-02-08	262
341	USAU	2025-02-08	264
341	SWCI	2025-02-09	344
341	ELO	2025-02-09	276
341	Massey	2025-02-09	210
341	USAU	2025-02-09	262
341	SWCI	2025-02-12	344
341	ELO	2025-02-12	263
341	Massey	2025-02-12	212
341	USAU	2025-02-12	262
341	SWCI	2025-02-16	346
341	ELO	2025-02-16	260
341	Massey	2025-02-16	212
341	USAU	2025-02-16	242
341	SWCI	2025-02-17	346
341	ELO	2025-02-17	253
341	Massey	2025-02-17	246
341	USAU	2025-02-17	240
341	SWCI	2025-02-22	20
341	ELO	2025-02-22	250
341	Massey	2025-02-22	294
341	USAU	2025-02-22	316
341	SWCI	2025-02-23	2
341	ELO	2025-02-23	248
341	Massey	2025-02-23	143
341	USAU	2025-02-23	105
341	SWCI	2025-03-02	3
341	ELO	2025-03-02	22
341	Massey	2025-03-02	130
341	USAU	2025-03-02	126
341	SWCI	2025-03-08	3
341	ELO	2025-03-08	34
341	Massey	2025-03-08	124
341	USAU	2025-03-08	132
341	SWCI	2025-03-09	3
341	ELO	2025-03-09	34
341	Massey	2025-03-09	124
341	USAU	2025-03-09	131
341	SWCI	2025-03-15	4
341	ELO	2025-03-15	34
341	Massey	2025-03-15	126
341	USAU	2025-03-15	57
341	SWCI	2025-03-16	21
341	ELO	2025-03-16	36
341	Massey	2025-03-16	76
341	USAU	2025-03-16	65
341	SWCI	2025-03-23	19
341	ELO	2025-03-23	44
341	Massey	2025-03-23	102
341	USAU	2025-03-23	66
341	SWCI	2025-03-29	63
341	ELO	2025-03-29	50
341	Massey	2025-03-29	70
341	USAU	2025-03-29	66
341	SWCI	2025-03-30	106
341	ELO	2025-03-30	52
341	Massey	2025-03-30	77
341	USAU	2025-03-30	74
342	SWCI	2025-01-26	342
342	ELO	2025-01-26	334
342	Massey	2025-01-26	165
342	USAU	2025-01-26	309
342	SWCI	2025-02-02	342
342	ELO	2025-02-02	300
342	Massey	2025-02-02	230
342	USAU	2025-02-02	284
342	SWCI	2025-02-08	345
342	ELO	2025-02-08	282
342	Massey	2025-02-08	264
342	USAU	2025-02-08	265
342	SWCI	2025-02-09	345
342	ELO	2025-02-09	277
342	Massey	2025-02-09	208
342	USAU	2025-02-09	263
342	SWCI	2025-02-12	345
342	ELO	2025-02-12	264
342	Massey	2025-02-12	214
342	USAU	2025-02-12	263
342	SWCI	2025-02-16	347
342	ELO	2025-02-16	261
342	Massey	2025-02-16	193
342	USAU	2025-02-16	243
342	SWCI	2025-02-17	347
342	ELO	2025-02-17	254
342	Massey	2025-02-17	253
342	USAU	2025-02-17	241
342	SWCI	2025-02-22	83
342	ELO	2025-02-22	251
342	Massey	2025-02-22	314
342	USAU	2025-02-22	324
342	SWCI	2025-02-23	118
342	ELO	2025-02-23	249
342	Massey	2025-02-23	309
342	USAU	2025-02-23	338
342	SWCI	2025-03-02	166
342	ELO	2025-03-02	109
342	Massey	2025-03-02	259
342	USAU	2025-03-02	307
342	SWCI	2025-03-08	166
342	ELO	2025-03-08	140
342	Massey	2025-03-08	213
342	USAU	2025-03-08	308
342	SWCI	2025-03-09	168
342	ELO	2025-03-09	143
342	Massey	2025-03-09	210
342	USAU	2025-03-09	299
342	SWCI	2025-03-15	176
342	ELO	2025-03-15	145
342	Massey	2025-03-15	260
342	USAU	2025-03-15	250
342	SWCI	2025-03-16	174
342	ELO	2025-03-16	147
342	Massey	2025-03-16	204
342	USAU	2025-03-16	248
342	SWCI	2025-03-23	184
342	ELO	2025-03-23	152
342	Massey	2025-03-23	229
342	USAU	2025-03-23	228
342	SWCI	2025-03-29	72
342	ELO	2025-03-29	165
342	Massey	2025-03-29	157
342	USAU	2025-03-29	150
342	SWCI	2025-03-30	82
342	ELO	2025-03-30	167
342	Massey	2025-03-30	165
342	USAU	2025-03-30	168
343	SWCI	2025-01-26	343
343	ELO	2025-01-26	335
343	Massey	2025-01-26	305
343	USAU	2025-01-26	310
343	SWCI	2025-02-02	343
343	ELO	2025-02-02	301
343	Massey	2025-02-02	143
343	USAU	2025-02-02	285
343	SWCI	2025-02-08	346
343	ELO	2025-02-08	283
343	Massey	2025-02-08	178
343	USAU	2025-02-08	266
343	SWCI	2025-02-09	346
343	ELO	2025-02-09	278
343	Massey	2025-02-09	180
343	USAU	2025-02-09	264
343	SWCI	2025-02-12	346
343	ELO	2025-02-12	265
343	Massey	2025-02-12	202
343	USAU	2025-02-12	264
343	SWCI	2025-02-16	348
343	ELO	2025-02-16	262
343	Massey	2025-02-16	208
343	USAU	2025-02-16	244
343	SWCI	2025-02-17	348
343	ELO	2025-02-17	255
343	Massey	2025-02-17	175
343	USAU	2025-02-17	242
343	SWCI	2025-02-22	197
343	ELO	2025-02-22	252
343	Massey	2025-02-22	387
343	USAU	2025-02-22	390
343	SWCI	2025-02-23	170
343	ELO	2025-02-23	250
343	Massey	2025-02-23	366
343	USAU	2025-02-23	384
343	SWCI	2025-03-02	233
343	ELO	2025-03-02	325
343	Massey	2025-03-02	362
343	USAU	2025-03-02	366
343	SWCI	2025-03-08	237
343	ELO	2025-03-08	300
343	Massey	2025-03-08	323
343	USAU	2025-03-08	367
343	SWCI	2025-03-09	241
343	ELO	2025-03-09	299
343	Massey	2025-03-09	333
343	USAU	2025-03-09	366
343	SWCI	2025-03-15	252
343	ELO	2025-03-15	294
343	Massey	2025-03-15	344
343	USAU	2025-03-15	325
343	SWCI	2025-03-16	266
343	ELO	2025-03-16	292
343	Massey	2025-03-16	335
343	USAU	2025-03-16	326
343	SWCI	2025-03-23	262
343	ELO	2025-03-23	282
343	Massey	2025-03-23	330
343	USAU	2025-03-23	309
343	SWCI	2025-03-29	337
343	ELO	2025-03-29	271
343	Massey	2025-03-29	344
343	USAU	2025-03-29	323
343	SWCI	2025-03-30	345
343	ELO	2025-03-30	269
343	Massey	2025-03-30	343
343	USAU	2025-03-30	322
344	SWCI	2025-01-26	344
344	ELO	2025-01-26	336
344	Massey	2025-01-26	306
344	USAU	2025-01-26	311
344	SWCI	2025-02-02	344
344	ELO	2025-02-02	302
344	Massey	2025-02-02	133
344	USAU	2025-02-02	286
344	SWCI	2025-02-08	347
344	ELO	2025-02-08	284
344	Massey	2025-02-08	189
344	USAU	2025-02-08	267
344	SWCI	2025-02-09	347
344	ELO	2025-02-09	279
344	Massey	2025-02-09	198
344	USAU	2025-02-09	265
344	SWCI	2025-02-12	347
344	ELO	2025-02-12	266
344	Massey	2025-02-12	164
344	USAU	2025-02-12	265
344	SWCI	2025-02-16	349
344	ELO	2025-02-16	263
344	Massey	2025-02-16	196
344	USAU	2025-02-16	245
344	SWCI	2025-02-17	349
344	ELO	2025-02-17	256
344	Massey	2025-02-17	163
344	USAU	2025-02-17	243
344	SWCI	2025-02-22	125
344	ELO	2025-02-22	253
344	Massey	2025-02-22	307
344	USAU	2025-02-22	333
344	SWCI	2025-02-23	112
344	ELO	2025-02-23	251
344	Massey	2025-02-23	311
344	USAU	2025-02-23	336
344	SWCI	2025-03-02	144
344	ELO	2025-03-02	298
344	Massey	2025-03-02	264
344	USAU	2025-03-02	301
344	SWCI	2025-03-08	145
344	ELO	2025-03-08	261
344	Massey	2025-03-08	215
344	USAU	2025-03-08	297
344	SWCI	2025-03-09	148
344	ELO	2025-03-09	260
344	Massey	2025-03-09	212
344	USAU	2025-03-09	294
344	SWCI	2025-03-15	135
344	ELO	2025-03-15	253
344	Massey	2025-03-15	262
344	USAU	2025-03-15	246
344	SWCI	2025-03-16	145
344	ELO	2025-03-16	249
344	Massey	2025-03-16	208
344	USAU	2025-03-16	250
344	SWCI	2025-03-23	149
344	ELO	2025-03-23	142
344	Massey	2025-03-23	233
344	USAU	2025-03-23	227
344	SWCI	2025-03-29	106
344	ELO	2025-03-29	152
344	Massey	2025-03-29	195
344	USAU	2025-03-29	194
344	SWCI	2025-03-30	99
344	ELO	2025-03-30	156
344	Massey	2025-03-30	193
344	USAU	2025-03-30	189
345	SWCI	2025-01-26	345
345	ELO	2025-01-26	337
345	Massey	2025-01-26	307
345	USAU	2025-01-26	312
345	SWCI	2025-02-02	345
345	ELO	2025-02-02	303
345	Massey	2025-02-02	134
345	USAU	2025-02-02	287
345	SWCI	2025-02-08	348
345	ELO	2025-02-08	285
345	Massey	2025-02-08	191
345	USAU	2025-02-08	268
345	SWCI	2025-02-09	348
345	ELO	2025-02-09	280
345	Massey	2025-02-09	200
345	USAU	2025-02-09	266
345	SWCI	2025-02-12	348
345	ELO	2025-02-12	267
345	Massey	2025-02-12	163
345	USAU	2025-02-12	266
345	SWCI	2025-02-16	350
345	ELO	2025-02-16	264
345	Massey	2025-02-16	199
345	USAU	2025-02-16	246
345	SWCI	2025-02-17	350
345	ELO	2025-02-17	257
345	Massey	2025-02-17	164
345	USAU	2025-02-17	244
345	SWCI	2025-02-22	44
345	ELO	2025-02-22	254
345	Massey	2025-02-22	317
345	USAU	2025-02-22	334
345	SWCI	2025-02-23	56
345	ELO	2025-02-23	252
345	Massey	2025-02-23	324
345	USAU	2025-02-23	339
345	SWCI	2025-03-02	66
345	ELO	2025-03-02	112
345	Massey	2025-03-02	288
345	USAU	2025-03-02	306
345	SWCI	2025-03-08	68
345	ELO	2025-03-08	145
345	Massey	2025-03-08	239
345	USAU	2025-03-08	299
345	SWCI	2025-03-09	70
345	ELO	2025-03-09	148
345	Massey	2025-03-09	229
345	USAU	2025-03-09	296
345	SWCI	2025-03-15	73
345	ELO	2025-03-15	149
345	Massey	2025-03-15	286
345	USAU	2025-03-15	260
345	SWCI	2025-03-16	85
345	ELO	2025-03-16	151
345	Massey	2025-03-16	234
345	USAU	2025-03-16	268
345	SWCI	2025-03-23	90
345	ELO	2025-03-23	155
345	Massey	2025-03-23	260
345	USAU	2025-03-23	242
345	SWCI	2025-03-29	190
345	ELO	2025-03-29	172
345	Massey	2025-03-29	245
345	USAU	2025-03-29	248
345	SWCI	2025-03-30	144
345	ELO	2025-03-30	173
345	Massey	2025-03-30	219
345	USAU	2025-03-30	227
346	SWCI	2025-01-26	346
346	ELO	2025-01-26	338
346	Massey	2025-01-26	308
346	USAU	2025-01-26	313
346	SWCI	2025-02-02	346
346	ELO	2025-02-02	304
346	Massey	2025-02-02	135
346	USAU	2025-02-02	288
346	SWCI	2025-02-08	349
346	ELO	2025-02-08	286
346	Massey	2025-02-08	192
346	USAU	2025-02-08	269
346	SWCI	2025-02-09	349
346	ELO	2025-02-09	281
346	Massey	2025-02-09	196
346	USAU	2025-02-09	267
346	SWCI	2025-02-12	349
346	ELO	2025-02-12	268
346	Massey	2025-02-12	165
346	USAU	2025-02-12	267
346	SWCI	2025-02-16	351
346	ELO	2025-02-16	265
346	Massey	2025-02-16	202
346	USAU	2025-02-16	247
346	SWCI	2025-02-17	351
346	ELO	2025-02-17	258
346	Massey	2025-02-17	170
346	USAU	2025-02-17	245
346	SWCI	2025-02-22	65
346	ELO	2025-02-22	255
346	Massey	2025-02-22	261
346	USAU	2025-02-22	303
346	SWCI	2025-02-23	36
346	ELO	2025-02-23	253
346	Massey	2025-02-23	248
346	USAU	2025-02-23	291
346	SWCI	2025-03-02	49
346	ELO	2025-03-02	33
346	Massey	2025-03-02	174
346	USAU	2025-03-02	244
346	SWCI	2025-03-08	48
346	ELO	2025-03-08	46
346	Massey	2025-03-08	164
346	USAU	2025-03-08	242
346	SWCI	2025-03-09	48
346	ELO	2025-03-09	47
346	Massey	2025-03-09	166
346	USAU	2025-03-09	237
346	SWCI	2025-03-15	43
346	ELO	2025-03-15	47
346	Massey	2025-03-15	204
346	USAU	2025-03-15	118
346	SWCI	2025-03-16	40
346	ELO	2025-03-16	49
346	Massey	2025-03-16	147
346	USAU	2025-03-16	124
346	SWCI	2025-03-23	30
346	ELO	2025-03-23	57
346	Massey	2025-03-23	174
346	USAU	2025-03-23	174
346	SWCI	2025-03-29	49
346	ELO	2025-03-29	35
346	Massey	2025-03-29	183
346	USAU	2025-03-29	186
346	SWCI	2025-03-30	24
346	ELO	2025-03-30	36
346	Massey	2025-03-30	162
346	USAU	2025-03-30	169
347	SWCI	2025-01-26	347
347	ELO	2025-01-26	339
347	Massey	2025-01-26	309
347	USAU	2025-01-26	314
347	SWCI	2025-02-02	347
347	ELO	2025-02-02	305
347	Massey	2025-02-02	136
347	USAU	2025-02-02	289
347	SWCI	2025-02-08	95
347	ELO	2025-02-08	341
347	Massey	2025-02-08	367
347	USAU	2025-02-08	370
347	SWCI	2025-02-09	95
347	ELO	2025-02-09	338
347	Massey	2025-02-09	381
347	USAU	2025-02-09	365
347	SWCI	2025-02-12	95
347	ELO	2025-02-12	324
347	Massey	2025-02-12	376
347	USAU	2025-02-12	365
347	SWCI	2025-02-16	106
347	ELO	2025-02-16	323
347	Massey	2025-02-16	367
347	USAU	2025-02-16	388
347	SWCI	2025-02-17	106
347	ELO	2025-02-17	315
347	Massey	2025-02-17	371
347	USAU	2025-02-17	388
347	SWCI	2025-02-22	131
347	ELO	2025-02-22	312
347	Massey	2025-02-22	308
347	USAU	2025-02-22	331
347	SWCI	2025-02-23	122
347	ELO	2025-02-23	312
347	Massey	2025-02-23	282
347	USAU	2025-02-23	317
347	SWCI	2025-03-02	148
347	ELO	2025-03-02	294
347	Massey	2025-03-02	126
347	USAU	2025-03-02	133
347	SWCI	2025-03-08	150
347	ELO	2025-03-08	257
347	Massey	2025-03-08	123
347	USAU	2025-03-08	218
347	SWCI	2025-03-09	152
347	ELO	2025-03-09	256
347	Massey	2025-03-09	123
347	USAU	2025-03-09	214
347	SWCI	2025-03-15	163
347	ELO	2025-03-15	250
347	Massey	2025-03-15	186
347	USAU	2025-03-15	198
347	SWCI	2025-03-16	162
347	ELO	2025-03-16	246
347	Massey	2025-03-16	129
347	USAU	2025-03-16	193
347	SWCI	2025-03-23	158
347	ELO	2025-03-23	235
347	Massey	2025-03-23	145
347	USAU	2025-03-23	130
347	SWCI	2025-03-29	293
347	ELO	2025-03-29	230
347	Massey	2025-03-29	185
347	USAU	2025-03-29	197
347	SWCI	2025-03-30	285
347	ELO	2025-03-30	231
347	Massey	2025-03-30	185
347	USAU	2025-03-30	196
348	SWCI	2025-01-26	348
348	ELO	2025-01-26	340
348	Massey	2025-01-26	310
348	USAU	2025-01-26	315
348	SWCI	2025-02-02	348
348	ELO	2025-02-02	306
348	Massey	2025-02-02	137
348	USAU	2025-02-02	290
348	SWCI	2025-02-08	14
348	ELO	2025-02-08	31
348	Massey	2025-02-08	324
348	USAU	2025-02-08	325
348	SWCI	2025-02-09	14
348	ELO	2025-02-09	34
348	Massey	2025-02-09	353
348	USAU	2025-02-09	322
348	SWCI	2025-02-12	14
348	ELO	2025-02-12	41
348	Massey	2025-02-12	350
348	USAU	2025-02-12	323
348	SWCI	2025-02-16	14
348	ELO	2025-02-16	39
348	Massey	2025-02-16	329
348	USAU	2025-02-16	347
348	SWCI	2025-02-17	14
348	ELO	2025-02-17	41
348	Massey	2025-02-17	331
348	USAU	2025-02-17	349
348	SWCI	2025-02-22	17
348	ELO	2025-02-22	43
348	Massey	2025-02-22	155
348	USAU	2025-02-22	98
348	SWCI	2025-02-23	13
348	ELO	2025-02-23	43
348	Massey	2025-02-23	136
348	USAU	2025-02-23	85
348	SWCI	2025-03-02	76
348	ELO	2025-03-02	53
348	Massey	2025-03-02	80
348	USAU	2025-03-02	74
348	SWCI	2025-03-08	78
348	ELO	2025-03-08	108
348	Massey	2025-03-08	73
348	USAU	2025-03-08	76
348	SWCI	2025-03-09	79
348	ELO	2025-03-09	111
348	Massey	2025-03-09	74
348	USAU	2025-03-09	76
348	SWCI	2025-03-15	104
348	ELO	2025-03-15	116
348	Massey	2025-03-15	137
348	USAU	2025-03-15	93
348	SWCI	2025-03-16	108
348	ELO	2025-03-16	117
348	Massey	2025-03-16	77
348	USAU	2025-03-16	85
348	SWCI	2025-03-23	113
348	ELO	2025-03-23	125
348	Massey	2025-03-23	114
348	USAU	2025-03-23	94
348	SWCI	2025-03-29	138
348	ELO	2025-03-29	134
348	Massey	2025-03-29	95
348	USAU	2025-03-29	112
348	SWCI	2025-03-30	135
348	ELO	2025-03-30	137
348	Massey	2025-03-30	103
348	USAU	2025-03-30	121
349	SWCI	2025-01-26	349
349	ELO	2025-01-26	341
349	Massey	2025-01-26	243
349	USAU	2025-01-26	316
349	SWCI	2025-02-02	349
349	ELO	2025-02-02	307
349	Massey	2025-02-02	115
349	USAU	2025-02-02	291
349	SWCI	2025-02-08	108
349	ELO	2025-02-08	345
349	Massey	2025-02-08	372
349	USAU	2025-02-08	369
349	SWCI	2025-02-09	108
349	ELO	2025-02-09	342
349	Massey	2025-02-09	384
349	USAU	2025-02-09	362
349	SWCI	2025-02-12	109
349	ELO	2025-02-12	331
349	Massey	2025-02-12	378
349	USAU	2025-02-12	362
349	SWCI	2025-02-16	119
349	ELO	2025-02-16	331
349	Massey	2025-02-16	372
349	USAU	2025-02-16	385
349	SWCI	2025-02-17	119
349	ELO	2025-02-17	323
349	Massey	2025-02-17	378
349	USAU	2025-02-17	386
349	SWCI	2025-02-22	147
349	ELO	2025-02-22	321
349	Massey	2025-02-22	322
349	USAU	2025-02-22	330
349	SWCI	2025-02-23	142
349	ELO	2025-02-23	321
349	Massey	2025-02-23	302
349	USAU	2025-02-23	321
349	SWCI	2025-03-02	165
349	ELO	2025-03-02	303
349	Massey	2025-03-02	170
349	USAU	2025-03-02	225
349	SWCI	2025-03-08	165
349	ELO	2025-03-08	270
349	Massey	2025-03-08	163
349	USAU	2025-03-08	226
349	SWCI	2025-03-09	167
349	ELO	2025-03-09	269
349	Massey	2025-03-09	165
349	USAU	2025-03-09	223
349	SWCI	2025-03-15	183
349	ELO	2025-03-15	262
349	Massey	2025-03-15	229
349	USAU	2025-03-15	209
349	SWCI	2025-03-16	179
349	ELO	2025-03-16	259
349	Massey	2025-03-16	171
349	USAU	2025-03-16	202
349	SWCI	2025-03-23	185
349	ELO	2025-03-23	246
349	Massey	2025-03-23	194
349	USAU	2025-03-23	176
349	SWCI	2025-03-29	324
349	ELO	2025-03-29	240
349	Massey	2025-03-29	208
349	USAU	2025-03-29	201
349	SWCI	2025-03-30	352
349	ELO	2025-03-30	241
349	Massey	2025-03-30	258
349	USAU	2025-03-30	243
350	SWCI	2025-01-26	350
350	ELO	2025-01-26	342
350	Massey	2025-01-26	70
350	USAU	2025-01-26	317
350	SWCI	2025-02-02	350
350	ELO	2025-02-02	308
350	Massey	2025-02-02	113
350	USAU	2025-02-02	292
350	SWCI	2025-02-08	350
350	ELO	2025-02-08	287
350	Massey	2025-02-08	220
350	USAU	2025-02-08	270
350	SWCI	2025-02-09	350
350	ELO	2025-02-09	282
350	Massey	2025-02-09	141
350	USAU	2025-02-09	268
350	SWCI	2025-02-12	350
350	ELO	2025-02-12	269
350	Massey	2025-02-12	246
350	USAU	2025-02-12	268
350	SWCI	2025-02-16	352
350	ELO	2025-02-16	266
350	Massey	2025-02-16	139
350	USAU	2025-02-16	248
350	SWCI	2025-02-17	352
350	ELO	2025-02-17	259
350	Massey	2025-02-17	261
350	USAU	2025-02-17	246
350	SWCI	2025-02-22	362
350	ELO	2025-02-22	256
350	Massey	2025-02-22	235
350	USAU	2025-02-22	231
350	SWCI	2025-02-23	362
350	ELO	2025-02-23	254
350	Massey	2025-02-23	243
350	USAU	2025-02-23	233
350	SWCI	2025-03-02	372
350	ELO	2025-03-02	246
350	Massey	2025-03-02	222
350	USAU	2025-03-02	192
350	SWCI	2025-03-08	372
350	ELO	2025-03-08	211
350	Massey	2025-03-08	319
350	USAU	2025-03-08	186
350	SWCI	2025-03-09	373
350	ELO	2025-03-09	210
350	Massey	2025-03-09	319
350	USAU	2025-03-09	185
350	SWCI	2025-03-15	382
350	ELO	2025-03-15	205
350	Massey	2025-03-15	26
350	USAU	2025-03-15	174
350	SWCI	2025-03-16	382
350	ELO	2025-03-16	202
350	Massey	2025-03-16	308
350	USAU	2025-03-16	176
350	SWCI	2025-03-23	389
350	ELO	2025-03-23	197
350	Massey	2025-03-23	20
350	USAU	2025-03-23	165
350	SWCI	2025-03-29	281
350	ELO	2025-03-29	200
350	Massey	2025-03-29	258
350	USAU	2025-03-29	273
350	SWCI	2025-03-30	246
350	ELO	2025-03-30	199
350	Massey	2025-03-30	267
350	USAU	2025-03-30	283
351	SWCI	2025-01-26	351
351	ELO	2025-01-26	343
351	Massey	2025-01-26	200
351	USAU	2025-01-26	318
351	SWCI	2025-02-02	351
351	ELO	2025-02-02	309
351	Massey	2025-02-02	125
351	USAU	2025-02-02	293
351	SWCI	2025-02-08	351
351	ELO	2025-02-08	288
351	Massey	2025-02-08	209
351	USAU	2025-02-08	271
351	SWCI	2025-02-09	351
351	ELO	2025-02-09	283
351	Massey	2025-02-09	140
351	USAU	2025-02-09	269
351	SWCI	2025-02-12	351
351	ELO	2025-02-12	270
351	Massey	2025-02-12	181
351	USAU	2025-02-12	269
351	SWCI	2025-02-16	353
351	ELO	2025-02-16	267
351	Massey	2025-02-16	194
351	USAU	2025-02-16	249
351	SWCI	2025-02-17	353
351	ELO	2025-02-17	260
351	Massey	2025-02-17	251
351	USAU	2025-02-17	247
351	SWCI	2025-02-22	166
351	ELO	2025-02-22	257
351	Massey	2025-02-22	361
351	USAU	2025-02-22	349
351	SWCI	2025-02-23	128
351	ELO	2025-02-23	255
351	Massey	2025-02-23	292
351	USAU	2025-02-23	326
351	SWCI	2025-03-02	196
351	ELO	2025-03-02	327
351	Massey	2025-03-02	350
351	USAU	2025-03-02	361
351	SWCI	2025-03-08	198
351	ELO	2025-03-08	302
351	Massey	2025-03-08	277
351	USAU	2025-03-08	353
351	SWCI	2025-03-09	201
351	ELO	2025-03-09	301
351	Massey	2025-03-09	265
351	USAU	2025-03-09	351
351	SWCI	2025-03-15	207
351	ELO	2025-03-15	296
351	Massey	2025-03-15	360
351	USAU	2025-03-15	365
351	SWCI	2025-03-16	208
351	ELO	2025-03-16	294
351	Massey	2025-03-16	353
351	USAU	2025-03-16	365
351	SWCI	2025-03-23	307
351	ELO	2025-03-23	284
351	Massey	2025-03-23	372
351	USAU	2025-03-23	371
351	SWCI	2025-03-29	341
351	ELO	2025-03-29	368
351	Massey	2025-03-29	374
351	USAU	2025-03-29	374
351	SWCI	2025-03-30	330
351	ELO	2025-03-30	367
351	Massey	2025-03-30	367
351	USAU	2025-03-30	375
352	SWCI	2025-01-26	352
352	ELO	2025-01-26	344
352	Massey	2025-01-26	83
352	USAU	2025-01-26	319
352	SWCI	2025-02-02	352
352	ELO	2025-02-02	310
352	Massey	2025-02-02	158
352	USAU	2025-02-02	294
352	SWCI	2025-02-08	352
352	ELO	2025-02-08	289
352	Massey	2025-02-08	174
352	USAU	2025-02-08	272
352	SWCI	2025-02-09	352
352	ELO	2025-02-09	284
352	Massey	2025-02-09	147
352	USAU	2025-02-09	270
352	SWCI	2025-02-12	352
352	ELO	2025-02-12	271
352	Massey	2025-02-12	225
352	USAU	2025-02-12	270
352	SWCI	2025-02-16	354
352	ELO	2025-02-16	268
352	Massey	2025-02-16	133
352	USAU	2025-02-16	250
352	SWCI	2025-02-17	354
352	ELO	2025-02-17	261
352	Massey	2025-02-17	233
352	USAU	2025-02-17	248
352	SWCI	2025-02-22	180
352	ELO	2025-02-22	258
352	Massey	2025-02-22	333
352	USAU	2025-02-22	311
352	SWCI	2025-02-23	215
352	ELO	2025-02-23	256
352	Massey	2025-02-23	303
352	USAU	2025-02-23	359
352	SWCI	2025-03-02	286
352	ELO	2025-03-02	376
352	Massey	2025-03-02	365
352	USAU	2025-03-02	386
352	SWCI	2025-03-08	291
352	ELO	2025-03-08	369
352	Massey	2025-03-08	289
352	USAU	2025-03-08	381
352	SWCI	2025-03-09	294
352	ELO	2025-03-09	367
352	Massey	2025-03-09	278
352	USAU	2025-03-09	376
352	SWCI	2025-03-15	315
352	ELO	2025-03-15	367
352	Massey	2025-03-15	363
352	USAU	2025-03-15	382
352	SWCI	2025-03-16	316
352	ELO	2025-03-16	366
352	Massey	2025-03-16	358
352	USAU	2025-03-16	383
352	SWCI	2025-03-23	334
352	ELO	2025-03-23	363
352	Massey	2025-03-23	363
352	USAU	2025-03-23	376
352	SWCI	2025-03-29	321
352	ELO	2025-03-29	355
352	Massey	2025-03-29	359
352	USAU	2025-03-29	351
352	SWCI	2025-03-30	254
352	ELO	2025-03-30	354
352	Massey	2025-03-30	335
352	USAU	2025-03-30	327
353	SWCI	2025-01-26	353
353	ELO	2025-01-26	345
353	Massey	2025-01-26	205
353	USAU	2025-01-26	320
353	SWCI	2025-02-02	353
353	ELO	2025-02-02	311
353	Massey	2025-02-02	116
353	USAU	2025-02-02	295
353	SWCI	2025-02-08	353
353	ELO	2025-02-08	290
353	Massey	2025-02-08	214
353	USAU	2025-02-08	273
353	SWCI	2025-02-09	353
353	ELO	2025-02-09	285
353	Massey	2025-02-09	189
353	USAU	2025-02-09	271
353	SWCI	2025-02-12	353
353	ELO	2025-02-12	272
353	Massey	2025-02-12	269
353	USAU	2025-02-12	271
353	SWCI	2025-02-16	355
353	ELO	2025-02-16	269
353	Massey	2025-02-16	155
353	USAU	2025-02-16	251
353	SWCI	2025-02-17	355
353	ELO	2025-02-17	262
353	Massey	2025-02-17	259
353	USAU	2025-02-17	249
353	SWCI	2025-02-22	363
353	ELO	2025-02-22	259
353	Massey	2025-02-22	192
353	USAU	2025-02-22	232
353	SWCI	2025-02-23	363
353	ELO	2025-02-23	257
353	Massey	2025-02-23	202
353	USAU	2025-02-23	234
353	SWCI	2025-03-02	373
353	ELO	2025-03-02	247
353	Massey	2025-03-02	266
353	USAU	2025-03-02	193
353	SWCI	2025-03-08	373
353	ELO	2025-03-08	212
353	Massey	2025-03-08	304
353	USAU	2025-03-08	187
353	SWCI	2025-03-09	374
353	ELO	2025-03-09	211
353	Massey	2025-03-09	347
353	USAU	2025-03-09	186
353	SWCI	2025-03-15	341
353	ELO	2025-03-15	206
353	Massey	2025-03-15	394
353	USAU	2025-03-15	395
353	SWCI	2025-03-16	343
353	ELO	2025-03-16	203
353	Massey	2025-03-16	396
353	USAU	2025-03-16	395
353	SWCI	2025-03-23	359
353	ELO	2025-03-23	378
353	Massey	2025-03-23	395
353	USAU	2025-03-23	394
353	SWCI	2025-03-29	396
353	ELO	2025-03-29	373
353	Massey	2025-03-29	393
353	USAU	2025-03-29	392
353	SWCI	2025-03-30	395
353	ELO	2025-03-30	373
353	Massey	2025-03-30	394
353	USAU	2025-03-30	393
354	SWCI	2025-01-26	354
354	ELO	2025-01-26	346
354	Massey	2025-01-26	91
354	USAU	2025-01-26	321
354	SWCI	2025-02-02	354
354	ELO	2025-02-02	312
354	Massey	2025-02-02	117
354	USAU	2025-02-02	296
354	SWCI	2025-02-08	354
354	ELO	2025-02-08	291
354	Massey	2025-02-08	171
354	USAU	2025-02-08	274
354	SWCI	2025-02-09	354
354	ELO	2025-02-09	286
354	Massey	2025-02-09	221
354	USAU	2025-02-09	272
354	SWCI	2025-02-12	354
354	ELO	2025-02-12	273
354	Massey	2025-02-12	260
354	USAU	2025-02-12	272
354	SWCI	2025-02-16	356
354	ELO	2025-02-16	270
354	Massey	2025-02-16	146
354	USAU	2025-02-16	252
354	SWCI	2025-02-17	356
354	ELO	2025-02-17	263
354	Massey	2025-02-17	221
354	USAU	2025-02-17	250
354	SWCI	2025-02-22	364
354	ELO	2025-02-22	260
354	Massey	2025-02-22	186
354	USAU	2025-02-22	233
354	SWCI	2025-02-23	364
354	ELO	2025-02-23	258
354	Massey	2025-02-23	223
354	USAU	2025-02-23	235
354	SWCI	2025-03-02	374
354	ELO	2025-03-02	248
354	Massey	2025-03-02	227
354	USAU	2025-03-02	194
354	SWCI	2025-03-08	374
354	ELO	2025-03-08	213
354	Massey	2025-03-08	321
354	USAU	2025-03-08	188
354	SWCI	2025-03-09	375
354	ELO	2025-03-09	212
354	Massey	2025-03-09	312
354	USAU	2025-03-09	187
354	SWCI	2025-03-15	383
354	ELO	2025-03-15	207
354	Massey	2025-03-15	32
354	USAU	2025-03-15	175
354	SWCI	2025-03-16	383
354	ELO	2025-03-16	204
354	Massey	2025-03-16	306
354	USAU	2025-03-16	177
354	SWCI	2025-03-23	390
354	ELO	2025-03-23	198
354	Massey	2025-03-23	13
354	USAU	2025-03-23	166
354	SWCI	2025-03-29	370
354	ELO	2025-03-29	201
354	Massey	2025-03-29	396
354	USAU	2025-03-29	386
354	SWCI	2025-03-30	380
354	ELO	2025-03-30	200
354	Massey	2025-03-30	397
354	USAU	2025-03-30	394
355	SWCI	2025-01-26	355
355	ELO	2025-01-26	347
355	Massey	2025-01-26	92
355	USAU	2025-01-26	322
355	SWCI	2025-02-02	355
355	ELO	2025-02-02	313
355	Massey	2025-02-02	210
355	USAU	2025-02-02	297
355	SWCI	2025-02-08	355
355	ELO	2025-02-08	292
355	Massey	2025-02-08	199
355	USAU	2025-02-08	275
355	SWCI	2025-02-09	355
355	ELO	2025-02-09	287
355	Massey	2025-02-09	205
355	USAU	2025-02-09	273
355	SWCI	2025-02-12	355
355	ELO	2025-02-12	274
355	Massey	2025-02-12	168
355	USAU	2025-02-12	273
355	SWCI	2025-02-16	357
355	ELO	2025-02-16	271
355	Massey	2025-02-16	167
355	USAU	2025-02-16	253
355	SWCI	2025-02-17	357
355	ELO	2025-02-17	264
355	Massey	2025-02-17	185
355	USAU	2025-02-17	251
355	SWCI	2025-02-22	157
355	ELO	2025-02-22	261
355	Massey	2025-02-22	254
355	USAU	2025-02-22	275
355	SWCI	2025-02-23	159
355	ELO	2025-02-23	259
355	Massey	2025-02-23	253
355	USAU	2025-02-23	319
355	SWCI	2025-03-02	215
355	ELO	2025-03-02	104
355	Massey	2025-03-02	314
355	USAU	2025-03-02	359
355	SWCI	2025-03-08	214
355	ELO	2025-03-08	132
355	Massey	2025-03-08	229
355	USAU	2025-03-08	342
355	SWCI	2025-03-09	217
355	ELO	2025-03-09	135
355	Massey	2025-03-09	221
355	USAU	2025-03-09	339
355	SWCI	2025-03-15	236
355	ELO	2025-03-15	138
355	Massey	2025-03-15	315
355	USAU	2025-03-15	349
355	SWCI	2025-03-16	230
355	ELO	2025-03-16	140
355	Massey	2025-03-16	263
355	USAU	2025-03-16	348
355	SWCI	2025-03-23	224
355	ELO	2025-03-23	145
355	Massey	2025-03-23	286
355	USAU	2025-03-23	323
355	SWCI	2025-03-29	201
355	ELO	2025-03-29	158
355	Massey	2025-03-29	302
355	USAU	2025-03-29	326
355	SWCI	2025-03-30	179
355	ELO	2025-03-30	161
355	Massey	2025-03-30	297
355	USAU	2025-03-30	311
356	SWCI	2025-01-26	356
356	ELO	2025-01-26	348
356	Massey	2025-01-26	62
356	USAU	2025-01-26	323
356	SWCI	2025-02-02	356
356	ELO	2025-02-02	314
356	Massey	2025-02-02	181
356	USAU	2025-02-02	298
356	SWCI	2025-02-08	356
356	ELO	2025-02-08	293
356	Massey	2025-02-08	151
356	USAU	2025-02-08	276
356	SWCI	2025-02-09	356
356	ELO	2025-02-09	288
356	Massey	2025-02-09	148
356	USAU	2025-02-09	274
356	SWCI	2025-02-12	356
356	ELO	2025-02-12	275
356	Massey	2025-02-12	221
356	USAU	2025-02-12	274
356	SWCI	2025-02-16	358
356	ELO	2025-02-16	272
356	Massey	2025-02-16	247
356	USAU	2025-02-16	254
356	SWCI	2025-02-17	358
356	ELO	2025-02-17	265
356	Massey	2025-02-17	201
356	USAU	2025-02-17	252
356	SWCI	2025-02-22	365
356	ELO	2025-02-22	262
356	Massey	2025-02-22	184
356	USAU	2025-02-22	234
356	SWCI	2025-02-23	365
356	ELO	2025-02-23	260
356	Massey	2025-02-23	237
356	USAU	2025-02-23	236
356	SWCI	2025-03-02	375
356	ELO	2025-03-02	249
356	Massey	2025-03-02	258
356	USAU	2025-03-02	195
356	SWCI	2025-03-08	375
356	ELO	2025-03-08	214
356	Massey	2025-03-08	355
356	USAU	2025-03-08	189
356	SWCI	2025-03-09	376
356	ELO	2025-03-09	213
356	Massey	2025-03-09	317
356	USAU	2025-03-09	188
356	SWCI	2025-03-15	384
356	ELO	2025-03-15	208
356	Massey	2025-03-15	25
356	USAU	2025-03-15	176
356	SWCI	2025-03-16	384
356	ELO	2025-03-16	205
356	Massey	2025-03-16	309
356	USAU	2025-03-16	178
356	SWCI	2025-03-23	302
356	ELO	2025-03-23	199
356	Massey	2025-03-23	376
356	USAU	2025-03-23	374
356	SWCI	2025-03-29	314
356	ELO	2025-03-29	317
356	Massey	2025-03-29	375
356	USAU	2025-03-29	371
356	SWCI	2025-03-30	319
356	ELO	2025-03-30	317
356	Massey	2025-03-30	374
356	USAU	2025-03-30	370
357	SWCI	2025-01-26	357
357	ELO	2025-01-26	349
357	Massey	2025-01-26	102
357	USAU	2025-01-26	324
357	SWCI	2025-02-02	357
357	ELO	2025-02-02	315
357	Massey	2025-02-02	199
357	USAU	2025-02-02	299
357	SWCI	2025-02-08	357
357	ELO	2025-02-08	294
357	Massey	2025-02-08	207
357	USAU	2025-02-08	277
357	SWCI	2025-02-09	357
357	ELO	2025-02-09	289
357	Massey	2025-02-09	165
357	USAU	2025-02-09	275
357	SWCI	2025-02-12	357
357	ELO	2025-02-12	276
357	Massey	2025-02-12	172
357	USAU	2025-02-12	275
357	SWCI	2025-02-16	359
357	ELO	2025-02-16	273
357	Massey	2025-02-16	143
357	USAU	2025-02-16	255
357	SWCI	2025-02-17	359
357	ELO	2025-02-17	266
357	Massey	2025-02-17	242
357	USAU	2025-02-17	253
357	SWCI	2025-02-22	366
357	ELO	2025-02-22	263
357	Massey	2025-02-22	194
357	USAU	2025-02-22	235
357	SWCI	2025-02-23	366
357	ELO	2025-02-23	261
357	Massey	2025-02-23	199
357	USAU	2025-02-23	237
357	SWCI	2025-03-02	376
357	ELO	2025-03-02	250
357	Massey	2025-03-02	246
357	USAU	2025-03-02	196
357	SWCI	2025-03-08	376
357	ELO	2025-03-08	215
357	Massey	2025-03-08	336
357	USAU	2025-03-08	190
357	SWCI	2025-03-09	377
357	ELO	2025-03-09	214
357	Massey	2025-03-09	343
357	USAU	2025-03-09	189
357	SWCI	2025-03-15	385
357	ELO	2025-03-15	209
357	Massey	2025-03-15	27
357	USAU	2025-03-15	177
357	SWCI	2025-03-16	385
357	ELO	2025-03-16	206
357	Massey	2025-03-16	297
357	USAU	2025-03-16	179
357	SWCI	2025-03-23	196
357	ELO	2025-03-23	200
357	Massey	2025-03-23	337
357	USAU	2025-03-23	341
357	SWCI	2025-03-29	205
357	ELO	2025-03-29	174
357	Massey	2025-03-29	331
357	USAU	2025-03-29	332
357	SWCI	2025-03-30	211
357	ELO	2025-03-30	175
357	Massey	2025-03-30	327
357	USAU	2025-03-30	334
358	SWCI	2025-01-26	358
358	ELO	2025-01-26	350
358	Massey	2025-01-26	106
358	USAU	2025-01-26	325
358	SWCI	2025-02-02	358
358	ELO	2025-02-02	316
358	Massey	2025-02-02	194
358	USAU	2025-02-02	300
358	SWCI	2025-02-08	358
358	ELO	2025-02-08	295
358	Massey	2025-02-08	212
358	USAU	2025-02-08	278
358	SWCI	2025-02-09	358
358	ELO	2025-02-09	290
358	Massey	2025-02-09	202
358	USAU	2025-02-09	276
358	SWCI	2025-02-12	358
358	ELO	2025-02-12	277
358	Massey	2025-02-12	188
358	USAU	2025-02-12	276
358	SWCI	2025-02-16	360
358	ELO	2025-02-16	274
358	Massey	2025-02-16	203
358	USAU	2025-02-16	256
358	SWCI	2025-02-17	360
358	ELO	2025-02-17	267
358	Massey	2025-02-17	182
358	USAU	2025-02-17	254
358	SWCI	2025-02-22	154
358	ELO	2025-02-22	264
358	Massey	2025-02-22	339
358	USAU	2025-02-22	335
358	SWCI	2025-02-23	196
358	ELO	2025-02-23	262
358	Massey	2025-02-23	347
358	USAU	2025-02-23	370
358	SWCI	2025-03-02	274
358	ELO	2025-03-02	363
358	Massey	2025-03-02	389
358	USAU	2025-03-02	389
358	SWCI	2025-03-08	279
358	ELO	2025-03-08	349
358	Massey	2025-03-08	360
358	USAU	2025-03-08	388
358	SWCI	2025-03-09	282
358	ELO	2025-03-09	347
358	Massey	2025-03-09	360
358	USAU	2025-03-09	385
358	SWCI	2025-03-15	300
358	ELO	2025-03-15	348
358	Massey	2025-03-15	388
358	USAU	2025-03-15	391
358	SWCI	2025-03-16	302
358	ELO	2025-03-16	346
358	Massey	2025-03-16	383
358	USAU	2025-03-16	391
358	SWCI	2025-03-23	250
358	ELO	2025-03-23	337
358	Massey	2025-03-23	361
358	USAU	2025-03-23	358
358	SWCI	2025-03-29	254
358	ELO	2025-03-29	310
358	Massey	2025-03-29	355
358	USAU	2025-03-29	350
358	SWCI	2025-03-30	256
358	ELO	2025-03-30	309
358	Massey	2025-03-30	354
358	USAU	2025-03-30	348
359	SWCI	2025-01-26	359
359	ELO	2025-01-26	351
359	Massey	2025-01-26	107
359	USAU	2025-01-26	326
359	SWCI	2025-02-02	359
359	ELO	2025-02-02	317
359	Massey	2025-02-02	178
359	USAU	2025-02-02	301
359	SWCI	2025-02-08	359
359	ELO	2025-02-08	296
359	Massey	2025-02-08	211
359	USAU	2025-02-08	279
359	SWCI	2025-02-09	359
359	ELO	2025-02-09	291
359	Massey	2025-02-09	194
359	USAU	2025-02-09	277
359	SWCI	2025-02-12	359
359	ELO	2025-02-12	278
359	Massey	2025-02-12	189
359	USAU	2025-02-12	277
359	SWCI	2025-02-16	361
359	ELO	2025-02-16	275
359	Massey	2025-02-16	165
359	USAU	2025-02-16	257
359	SWCI	2025-02-17	361
359	ELO	2025-02-17	268
359	Massey	2025-02-17	177
359	USAU	2025-02-17	255
359	SWCI	2025-02-22	367
359	ELO	2025-02-22	265
359	Massey	2025-02-22	188
359	USAU	2025-02-22	236
359	SWCI	2025-02-23	367
359	ELO	2025-02-23	263
359	Massey	2025-02-23	238
359	USAU	2025-02-23	238
359	SWCI	2025-03-02	377
359	ELO	2025-03-02	251
359	Massey	2025-03-02	267
359	USAU	2025-03-02	197
359	SWCI	2025-03-08	377
359	ELO	2025-03-08	216
359	Massey	2025-03-08	341
359	USAU	2025-03-08	191
359	SWCI	2025-03-09	378
359	ELO	2025-03-09	215
359	Massey	2025-03-09	329
359	USAU	2025-03-09	190
359	SWCI	2025-03-15	309
359	ELO	2025-03-15	210
359	Massey	2025-03-15	288
359	USAU	2025-03-15	281
359	SWCI	2025-03-16	233
359	ELO	2025-03-16	207
359	Massey	2025-03-16	206
359	USAU	2025-03-16	255
359	SWCI	2025-03-23	246
359	ELO	2025-03-23	251
359	Massey	2025-03-23	236
359	USAU	2025-03-23	234
359	SWCI	2025-03-29	260
359	ELO	2025-03-29	242
359	Massey	2025-03-29	189
359	USAU	2025-03-29	191
359	SWCI	2025-03-30	271
359	ELO	2025-03-30	244
359	Massey	2025-03-30	186
359	USAU	2025-03-30	191
360	SWCI	2025-01-26	360
360	ELO	2025-01-26	352
360	Massey	2025-01-26	103
360	USAU	2025-01-26	327
360	SWCI	2025-02-02	360
360	ELO	2025-02-02	318
360	Massey	2025-02-02	185
360	USAU	2025-02-02	302
360	SWCI	2025-02-08	360
360	ELO	2025-02-08	297
360	Massey	2025-02-08	193
360	USAU	2025-02-08	280
360	SWCI	2025-02-09	360
360	ELO	2025-02-09	292
360	Massey	2025-02-09	213
360	USAU	2025-02-09	278
360	SWCI	2025-02-12	360
360	ELO	2025-02-12	279
360	Massey	2025-02-12	232
360	USAU	2025-02-12	278
360	SWCI	2025-02-16	167
360	ELO	2025-02-16	276
360	Massey	2025-02-16	349
360	USAU	2025-02-16	378
360	SWCI	2025-02-17	167
360	ELO	2025-02-17	369
360	Massey	2025-02-17	352
360	USAU	2025-02-17	379
360	SWCI	2025-02-22	211
360	ELO	2025-02-22	369
360	Massey	2025-02-22	338
360	USAU	2025-02-22	378
360	SWCI	2025-02-23	212
360	ELO	2025-02-23	367
360	Massey	2025-02-23	331
360	USAU	2025-02-23	377
360	SWCI	2025-03-02	262
360	ELO	2025-03-02	358
360	Massey	2025-03-02	304
360	USAU	2025-03-02	333
360	SWCI	2025-03-08	266
360	ELO	2025-03-08	343
360	Massey	2025-03-08	246
360	USAU	2025-03-08	330
360	SWCI	2025-03-09	268
360	ELO	2025-03-09	341
360	Massey	2025-03-09	239
360	USAU	2025-03-09	327
360	SWCI	2025-03-15	286
360	ELO	2025-03-15	343
360	Massey	2025-03-15	309
360	USAU	2025-03-15	310
360	SWCI	2025-03-16	265
360	ELO	2025-03-16	341
360	Massey	2025-03-16	260
360	USAU	2025-03-16	306
360	SWCI	2025-03-23	284
360	ELO	2025-03-23	339
360	Massey	2025-03-23	290
360	USAU	2025-03-23	288
360	SWCI	2025-03-29	261
360	ELO	2025-03-29	334
360	Massey	2025-03-29	246
360	USAU	2025-03-29	234
360	SWCI	2025-03-30	264
360	ELO	2025-03-30	280
360	Massey	2025-03-30	243
360	USAU	2025-03-30	238
361	SWCI	2025-01-26	361
361	ELO	2025-01-26	353
361	Massey	2025-01-26	108
361	USAU	2025-01-26	328
361	SWCI	2025-02-02	361
361	ELO	2025-02-02	319
361	Massey	2025-02-02	196
361	USAU	2025-02-02	303
361	SWCI	2025-02-08	361
361	ELO	2025-02-08	298
361	Massey	2025-02-08	179
361	USAU	2025-02-08	281
361	SWCI	2025-02-09	361
361	ELO	2025-02-09	293
361	Massey	2025-02-09	171
361	USAU	2025-02-09	279
361	SWCI	2025-02-12	361
361	ELO	2025-02-12	280
361	Massey	2025-02-12	255
361	USAU	2025-02-12	279
361	SWCI	2025-02-16	362
361	ELO	2025-02-16	277
361	Massey	2025-02-16	205
361	USAU	2025-02-16	258
361	SWCI	2025-02-17	362
361	ELO	2025-02-17	269
361	Massey	2025-02-17	174
361	USAU	2025-02-17	256
361	SWCI	2025-02-22	155
361	ELO	2025-02-22	266
361	Massey	2025-02-22	288
361	USAU	2025-02-22	306
361	SWCI	2025-02-23	206
361	ELO	2025-02-23	264
361	Massey	2025-02-23	285
361	USAU	2025-02-23	347
361	SWCI	2025-03-02	280
361	ELO	2025-03-02	315
361	Massey	2025-03-02	348
361	USAU	2025-03-02	379
361	SWCI	2025-03-08	286
361	ELO	2025-03-08	291
361	Massey	2025-03-08	267
361	USAU	2025-03-08	372
361	SWCI	2025-03-09	290
361	ELO	2025-03-09	291
361	Massey	2025-03-09	261
361	USAU	2025-03-09	369
361	SWCI	2025-03-15	307
361	ELO	2025-03-15	284
361	Massey	2025-03-15	350
361	USAU	2025-03-15	375
361	SWCI	2025-03-16	308
361	ELO	2025-03-16	281
361	Massey	2025-03-16	342
361	USAU	2025-03-16	375
361	SWCI	2025-03-23	313
361	ELO	2025-03-23	269
361	Massey	2025-03-23	332
361	USAU	2025-03-23	361
361	SWCI	2025-03-29	331
361	ELO	2025-03-29	257
361	Massey	2025-03-29	332
361	USAU	2025-03-29	347
361	SWCI	2025-03-30	317
361	ELO	2025-03-30	258
361	Massey	2025-03-30	312
361	USAU	2025-03-30	336
362	SWCI	2025-01-26	362
362	ELO	2025-01-26	354
362	Massey	2025-01-26	109
362	USAU	2025-01-26	329
362	SWCI	2025-02-02	362
362	ELO	2025-02-02	320
362	Massey	2025-02-02	141
362	USAU	2025-02-02	304
362	SWCI	2025-02-08	362
362	ELO	2025-02-08	299
362	Massey	2025-02-08	208
362	USAU	2025-02-08	282
362	SWCI	2025-02-09	362
362	ELO	2025-02-09	294
362	Massey	2025-02-09	161
362	USAU	2025-02-09	280
362	SWCI	2025-02-12	362
362	ELO	2025-02-12	281
362	Massey	2025-02-12	248
362	USAU	2025-02-12	280
362	SWCI	2025-02-16	363
362	ELO	2025-02-16	278
362	Massey	2025-02-16	255
362	USAU	2025-02-16	259
362	SWCI	2025-02-17	363
362	ELO	2025-02-17	270
362	Massey	2025-02-17	200
362	USAU	2025-02-17	257
362	SWCI	2025-02-22	368
362	ELO	2025-02-22	267
362	Massey	2025-02-22	181
362	USAU	2025-02-22	237
362	SWCI	2025-02-23	368
362	ELO	2025-02-23	265
362	Massey	2025-02-23	205
362	USAU	2025-02-23	239
362	SWCI	2025-03-02	302
362	ELO	2025-03-02	252
362	Massey	2025-03-02	397
362	USAU	2025-03-02	396
362	SWCI	2025-03-08	310
362	ELO	2025-03-08	373
362	Massey	2025-03-08	393
362	USAU	2025-03-08	396
362	SWCI	2025-03-09	313
362	ELO	2025-03-09	371
362	Massey	2025-03-09	396
362	USAU	2025-03-09	394
362	SWCI	2025-03-15	345
362	ELO	2025-03-15	371
362	Massey	2025-03-15	397
362	USAU	2025-03-15	397
362	SWCI	2025-03-16	344
362	ELO	2025-03-16	370
362	Massey	2025-03-16	397
362	USAU	2025-03-16	397
362	SWCI	2025-03-23	361
362	ELO	2025-03-23	368
362	Massey	2025-03-23	397
362	USAU	2025-03-23	396
362	SWCI	2025-03-29	384
362	ELO	2025-03-29	360
362	Massey	2025-03-29	389
362	USAU	2025-03-29	395
362	SWCI	2025-03-30	385
362	ELO	2025-03-30	359
362	Massey	2025-03-30	393
362	USAU	2025-03-30	392
363	SWCI	2025-01-26	363
363	ELO	2025-01-26	355
363	Massey	2025-01-26	110
363	USAU	2025-01-26	330
363	SWCI	2025-02-02	363
363	ELO	2025-02-02	321
363	Massey	2025-02-02	165
363	USAU	2025-02-02	305
363	SWCI	2025-02-08	363
363	ELO	2025-02-08	300
363	Massey	2025-02-08	223
363	USAU	2025-02-08	283
363	SWCI	2025-02-09	363
363	ELO	2025-02-09	295
363	Massey	2025-02-09	211
363	USAU	2025-02-09	281
363	SWCI	2025-02-12	363
363	ELO	2025-02-12	282
363	Massey	2025-02-12	180
363	USAU	2025-02-12	281
363	SWCI	2025-02-16	159
363	ELO	2025-02-16	279
363	Massey	2025-02-16	338
363	USAU	2025-02-16	383
363	SWCI	2025-02-17	160
363	ELO	2025-02-17	367
363	Massey	2025-02-17	344
363	USAU	2025-02-17	384
363	SWCI	2025-02-22	198
363	ELO	2025-02-22	365
363	Massey	2025-02-22	325
363	USAU	2025-02-22	381
363	SWCI	2025-02-23	198
363	ELO	2025-02-23	363
363	Massey	2025-02-23	314
363	USAU	2025-02-23	378
363	SWCI	2025-03-02	254
363	ELO	2025-03-02	353
363	Massey	2025-03-02	293
363	USAU	2025-03-02	330
363	SWCI	2025-03-08	258
363	ELO	2025-03-08	374
363	Massey	2025-03-08	241
363	USAU	2025-03-08	326
363	SWCI	2025-03-09	262
363	ELO	2025-03-09	373
363	Massey	2025-03-09	232
363	USAU	2025-03-09	323
363	SWCI	2025-03-15	280
363	ELO	2025-03-15	373
363	Massey	2025-03-15	292
363	USAU	2025-03-15	284
363	SWCI	2025-03-16	286
363	ELO	2025-03-16	372
363	Massey	2025-03-16	242
363	USAU	2025-03-16	287
363	SWCI	2025-03-23	308
363	ELO	2025-03-23	371
363	Massey	2025-03-23	273
363	USAU	2025-03-23	268
363	SWCI	2025-03-29	308
363	ELO	2025-03-29	363
363	Massey	2025-03-29	257
363	USAU	2025-03-29	254
363	SWCI	2025-03-30	282
363	ELO	2025-03-30	362
363	Massey	2025-03-30	261
363	USAU	2025-03-30	258
364	SWCI	2025-01-26	364
364	ELO	2025-01-26	356
364	Massey	2025-01-26	111
364	USAU	2025-01-26	331
364	SWCI	2025-02-02	364
364	ELO	2025-02-02	322
364	Massey	2025-02-02	140
364	USAU	2025-02-02	306
364	SWCI	2025-02-08	364
364	ELO	2025-02-08	301
364	Massey	2025-02-08	219
364	USAU	2025-02-08	284
364	SWCI	2025-02-09	364
364	ELO	2025-02-09	296
364	Massey	2025-02-09	156
364	USAU	2025-02-09	282
364	SWCI	2025-02-12	364
364	ELO	2025-02-12	283
364	Massey	2025-02-12	243
364	USAU	2025-02-12	282
364	SWCI	2025-02-16	364
364	ELO	2025-02-16	280
364	Massey	2025-02-16	230
364	USAU	2025-02-16	260
364	SWCI	2025-02-17	364
364	ELO	2025-02-17	271
364	Massey	2025-02-17	199
364	USAU	2025-02-17	258
364	SWCI	2025-02-22	369
364	ELO	2025-02-22	268
364	Massey	2025-02-22	203
364	USAU	2025-02-22	238
364	SWCI	2025-02-23	369
364	ELO	2025-02-23	266
364	Massey	2025-02-23	225
364	USAU	2025-02-23	240
364	SWCI	2025-03-02	35
364	ELO	2025-03-02	253
364	Massey	2025-03-02	116
364	USAU	2025-03-02	105
364	SWCI	2025-03-08	34
364	ELO	2025-03-08	42
364	Massey	2025-03-08	112
364	USAU	2025-03-08	108
364	SWCI	2025-03-09	34
364	ELO	2025-03-09	43
364	Massey	2025-03-09	112
364	USAU	2025-03-09	106
364	SWCI	2025-03-15	35
364	ELO	2025-03-15	43
364	Massey	2025-03-15	159
364	USAU	2025-03-15	84
364	SWCI	2025-03-16	30
364	ELO	2025-03-16	45
364	Massey	2025-03-16	99
364	USAU	2025-03-16	83
364	SWCI	2025-03-23	31
364	ELO	2025-03-23	53
364	Massey	2025-03-23	127
364	USAU	2025-03-23	82
364	SWCI	2025-03-29	19
364	ELO	2025-03-29	61
364	Massey	2025-03-29	98
364	USAU	2025-03-29	84
364	SWCI	2025-03-30	19
364	ELO	2025-03-30	62
364	Massey	2025-03-30	96
364	USAU	2025-03-30	81
365	SWCI	2025-01-26	365
365	ELO	2025-01-26	357
365	Massey	2025-01-26	224
365	USAU	2025-01-26	332
365	SWCI	2025-02-02	365
365	ELO	2025-02-02	323
365	Massey	2025-02-02	145
365	USAU	2025-02-02	307
365	SWCI	2025-02-08	365
365	ELO	2025-02-08	302
365	Massey	2025-02-08	181
365	USAU	2025-02-08	285
365	SWCI	2025-02-09	365
365	ELO	2025-02-09	297
365	Massey	2025-02-09	174
365	USAU	2025-02-09	283
365	SWCI	2025-02-12	365
365	ELO	2025-02-12	284
365	Massey	2025-02-12	196
365	USAU	2025-02-12	283
365	SWCI	2025-02-16	365
365	ELO	2025-02-16	281
365	Massey	2025-02-16	191
365	USAU	2025-02-16	261
365	SWCI	2025-02-17	365
365	ELO	2025-02-17	272
365	Massey	2025-02-17	159
365	USAU	2025-02-17	259
365	SWCI	2025-02-22	370
365	ELO	2025-02-22	269
365	Massey	2025-02-22	239
365	USAU	2025-02-22	239
365	SWCI	2025-02-23	370
365	ELO	2025-02-23	267
365	Massey	2025-02-23	206
365	USAU	2025-02-23	241
365	SWCI	2025-03-02	378
365	ELO	2025-03-02	254
365	Massey	2025-03-02	232
365	USAU	2025-03-02	198
365	SWCI	2025-03-08	378
365	ELO	2025-03-08	217
365	Massey	2025-03-08	337
365	USAU	2025-03-08	192
365	SWCI	2025-03-09	379
365	ELO	2025-03-09	216
365	Massey	2025-03-09	324
365	USAU	2025-03-09	191
365	SWCI	2025-03-15	148
365	ELO	2025-03-15	211
365	Massey	2025-03-15	13
365	USAU	2025-03-15	120
365	SWCI	2025-03-16	111
365	ELO	2025-03-16	208
365	Massey	2025-03-16	244
365	USAU	2025-03-16	108
365	SWCI	2025-03-23	130
365	ELO	2025-03-23	105
365	Massey	2025-03-23	326
365	USAU	2025-03-23	313
365	SWCI	2025-03-29	168
365	ELO	2025-03-29	112
365	Massey	2025-03-29	313
365	USAU	2025-03-29	290
365	SWCI	2025-03-30	128
365	ELO	2025-03-30	112
365	Massey	2025-03-30	299
365	USAU	2025-03-30	285
366	SWCI	2025-01-26	366
366	ELO	2025-01-26	358
366	Massey	2025-01-26	225
366	USAU	2025-01-26	333
366	SWCI	2025-02-02	366
366	ELO	2025-02-02	324
366	Massey	2025-02-02	146
366	USAU	2025-02-02	308
366	SWCI	2025-02-08	366
366	ELO	2025-02-08	303
366	Massey	2025-02-08	172
366	USAU	2025-02-08	286
366	SWCI	2025-02-09	366
366	ELO	2025-02-09	298
366	Massey	2025-02-09	186
366	USAU	2025-02-09	284
366	SWCI	2025-02-12	366
366	ELO	2025-02-12	285
366	Massey	2025-02-12	150
366	USAU	2025-02-12	284
366	SWCI	2025-02-16	366
366	ELO	2025-02-16	282
366	Massey	2025-02-16	233
366	USAU	2025-02-16	262
366	SWCI	2025-02-17	366
366	ELO	2025-02-17	273
366	Massey	2025-02-17	173
366	USAU	2025-02-17	260
366	SWCI	2025-02-22	371
366	ELO	2025-02-22	270
366	Massey	2025-02-22	228
366	USAU	2025-02-22	240
366	SWCI	2025-02-23	371
366	ELO	2025-02-23	268
366	Massey	2025-02-23	204
366	USAU	2025-02-23	242
366	SWCI	2025-03-02	379
366	ELO	2025-03-02	255
366	Massey	2025-03-02	276
366	USAU	2025-03-02	199
366	SWCI	2025-03-08	379
366	ELO	2025-03-08	218
366	Massey	2025-03-08	351
366	USAU	2025-03-08	193
366	SWCI	2025-03-09	380
366	ELO	2025-03-09	217
366	Massey	2025-03-09	334
366	USAU	2025-03-09	192
366	SWCI	2025-03-15	386
366	ELO	2025-03-15	212
366	Massey	2025-03-15	33
366	USAU	2025-03-15	178
366	SWCI	2025-03-16	386
366	ELO	2025-03-16	209
366	Massey	2025-03-16	293
366	USAU	2025-03-16	180
366	SWCI	2025-03-23	323
366	ELO	2025-03-23	201
366	Massey	2025-03-23	298
366	USAU	2025-03-23	300
366	SWCI	2025-03-29	339
366	ELO	2025-03-29	327
366	Massey	2025-03-29	280
366	USAU	2025-03-29	276
366	SWCI	2025-03-30	337
366	ELO	2025-03-30	327
366	Massey	2025-03-30	282
366	USAU	2025-03-30	275
367	SWCI	2025-01-26	367
367	ELO	2025-01-26	359
367	Massey	2025-01-26	226
367	USAU	2025-01-26	334
367	SWCI	2025-02-02	367
367	ELO	2025-02-02	325
367	Massey	2025-02-02	147
367	USAU	2025-02-02	309
367	SWCI	2025-02-08	367
367	ELO	2025-02-08	304
367	Massey	2025-02-08	196
367	USAU	2025-02-08	287
367	SWCI	2025-02-09	367
367	ELO	2025-02-09	299
367	Massey	2025-02-09	181
367	USAU	2025-02-09	285
367	SWCI	2025-02-12	367
367	ELO	2025-02-12	286
367	Massey	2025-02-12	173
367	USAU	2025-02-12	285
367	SWCI	2025-02-16	367
367	ELO	2025-02-16	283
367	Massey	2025-02-16	242
367	USAU	2025-02-16	263
367	SWCI	2025-02-17	367
367	ELO	2025-02-17	274
367	Massey	2025-02-17	157
367	USAU	2025-02-17	261
367	SWCI	2025-02-22	372
367	ELO	2025-02-22	271
367	Massey	2025-02-22	179
367	USAU	2025-02-22	241
367	SWCI	2025-02-23	372
367	ELO	2025-02-23	269
367	Massey	2025-02-23	198
367	USAU	2025-02-23	243
367	SWCI	2025-03-02	380
367	ELO	2025-03-02	256
367	Massey	2025-03-02	248
367	USAU	2025-03-02	200
367	SWCI	2025-03-08	380
367	ELO	2025-03-08	219
367	Massey	2025-03-08	327
367	USAU	2025-03-08	194
367	SWCI	2025-03-09	381
367	ELO	2025-03-09	218
367	Massey	2025-03-09	318
367	USAU	2025-03-09	193
367	SWCI	2025-03-15	387
367	ELO	2025-03-15	213
367	Massey	2025-03-15	39
367	USAU	2025-03-15	179
367	SWCI	2025-03-16	387
367	ELO	2025-03-16	210
367	Massey	2025-03-16	298
367	USAU	2025-03-16	181
367	SWCI	2025-03-23	229
367	ELO	2025-03-23	202
367	Massey	2025-03-23	297
367	USAU	2025-03-23	283
367	SWCI	2025-03-29	217
367	ELO	2025-03-29	224
367	Massey	2025-03-29	282
367	USAU	2025-03-29	267
367	SWCI	2025-03-30	222
367	ELO	2025-03-30	223
367	Massey	2025-03-30	281
367	USAU	2025-03-30	271
368	SWCI	2025-01-26	368
368	ELO	2025-01-26	360
368	Massey	2025-01-26	227
368	USAU	2025-01-26	335
368	SWCI	2025-02-02	368
368	ELO	2025-02-02	326
368	Massey	2025-02-02	148
368	USAU	2025-02-02	310
368	SWCI	2025-02-08	368
368	ELO	2025-02-08	305
368	Massey	2025-02-08	170
368	USAU	2025-02-08	288
368	SWCI	2025-02-09	368
368	ELO	2025-02-09	300
368	Massey	2025-02-09	179
368	USAU	2025-02-09	286
368	SWCI	2025-02-12	368
368	ELO	2025-02-12	287
368	Massey	2025-02-12	207
368	USAU	2025-02-12	286
368	SWCI	2025-02-16	368
368	ELO	2025-02-16	284
368	Massey	2025-02-16	243
368	USAU	2025-02-16	264
368	SWCI	2025-02-17	368
368	ELO	2025-02-17	275
368	Massey	2025-02-17	172
368	USAU	2025-02-17	262
368	SWCI	2025-02-22	373
368	ELO	2025-02-22	272
368	Massey	2025-02-22	234
368	USAU	2025-02-22	242
368	SWCI	2025-02-23	373
368	ELO	2025-02-23	270
368	Massey	2025-02-23	200
368	USAU	2025-02-23	244
368	SWCI	2025-03-02	381
368	ELO	2025-03-02	257
368	Massey	2025-03-02	260
368	USAU	2025-03-02	201
368	SWCI	2025-03-08	381
368	ELO	2025-03-08	220
368	Massey	2025-03-08	343
368	USAU	2025-03-08	195
368	SWCI	2025-03-09	382
368	ELO	2025-03-09	219
368	Massey	2025-03-09	330
368	USAU	2025-03-09	194
368	SWCI	2025-03-15	40
368	ELO	2025-03-15	55
368	Massey	2025-03-15	206
368	USAU	2025-03-15	220
368	SWCI	2025-03-16	38
368	ELO	2025-03-16	57
368	Massey	2025-03-16	153
368	USAU	2025-03-16	222
368	SWCI	2025-03-23	38
368	ELO	2025-03-23	65
368	Massey	2025-03-23	197
368	USAU	2025-03-23	215
368	SWCI	2025-03-29	35
368	ELO	2025-03-29	74
368	Massey	2025-03-29	172
368	USAU	2025-03-29	196
368	SWCI	2025-03-30	30
368	ELO	2025-03-30	75
368	Massey	2025-03-30	176
368	USAU	2025-03-30	198
369	SWCI	2025-01-26	369
369	ELO	2025-01-26	361
369	Massey	2025-01-26	244
369	USAU	2025-01-26	336
369	SWCI	2025-02-02	369
369	ELO	2025-02-02	327
369	Massey	2025-02-02	118
369	USAU	2025-02-02	311
369	SWCI	2025-02-08	369
369	ELO	2025-02-08	306
369	Massey	2025-02-08	190
369	USAU	2025-02-08	289
369	SWCI	2025-02-09	369
369	ELO	2025-02-09	301
369	Massey	2025-02-09	176
369	USAU	2025-02-09	287
369	SWCI	2025-02-12	369
369	ELO	2025-02-12	288
369	Massey	2025-02-12	149
369	USAU	2025-02-12	287
369	SWCI	2025-02-16	369
369	ELO	2025-02-16	285
369	Massey	2025-02-16	201
369	USAU	2025-02-16	265
369	SWCI	2025-02-17	369
369	ELO	2025-02-17	276
369	Massey	2025-02-17	244
369	USAU	2025-02-17	263
369	SWCI	2025-02-22	374
369	ELO	2025-02-22	273
369	Massey	2025-02-22	210
369	USAU	2025-02-22	243
369	SWCI	2025-02-23	374
369	ELO	2025-02-23	271
369	Massey	2025-02-23	217
369	USAU	2025-02-23	245
369	SWCI	2025-03-02	382
369	ELO	2025-03-02	258
369	Massey	2025-03-02	253
369	USAU	2025-03-02	202
369	SWCI	2025-03-08	382
369	ELO	2025-03-08	221
369	Massey	2025-03-08	311
369	USAU	2025-03-08	196
369	SWCI	2025-03-09	383
369	ELO	2025-03-09	220
369	Massey	2025-03-09	326
369	USAU	2025-03-09	195
369	SWCI	2025-03-15	241
369	ELO	2025-03-15	299
369	Massey	2025-03-15	357
369	USAU	2025-03-15	344
369	SWCI	2025-03-16	242
369	ELO	2025-03-16	297
369	Massey	2025-03-16	355
369	USAU	2025-03-16	347
369	SWCI	2025-03-23	252
369	ELO	2025-03-23	287
369	Massey	2025-03-23	359
369	USAU	2025-03-23	354
369	SWCI	2025-03-29	274
369	ELO	2025-03-29	275
369	Massey	2025-03-29	347
369	USAU	2025-03-29	344
369	SWCI	2025-03-30	279
369	ELO	2025-03-30	273
369	Massey	2025-03-30	344
369	USAU	2025-03-30	343
370	SWCI	2025-01-26	370
370	ELO	2025-01-26	362
370	Massey	2025-01-26	245
370	USAU	2025-01-26	337
370	SWCI	2025-02-02	370
370	ELO	2025-02-02	328
370	Massey	2025-02-02	119
370	USAU	2025-02-02	312
370	SWCI	2025-02-08	370
370	ELO	2025-02-08	307
370	Massey	2025-02-08	186
370	USAU	2025-02-08	290
370	SWCI	2025-02-09	370
370	ELO	2025-02-09	302
370	Massey	2025-02-09	169
370	USAU	2025-02-09	288
370	SWCI	2025-02-12	370
370	ELO	2025-02-12	289
370	Massey	2025-02-12	157
370	USAU	2025-02-12	288
370	SWCI	2025-02-16	370
370	ELO	2025-02-16	286
370	Massey	2025-02-16	222
370	USAU	2025-02-16	266
370	SWCI	2025-02-17	370
370	ELO	2025-02-17	277
370	Massey	2025-02-17	238
370	USAU	2025-02-17	264
370	SWCI	2025-02-22	375
370	ELO	2025-02-22	274
370	Massey	2025-02-22	182
370	USAU	2025-02-22	244
370	SWCI	2025-02-23	375
370	ELO	2025-02-23	272
370	Massey	2025-02-23	220
370	USAU	2025-02-23	246
370	SWCI	2025-03-02	383
370	ELO	2025-03-02	259
370	Massey	2025-03-02	226
370	USAU	2025-03-02	203
370	SWCI	2025-03-08	383
370	ELO	2025-03-08	222
370	Massey	2025-03-08	312
370	USAU	2025-03-08	197
370	SWCI	2025-03-09	384
370	ELO	2025-03-09	221
370	Massey	2025-03-09	327
370	USAU	2025-03-09	196
370	SWCI	2025-03-15	388
370	ELO	2025-03-15	214
370	Massey	2025-03-15	20
370	USAU	2025-03-15	180
370	SWCI	2025-03-16	388
370	ELO	2025-03-16	211
370	Massey	2025-03-16	292
370	USAU	2025-03-16	182
370	SWCI	2025-03-23	391
370	ELO	2025-03-23	203
370	Massey	2025-03-23	17
370	USAU	2025-03-23	167
370	SWCI	2025-03-29	332
370	ELO	2025-03-29	202
370	Massey	2025-03-29	380
370	USAU	2025-03-29	385
370	SWCI	2025-03-30	329
370	ELO	2025-03-30	201
370	Massey	2025-03-30	371
370	USAU	2025-03-30	381
371	SWCI	2025-01-26	371
371	ELO	2025-01-26	363
371	Massey	2025-01-26	246
371	USAU	2025-01-26	338
371	SWCI	2025-02-02	371
371	ELO	2025-02-02	329
371	Massey	2025-02-02	120
371	USAU	2025-02-02	313
371	SWCI	2025-02-08	371
371	ELO	2025-02-08	308
371	Massey	2025-02-08	185
371	USAU	2025-02-08	291
371	SWCI	2025-02-09	371
371	ELO	2025-02-09	303
371	Massey	2025-02-09	167
371	USAU	2025-02-09	289
371	SWCI	2025-02-12	371
371	ELO	2025-02-12	290
371	Massey	2025-02-12	151
371	USAU	2025-02-12	289
371	SWCI	2025-02-16	371
371	ELO	2025-02-16	287
371	Massey	2025-02-16	200
371	USAU	2025-02-16	267
371	SWCI	2025-02-17	371
371	ELO	2025-02-17	278
371	Massey	2025-02-17	215
371	USAU	2025-02-17	265
371	SWCI	2025-02-22	376
371	ELO	2025-02-22	275
371	Massey	2025-02-22	217
371	USAU	2025-02-22	245
371	SWCI	2025-02-23	376
371	ELO	2025-02-23	273
371	Massey	2025-02-23	208
371	USAU	2025-02-23	247
371	SWCI	2025-03-02	384
371	ELO	2025-03-02	260
371	Massey	2025-03-02	225
371	USAU	2025-03-02	204
371	SWCI	2025-03-08	384
371	ELO	2025-03-08	223
371	Massey	2025-03-08	348
371	USAU	2025-03-08	198
371	SWCI	2025-03-09	385
371	ELO	2025-03-09	222
371	Massey	2025-03-09	338
371	USAU	2025-03-09	197
371	SWCI	2025-03-15	389
371	ELO	2025-03-15	215
371	Massey	2025-03-15	22
371	USAU	2025-03-15	181
371	SWCI	2025-03-16	389
371	ELO	2025-03-16	212
371	Massey	2025-03-16	301
371	USAU	2025-03-16	183
371	SWCI	2025-03-23	392
371	ELO	2025-03-23	204
371	Massey	2025-03-23	15
371	USAU	2025-03-23	168
371	SWCI	2025-03-29	43
371	ELO	2025-03-29	203
371	Massey	2025-03-29	276
371	USAU	2025-03-29	305
371	SWCI	2025-03-30	80
371	ELO	2025-03-30	202
371	Massey	2025-03-30	277
371	USAU	2025-03-30	291
372	SWCI	2025-01-26	372
372	ELO	2025-01-26	364
372	Massey	2025-01-26	247
372	USAU	2025-01-26	339
372	SWCI	2025-02-02	372
372	ELO	2025-02-02	330
372	Massey	2025-02-02	121
372	USAU	2025-02-02	314
372	SWCI	2025-02-08	372
372	ELO	2025-02-08	309
372	Massey	2025-02-08	182
372	USAU	2025-02-08	292
372	SWCI	2025-02-09	372
372	ELO	2025-02-09	304
372	Massey	2025-02-09	166
372	USAU	2025-02-09	290
372	SWCI	2025-02-12	372
372	ELO	2025-02-12	291
372	Massey	2025-02-12	156
372	USAU	2025-02-12	290
372	SWCI	2025-02-16	372
372	ELO	2025-02-16	288
372	Massey	2025-02-16	220
372	USAU	2025-02-16	268
372	SWCI	2025-02-17	372
372	ELO	2025-02-17	279
372	Massey	2025-02-17	217
372	USAU	2025-02-17	266
372	SWCI	2025-02-22	377
372	ELO	2025-02-22	276
372	Massey	2025-02-22	225
372	USAU	2025-02-22	246
372	SWCI	2025-02-23	377
372	ELO	2025-02-23	274
372	Massey	2025-02-23	226
372	USAU	2025-02-23	248
372	SWCI	2025-03-02	385
372	ELO	2025-03-02	261
372	Massey	2025-03-02	244
372	USAU	2025-03-02	205
372	SWCI	2025-03-08	385
372	ELO	2025-03-08	224
372	Massey	2025-03-08	308
372	USAU	2025-03-08	199
372	SWCI	2025-03-09	386
372	ELO	2025-03-09	223
372	Massey	2025-03-09	332
372	USAU	2025-03-09	198
372	SWCI	2025-03-15	390
372	ELO	2025-03-15	216
372	Massey	2025-03-15	31
372	USAU	2025-03-15	182
372	SWCI	2025-03-16	390
372	ELO	2025-03-16	213
372	Massey	2025-03-16	313
372	USAU	2025-03-16	184
372	SWCI	2025-03-23	393
372	ELO	2025-03-23	205
372	Massey	2025-03-23	11
372	USAU	2025-03-23	169
372	SWCI	2025-03-29	198
372	ELO	2025-03-29	204
372	Massey	2025-03-29	360
372	USAU	2025-03-29	354
372	SWCI	2025-03-30	194
372	ELO	2025-03-30	203
372	Massey	2025-03-30	358
372	USAU	2025-03-30	351
373	SWCI	2025-01-26	373
373	ELO	2025-01-26	365
373	Massey	2025-01-26	258
373	USAU	2025-01-26	340
373	SWCI	2025-02-02	373
373	ELO	2025-02-02	331
373	Massey	2025-02-02	202
373	USAU	2025-02-02	315
373	SWCI	2025-02-08	373
373	ELO	2025-02-08	310
373	Massey	2025-02-08	166
373	USAU	2025-02-08	293
373	SWCI	2025-02-09	373
373	ELO	2025-02-09	305
373	Massey	2025-02-09	216
373	USAU	2025-02-09	291
373	SWCI	2025-02-12	373
373	ELO	2025-02-12	292
373	Massey	2025-02-12	175
373	USAU	2025-02-12	291
373	SWCI	2025-02-16	373
373	ELO	2025-02-16	289
373	Massey	2025-02-16	172
373	USAU	2025-02-16	269
373	SWCI	2025-02-17	373
373	ELO	2025-02-17	280
373	Massey	2025-02-17	230
373	USAU	2025-02-17	267
373	SWCI	2025-02-22	378
373	ELO	2025-02-22	277
373	Massey	2025-02-22	180
373	USAU	2025-02-22	247
373	SWCI	2025-02-23	378
373	ELO	2025-02-23	275
373	Massey	2025-02-23	236
373	USAU	2025-02-23	249
373	SWCI	2025-03-02	386
373	ELO	2025-03-02	262
373	Massey	2025-03-02	235
373	USAU	2025-03-02	206
373	SWCI	2025-03-08	386
373	ELO	2025-03-08	225
373	Massey	2025-03-08	316
373	USAU	2025-03-08	200
373	SWCI	2025-03-09	387
373	ELO	2025-03-09	224
373	Massey	2025-03-09	339
373	USAU	2025-03-09	199
373	SWCI	2025-03-15	391
373	ELO	2025-03-15	217
373	Massey	2025-03-15	36
373	USAU	2025-03-15	183
373	SWCI	2025-03-16	391
373	ELO	2025-03-16	214
373	Massey	2025-03-16	294
373	USAU	2025-03-16	185
373	SWCI	2025-03-23	264
373	ELO	2025-03-23	206
373	Massey	2025-03-23	318
373	USAU	2025-03-23	326
373	SWCI	2025-03-29	287
373	ELO	2025-03-29	285
373	Massey	2025-03-29	315
373	USAU	2025-03-29	314
373	SWCI	2025-03-30	299
373	ELO	2025-03-30	285
373	Massey	2025-03-30	309
373	USAU	2025-03-30	314
374	SWCI	2025-01-26	374
374	ELO	2025-01-26	366
374	Massey	2025-01-26	259
374	USAU	2025-01-26	341
374	SWCI	2025-02-02	374
374	ELO	2025-02-02	332
374	Massey	2025-02-02	203
374	USAU	2025-02-02	316
374	SWCI	2025-02-08	374
374	ELO	2025-02-08	311
374	Massey	2025-02-08	165
374	USAU	2025-02-08	294
374	SWCI	2025-02-09	374
374	ELO	2025-02-09	306
374	Massey	2025-02-09	217
374	USAU	2025-02-09	292
374	SWCI	2025-02-12	374
374	ELO	2025-02-12	293
374	Massey	2025-02-12	176
374	USAU	2025-02-12	292
374	SWCI	2025-02-16	374
374	ELO	2025-02-16	290
374	Massey	2025-02-16	173
374	USAU	2025-02-16	270
374	SWCI	2025-02-17	374
374	ELO	2025-02-17	281
374	Massey	2025-02-17	228
374	USAU	2025-02-17	268
374	SWCI	2025-02-22	379
374	ELO	2025-02-22	278
374	Massey	2025-02-22	187
374	USAU	2025-02-22	248
374	SWCI	2025-02-23	379
374	ELO	2025-02-23	276
374	Massey	2025-02-23	231
374	USAU	2025-02-23	250
374	SWCI	2025-03-02	387
374	ELO	2025-03-02	263
374	Massey	2025-03-02	240
374	USAU	2025-03-02	207
374	SWCI	2025-03-08	387
374	ELO	2025-03-08	226
374	Massey	2025-03-08	334
374	USAU	2025-03-08	201
374	SWCI	2025-03-09	388
374	ELO	2025-03-09	225
374	Massey	2025-03-09	320
374	USAU	2025-03-09	200
374	SWCI	2025-03-15	392
374	ELO	2025-03-15	218
374	Massey	2025-03-15	37
374	USAU	2025-03-15	184
374	SWCI	2025-03-16	392
374	ELO	2025-03-16	215
374	Massey	2025-03-16	303
374	USAU	2025-03-16	186
374	SWCI	2025-03-23	179
374	ELO	2025-03-23	207
374	Massey	2025-03-23	292
374	USAU	2025-03-23	292
374	SWCI	2025-03-29	191
374	ELO	2025-03-29	226
374	Massey	2025-03-29	288
374	USAU	2025-03-29	283
374	SWCI	2025-03-30	202
374	ELO	2025-03-30	226
374	Massey	2025-03-30	286
374	USAU	2025-03-30	284
375	SWCI	2025-01-26	375
375	ELO	2025-01-26	367
375	Massey	2025-01-26	260
375	USAU	2025-01-26	342
375	SWCI	2025-02-02	375
375	ELO	2025-02-02	333
375	Massey	2025-02-02	204
375	USAU	2025-02-02	317
375	SWCI	2025-02-08	375
375	ELO	2025-02-08	312
375	Massey	2025-02-08	167
375	USAU	2025-02-08	295
375	SWCI	2025-02-09	375
375	ELO	2025-02-09	307
375	Massey	2025-02-09	218
375	USAU	2025-02-09	293
375	SWCI	2025-02-12	375
375	ELO	2025-02-12	294
375	Massey	2025-02-12	177
375	USAU	2025-02-12	293
375	SWCI	2025-02-16	375
375	ELO	2025-02-16	291
375	Massey	2025-02-16	174
375	USAU	2025-02-16	271
375	SWCI	2025-02-17	375
375	ELO	2025-02-17	282
375	Massey	2025-02-17	229
375	USAU	2025-02-17	269
375	SWCI	2025-02-22	380
375	ELO	2025-02-22	279
375	Massey	2025-02-22	176
375	USAU	2025-02-22	249
375	SWCI	2025-02-23	380
375	ELO	2025-02-23	277
375	Massey	2025-02-23	235
375	USAU	2025-02-23	251
375	SWCI	2025-03-02	388
375	ELO	2025-03-02	264
375	Massey	2025-03-02	245
375	USAU	2025-03-02	208
375	SWCI	2025-03-08	388
375	ELO	2025-03-08	227
375	Massey	2025-03-08	333
375	USAU	2025-03-08	202
375	SWCI	2025-03-09	389
375	ELO	2025-03-09	226
375	Massey	2025-03-09	336
375	USAU	2025-03-09	201
375	SWCI	2025-03-15	41
375	ELO	2025-03-15	219
375	Massey	2025-03-15	4
375	USAU	2025-03-15	59
375	SWCI	2025-03-16	33
375	ELO	2025-03-16	216
375	Massey	2025-03-16	201
375	USAU	2025-03-16	60
375	SWCI	2025-03-23	46
375	ELO	2025-03-23	72
375	Massey	2025-03-23	280
375	USAU	2025-03-23	245
375	SWCI	2025-03-29	179
375	ELO	2025-03-29	80
375	Massey	2025-03-29	318
375	USAU	2025-03-29	294
375	SWCI	2025-03-30	174
375	ELO	2025-03-30	215
375	Massey	2025-03-30	304
375	USAU	2025-03-30	289
376	SWCI	2025-01-26	376
376	ELO	2025-01-26	368
376	Massey	2025-01-26	122
376	USAU	2025-01-26	343
376	SWCI	2025-02-02	376
376	ELO	2025-02-02	334
376	Massey	2025-02-02	205
376	USAU	2025-02-02	318
376	SWCI	2025-02-08	376
376	ELO	2025-02-08	313
376	Massey	2025-02-08	213
376	USAU	2025-02-08	296
376	SWCI	2025-02-09	376
376	ELO	2025-02-09	308
376	Massey	2025-02-09	247
376	USAU	2025-02-09	294
376	SWCI	2025-02-12	376
376	ELO	2025-02-12	295
376	Massey	2025-02-12	218
376	USAU	2025-02-12	294
376	SWCI	2025-02-16	376
376	ELO	2025-02-16	292
376	Massey	2025-02-16	162
376	USAU	2025-02-16	272
376	SWCI	2025-02-17	376
376	ELO	2025-02-17	283
376	Massey	2025-02-17	209
376	USAU	2025-02-17	270
376	SWCI	2025-02-22	60
376	ELO	2025-02-22	280
376	Massey	2025-02-22	346
376	USAU	2025-02-22	338
376	SWCI	2025-02-23	109
376	ELO	2025-02-23	278
376	Massey	2025-02-23	304
376	USAU	2025-02-23	335
376	SWCI	2025-03-02	145
376	ELO	2025-03-02	114
376	Massey	2025-03-02	251
376	USAU	2025-03-02	304
376	SWCI	2025-03-08	146
376	ELO	2025-03-08	148
376	Massey	2025-03-08	211
376	USAU	2025-03-08	298
376	SWCI	2025-03-09	149
376	ELO	2025-03-09	151
376	Massey	2025-03-09	208
376	USAU	2025-03-09	295
376	SWCI	2025-03-15	164
376	ELO	2025-03-15	152
376	Massey	2025-03-15	257
376	USAU	2025-03-15	241
376	SWCI	2025-03-16	173
376	ELO	2025-03-16	154
376	Massey	2025-03-16	202
376	USAU	2025-03-16	245
376	SWCI	2025-03-23	110
376	ELO	2025-03-23	158
376	Massey	2025-03-23	221
376	USAU	2025-03-23	216
376	SWCI	2025-03-29	125
376	ELO	2025-03-29	56
376	Massey	2025-03-29	198
376	USAU	2025-03-29	198
376	SWCI	2025-03-30	143
376	ELO	2025-03-30	57
376	Massey	2025-03-30	202
376	USAU	2025-03-30	201
377	SWCI	2025-01-26	377
377	ELO	2025-01-26	369
377	Massey	2025-01-26	123
377	USAU	2025-01-26	344
377	SWCI	2025-02-02	377
377	ELO	2025-02-02	335
377	Massey	2025-02-02	213
377	USAU	2025-02-02	319
377	SWCI	2025-02-08	377
377	ELO	2025-02-08	314
377	Massey	2025-02-08	206
377	USAU	2025-02-08	297
377	SWCI	2025-02-09	377
377	ELO	2025-02-09	309
377	Massey	2025-02-09	248
377	USAU	2025-02-09	295
377	SWCI	2025-02-12	377
377	ELO	2025-02-12	296
377	Massey	2025-02-12	216
377	USAU	2025-02-12	295
377	SWCI	2025-02-16	377
377	ELO	2025-02-16	293
377	Massey	2025-02-16	156
377	USAU	2025-02-16	273
377	SWCI	2025-02-17	377
377	ELO	2025-02-17	284
377	Massey	2025-02-17	176
377	USAU	2025-02-17	271
377	SWCI	2025-02-22	381
377	ELO	2025-02-22	281
377	Massey	2025-02-22	199
377	USAU	2025-02-22	250
377	SWCI	2025-02-23	381
377	ELO	2025-02-23	279
377	Massey	2025-02-23	233
377	USAU	2025-02-23	252
377	SWCI	2025-03-02	169
377	ELO	2025-03-02	265
377	Massey	2025-03-02	210
377	USAU	2025-03-02	281
377	SWCI	2025-03-08	168
377	ELO	2025-03-08	280
377	Massey	2025-03-08	196
377	USAU	2025-03-08	282
377	SWCI	2025-03-09	171
377	ELO	2025-03-09	280
377	Massey	2025-03-09	194
377	USAU	2025-03-09	278
377	SWCI	2025-03-15	187
377	ELO	2025-03-15	273
377	Massey	2025-03-15	254
377	USAU	2025-03-15	233
377	SWCI	2025-03-16	192
377	ELO	2025-03-16	271
377	Massey	2025-03-16	196
377	USAU	2025-03-16	232
377	SWCI	2025-03-23	204
377	ELO	2025-03-23	261
377	Massey	2025-03-23	225
377	USAU	2025-03-23	210
377	SWCI	2025-03-29	290
377	ELO	2025-03-29	250
377	Massey	2025-03-29	219
377	USAU	2025-03-29	220
377	SWCI	2025-03-30	307
377	ELO	2025-03-30	252
377	Massey	2025-03-30	266
377	USAU	2025-03-30	267
378	SWCI	2025-01-26	378
378	ELO	2025-01-26	370
378	Massey	2025-01-26	104
378	USAU	2025-01-26	345
378	SWCI	2025-02-02	378
378	ELO	2025-02-02	336
378	Massey	2025-02-02	162
378	USAU	2025-02-02	320
378	SWCI	2025-02-08	378
378	ELO	2025-02-08	315
378	Massey	2025-02-08	217
378	USAU	2025-02-08	298
378	SWCI	2025-02-09	378
378	ELO	2025-02-09	310
378	Massey	2025-02-09	184
378	USAU	2025-02-09	296
378	SWCI	2025-02-12	378
378	ELO	2025-02-12	297
378	Massey	2025-02-12	227
378	USAU	2025-02-12	296
378	SWCI	2025-02-16	378
378	ELO	2025-02-16	294
378	Massey	2025-02-16	227
378	USAU	2025-02-16	274
378	SWCI	2025-02-17	378
378	ELO	2025-02-17	285
378	Massey	2025-02-17	224
378	USAU	2025-02-17	272
378	SWCI	2025-02-22	382
378	ELO	2025-02-22	282
378	Massey	2025-02-22	221
378	USAU	2025-02-22	251
378	SWCI	2025-02-23	382
378	ELO	2025-02-23	280
378	Massey	2025-02-23	222
378	USAU	2025-02-23	253
378	SWCI	2025-03-02	389
378	ELO	2025-03-02	266
378	Massey	2025-03-02	233
378	USAU	2025-03-02	209
378	SWCI	2025-03-08	389
378	ELO	2025-03-08	228
378	Massey	2025-03-08	342
378	USAU	2025-03-08	203
378	SWCI	2025-03-09	390
378	ELO	2025-03-09	227
378	Massey	2025-03-09	314
378	USAU	2025-03-09	202
378	SWCI	2025-03-15	393
378	ELO	2025-03-15	220
378	Massey	2025-03-15	23
378	USAU	2025-03-15	185
378	SWCI	2025-03-16	393
378	ELO	2025-03-16	217
378	Massey	2025-03-16	307
378	USAU	2025-03-16	187
378	SWCI	2025-03-23	394
378	ELO	2025-03-23	208
378	Massey	2025-03-23	9
378	USAU	2025-03-23	170
378	SWCI	2025-03-29	393
378	ELO	2025-03-29	205
378	Massey	2025-03-29	395
378	USAU	2025-03-29	396
378	SWCI	2025-03-30	392
378	ELO	2025-03-30	204
378	Massey	2025-03-30	395
378	USAU	2025-03-30	397
379	SWCI	2025-01-26	379
379	ELO	2025-01-26	371
379	Massey	2025-01-26	105
379	USAU	2025-01-26	346
379	SWCI	2025-02-02	379
379	ELO	2025-02-02	337
379	Massey	2025-02-02	163
379	USAU	2025-02-02	321
379	SWCI	2025-02-08	379
379	ELO	2025-02-08	316
379	Massey	2025-02-08	218
379	USAU	2025-02-08	299
379	SWCI	2025-02-09	379
379	ELO	2025-02-09	311
379	Massey	2025-02-09	185
379	USAU	2025-02-09	297
379	SWCI	2025-02-12	379
379	ELO	2025-02-12	298
379	Massey	2025-02-12	228
379	USAU	2025-02-12	297
379	SWCI	2025-02-16	379
379	ELO	2025-02-16	295
379	Massey	2025-02-16	228
379	USAU	2025-02-16	275
379	SWCI	2025-02-17	379
379	ELO	2025-02-17	286
379	Massey	2025-02-17	225
379	USAU	2025-02-17	273
379	SWCI	2025-02-22	164
379	ELO	2025-02-22	283
379	Massey	2025-02-22	344
379	USAU	2025-02-22	350
379	SWCI	2025-02-23	143
379	ELO	2025-02-23	281
379	Massey	2025-02-23	340
379	USAU	2025-02-23	350
379	SWCI	2025-03-02	197
379	ELO	2025-03-02	293
379	Massey	2025-03-02	306
379	USAU	2025-03-02	320
379	SWCI	2025-03-08	200
379	ELO	2025-03-08	254
379	Massey	2025-03-08	254
379	USAU	2025-03-08	323
379	SWCI	2025-03-09	202
379	ELO	2025-03-09	253
379	Massey	2025-03-09	246
379	USAU	2025-03-09	318
379	SWCI	2025-03-15	201
379	ELO	2025-03-15	247
379	Massey	2025-03-15	306
379	USAU	2025-03-15	277
379	SWCI	2025-03-16	196
379	ELO	2025-03-16	243
379	Massey	2025-03-16	255
379	USAU	2025-03-16	279
379	SWCI	2025-03-23	209
379	ELO	2025-03-23	232
379	Massey	2025-03-23	281
379	USAU	2025-03-23	258
379	SWCI	2025-03-29	218
379	ELO	2025-03-29	227
379	Massey	2025-03-29	247
379	USAU	2025-03-29	231
379	SWCI	2025-03-30	196
379	ELO	2025-03-30	227
379	Massey	2025-03-30	214
379	USAU	2025-03-30	204
380	SWCI	2025-01-26	380
380	ELO	2025-01-26	372
380	Massey	2025-01-26	112
380	USAU	2025-01-26	347
380	SWCI	2025-02-02	380
380	ELO	2025-02-02	338
380	Massey	2025-02-02	138
380	USAU	2025-02-02	322
380	SWCI	2025-02-08	380
380	ELO	2025-02-08	317
380	Massey	2025-02-08	221
380	USAU	2025-02-08	300
380	SWCI	2025-02-09	380
380	ELO	2025-02-09	312
380	Massey	2025-02-09	132
380	USAU	2025-02-09	298
380	SWCI	2025-02-12	380
380	ELO	2025-02-12	299
380	Massey	2025-02-12	211
380	USAU	2025-02-12	298
380	SWCI	2025-02-16	380
380	ELO	2025-02-16	296
380	Massey	2025-02-16	248
380	USAU	2025-02-16	276
380	SWCI	2025-02-17	380
380	ELO	2025-02-17	287
380	Massey	2025-02-17	196
380	USAU	2025-02-17	274
380	SWCI	2025-02-22	34
380	ELO	2025-02-22	284
380	Massey	2025-02-22	292
380	USAU	2025-02-22	287
380	SWCI	2025-02-23	46
380	ELO	2025-02-23	282
380	Massey	2025-02-23	308
380	USAU	2025-02-23	324
380	SWCI	2025-03-02	56
380	ELO	2025-03-02	91
380	Massey	2025-03-02	252
380	USAU	2025-03-02	280
380	SWCI	2025-03-08	56
380	ELO	2025-03-08	117
380	Massey	2025-03-08	212
380	USAU	2025-03-08	278
380	SWCI	2025-03-09	56
380	ELO	2025-03-09	120
380	Massey	2025-03-09	209
380	USAU	2025-03-09	273
380	SWCI	2025-03-15	53
380	ELO	2025-03-15	124
380	Massey	2025-03-15	258
380	USAU	2025-03-15	204
380	SWCI	2025-03-16	65
380	ELO	2025-03-16	126
380	Massey	2025-03-16	200
380	USAU	2025-03-16	204
380	SWCI	2025-03-23	66
380	ELO	2025-03-23	132
380	Massey	2025-03-23	227
380	USAU	2025-03-23	179
380	SWCI	2025-03-29	58
380	ELO	2025-03-29	141
380	Massey	2025-03-29	188
380	USAU	2025-03-29	142
380	SWCI	2025-03-30	75
380	ELO	2025-03-30	144
380	Massey	2025-03-30	189
380	USAU	2025-03-30	145
381	SWCI	2025-01-26	381
381	ELO	2025-01-26	373
381	Massey	2025-01-26	113
381	USAU	2025-01-26	348
381	SWCI	2025-02-02	381
381	ELO	2025-02-02	339
381	Massey	2025-02-02	139
381	USAU	2025-02-02	323
381	SWCI	2025-02-08	381
381	ELO	2025-02-08	318
381	Massey	2025-02-08	222
381	USAU	2025-02-08	301
381	SWCI	2025-02-09	381
381	ELO	2025-02-09	313
381	Massey	2025-02-09	130
381	USAU	2025-02-09	299
381	SWCI	2025-02-12	381
381	ELO	2025-02-12	300
381	Massey	2025-02-12	222
381	USAU	2025-02-12	299
381	SWCI	2025-02-16	381
381	ELO	2025-02-16	297
381	Massey	2025-02-16	221
381	USAU	2025-02-16	277
381	SWCI	2025-02-17	381
381	ELO	2025-02-17	288
381	Massey	2025-02-17	198
381	USAU	2025-02-17	275
381	SWCI	2025-02-22	383
381	ELO	2025-02-22	285
381	Massey	2025-02-22	223
381	USAU	2025-02-22	252
381	SWCI	2025-02-23	383
381	ELO	2025-02-23	283
381	Massey	2025-02-23	213
381	USAU	2025-02-23	254
381	SWCI	2025-03-02	48
381	ELO	2025-03-02	267
381	Massey	2025-03-02	117
381	USAU	2025-03-02	116
381	SWCI	2025-03-08	46
381	ELO	2025-03-08	86
381	Massey	2025-03-08	114
381	USAU	2025-03-08	121
381	SWCI	2025-03-09	47
381	ELO	2025-03-09	88
381	Massey	2025-03-09	114
381	USAU	2025-03-09	119
381	SWCI	2025-03-15	98
381	ELO	2025-03-15	90
381	Massey	2025-03-15	173
381	USAU	2025-03-15	111
381	SWCI	2025-03-16	75
381	ELO	2025-03-16	92
381	Massey	2025-03-16	112
381	USAU	2025-03-16	107
381	SWCI	2025-03-23	77
381	ELO	2025-03-23	86
381	Massey	2025-03-23	144
381	USAU	2025-03-23	109
381	SWCI	2025-03-29	56
381	ELO	2025-03-29	96
381	Massey	2025-03-29	119
381	USAU	2025-03-29	114
381	SWCI	2025-03-30	34
381	ELO	2025-03-30	96
381	Massey	2025-03-30	115
381	USAU	2025-03-30	108
382	SWCI	2025-01-26	382
382	ELO	2025-01-26	374
382	Massey	2025-01-26	114
382	USAU	2025-01-26	349
382	SWCI	2025-02-02	382
382	ELO	2025-02-02	340
382	Massey	2025-02-02	149
382	USAU	2025-02-02	324
382	SWCI	2025-02-08	382
382	ELO	2025-02-08	319
382	Massey	2025-02-08	200
382	USAU	2025-02-08	302
382	SWCI	2025-02-09	382
382	ELO	2025-02-09	314
382	Massey	2025-02-09	144
382	USAU	2025-02-09	300
382	SWCI	2025-02-12	382
382	ELO	2025-02-12	301
382	Massey	2025-02-12	158
382	USAU	2025-02-12	300
382	SWCI	2025-02-16	382
382	ELO	2025-02-16	298
382	Massey	2025-02-16	223
382	USAU	2025-02-16	278
382	SWCI	2025-02-17	382
382	ELO	2025-02-17	289
382	Massey	2025-02-17	256
382	USAU	2025-02-17	276
382	SWCI	2025-02-22	384
382	ELO	2025-02-22	286
382	Massey	2025-02-22	209
382	USAU	2025-02-22	253
382	SWCI	2025-02-23	384
382	ELO	2025-02-23	284
382	Massey	2025-02-23	215
382	USAU	2025-02-23	255
382	SWCI	2025-03-02	390
382	ELO	2025-03-02	268
382	Massey	2025-03-02	254
382	USAU	2025-03-02	210
382	SWCI	2025-03-08	390
382	ELO	2025-03-08	229
382	Massey	2025-03-08	349
382	USAU	2025-03-08	204
382	SWCI	2025-03-09	244
382	ELO	2025-03-09	228
382	Massey	2025-03-09	340
382	USAU	2025-03-09	344
382	SWCI	2025-03-15	276
382	ELO	2025-03-15	310
382	Massey	2025-03-15	377
382	USAU	2025-03-15	353
382	SWCI	2025-03-16	278
382	ELO	2025-03-16	309
382	Massey	2025-03-16	373
382	USAU	2025-03-16	355
382	SWCI	2025-03-23	290
382	ELO	2025-03-23	300
382	Massey	2025-03-23	373
382	USAU	2025-03-23	350
382	SWCI	2025-03-29	325
382	ELO	2025-03-29	287
382	Massey	2025-03-29	364
382	USAU	2025-03-29	339
382	SWCI	2025-03-30	322
382	ELO	2025-03-30	287
382	Massey	2025-03-30	363
382	USAU	2025-03-30	341
383	SWCI	2025-01-26	383
383	ELO	2025-01-26	375
383	Massey	2025-01-26	115
383	USAU	2025-01-26	350
383	SWCI	2025-02-02	383
383	ELO	2025-02-02	341
383	Massey	2025-02-02	150
383	USAU	2025-02-02	325
383	SWCI	2025-02-08	383
383	ELO	2025-02-08	320
383	Massey	2025-02-08	201
383	USAU	2025-02-08	303
383	SWCI	2025-02-09	383
383	ELO	2025-02-09	315
383	Massey	2025-02-09	145
383	USAU	2025-02-09	301
383	SWCI	2025-02-12	383
383	ELO	2025-02-12	302
383	Massey	2025-02-12	159
383	USAU	2025-02-12	301
383	SWCI	2025-02-16	383
383	ELO	2025-02-16	299
383	Massey	2025-02-16	224
383	USAU	2025-02-16	279
383	SWCI	2025-02-17	383
383	ELO	2025-02-17	290
383	Massey	2025-02-17	257
383	USAU	2025-02-17	277
383	SWCI	2025-02-22	385
383	ELO	2025-02-22	287
383	Massey	2025-02-22	208
383	USAU	2025-02-22	254
383	SWCI	2025-02-23	385
383	ELO	2025-02-23	285
383	Massey	2025-02-23	216
383	USAU	2025-02-23	256
383	SWCI	2025-03-02	391
383	ELO	2025-03-02	269
383	Massey	2025-03-02	263
383	USAU	2025-03-02	211
383	SWCI	2025-03-08	391
383	ELO	2025-03-08	230
383	Massey	2025-03-08	352
383	USAU	2025-03-08	205
383	SWCI	2025-03-09	391
383	ELO	2025-03-09	229
383	Massey	2025-03-09	331
383	USAU	2025-03-09	203
383	SWCI	2025-03-15	394
383	ELO	2025-03-15	221
383	Massey	2025-03-15	24
383	USAU	2025-03-15	186
383	SWCI	2025-03-16	394
383	ELO	2025-03-16	218
383	Massey	2025-03-16	296
383	USAU	2025-03-16	188
383	SWCI	2025-03-23	395
383	ELO	2025-03-23	209
383	Massey	2025-03-23	8
383	USAU	2025-03-23	171
383	SWCI	2025-03-29	197
383	ELO	2025-03-29	206
383	Massey	2025-03-29	211
383	USAU	2025-03-29	225
383	SWCI	2025-03-30	201
383	ELO	2025-03-30	155
383	Massey	2025-03-30	211
383	USAU	2025-03-30	228
384	SWCI	2025-01-26	384
384	ELO	2025-01-26	376
384	Massey	2025-01-26	116
384	USAU	2025-01-26	351
384	SWCI	2025-02-02	384
384	ELO	2025-02-02	342
384	Massey	2025-02-02	151
384	USAU	2025-02-02	326
384	SWCI	2025-02-08	384
384	ELO	2025-02-08	321
384	Massey	2025-02-08	202
384	USAU	2025-02-08	304
384	SWCI	2025-02-09	384
384	ELO	2025-02-09	316
384	Massey	2025-02-09	136
384	USAU	2025-02-09	302
384	SWCI	2025-02-12	384
384	ELO	2025-02-12	303
384	Massey	2025-02-12	184
384	USAU	2025-02-12	302
384	SWCI	2025-02-16	384
384	ELO	2025-02-16	300
384	Massey	2025-02-16	178
384	USAU	2025-02-16	280
384	SWCI	2025-02-17	384
384	ELO	2025-02-17	291
384	Massey	2025-02-17	235
384	USAU	2025-02-17	278
384	SWCI	2025-02-22	386
384	ELO	2025-02-22	288
384	Massey	2025-02-22	205
384	USAU	2025-02-22	255
384	SWCI	2025-02-23	386
384	ELO	2025-02-23	286
384	Massey	2025-02-23	227
384	USAU	2025-02-23	257
384	SWCI	2025-03-02	392
384	ELO	2025-03-02	270
384	Massey	2025-03-02	247
384	USAU	2025-03-02	212
384	SWCI	2025-03-08	392
384	ELO	2025-03-08	231
384	Massey	2025-03-08	346
384	USAU	2025-03-08	206
384	SWCI	2025-03-09	392
384	ELO	2025-03-09	230
384	Massey	2025-03-09	348
384	USAU	2025-03-09	204
384	SWCI	2025-03-15	395
384	ELO	2025-03-15	222
384	Massey	2025-03-15	21
384	USAU	2025-03-15	187
384	SWCI	2025-03-16	395
384	ELO	2025-03-16	219
384	Massey	2025-03-16	310
384	USAU	2025-03-16	189
384	SWCI	2025-03-23	396
384	ELO	2025-03-23	210
384	Massey	2025-03-23	10
384	USAU	2025-03-23	172
384	SWCI	2025-03-29	257
384	ELO	2025-03-29	207
384	Massey	2025-03-29	356
384	USAU	2025-03-29	365
384	SWCI	2025-03-30	276
384	ELO	2025-03-30	205
384	Massey	2025-03-30	377
384	USAU	2025-03-30	366
385	SWCI	2025-01-26	385
385	ELO	2025-01-26	377
385	Massey	2025-01-26	117
385	USAU	2025-01-26	352
385	SWCI	2025-02-02	385
385	ELO	2025-02-02	343
385	Massey	2025-02-02	152
385	USAU	2025-02-02	327
385	SWCI	2025-02-08	385
385	ELO	2025-02-08	322
385	Massey	2025-02-08	205
385	USAU	2025-02-08	305
385	SWCI	2025-02-09	385
385	ELO	2025-02-09	317
385	Massey	2025-02-09	139
385	USAU	2025-02-09	303
385	SWCI	2025-02-12	385
385	ELO	2025-02-12	304
385	Massey	2025-02-12	183
385	USAU	2025-02-12	303
385	SWCI	2025-02-16	385
385	ELO	2025-02-16	301
385	Massey	2025-02-16	185
385	USAU	2025-02-16	281
385	SWCI	2025-02-17	385
385	ELO	2025-02-17	292
385	Massey	2025-02-17	240
385	USAU	2025-02-17	279
385	SWCI	2025-02-22	188
385	ELO	2025-02-22	289
385	Massey	2025-02-22	375
385	USAU	2025-02-22	374
385	SWCI	2025-02-23	197
385	ELO	2025-02-23	287
385	Massey	2025-02-23	357
385	USAU	2025-02-23	376
385	SWCI	2025-03-02	299
385	ELO	2025-03-02	323
385	Massey	2025-03-02	351
385	USAU	2025-03-02	363
385	SWCI	2025-03-08	307
385	ELO	2025-03-08	392
385	Massey	2025-03-08	297
385	USAU	2025-03-08	364
385	SWCI	2025-03-09	310
385	ELO	2025-03-09	392
385	Massey	2025-03-09	289
385	USAU	2025-03-09	363
385	SWCI	2025-03-15	332
385	ELO	2025-03-15	392
385	Massey	2025-03-15	336
385	USAU	2025-03-15	329
385	SWCI	2025-03-16	332
385	ELO	2025-03-16	392
385	Massey	2025-03-16	324
385	USAU	2025-03-16	334
385	SWCI	2025-03-23	347
385	ELO	2025-03-23	393
385	Massey	2025-03-23	323
385	USAU	2025-03-23	322
385	SWCI	2025-03-29	361
385	ELO	2025-03-29	391
385	Massey	2025-03-29	314
385	USAU	2025-03-29	315
385	SWCI	2025-03-30	343
385	ELO	2025-03-30	389
385	Massey	2025-03-30	310
385	USAU	2025-03-30	309
386	SWCI	2025-01-26	386
386	ELO	2025-01-26	378
386	Massey	2025-01-26	118
386	USAU	2025-01-26	353
386	SWCI	2025-02-02	386
386	ELO	2025-02-02	344
386	Massey	2025-02-02	153
386	USAU	2025-02-02	328
386	SWCI	2025-02-08	386
386	ELO	2025-02-08	323
386	Massey	2025-02-08	203
386	USAU	2025-02-08	306
386	SWCI	2025-02-09	386
386	ELO	2025-02-09	318
386	Massey	2025-02-09	137
386	USAU	2025-02-09	304
386	SWCI	2025-02-12	386
386	ELO	2025-02-12	305
386	Massey	2025-02-12	185
386	USAU	2025-02-12	304
386	SWCI	2025-02-16	386
386	ELO	2025-02-16	302
386	Massey	2025-02-16	179
386	USAU	2025-02-16	282
386	SWCI	2025-02-17	386
386	ELO	2025-02-17	293
386	Massey	2025-02-17	236
386	USAU	2025-02-17	280
386	SWCI	2025-02-22	387
386	ELO	2025-02-22	290
386	Massey	2025-02-22	206
386	USAU	2025-02-22	256
386	SWCI	2025-02-23	387
386	ELO	2025-02-23	288
386	Massey	2025-02-23	228
386	USAU	2025-02-23	258
386	SWCI	2025-03-02	10
386	ELO	2025-03-02	271
386	Massey	2025-03-02	58
386	USAU	2025-03-02	53
386	SWCI	2025-03-08	10
386	ELO	2025-03-08	17
386	Massey	2025-03-08	51
386	USAU	2025-03-08	54
386	SWCI	2025-03-09	10
386	ELO	2025-03-09	17
386	Massey	2025-03-09	50
386	USAU	2025-03-09	54
386	SWCI	2025-03-15	28
386	ELO	2025-03-15	18
386	Massey	2025-03-15	118
386	USAU	2025-03-15	58
386	SWCI	2025-03-16	51
386	ELO	2025-03-16	18
386	Massey	2025-03-16	68
386	USAU	2025-03-16	69
386	SWCI	2025-03-23	49
386	ELO	2025-03-23	51
386	Massey	2025-03-23	96
386	USAU	2025-03-23	69
386	SWCI	2025-03-29	90
386	ELO	2025-03-29	59
386	Massey	2025-03-29	86
386	USAU	2025-03-29	87
386	SWCI	2025-03-30	112
386	ELO	2025-03-30	60
386	Massey	2025-03-30	97
386	USAU	2025-03-30	102
387	SWCI	2025-01-26	387
387	ELO	2025-01-26	379
387	Massey	2025-01-26	119
387	USAU	2025-01-26	354
387	SWCI	2025-02-02	387
387	ELO	2025-02-02	345
387	Massey	2025-02-02	154
387	USAU	2025-02-02	329
387	SWCI	2025-02-08	387
387	ELO	2025-02-08	324
387	Massey	2025-02-08	204
387	USAU	2025-02-08	307
387	SWCI	2025-02-09	387
387	ELO	2025-02-09	319
387	Massey	2025-02-09	138
387	USAU	2025-02-09	305
387	SWCI	2025-02-12	387
387	ELO	2025-02-12	306
387	Massey	2025-02-12	186
387	USAU	2025-02-12	305
387	SWCI	2025-02-16	387
387	ELO	2025-02-16	303
387	Massey	2025-02-16	180
387	USAU	2025-02-16	283
387	SWCI	2025-02-17	387
387	ELO	2025-02-17	294
387	Massey	2025-02-17	237
387	USAU	2025-02-17	281
387	SWCI	2025-02-22	388
387	ELO	2025-02-22	291
387	Massey	2025-02-22	207
387	USAU	2025-02-22	257
387	SWCI	2025-02-23	388
387	ELO	2025-02-23	289
387	Massey	2025-02-23	229
387	USAU	2025-02-23	259
387	SWCI	2025-03-02	228
387	ELO	2025-03-02	272
387	Massey	2025-03-02	294
387	USAU	2025-03-02	341
387	SWCI	2025-03-08	231
387	ELO	2025-03-08	272
387	Massey	2025-03-08	242
387	USAU	2025-03-08	340
387	SWCI	2025-03-09	236
387	ELO	2025-03-09	271
387	Massey	2025-03-09	233
387	USAU	2025-03-09	338
387	SWCI	2025-03-15	270
387	ELO	2025-03-15	265
387	Massey	2025-03-15	303
387	USAU	2025-03-15	303
387	SWCI	2025-03-16	276
387	ELO	2025-03-16	262
387	Massey	2025-03-16	249
387	USAU	2025-03-16	303
387	SWCI	2025-03-23	293
387	ELO	2025-03-23	249
387	Massey	2025-03-23	282
387	USAU	2025-03-23	290
387	SWCI	2025-03-29	352
387	ELO	2025-03-29	241
387	Massey	2025-03-29	299
387	USAU	2025-03-29	311
387	SWCI	2025-03-30	347
387	ELO	2025-03-30	242
387	Massey	2025-03-30	328
387	USAU	2025-03-30	339
388	SWCI	2025-01-26	388
388	ELO	2025-01-26	380
388	Massey	2025-01-26	228
388	USAU	2025-01-26	355
388	SWCI	2025-02-02	388
388	ELO	2025-02-02	346
388	Massey	2025-02-02	155
388	USAU	2025-02-02	330
388	SWCI	2025-02-08	388
388	ELO	2025-02-08	325
388	Massey	2025-02-08	160
388	USAU	2025-02-08	308
388	SWCI	2025-02-09	388
388	ELO	2025-02-09	320
388	Massey	2025-02-09	190
388	USAU	2025-02-09	306
388	SWCI	2025-02-12	388
388	ELO	2025-02-12	307
388	Massey	2025-02-12	204
388	USAU	2025-02-12	306
388	SWCI	2025-02-16	388
388	ELO	2025-02-16	304
388	Massey	2025-02-16	239
388	USAU	2025-02-16	284
388	SWCI	2025-02-17	388
388	ELO	2025-02-17	295
388	Massey	2025-02-17	148
388	USAU	2025-02-17	282
388	SWCI	2025-02-22	389
388	ELO	2025-02-22	292
388	Massey	2025-02-22	211
388	USAU	2025-02-22	258
388	SWCI	2025-02-23	389
388	ELO	2025-02-23	290
388	Massey	2025-02-23	196
388	USAU	2025-02-23	260
388	SWCI	2025-03-02	393
388	ELO	2025-03-02	273
388	Massey	2025-03-02	256
388	USAU	2025-03-02	213
388	SWCI	2025-03-08	393
388	ELO	2025-03-08	232
388	Massey	2025-03-08	344
388	USAU	2025-03-08	207
388	SWCI	2025-03-09	393
388	ELO	2025-03-09	231
388	Massey	2025-03-09	310
388	USAU	2025-03-09	205
388	SWCI	2025-03-15	396
388	ELO	2025-03-15	223
388	Massey	2025-03-15	29
388	USAU	2025-03-15	188
388	SWCI	2025-03-16	396
388	ELO	2025-03-16	220
388	Massey	2025-03-16	299
388	USAU	2025-03-16	190
388	SWCI	2025-03-23	397
388	ELO	2025-03-23	211
388	Massey	2025-03-23	12
388	USAU	2025-03-23	173
388	SWCI	2025-03-29	397
388	ELO	2025-03-29	208
388	Massey	2025-03-29	397
388	USAU	2025-03-29	397
388	SWCI	2025-03-30	397
388	ELO	2025-03-30	206
388	Massey	2025-03-30	389
388	USAU	2025-03-30	388
389	SWCI	2025-01-26	389
389	ELO	2025-01-26	381
389	Massey	2025-01-26	229
389	USAU	2025-01-26	356
389	SWCI	2025-02-02	389
389	ELO	2025-02-02	347
389	Massey	2025-02-02	156
389	USAU	2025-02-02	331
389	SWCI	2025-02-08	389
389	ELO	2025-02-08	326
389	Massey	2025-02-08	161
389	USAU	2025-02-08	309
389	SWCI	2025-02-09	389
389	ELO	2025-02-09	321
389	Massey	2025-02-09	191
389	USAU	2025-02-09	307
389	SWCI	2025-02-12	389
389	ELO	2025-02-12	308
389	Massey	2025-02-12	205
389	USAU	2025-02-12	307
389	SWCI	2025-02-16	389
389	ELO	2025-02-16	305
389	Massey	2025-02-16	240
389	USAU	2025-02-16	285
389	SWCI	2025-02-17	389
389	ELO	2025-02-17	296
389	Massey	2025-02-17	149
389	USAU	2025-02-17	283
389	SWCI	2025-02-22	390
389	ELO	2025-02-22	293
389	Massey	2025-02-22	212
389	USAU	2025-02-22	259
389	SWCI	2025-02-23	390
389	ELO	2025-02-23	291
389	Massey	2025-02-23	197
389	USAU	2025-02-23	261
389	SWCI	2025-03-02	394
389	ELO	2025-03-02	274
389	Massey	2025-03-02	257
389	USAU	2025-03-02	214
389	SWCI	2025-03-08	394
389	ELO	2025-03-08	233
389	Massey	2025-03-08	345
389	USAU	2025-03-08	208
389	SWCI	2025-03-09	394
389	ELO	2025-03-09	232
389	Massey	2025-03-09	311
389	USAU	2025-03-09	206
389	SWCI	2025-03-15	397
389	ELO	2025-03-15	224
389	Massey	2025-03-15	30
389	USAU	2025-03-15	189
389	SWCI	2025-03-16	397
389	ELO	2025-03-16	221
389	Massey	2025-03-16	300
389	USAU	2025-03-16	191
389	SWCI	2025-03-23	288
389	ELO	2025-03-23	212
389	Massey	2025-03-23	306
389	USAU	2025-03-23	306
389	SWCI	2025-03-29	275
389	ELO	2025-03-29	265
389	Massey	2025-03-29	300
389	USAU	2025-03-29	299
389	SWCI	2025-03-30	314
389	ELO	2025-03-30	265
389	Massey	2025-03-30	308
389	USAU	2025-03-30	312
390	SWCI	2025-01-26	390
390	ELO	2025-01-26	382
390	Massey	2025-01-26	248
390	USAU	2025-01-26	357
390	SWCI	2025-02-02	390
390	ELO	2025-02-02	348
390	Massey	2025-02-02	122
390	USAU	2025-02-02	332
390	SWCI	2025-02-08	390
390	ELO	2025-02-08	327
390	Massey	2025-02-08	183
390	USAU	2025-02-08	310
390	SWCI	2025-02-09	390
390	ELO	2025-02-09	322
390	Massey	2025-02-09	162
390	USAU	2025-02-09	308
390	SWCI	2025-02-12	390
390	ELO	2025-02-12	309
390	Massey	2025-02-12	153
390	USAU	2025-02-12	308
390	SWCI	2025-02-16	390
390	ELO	2025-02-16	306
390	Massey	2025-02-16	218
390	USAU	2025-02-16	286
390	SWCI	2025-02-17	390
390	ELO	2025-02-17	297
390	Massey	2025-02-17	219
390	USAU	2025-02-17	284
390	SWCI	2025-02-22	391
390	ELO	2025-02-22	294
390	Massey	2025-02-22	213
390	USAU	2025-02-22	260
390	SWCI	2025-02-23	391
390	ELO	2025-02-23	292
390	Massey	2025-02-23	209
390	USAU	2025-02-23	262
390	SWCI	2025-03-02	395
390	ELO	2025-03-02	275
390	Massey	2025-03-02	230
390	USAU	2025-03-02	215
390	SWCI	2025-03-08	395
390	ELO	2025-03-08	234
390	Massey	2025-03-08	302
390	USAU	2025-03-08	209
390	SWCI	2025-03-09	395
390	ELO	2025-03-09	233
390	Massey	2025-03-09	341
390	USAU	2025-03-09	207
390	SWCI	2025-03-15	94
390	ELO	2025-03-15	225
390	Massey	2025-03-15	1
390	USAU	2025-03-15	74
390	SWCI	2025-03-16	28
390	ELO	2025-03-16	222
390	Massey	2025-03-16	169
390	USAU	2025-03-16	52
390	SWCI	2025-03-23	48
390	ELO	2025-03-23	48
390	Massey	2025-03-23	239
390	USAU	2025-03-23	232
390	SWCI	2025-03-29	120
390	ELO	2025-03-29	55
390	Massey	2025-03-29	250
390	USAU	2025-03-29	235
390	SWCI	2025-03-30	101
390	ELO	2025-03-30	56
390	Massey	2025-03-30	223
390	USAU	2025-03-30	221
391	SWCI	2025-01-26	391
391	ELO	2025-01-26	383
391	Massey	2025-01-26	249
391	USAU	2025-01-26	358
391	SWCI	2025-02-02	391
391	ELO	2025-02-02	349
391	Massey	2025-02-02	123
391	USAU	2025-02-02	333
391	SWCI	2025-02-08	391
391	ELO	2025-02-08	328
391	Massey	2025-02-08	184
391	USAU	2025-02-08	311
391	SWCI	2025-02-09	391
391	ELO	2025-02-09	323
391	Massey	2025-02-09	163
391	USAU	2025-02-09	309
391	SWCI	2025-02-12	391
391	ELO	2025-02-12	310
391	Massey	2025-02-12	154
391	USAU	2025-02-12	309
391	SWCI	2025-02-16	391
391	ELO	2025-02-16	307
391	Massey	2025-02-16	219
391	USAU	2025-02-16	287
391	SWCI	2025-02-17	391
391	ELO	2025-02-17	298
391	Massey	2025-02-17	220
391	USAU	2025-02-17	285
391	SWCI	2025-02-22	392
391	ELO	2025-02-22	295
391	Massey	2025-02-22	214
391	USAU	2025-02-22	261
391	SWCI	2025-02-23	392
391	ELO	2025-02-23	293
391	Massey	2025-02-23	210
391	USAU	2025-02-23	263
391	SWCI	2025-03-02	396
391	ELO	2025-03-02	276
391	Massey	2025-03-02	231
391	USAU	2025-03-02	216
391	SWCI	2025-03-08	396
391	ELO	2025-03-08	235
391	Massey	2025-03-08	303
391	USAU	2025-03-08	210
391	SWCI	2025-03-09	396
391	ELO	2025-03-09	234
391	Massey	2025-03-09	342
391	USAU	2025-03-09	208
391	SWCI	2025-03-15	301
391	ELO	2025-03-15	226
391	Massey	2025-03-15	56
391	USAU	2025-03-15	283
391	SWCI	2025-03-16	305
391	ELO	2025-03-16	223
391	Massey	2025-03-16	390
391	USAU	2025-03-16	280
391	SWCI	2025-03-23	329
391	ELO	2025-03-23	336
391	Massey	2025-03-23	396
391	USAU	2025-03-23	387
391	SWCI	2025-03-29	385
391	ELO	2025-03-29	331
391	Massey	2025-03-29	392
391	USAU	2025-03-29	387
391	SWCI	2025-03-30	370
391	ELO	2025-03-30	331
391	Massey	2025-03-30	392
391	USAU	2025-03-30	390
392	SWCI	2025-01-26	392
392	ELO	2025-01-26	384
392	Massey	2025-01-26	261
392	USAU	2025-01-26	359
392	SWCI	2025-02-02	392
392	ELO	2025-02-02	350
392	Massey	2025-02-02	206
392	USAU	2025-02-02	334
392	SWCI	2025-02-08	392
392	ELO	2025-02-08	329
392	Massey	2025-02-08	168
392	USAU	2025-02-08	312
392	SWCI	2025-02-09	392
392	ELO	2025-02-09	324
392	Massey	2025-02-09	219
392	USAU	2025-02-09	310
392	SWCI	2025-02-12	392
392	ELO	2025-02-12	311
392	Massey	2025-02-12	178
392	USAU	2025-02-12	310
392	SWCI	2025-02-16	392
392	ELO	2025-02-16	308
392	Massey	2025-02-16	175
392	USAU	2025-02-16	288
392	SWCI	2025-02-17	392
392	ELO	2025-02-17	299
392	Massey	2025-02-17	231
392	USAU	2025-02-17	286
392	SWCI	2025-02-22	393
392	ELO	2025-02-22	296
392	Massey	2025-02-22	177
392	USAU	2025-02-22	262
392	SWCI	2025-02-23	393
392	ELO	2025-02-23	294
392	Massey	2025-02-23	234
392	USAU	2025-02-23	264
392	SWCI	2025-03-02	397
392	ELO	2025-03-02	277
392	Massey	2025-03-02	234
392	USAU	2025-03-02	217
392	SWCI	2025-03-08	397
392	ELO	2025-03-08	236
392	Massey	2025-03-08	329
392	USAU	2025-03-08	211
392	SWCI	2025-03-09	397
392	ELO	2025-03-09	235
392	Massey	2025-03-09	322
392	USAU	2025-03-09	209
392	SWCI	2025-03-15	224
392	ELO	2025-03-15	227
392	Massey	2025-03-15	55
392	USAU	2025-03-15	255
392	SWCI	2025-03-16	303
392	ELO	2025-03-16	224
392	Massey	2025-03-16	389
392	USAU	2025-03-16	325
392	SWCI	2025-03-23	328
392	ELO	2025-03-23	359
392	Massey	2025-03-23	394
392	USAU	2025-03-23	393
392	SWCI	2025-03-29	362
392	ELO	2025-03-29	351
392	Massey	2025-03-29	390
392	USAU	2025-03-29	391
392	SWCI	2025-03-30	349
392	ELO	2025-03-30	349
392	Massey	2025-03-30	391
392	USAU	2025-03-30	391
393	SWCI	2025-01-26	393
393	ELO	2025-01-26	385
393	Massey	2025-01-26	262
393	USAU	2025-01-26	360
393	SWCI	2025-02-02	393
393	ELO	2025-02-02	351
393	Massey	2025-02-02	207
393	USAU	2025-02-02	335
393	SWCI	2025-02-08	393
393	ELO	2025-02-08	330
393	Massey	2025-02-08	169
393	USAU	2025-02-08	313
393	SWCI	2025-02-09	393
393	ELO	2025-02-09	325
393	Massey	2025-02-09	220
393	USAU	2025-02-09	311
393	SWCI	2025-02-12	393
393	ELO	2025-02-12	312
393	Massey	2025-02-12	179
393	USAU	2025-02-12	311
393	SWCI	2025-02-16	393
393	ELO	2025-02-16	309
393	Massey	2025-02-16	176
393	USAU	2025-02-16	289
393	SWCI	2025-02-17	393
393	ELO	2025-02-17	300
393	Massey	2025-02-17	232
393	USAU	2025-02-17	287
393	SWCI	2025-02-22	230
393	ELO	2025-02-22	366
393	Massey	2025-02-22	386
393	USAU	2025-02-22	395
393	SWCI	2025-02-23	231
393	ELO	2025-02-23	364
393	Massey	2025-02-23	388
393	USAU	2025-02-23	395
393	SWCI	2025-03-02	309
393	ELO	2025-03-02	354
393	Massey	2025-03-02	391
393	USAU	2025-03-02	390
393	SWCI	2025-03-08	317
393	ELO	2025-03-08	337
393	Massey	2025-03-08	383
393	USAU	2025-03-08	390
393	SWCI	2025-03-09	321
393	ELO	2025-03-09	335
393	Massey	2025-03-09	387
393	USAU	2025-03-09	389
393	SWCI	2025-03-15	349
393	ELO	2025-03-15	336
393	Massey	2025-03-15	391
393	USAU	2025-03-15	388
393	SWCI	2025-03-16	347
393	ELO	2025-03-16	333
393	Massey	2025-03-16	391
393	USAU	2025-03-16	390
393	SWCI	2025-03-23	366
393	ELO	2025-03-23	324
393	Massey	2025-03-23	382
393	USAU	2025-03-23	367
393	SWCI	2025-03-29	390
393	ELO	2025-03-29	319
393	Massey	2025-03-29	373
393	USAU	2025-03-29	361
393	SWCI	2025-03-30	390
393	ELO	2025-03-30	319
393	Massey	2025-03-30	375
393	USAU	2025-03-30	363
394	SWCI	2025-01-26	394
394	ELO	2025-01-26	386
394	Massey	2025-01-26	263
394	USAU	2025-01-26	361
394	SWCI	2025-02-02	394
394	ELO	2025-02-02	352
394	Massey	2025-02-02	214
394	USAU	2025-02-02	336
394	SWCI	2025-02-08	394
394	ELO	2025-02-08	331
394	Massey	2025-02-08	162
394	USAU	2025-02-08	314
394	SWCI	2025-02-09	394
394	ELO	2025-02-09	326
394	Massey	2025-02-09	227
394	USAU	2025-02-09	312
394	SWCI	2025-02-12	394
394	ELO	2025-02-12	313
394	Massey	2025-02-12	192
394	USAU	2025-02-12	312
394	SWCI	2025-02-16	394
394	ELO	2025-02-16	310
394	Massey	2025-02-16	141
394	USAU	2025-02-16	290
394	SWCI	2025-02-17	394
394	ELO	2025-02-17	301
394	Massey	2025-02-17	213
394	USAU	2025-02-17	288
394	SWCI	2025-02-22	394
394	ELO	2025-02-22	297
394	Massey	2025-02-22	197
394	USAU	2025-02-22	263
394	SWCI	2025-02-23	394
394	ELO	2025-02-23	295
394	Massey	2025-02-23	212
394	USAU	2025-02-23	265
394	SWCI	2025-03-02	147
394	ELO	2025-03-02	278
394	Massey	2025-03-02	290
394	USAU	2025-03-02	325
394	SWCI	2025-03-08	149
394	ELO	2025-03-08	121
394	Massey	2025-03-08	233
394	USAU	2025-03-08	318
394	SWCI	2025-03-09	151
394	ELO	2025-03-09	124
394	Massey	2025-03-09	227
394	USAU	2025-03-09	319
394	SWCI	2025-03-15	154
394	ELO	2025-03-15	128
394	Massey	2025-03-15	287
394	USAU	2025-03-15	304
394	SWCI	2025-03-16	155
394	ELO	2025-03-16	130
394	Massey	2025-03-16	237
394	USAU	2025-03-16	302
394	SWCI	2025-03-23	160
394	ELO	2025-03-23	136
394	Massey	2025-03-23	261
394	USAU	2025-03-23	270
394	SWCI	2025-03-29	185
394	ELO	2025-03-29	144
394	Massey	2025-03-29	218
394	USAU	2025-03-29	222
394	SWCI	2025-03-30	186
394	ELO	2025-03-30	147
394	Massey	2025-03-30	222
394	USAU	2025-03-30	229
395	SWCI	2025-01-26	395
395	ELO	2025-01-26	387
395	Massey	2025-01-26	57
395	USAU	2025-01-26	362
395	SWCI	2025-02-02	395
395	ELO	2025-02-02	353
395	Massey	2025-02-02	157
395	USAU	2025-02-02	337
395	SWCI	2025-02-08	395
395	ELO	2025-02-08	332
395	Massey	2025-02-08	246
395	USAU	2025-02-08	315
395	SWCI	2025-02-09	395
395	ELO	2025-02-09	327
395	Massey	2025-02-09	236
395	USAU	2025-02-09	313
395	SWCI	2025-02-12	395
395	ELO	2025-02-12	314
395	Massey	2025-02-12	140
395	USAU	2025-02-12	313
395	SWCI	2025-02-16	395
395	ELO	2025-02-16	311
395	Massey	2025-02-16	258
395	USAU	2025-02-16	291
395	SWCI	2025-02-17	395
395	ELO	2025-02-17	302
395	Massey	2025-02-17	151
395	USAU	2025-02-17	289
395	SWCI	2025-02-22	395
395	ELO	2025-02-22	298
395	Massey	2025-02-22	242
395	USAU	2025-02-22	264
395	SWCI	2025-02-23	395
395	ELO	2025-02-23	296
395	Massey	2025-02-23	161
395	USAU	2025-02-23	266
395	SWCI	2025-03-02	213
395	ELO	2025-03-02	279
395	Massey	2025-03-02	341
395	USAU	2025-03-02	355
395	SWCI	2025-03-08	217
395	ELO	2025-03-08	289
395	Massey	2025-03-08	284
395	USAU	2025-03-08	352
395	SWCI	2025-03-09	223
395	ELO	2025-03-09	289
395	Massey	2025-03-09	274
395	USAU	2025-03-09	353
395	SWCI	2025-03-15	263
395	ELO	2025-03-15	282
395	Massey	2025-03-15	352
395	USAU	2025-03-15	358
395	SWCI	2025-03-16	239
395	ELO	2025-03-16	279
395	Massey	2025-03-16	343
395	USAU	2025-03-16	356
395	SWCI	2025-03-23	249
395	ELO	2025-03-23	268
395	Massey	2025-03-23	334
395	USAU	2025-03-23	339
395	SWCI	2025-03-29	284
395	ELO	2025-03-29	296
395	Massey	2025-03-29	270
395	USAU	2025-03-29	272
395	SWCI	2025-03-30	290
395	ELO	2025-03-30	296
395	Massey	2025-03-30	269
395	USAU	2025-03-30	276
396	SWCI	2025-01-26	396
396	ELO	2025-01-26	388
396	Massey	2025-01-26	56
396	USAU	2025-01-26	363
396	SWCI	2025-02-02	396
396	ELO	2025-02-02	354
396	Massey	2025-02-02	99
396	USAU	2025-02-02	338
396	SWCI	2025-02-08	396
396	ELO	2025-02-08	333
396	Massey	2025-02-08	141
396	USAU	2025-02-08	316
396	SWCI	2025-02-09	396
396	ELO	2025-02-09	328
396	Massey	2025-02-09	129
396	USAU	2025-02-09	314
396	SWCI	2025-02-12	396
396	ELO	2025-02-12	315
396	Massey	2025-02-12	167
396	USAU	2025-02-12	314
396	SWCI	2025-02-16	396
396	ELO	2025-02-16	312
396	Massey	2025-02-16	136
396	USAU	2025-02-16	292
396	SWCI	2025-02-17	396
396	ELO	2025-02-17	303
396	Massey	2025-02-17	234
396	USAU	2025-02-17	290
396	SWCI	2025-02-22	396
396	ELO	2025-02-22	299
396	Massey	2025-02-22	245
396	USAU	2025-02-22	265
396	SWCI	2025-02-23	396
396	ELO	2025-02-23	297
396	Massey	2025-02-23	192
396	USAU	2025-02-23	267
396	SWCI	2025-03-02	288
396	ELO	2025-03-02	280
396	Massey	2025-03-02	376
396	USAU	2025-03-02	381
396	SWCI	2025-03-08	293
396	ELO	2025-03-08	331
396	Massey	2025-03-08	358
396	USAU	2025-03-08	382
396	SWCI	2025-03-09	297
396	ELO	2025-03-09	329
396	Massey	2025-03-09	361
396	USAU	2025-03-09	380
396	SWCI	2025-03-15	287
396	ELO	2025-03-15	330
396	Massey	2025-03-15	366
396	USAU	2025-03-15	366
396	SWCI	2025-03-16	295
396	ELO	2025-03-16	327
396	Massey	2025-03-16	365
396	USAU	2025-03-16	372
396	SWCI	2025-03-23	312
396	ELO	2025-03-23	317
396	Massey	2025-03-23	362
396	USAU	2025-03-23	362
396	SWCI	2025-03-29	347
396	ELO	2025-03-29	308
396	Massey	2025-03-29	326
396	USAU	2025-03-29	324
396	SWCI	2025-03-30	341
396	ELO	2025-03-30	307
396	Massey	2025-03-30	323
396	USAU	2025-03-30	325
397	SWCI	2025-01-26	397
397	ELO	2025-01-26	389
397	Massey	2025-01-26	55
397	USAU	2025-01-26	364
397	SWCI	2025-02-02	397
397	ELO	2025-02-02	355
397	Massey	2025-02-02	126
397	USAU	2025-02-02	339
397	SWCI	2025-02-08	397
397	ELO	2025-02-08	334
397	Massey	2025-02-08	228
397	USAU	2025-02-08	317
397	SWCI	2025-02-09	397
397	ELO	2025-02-09	329
397	Massey	2025-02-09	222
397	USAU	2025-02-09	315
397	SWCI	2025-02-12	397
397	ELO	2025-02-12	316
397	Massey	2025-02-12	148
397	USAU	2025-02-12	315
397	SWCI	2025-02-16	397
397	ELO	2025-02-16	313
397	Massey	2025-02-16	134
397	USAU	2025-02-16	293
397	SWCI	2025-02-17	397
397	ELO	2025-02-17	304
397	Massey	2025-02-17	146
397	USAU	2025-02-17	291
397	SWCI	2025-02-22	397
397	ELO	2025-02-22	300
397	Massey	2025-02-22	169
397	USAU	2025-02-22	266
397	SWCI	2025-02-23	397
397	ELO	2025-02-23	298
397	Massey	2025-02-23	168
397	USAU	2025-02-23	268
397	SWCI	2025-03-02	239
397	ELO	2025-03-02	281
397	Massey	2025-03-02	352
397	USAU	2025-03-02	364
397	SWCI	2025-03-08	245
397	ELO	2025-03-08	266
397	Massey	2025-03-08	296
397	USAU	2025-03-08	360
397	SWCI	2025-03-09	249
397	ELO	2025-03-09	265
397	Massey	2025-03-09	286
397	USAU	2025-03-09	361
397	SWCI	2025-03-15	265
397	ELO	2025-03-15	258
397	Massey	2025-03-15	348
397	USAU	2025-03-15	352
397	SWCI	2025-03-16	258
397	ELO	2025-03-16	255
397	Massey	2025-03-16	347
397	USAU	2025-03-16	358
397	SWCI	2025-03-23	273
397	ELO	2025-03-23	242
397	Massey	2025-03-23	336
397	USAU	2025-03-23	342
397	SWCI	2025-03-29	296
397	ELO	2025-03-29	239
397	Massey	2025-03-29	292
397	USAU	2025-03-29	302
397	SWCI	2025-03-30	305
397	ELO	2025-03-30	239
397	Massey	2025-03-30	292
397	USAU	2025-03-30	302
\.


--
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.results (match_id, team_id, opponent_id, points_for, points_against) FROM stdin;
1	1	2	6	13
1	2	1	13	6
2	1	3	13	8
2	3	1	8	13
3	1	4	13	7
3	4	1	7	13
4	1	5	9	13
4	5	1	13	9
5	1	6	8	13
5	6	1	13	8
6	1	7	6	13
6	7	1	13	6
7	1	8	2	13
7	8	1	13	2
8	1	9	9	13
8	9	1	13	9
9	1	10	11	10
9	10	1	10	11
10	1	11	4	13
10	11	1	13	4
11	1	12	9	11
11	12	1	11	9
12	1	13	9	13
12	13	1	13	9
13	14	15	12	2
13	15	14	2	12
14	14	16	8	2
14	16	14	2	8
15	14	17	9	3
15	17	14	3	9
16	14	18	4	13
16	18	14	13	4
17	14	19	11	10
17	19	14	10	11
18	14	20	4	13
18	20	14	13	4
19	14	21	8	3
19	21	14	3	8
20	14	22	13	7
20	22	14	7	13
21	14	20	6	15
21	20	14	15	6
22	14	19	10	12
22	19	14	12	10
23	23	24	13	6
23	24	23	6	13
24	23	25	12	13
24	25	23	13	12
25	23	26	13	0
25	26	23	0	13
26	23	27	13	0
26	27	23	0	13
27	23	28	13	4
27	28	23	4	13
28	23	29	15	10
28	29	23	10	15
29	23	30	15	12
29	30	23	12	15
30	23	25	12	15
30	25	23	15	12
31	23	31	9	13
31	31	23	13	9
32	23	32	13	11
32	32	23	11	13
33	23	33	9	13
33	33	23	13	9
34	23	34	7	8
34	34	23	8	7
35	23	35	7	9
35	35	23	9	7
36	23	36	13	2
36	36	23	2	13
37	23	37	13	6
37	37	23	6	13
38	23	38	10	13
38	38	23	13	10
39	23	39	13	12
39	39	23	12	13
40	23	40	13	8
40	40	23	8	13
41	23	41	7	14
41	41	23	14	7
42	23	42	7	12
42	42	23	12	7
43	23	43	6	15
43	43	23	15	6
44	23	40	11	8
44	40	23	8	11
45	23	30	11	6
45	30	23	6	11
46	23	44	9	7
46	44	23	7	9
47	45	29	5	11
47	29	45	11	5
48	45	46	13	12
48	46	45	12	13
49	45	39	3	13
49	39	45	13	3
50	45	30	6	13
50	30	45	13	6
51	45	47	7	13
51	47	45	13	7
52	45	27	15	6
52	27	45	6	15
53	45	46	6	15
53	46	45	15	6
54	45	48	8	12
54	48	45	12	8
55	45	49	13	2
55	49	45	2	13
56	45	50	9	13
56	50	45	13	9
57	45	51	13	10
57	51	45	10	13
58	45	47	5	15
58	47	45	15	5
59	45	52	7	11
59	52	45	11	7
60	45	49	9	8
60	49	45	8	9
61	29	47	13	12
61	47	29	12	13
62	29	30	7	9
62	30	29	9	7
63	29	46	13	8
63	46	29	8	13
64	29	39	8	13
64	39	29	13	8
65	29	28	11	5
65	28	29	5	11
66	29	51	13	6
66	51	29	6	13
67	29	52	13	4
67	52	29	4	13
68	29	47	9	8
68	47	29	8	9
69	29	48	12	9
69	48	29	9	12
70	29	49	15	4
70	49	29	4	15
71	29	51	15	10
71	51	29	10	15
72	29	50	14	9
72	50	29	9	14
73	53	54	11	12
73	54	53	12	11
74	53	55	10	7
74	55	53	7	10
75	53	56	9	12
75	56	53	12	9
76	53	57	2	13
76	57	53	13	2
77	53	58	7	13
77	58	53	13	7
78	53	59	9	11
78	59	53	11	9
79	53	60	12	8
79	60	53	8	12
80	53	58	7	11
80	58	53	11	7
81	53	61	13	10
81	61	53	10	13
82	53	35	12	7
82	35	53	7	12
83	53	62	5	7
83	62	53	7	5
84	53	63	5	7
84	63	53	7	5
85	64	65	6	11
85	65	64	11	6
86	64	66	9	10
86	66	64	10	9
87	64	33	6	12
87	33	64	12	6
88	64	34	8	12
88	34	64	12	8
89	64	67	12	6
89	67	64	6	12
90	64	68	8	10
90	68	64	10	8
91	64	66	6	12
91	66	64	12	6
92	64	69	12	6
92	69	64	6	12
93	64	70	8	7
93	70	64	7	8
94	64	71	10	7
94	71	64	7	10
95	64	72	10	11
95	72	64	11	10
96	64	68	13	5
96	68	64	5	13
97	64	66	12	9
97	66	64	9	12
98	64	73	8	12
98	73	64	12	8
99	64	74	14	5
99	74	64	5	14
100	64	75	6	11
100	75	64	11	6
101	64	76	14	13
101	76	64	13	14
102	64	77	12	15
102	77	64	15	12
103	64	72	15	11
103	72	64	11	15
104	78	79	1	12
104	79	78	12	1
105	78	80	3	12
105	80	78	12	3
106	78	74	5	9
106	74	78	9	5
107	78	80	4	9
107	80	78	9	4
108	78	74	8	11
108	74	78	11	8
109	78	81	1	15
109	81	78	15	1
110	78	76	6	15
110	76	78	15	6
111	78	82	1	15
111	82	78	15	1
112	78	60	5	14
112	60	78	14	5
113	78	70	1	15
113	70	78	15	1
114	78	74	10	11
114	74	78	11	10
115	83	84	12	0
115	84	83	0	12
116	83	85	8	1
116	85	83	1	8
117	83	86	4	5
117	86	83	5	4
118	83	87	2	8
118	87	83	8	2
119	83	85	9	3
119	85	83	3	9
120	83	88	4	8
120	88	83	8	4
121	83	89	7	9
121	89	83	9	7
122	83	90	8	7
122	90	83	7	8
123	83	91	11	10
123	91	83	10	11
124	83	92	8	5
124	92	83	5	8
125	83	93	8	9
125	93	83	9	8
126	83	94	7	13
126	94	83	13	7
127	83	88	9	12
127	88	83	12	9
128	83	95	11	13
128	95	83	13	11
129	96	97	1	13
129	97	96	13	1
130	96	98	6	13
130	98	96	13	6
131	96	99	0	13
131	99	96	13	0
132	96	100	10	13
132	100	96	13	10
133	96	101	11	10
133	101	96	10	11
134	96	102	5	15
134	102	96	15	5
135	96	100	14	15
135	100	96	15	14
136	82	103	10	13
136	103	82	13	10
137	82	32	7	13
137	32	82	13	7
138	82	31	10	13
138	31	82	13	10
139	82	8	7	15
139	8	82	15	7
140	82	104	11	13
140	104	82	13	11
141	82	103	8	13
141	103	82	13	8
142	82	63	9	10
142	63	82	10	9
143	82	105	10	13
143	105	82	13	10
144	82	106	7	12
144	106	82	12	7
145	82	107	6	13
145	107	82	13	6
146	82	108	14	13
146	108	82	13	14
147	82	109	13	12
147	109	82	12	13
148	82	110	10	6
148	110	82	6	10
149	82	76	14	8
149	76	82	8	14
150	82	60	14	12
150	60	82	12	14
151	82	81	13	8
151	81	82	8	13
152	82	73	15	11
152	73	82	11	15
153	82	111	15	12
153	111	82	12	15
154	82	112	9	14
154	112	82	14	9
155	82	113	13	3
155	113	82	3	13
156	82	114	13	2
156	114	82	2	13
157	82	115	13	6
157	115	82	6	13
158	82	116	15	10
158	116	82	10	15
159	82	35	10	12
159	35	82	12	10
160	82	117	15	2
160	117	82	2	15
161	118	119	16	3
161	119	118	3	16
162	118	120	14	12
162	120	118	12	14
163	118	121	8	17
163	121	118	17	8
164	118	122	13	11
164	122	118	11	13
165	118	123	13	5
165	123	118	5	13
166	118	124	6	13
166	124	118	13	6
167	118	125	9	10
167	125	118	10	9
168	118	126	10	5
168	126	118	5	10
169	118	127	5	11
169	127	118	11	5
170	118	128	7	11
170	128	118	11	7
171	118	126	9	7
171	126	118	7	9
172	118	129	0	0
172	129	118	0	0
173	118	120	13	9
173	120	118	9	13
174	118	130	12	4
174	130	118	4	12
175	118	131	12	5
175	131	118	5	12
176	118	122	10	11
176	122	118	11	10
177	118	132	10	4
177	132	118	4	10
178	118	130	11	10
178	130	118	10	11
179	133	127	3	13
179	127	133	13	3
180	133	129	7	6
180	129	133	6	7
181	133	134	6	11
181	134	133	11	6
182	133	126	11	6
182	126	133	6	11
183	133	128	8	9
183	128	133	9	8
184	133	135	8	9
184	135	133	9	8
185	133	136	7	9
185	136	133	9	7
186	133	30	8	9
186	30	133	9	8
187	133	99	12	4
187	99	133	4	12
188	133	107	12	15
188	107	133	15	12
189	133	42	11	15
189	42	133	15	11
190	133	137	13	9
190	137	133	9	13
191	119	121	1	17
191	121	119	17	1
192	119	120	2	17
192	120	119	17	2
193	119	124	1	13
193	124	119	13	1
194	119	123	3	12
194	123	119	12	3
195	37	138	9	7
195	138	37	7	9
196	37	60	6	12
196	60	37	12	6
197	37	30	3	13
197	30	37	13	3
198	37	138	9	8
198	138	37	8	9
199	37	137	5	13
199	137	37	13	5
200	37	139	10	5
200	139	37	5	10
201	37	140	9	8
201	140	37	8	9
202	37	30	10	15
202	30	37	15	10
203	37	99	15	8
203	99	37	8	15
204	37	141	10	15
204	141	37	15	10
205	142	143	4	12
205	143	142	12	4
206	142	144	15	2
206	144	142	2	15
207	142	145	5	3
207	145	142	3	5
208	142	146	4	13
208	146	142	13	4
209	142	86	7	12
209	86	142	12	7
210	142	147	7	9
210	147	142	9	7
211	142	148	3	13
211	148	142	13	3
212	142	149	4	13
212	149	142	13	4
213	142	150	6	11
213	150	142	11	6
214	142	151	6	13
214	151	142	13	6
215	142	152	4	11
215	152	142	11	4
216	153	18	13	2
216	18	153	2	13
217	153	12	13	3
217	12	153	3	13
218	153	154	13	2
218	154	153	2	13
219	153	13	13	8
219	13	153	8	13
220	153	155	12	5
220	155	153	5	12
221	153	156	13	5
221	156	153	5	13
222	153	136	7	8
222	136	153	8	7
223	153	13	8	6
223	13	153	6	8
224	153	156	8	7
224	156	153	7	8
225	153	136	6	7
225	136	153	7	6
226	157	34	13	7
226	34	157	7	13
227	157	75	12	9
227	75	157	9	12
228	157	158	2	13
228	158	157	13	2
229	157	32	6	8
229	32	157	8	6
230	157	33	6	7
230	33	157	7	6
231	157	41	13	8
231	41	157	8	13
232	157	65	10	11
232	65	157	11	10
233	157	110	10	3
233	110	157	3	10
234	157	31	7	13
234	31	157	13	7
235	157	107	10	15
235	107	157	15	10
236	157	159	14	12
236	159	157	12	14
237	157	103	8	15
237	103	157	15	8
238	157	160	15	7
238	160	157	7	15
239	157	60	14	9
239	60	157	9	14
240	157	161	11	4
240	161	157	4	11
241	157	162	7	11
241	162	157	11	7
242	162	139	13	3
242	139	162	3	13
243	162	30	13	5
243	30	162	5	13
244	162	39	13	10
244	39	162	10	13
245	162	38	12	10
245	38	162	10	12
246	162	50	13	4
246	50	162	4	13
247	162	163	13	0
247	163	162	0	13
248	162	164	13	4
248	164	162	4	13
249	162	49	13	0
249	49	162	0	13
250	162	164	13	1
250	164	162	1	13
251	162	24	15	3
251	24	162	3	15
252	162	59	15	6
252	59	162	6	15
253	164	49	13	4
253	49	164	4	13
254	164	50	11	10
254	50	164	10	11
255	164	163	10	7
255	163	164	7	10
256	165	166	10	6
256	166	165	6	10
257	165	167	9	7
257	167	165	7	9
258	165	168	8	3
258	168	165	3	8
259	165	22	4	13
259	22	165	13	4
260	165	169	11	12
260	169	165	12	11
261	165	168	7	11
261	168	165	11	7
262	165	170	10	13
262	170	165	13	10
263	165	171	4	11
263	171	165	11	4
264	165	172	4	15
264	172	165	15	4
265	165	173	7	10
265	173	165	10	7
266	165	171	8	10
266	171	165	10	8
267	165	174	8	6
267	174	165	6	8
268	165	175	13	6
268	175	165	6	13
269	165	176	10	7
269	176	165	7	10
270	165	177	10	9
270	177	165	9	10
271	165	13	6	12
271	13	165	12	6
272	165	178	3	12
272	178	165	12	3
273	165	15	5	4
273	15	165	4	5
274	89	88	8	5
274	88	89	5	8
275	89	87	5	6
275	87	89	6	5
276	89	85	9	0
276	85	89	0	9
277	89	84	13	0
277	84	89	0	13
278	89	86	8	5
278	86	89	5	8
279	89	88	15	10
279	88	89	10	15
280	89	179	10	11
280	179	89	11	10
281	89	180	9	10
281	180	89	10	9
282	89	181	15	5
282	181	89	5	15
283	89	94	8	10
283	94	89	10	8
284	89	182	9	7
284	182	89	7	9
285	89	93	13	4
285	93	89	4	13
286	89	183	8	13
286	183	89	13	8
287	89	184	5	13
287	184	89	13	5
288	89	185	8	13
288	185	89	13	8
289	89	186	13	12
289	186	89	12	13
290	89	187	12	13
290	187	89	13	12
291	89	188	13	10
291	188	89	10	13
292	89	189	9	15
292	189	89	15	9
293	190	191	15	7
293	191	190	7	15
294	190	98	15	8
294	98	190	8	15
295	190	139	14	5
295	139	190	5	14
296	190	192	13	11
296	192	190	11	13
297	190	137	10	15
297	137	190	15	10
298	190	97	12	9
298	97	190	9	12
299	190	99	10	11
299	99	190	11	10
300	190	141	5	11
300	141	190	11	5
301	190	26	5	13
301	26	190	13	5
302	190	102	15	11
302	102	190	11	15
303	190	140	15	11
303	140	190	11	15
304	190	139	14	9
304	139	190	9	14
305	190	193	13	1
305	193	190	1	13
306	190	102	13	3
306	102	190	3	13
307	190	101	13	2
307	101	190	2	13
308	190	194	13	6
308	194	190	6	13
309	190	99	12	15
309	99	190	15	12
310	181	180	6	12
310	180	181	12	6
311	181	94	3	15
311	94	181	15	3
312	181	182	3	15
312	182	181	15	3
313	181	179	1	15
313	179	181	15	1
314	181	93	4	12
314	93	181	12	4
315	25	28	13	7
315	28	25	7	13
316	25	27	13	1
316	27	25	1	13
317	25	24	13	9
317	24	25	9	13
318	25	26	13	2
318	26	25	2	13
319	25	47	13	11
319	47	25	11	13
320	25	24	15	8
320	24	25	8	15
321	25	195	13	7
321	195	25	7	13
322	25	51	13	2
322	51	25	2	13
323	25	44	11	13
323	44	25	13	11
324	25	196	13	9
324	196	25	9	13
325	25	30	15	13
325	30	25	13	15
326	25	43	14	15
326	43	25	15	14
327	25	156	13	10
327	156	25	10	13
328	25	197	14	15
328	197	25	15	14
329	25	198	15	9
329	198	25	9	15
330	25	199	11	10
330	199	25	10	11
331	200	201	4	13
331	201	200	13	4
332	200	202	5	9
332	202	200	9	5
333	200	201	9	7
333	201	200	7	9
334	200	202	4	10
334	202	200	10	4
335	200	201	4	9
335	201	200	9	4
336	200	202	6	12
336	202	200	12	6
337	141	99	10	11
337	99	141	11	10
338	141	97	12	2
338	97	141	2	12
339	141	138	13	3
339	138	141	3	13
340	141	203	12	14
340	203	141	14	12
341	141	26	15	5
341	26	141	5	15
342	141	204	10	11
342	204	141	11	10
343	141	159	10	12
343	159	141	12	10
344	141	68	9	7
344	68	141	7	9
345	141	205	10	11
345	205	141	11	10
346	141	104	15	8
346	104	141	8	15
347	141	206	10	11
347	206	141	11	10
348	141	34	12	4
348	34	141	4	12
349	182	185	8	13
349	185	182	13	8
350	182	77	7	11
350	77	182	11	7
351	182	67	11	4
351	67	182	4	11
352	182	61	5	12
352	61	182	12	5
353	182	68	15	4
353	68	182	4	15
354	182	66	13	10
354	66	182	10	13
355	182	207	15	4
355	207	182	4	15
356	182	208	9	6
356	208	182	6	9
357	182	209	7	10
357	209	182	10	7
358	182	210	7	9
358	210	182	9	7
359	182	187	8	7
359	187	182	7	8
360	182	183	8	11
360	183	182	11	8
361	182	179	12	6
361	179	182	6	12
362	182	180	15	7
362	180	182	7	15
363	182	93	15	6
363	93	182	6	15
364	182	94	11	10
364	94	182	10	11
365	211	212	2	13
365	212	211	13	2
366	211	143	4	12
366	143	211	12	4
367	211	213	2	5
367	213	211	5	2
368	211	214	4	8
368	214	211	8	4
369	211	215	2	10
369	215	211	10	2
370	180	146	8	9
370	146	180	9	8
371	180	148	12	8
371	148	180	8	12
372	180	150	10	5
372	150	180	5	10
373	180	86	4	1
373	86	180	1	4
374	180	143	12	6
374	143	180	6	12
375	180	216	13	4
375	216	180	4	13
376	180	146	11	6
376	146	180	6	11
377	180	93	15	3
377	93	180	3	15
378	180	94	9	5
378	94	180	5	9
379	180	179	13	5
379	179	180	5	13
380	180	217	13	2
380	217	180	2	13
381	180	95	13	5
381	95	180	5	13
382	180	88	13	7
382	88	180	7	13
383	180	218	13	2
383	218	180	2	13
384	180	219	13	5
384	219	180	5	13
385	180	93	15	6
385	93	180	6	15
386	180	94	15	7
386	94	180	7	15
387	220	15	13	3
387	15	220	3	13
388	220	169	6	10
388	169	220	10	6
389	220	221	5	6
389	221	220	6	5
390	220	175	0	0
390	175	220	0	0
391	94	222	10	11
391	222	94	11	10
392	94	184	4	13
392	184	94	13	4
393	94	12	13	6
393	12	94	6	13
394	94	186	11	13
394	186	94	13	11
395	94	76	10	11
395	76	94	11	10
396	94	10	11	3
396	10	94	3	11
397	94	13	7	11
397	13	94	11	7
398	94	93	15	2
398	93	94	2	15
399	94	179	10	9
399	179	94	9	10
400	94	93	13	5
400	93	94	5	13
401	94	90	13	3
401	90	94	3	13
402	94	91	13	1
402	91	94	1	13
403	94	92	13	8
403	92	94	8	13
404	94	88	15	7
404	88	94	7	15
405	223	224	13	7
405	224	223	7	13
406	223	225	13	11
406	225	223	11	13
407	223	136	13	8
407	136	223	8	13
408	223	226	10	13
408	226	223	13	10
409	223	224	13	7
409	224	223	7	13
410	223	227	13	5
410	227	223	5	13
411	223	228	13	7
411	228	223	7	13
412	223	58	13	10
412	58	223	10	13
413	223	229	13	7
413	229	223	7	13
414	223	230	10	7
414	230	223	7	10
415	223	231	13	8
415	231	223	8	13
416	223	232	13	8
416	232	223	8	13
417	223	233	13	7
417	233	223	7	13
418	223	59	13	3
418	59	223	3	13
419	223	234	14	13
419	234	223	13	14
420	223	235	15	14
420	235	223	14	15
421	223	226	12	15
421	226	223	15	12
422	223	224	15	11
422	224	223	11	15
423	223	236	15	11
423	236	223	11	15
424	223	237	15	9
424	237	223	9	15
425	122	123	13	3
425	123	122	3	13
426	122	124	5	13
426	124	122	13	5
427	122	238	13	2
427	238	122	2	13
428	122	125	8	13
428	125	122	13	8
429	122	135	6	13
429	135	122	13	6
430	122	239	9	11
430	239	122	11	9
431	122	240	13	9
431	240	122	9	13
432	122	238	13	1
432	238	122	1	13
433	122	241	13	3
433	241	122	3	13
434	122	132	13	1
434	132	122	1	13
435	122	120	13	3
435	120	122	3	13
436	122	130	13	2
436	130	122	2	13
437	242	243	13	2
437	243	242	2	13
438	242	244	11	7
438	244	242	7	11
439	242	245	11	10
439	245	242	10	11
440	242	246	4	12
440	246	242	12	4
441	242	226	5	8
441	226	242	8	5
442	242	247	13	3
442	247	242	3	13
443	242	248	13	2
443	248	242	2	13
444	242	249	12	9
444	249	242	9	12
445	242	112	13	8
445	112	242	8	13
446	242	234	10	11
446	234	242	11	10
447	242	225	11	12
447	225	242	12	11
448	242	250	16	9
448	250	242	9	16
449	242	245	14	17
449	245	242	17	14
450	242	236	15	5
450	236	242	5	15
451	242	226	14	15
451	226	242	15	14
452	242	250	15	10
452	250	242	10	15
453	242	245	13	12
453	245	242	12	13
454	251	252	13	2
454	252	251	2	13
455	251	253	12	4
455	253	251	4	12
456	251	254	12	4
456	254	251	4	12
457	251	202	13	3
457	202	251	3	13
458	251	128	7	5
458	128	251	5	7
459	251	243	11	9
459	243	251	9	11
460	251	225	5	13
460	225	251	13	5
461	251	255	9	13
461	255	251	13	9
462	251	2	10	13
462	2	251	13	10
463	251	256	7	13
463	256	251	13	7
464	251	257	10	13
464	257	251	13	10
465	251	254	15	3
465	254	251	3	15
466	251	258	12	14
466	258	251	14	12
467	259	57	9	11
467	57	259	11	9
468	259	230	13	11
468	230	259	11	13
469	259	58	4	13
469	58	259	13	4
470	259	231	11	13
470	231	259	13	11
471	259	55	13	9
471	55	259	9	13
472	259	54	13	12
472	54	259	12	13
473	259	231	13	8
473	231	259	8	13
474	259	237	13	9
474	237	259	9	13
475	259	260	11	13
475	260	259	13	11
476	259	261	11	12
476	261	259	12	11
477	259	262	13	11
477	262	259	11	13
478	259	235	13	15
478	235	259	15	13
479	259	228	15	11
479	228	259	11	15
480	259	263	15	13
480	263	259	13	15
481	259	230	15	12
481	230	259	12	15
482	259	261	13	12
482	261	259	12	13
483	259	264	10	13
483	264	259	13	10
484	259	260	5	13
484	260	259	13	5
485	259	65	13	8
485	65	259	8	13
486	259	32	15	7
486	32	259	7	15
487	259	265	13	11
487	265	259	11	13
488	259	261	14	13
488	261	259	13	14
489	86	150	7	10
489	150	86	10	7
490	86	148	5	7
490	148	86	7	5
491	86	146	4	9
491	146	86	9	4
492	86	148	6	9
492	148	86	9	6
493	86	87	8	4
493	87	86	4	8
494	86	88	4	7
494	88	86	7	4
495	86	85	10	1
495	85	86	1	10
496	86	84	13	0
496	84	86	0	13
497	86	87	5	15
497	87	86	15	5
498	18	266	13	1
498	266	18	1	13
499	18	19	13	1
499	19	18	1	13
500	18	267	13	8
500	267	18	8	13
501	18	155	12	11
501	155	18	11	12
502	18	154	13	7
502	154	18	7	13
503	18	12	13	7
503	12	18	7	13
504	18	173	12	11
504	173	18	11	12
505	18	268	7	11
505	268	18	11	7
506	18	136	5	13
506	136	18	13	5
507	18	196	10	13
507	196	18	13	10
508	269	249	12	13
508	249	269	13	12
509	269	241	13	2
509	241	269	2	13
510	269	270	13	1
510	270	269	1	13
511	269	271	13	2
511	271	269	2	13
512	269	241	13	3
512	241	269	3	13
513	272	273	12	11
513	273	272	11	12
514	272	274	11	10
514	274	272	10	11
515	272	275	15	7
515	275	272	7	15
516	272	258	15	10
516	258	272	10	15
517	272	264	1	15
517	264	272	15	1
518	272	234	1	15
518	234	272	15	1
519	272	128	3	13
519	128	272	13	3
520	272	241	13	1
520	241	272	1	13
521	272	125	5	9
521	125	272	9	5
522	272	276	9	8
522	276	272	8	9
523	272	202	11	8
523	202	272	8	11
524	272	277	11	8
524	277	272	8	11
525	272	128	7	11
525	128	272	11	7
526	272	241	13	9
526	241	272	9	13
527	272	276	8	11
527	276	272	11	8
528	272	128	7	10
528	128	272	10	7
529	272	277	10	7
529	277	272	7	10
530	129	127	5	13
530	127	129	13	5
531	129	248	7	13
531	248	129	13	7
532	129	271	12	10
532	271	129	10	12
533	129	131	12	8
533	131	129	8	12
534	129	241	13	6
534	241	129	6	13
535	129	276	4	12
535	276	129	12	4
536	129	127	10	11
536	127	129	11	10
537	129	125	11	12
537	125	129	12	11
538	129	278	2	13
538	278	129	13	2
539	129	126	11	6
539	126	129	6	11
540	225	224	13	9
540	224	225	9	13
541	225	279	13	9
541	279	225	9	13
542	225	280	13	4
542	280	225	4	13
543	225	226	11	9
543	226	225	9	11
544	225	246	7	4
544	246	225	4	7
545	225	270	13	6
545	270	225	6	13
546	225	226	12	10
546	226	225	10	12
547	225	255	13	10
547	255	225	10	13
548	225	249	13	7
548	249	225	7	13
549	225	235	13	9
549	235	225	9	13
550	225	260	12	13
550	260	225	13	12
551	225	245	13	11
551	245	225	11	13
552	225	226	13	11
552	226	225	11	13
553	225	2	13	11
553	2	225	11	13
554	225	255	13	9
554	255	225	9	13
555	225	246	13	8
555	246	225	8	13
556	225	245	10	13
556	245	225	13	10
557	225	230	13	9
557	230	225	9	13
558	225	281	13	8
558	281	225	8	13
559	225	32	13	7
559	32	225	7	13
560	225	57	12	13
560	57	225	13	12
561	225	260	10	15
561	260	225	15	10
562	225	246	15	11
562	246	225	11	15
563	225	57	13	14
563	57	225	14	13
564	243	256	5	13
564	256	243	13	5
565	243	224	5	13
565	224	243	13	5
566	243	131	13	2
566	131	243	2	13
567	243	276	10	8
567	276	243	8	10
568	243	278	12	8
568	278	243	8	12
569	243	282	12	8
569	282	243	8	12
570	243	249	9	11
570	249	243	11	9
571	243	202	13	6
571	202	243	6	13
572	243	283	13	4
572	283	243	4	13
573	243	254	13	6
573	254	243	6	13
574	243	125	12	7
574	125	243	7	12
575	284	134	4	13
575	134	284	13	4
576	284	282	7	13
576	282	284	13	7
577	284	132	9	13
577	132	284	13	9
578	284	276	6	13
578	276	284	13	6
579	284	271	6	13
579	271	284	13	6
580	283	202	5	11
580	202	283	11	5
581	283	282	9	6
581	282	283	6	9
582	283	285	5	13
582	285	283	13	5
583	283	277	4	13
583	277	283	13	4
584	283	7	5	13
584	7	283	13	5
585	283	127	2	13
585	127	283	13	2
586	283	5	8	11
586	5	283	11	8
587	283	5	5	13
587	5	283	13	5
588	283	282	6	11
588	282	283	11	6
589	246	249	12	7
589	249	246	7	12
590	246	280	13	9
590	280	246	9	13
591	246	136	13	6
591	136	246	6	13
592	246	245	10	11
592	245	246	11	10
593	246	227	12	8
593	227	246	8	12
594	246	265	9	8
594	265	246	8	9
595	246	244	13	11
595	244	246	11	13
596	246	227	13	6
596	227	246	6	13
597	246	260	13	10
597	260	246	10	13
598	246	235	10	12
598	235	246	12	10
599	246	226	9	11
599	226	246	11	9
600	246	245	7	11
600	245	246	11	7
601	246	257	13	5
601	257	246	5	13
602	246	224	13	8
602	224	246	8	13
603	246	234	10	11
603	234	246	11	10
604	246	248	13	6
604	248	246	6	13
605	246	112	10	9
605	112	246	9	10
606	246	255	12	8
606	255	246	8	12
607	246	262	13	6
607	262	246	6	13
608	246	265	13	8
608	265	246	8	13
609	246	286	8	13
609	286	246	13	8
610	246	63	13	7
610	63	246	7	13
611	246	158	12	15
611	158	246	15	12
612	246	287	9	13
612	287	246	13	9
613	241	249	4	13
613	249	241	13	4
614	241	270	6	13
614	270	241	13	6
615	241	132	12	9
615	132	241	9	12
616	241	128	7	11
616	128	241	11	7
617	241	126	12	10
617	126	241	10	12
618	241	277	10	9
618	277	241	9	10
619	241	285	8	13
619	285	241	13	8
620	241	135	5	13
620	135	241	13	5
621	241	238	12	5
621	238	241	5	12
622	241	240	8	9
622	240	241	9	8
623	241	6	2	15
623	6	241	15	2
624	241	121	6	15
624	121	241	15	6
625	241	288	14	7
625	288	241	7	14
626	241	128	6	10
626	128	241	10	6
627	241	276	5	10
627	276	241	10	5
628	241	277	9	8
628	277	241	8	9
629	241	276	5	10
629	276	241	10	5
630	241	277	9	8
630	277	241	8	9
631	270	249	7	13
631	249	270	13	7
632	270	134	6	13
632	134	270	13	6
633	270	278	8	13
633	278	270	13	8
634	270	282	5	9
634	282	270	9	5
635	270	280	0	13
635	280	270	13	0
636	270	264	5	13
636	264	270	13	5
637	270	280	1	13
637	280	270	13	1
638	270	265	0	13
638	265	270	13	0
639	270	224	7	13
639	224	270	13	7
640	270	255	3	13
640	255	270	13	3
641	278	276	13	8
641	276	278	8	13
642	278	131	13	2
642	131	278	2	13
643	278	127	9	10
643	127	278	10	9
644	278	128	10	7
644	128	278	7	10
645	278	134	7	9
645	134	278	9	7
646	278	125	8	10
646	125	278	10	8
647	278	125	7	9
647	125	278	9	7
648	278	127	4	12
648	127	278	12	4
649	255	279	11	13
649	279	255	13	11
650	255	224	12	11
650	224	255	11	12
651	255	245	11	13
651	245	255	13	11
652	255	256	5	8
652	256	255	8	5
653	255	265	11	13
653	265	255	13	11
654	255	224	5	7
654	224	255	7	5
655	255	235	10	11
655	235	255	11	10
656	255	249	10	11
656	249	255	11	10
657	255	244	10	11
657	244	255	11	10
658	255	2	9	13
658	2	255	13	9
659	255	127	12	9
659	127	255	9	12
660	255	234	9	13
660	234	255	13	9
661	255	249	11	10
661	249	255	10	11
662	255	280	15	13
662	280	255	13	15
663	255	226	7	15
663	226	255	15	7
664	255	289	13	11
664	289	255	11	13
665	255	234	11	15
665	234	255	15	11
666	255	237	15	11
666	237	255	11	15
667	255	280	9	15
667	280	255	15	9
668	132	282	8	13
668	282	132	13	8
669	132	134	2	13
669	134	132	13	2
670	132	131	10	9
670	131	132	9	10
671	132	271	5	9
671	271	132	9	5
672	132	131	8	6
672	131	132	6	8
673	132	120	7	13
673	120	132	13	7
674	132	130	8	13
674	130	132	13	8
675	132	131	5	7
675	131	132	7	5
676	224	227	3	4
676	227	224	4	3
677	224	264	6	11
677	264	224	11	6
678	224	235	6	11
678	235	224	11	6
679	224	226	10	13
679	226	224	13	10
680	224	245	9	13
680	245	224	13	9
681	224	256	9	10
681	256	224	10	9
682	224	244	8	13
682	244	224	13	8
683	224	234	10	11
683	234	224	11	10
684	224	257	13	5
684	257	224	5	13
685	224	249	12	13
685	249	224	13	12
686	224	127	13	10
686	127	224	10	13
687	224	2	13	10
687	2	224	10	13
688	224	237	14	10
688	237	224	10	14
689	224	236	15	6
689	236	224	6	15
690	224	234	11	15
690	234	224	15	11
691	224	245	9	15
691	245	224	15	9
692	224	250	15	9
692	250	224	9	15
693	271	248	5	12
693	248	271	12	5
694	271	127	6	13
694	127	271	13	6
695	271	125	3	13
695	125	271	13	3
696	271	128	2	13
696	128	271	13	2
697	271	282	7	12
697	282	271	12	7
698	271	282	7	13
698	282	271	13	7
699	271	5	1	13
699	5	271	13	1
700	245	226	8	13
700	226	245	13	8
701	245	136	13	4
701	136	245	4	13
702	245	280	6	4
702	280	245	4	6
703	245	244	7	8
703	244	245	8	7
704	245	235	10	9
704	235	245	9	10
705	245	256	13	7
705	256	245	7	13
706	245	226	7	11
706	226	245	11	7
707	245	264	9	13
707	264	245	13	9
708	245	256	13	7
708	256	245	7	13
709	245	127	13	6
709	127	245	6	13
710	245	112	13	7
710	112	245	7	13
711	245	249	13	6
711	249	245	6	13
712	245	234	13	11
712	234	245	11	13
713	245	250	15	12
713	250	245	12	15
714	245	244	12	13
714	244	245	13	12
715	276	131	13	2
715	131	276	2	13
716	276	282	12	4
716	282	276	4	12
717	276	126	12	10
717	126	276	10	12
718	276	128	9	10
718	128	276	10	9
719	276	254	12	8
719	254	276	8	12
720	276	277	13	3
720	277	276	3	13
721	276	128	8	9
721	128	276	9	8
722	276	128	8	7
722	128	276	7	8
723	57	112	13	2
723	112	57	2	13
724	57	250	11	9
724	250	57	9	11
725	57	60	13	1
725	60	57	1	13
726	57	230	13	9
726	230	57	9	13
727	57	263	13	9
727	263	57	9	13
728	57	286	13	10
728	286	57	10	13
729	57	35	13	6
729	35	57	6	13
730	57	233	13	12
730	233	57	12	13
731	57	235	11	9
731	235	57	9	11
732	57	262	15	9
732	262	57	9	15
733	57	264	15	12
733	264	57	12	15
734	57	286	13	15
734	286	57	15	13
735	57	260	12	15
735	260	57	15	12
736	57	32	12	6
736	32	57	6	12
737	57	281	13	9
737	281	57	9	13
738	57	230	13	2
738	230	57	2	13
739	57	264	12	15
739	264	57	15	12
740	57	287	13	9
740	287	57	9	13
741	290	291	6	9
741	291	290	9	6
742	290	292	6	12
742	292	290	12	6
743	290	293	1	13
743	293	290	13	1
744	290	294	11	4
744	294	290	4	11
745	290	176	9	8
745	176	290	8	9
746	8	75	11	13
746	75	8	13	11
747	8	63	11	13
747	63	8	13	11
748	8	159	13	9
748	159	8	9	13
749	8	295	12	15
749	295	8	15	12
750	8	159	15	10
750	159	8	10	15
751	8	296	12	6
751	296	8	6	12
752	8	297	13	4
752	297	8	4	13
753	8	298	13	3
753	298	8	3	13
754	8	299	13	1
754	299	8	1	13
755	8	293	13	7
755	293	8	7	13
756	8	10	13	2
756	10	8	2	13
757	8	9	13	6
757	9	8	6	13
758	8	186	9	11
758	186	8	11	9
759	8	185	11	10
759	185	8	10	11
760	8	11	13	8
760	11	8	8	13
761	300	301	2	13
761	301	300	13	2
762	300	205	8	13
762	205	300	13	8
763	300	146	10	13
763	146	300	13	10
764	300	109	1	13
764	109	300	13	1
765	300	302	13	11
765	302	300	11	13
766	300	110	14	13
766	110	300	13	14
767	300	146	15	7
767	146	300	7	15
768	33	66	9	7
768	66	33	7	9
769	33	34	12	9
769	34	33	9	12
770	33	65	9	11
770	65	33	11	9
771	33	107	14	13
771	107	33	13	14
772	33	106	9	15
772	106	33	15	9
773	33	32	9	10
773	32	33	10	9
774	33	31	6	13
774	31	33	13	6
775	33	229	7	10
775	229	33	10	7
776	33	303	11	15
776	303	33	15	11
777	33	110	10	9
777	110	33	9	10
778	33	159	9	8
778	159	33	8	9
779	33	34	12	11
779	34	33	11	12
780	33	303	8	10
780	303	33	10	8
781	33	106	11	8
781	106	33	8	11
782	33	159	5	7
782	159	33	7	5
783	304	305	7	10
783	305	304	10	7
784	304	293	0	13
784	293	304	13	0
785	304	306	3	13
785	306	304	13	3
786	304	307	10	11
786	307	304	11	10
787	304	308	2	9
787	308	304	9	2
788	304	177	1	10
788	177	304	10	1
789	304	309	13	5
789	309	304	5	13
790	304	174	3	13
790	174	304	13	3
791	304	299	4	13
791	299	304	13	4
792	304	310	4	9
792	310	304	9	4
793	295	303	10	13
793	303	295	13	10
794	295	311	11	13
794	311	295	13	11
795	295	158	8	13
795	158	295	13	8
796	295	184	13	10
796	184	295	10	13
797	295	311	13	10
797	311	295	10	13
798	295	77	11	9
798	77	295	9	11
799	295	147	13	0
799	147	295	0	13
800	295	312	10	6
800	312	295	6	10
801	295	313	12	7
801	313	295	7	12
802	295	68	8	7
802	68	295	7	8
803	295	314	9	10
803	314	295	10	9
804	295	314	9	8
804	314	295	8	9
805	295	204	8	9
805	204	295	9	8
806	295	172	15	4
806	172	295	4	15
807	295	106	11	10
807	106	295	10	11
808	295	205	8	9
808	205	295	9	8
809	295	159	9	13
809	159	295	13	9
810	168	22	1	13
810	22	168	13	1
811	168	166	7	4
811	166	168	4	7
812	168	167	7	6
812	167	168	6	7
813	168	315	9	13
813	315	168	13	9
814	316	155	10	15
814	155	316	15	10
815	316	257	10	13
815	257	316	13	10
816	316	61	9	14
816	61	316	14	9
817	316	173	10	9
817	173	316	9	10
818	316	317	4	15
818	317	316	15	4
819	316	13	6	15
819	13	316	15	6
820	316	291	9	11
820	291	316	11	9
821	316	318	13	8
821	318	316	8	13
822	316	319	8	10
822	319	316	10	8
823	316	39	3	12
823	39	316	12	3
824	316	116	7	9
824	116	316	9	7
825	316	320	5	15
825	320	316	15	5
826	316	114	11	8
826	114	316	8	11
827	316	318	11	2
827	318	316	2	11
828	214	321	9	7
828	321	214	7	9
829	214	219	6	7
829	219	214	7	6
830	214	322	8	7
830	322	214	7	8
831	214	216	7	8
831	216	214	8	7
832	214	145	8	10
832	145	214	10	8
833	214	144	8	2
833	144	214	2	8
834	214	212	2	13
834	212	214	13	2
835	214	143	6	5
835	143	214	5	6
836	214	213	11	4
836	213	214	4	11
837	214	210	1	15
837	210	214	15	1
838	214	212	4	15
838	212	214	15	4
839	59	231	5	13
839	231	59	13	5
840	59	203	8	11
840	203	59	11	8
841	59	233	0	13
841	233	59	13	0
842	59	237	8	13
842	237	59	13	8
843	59	112	7	13
843	112	59	13	7
844	59	38	8	11
844	38	59	11	8
845	59	323	12	3
845	323	59	3	12
846	59	324	13	2
846	324	59	2	13
847	59	325	13	4
847	325	59	4	13
848	59	318	15	6
848	318	59	6	15
849	59	161	15	11
849	161	59	11	15
850	59	116	15	12
850	116	59	12	15
851	59	199	15	13
851	199	59	13	15
852	59	197	13	8
852	197	59	8	13
853	59	161	6	7
853	161	59	7	6
854	117	114	13	5
854	114	117	5	13
855	117	36	13	4
855	36	117	4	13
856	117	323	10	3
856	323	117	3	10
857	117	113	9	5
857	113	117	5	9
858	117	36	15	5
858	36	117	5	15
859	117	116	12	8
859	116	117	8	12
860	117	326	13	2
860	326	117	2	13
861	117	325	13	4
861	325	117	4	13
862	117	36	15	7
862	36	117	7	15
863	117	39	6	13
863	39	117	13	6
864	62	287	13	12
864	287	62	12	13
865	62	303	13	7
865	303	62	7	13
866	62	106	13	12
866	106	62	12	13
867	62	287	0	11
867	287	62	11	0
868	62	232	12	8
868	232	62	8	12
869	62	279	10	9
869	279	62	9	10
870	62	263	8	11
870	263	62	11	8
871	62	237	12	8
871	237	62	8	12
872	62	135	15	10
872	135	62	10	15
873	62	287	8	13
873	287	62	13	8
874	62	237	10	15
874	237	62	15	10
875	62	317	8	12
875	317	62	12	8
876	62	105	15	6
876	105	62	6	15
877	62	249	8	6
877	249	62	6	8
878	62	58	7	15
878	58	62	15	7
879	62	41	8	12
879	41	62	12	8
880	62	249	10	8
880	249	62	8	10
881	62	327	7	11
881	327	62	11	7
882	277	285	3	12
882	285	277	12	3
883	277	125	3	13
883	125	277	13	3
884	277	128	7	12
884	128	277	12	7
885	328	106	7	13
885	106	328	13	7
886	328	10	13	6
886	10	328	6	13
887	328	207	13	8
887	207	328	8	13
888	328	81	1	13
888	81	328	13	1
889	328	65	8	14
889	65	328	14	8
890	328	77	10	13
890	77	328	13	10
891	328	72	7	13
891	72	328	13	7
892	328	187	1	13
892	187	328	13	1
893	328	188	0	13
893	188	328	13	0
894	328	329	11	4
894	329	328	4	11
895	328	185	3	13
895	185	328	13	3
896	328	186	5	15
896	186	328	15	5
897	328	330	8	15
897	330	328	15	8
898	327	72	12	11
898	72	327	11	12
899	327	68	13	2
899	68	327	2	13
900	327	107	11	10
900	107	327	10	11
901	327	65	9	11
901	65	327	11	9
902	327	81	14	10
902	81	327	10	14
903	327	185	12	10
903	185	327	10	12
904	327	44	15	10
904	44	327	10	15
905	327	20	15	8
905	20	327	8	15
906	327	43	15	8
906	43	327	8	15
907	327	105	10	9
907	105	327	9	10
908	327	58	7	15
908	58	327	15	7
909	327	227	11	10
909	227	327	10	11
910	331	268	3	15
910	268	331	15	3
911	331	169	7	15
911	169	331	15	7
912	331	315	7	9
912	315	331	9	7
913	331	22	8	13
913	22	331	13	8
914	331	167	13	8
914	167	331	8	13
915	331	21	9	8
915	21	331	8	9
916	331	20	6	8
916	20	331	8	6
917	331	19	7	15
917	19	331	15	7
918	331	21	8	15
918	21	331	15	8
919	331	169	13	7
919	169	331	7	13
920	7	239	7	13
920	239	7	13	7
921	7	3	12	6
921	3	7	6	12
922	7	6	9	13
922	6	7	13	9
923	7	11	13	9
923	11	7	9	13
924	7	135	2	13
924	135	7	13	2
925	7	5	13	6
925	5	7	6	13
926	7	127	10	13
926	127	7	13	10
927	7	127	13	3
927	127	7	3	13
928	7	128	11	10
928	128	7	10	11
929	7	125	11	10
929	125	7	10	11
930	92	90	11	6
930	90	92	6	11
931	92	91	6	11
931	91	92	11	6
932	92	93	11	9
932	93	92	9	11
933	92	218	10	8
933	218	92	8	10
934	92	219	12	13
934	219	92	13	12
935	161	47	13	12
935	47	161	12	13
936	161	196	11	7
936	196	161	7	11
937	161	105	7	13
937	105	161	13	7
938	161	40	10	11
938	40	161	11	10
939	161	195	15	6
939	195	161	6	15
940	161	51	13	2
940	51	161	2	13
941	161	26	14	6
941	26	161	6	14
942	161	116	11	12
942	116	161	12	11
943	161	318	13	1
943	318	161	1	13
944	161	197	12	7
944	197	161	7	12
945	161	325	15	6
945	325	161	6	15
946	161	197	11	1
946	197	161	1	11
947	161	55	13	10
947	55	161	10	13
948	161	38	11	10
948	38	161	10	11
949	324	325	8	9
949	325	324	9	8
950	324	323	3	13
950	323	324	13	3
951	324	116	4	15
951	116	324	15	4
952	324	323	4	15
952	323	324	15	4
953	324	318	9	12
953	318	324	12	9
954	266	19	4	5
954	19	266	5	4
955	266	332	8	6
955	332	266	6	8
956	266	16	9	7
956	16	266	7	9
957	87	179	6	8
957	179	87	8	6
958	87	206	5	9
958	206	87	9	5
959	87	73	5	13
959	73	87	13	5
960	87	267	9	6
960	267	87	6	9
961	87	302	6	13
961	302	87	13	6
962	87	333	7	8
962	333	87	8	7
963	87	334	8	3
963	334	87	3	8
964	87	84	12	3
964	84	87	3	12
965	87	88	7	8
965	88	87	8	7
966	87	85	11	4
966	85	87	4	11
967	149	71	13	2
967	71	149	2	13
968	149	216	7	9
968	216	149	9	7
969	149	333	2	13
969	333	149	13	2
970	149	148	10	11
970	148	149	11	10
971	149	150	11	9
971	150	149	9	11
972	149	147	13	4
972	147	149	4	13
973	149	335	7	11
973	335	149	11	7
974	149	336	13	7
974	336	149	7	13
975	149	150	5	13
975	150	149	13	5
976	260	249	13	6
976	249	260	6	13
977	260	244	13	11
977	244	260	11	13
978	260	227	12	9
978	227	260	9	12
979	260	244	13	5
979	244	260	5	13
980	260	264	8	13
980	264	260	13	8
981	260	265	11	13
981	265	260	13	11
982	260	262	11	7
982	262	260	7	11
983	260	261	11	10
983	261	260	10	11
984	260	35	15	5
984	35	260	5	15
985	260	265	15	9
985	265	260	9	15
986	260	158	14	15
986	158	260	15	14
987	260	261	13	10
987	261	260	10	13
988	260	264	13	10
988	264	260	10	13
989	260	65	13	2
989	65	260	2	13
990	260	158	15	14
990	158	260	14	15
991	260	286	15	12
991	286	260	12	15
992	135	3	13	4
992	3	135	4	13
993	135	6	8	12
993	6	135	12	8
994	135	11	13	10
994	11	135	10	13
995	135	2	11	9
995	2	135	9	11
996	135	5	13	6
996	5	135	6	13
997	135	238	13	4
997	238	135	4	13
998	135	239	12	13
998	239	135	13	12
999	135	121	15	14
999	121	135	14	15
1000	135	6	9	15
1000	6	135	15	9
1001	135	337	13	10
1001	337	135	10	13
1002	135	30	8	5
1002	30	135	5	8
1003	135	136	4	11
1003	136	135	11	4
1004	135	189	10	8
1004	189	135	8	10
1005	135	136	11	15
1005	136	135	15	11
1006	338	6	1	13
1006	6	338	13	1
1007	338	121	0	13
1007	121	338	13	0
1008	338	337	6	13
1008	337	338	13	6
1009	338	288	7	6
1009	288	338	6	7
1010	338	239	1	15
1010	239	338	15	1
1011	338	240	9	13
1011	240	338	13	9
1012	338	238	11	10
1012	238	338	10	11
1013	239	11	10	13
1013	11	239	13	10
1014	239	6	5	13
1014	6	239	13	5
1015	239	2	7	12
1015	2	239	12	7
1016	239	4	13	6
1016	4	239	6	13
1017	239	3	13	5
1017	3	239	5	13
1018	239	240	13	5
1018	240	239	5	13
1019	239	337	14	10
1019	337	239	10	14
1020	239	6	11	13
1020	6	239	13	11
1021	239	28	13	9
1021	28	239	9	13
1022	239	296	12	11
1022	296	239	11	12
1023	239	339	13	4
1023	339	239	4	13
1024	239	340	12	8
1024	340	239	8	12
1025	239	292	10	11
1025	292	239	11	10
1026	239	257	5	7
1026	257	239	7	5
1027	288	121	0	13
1027	121	288	13	0
1028	288	6	1	13
1028	6	288	13	1
1029	288	337	1	13
1029	337	288	13	1
1030	288	238	10	12
1030	238	288	12	10
1031	227	280	8	12
1031	280	227	12	8
1032	227	249	10	11
1032	249	227	11	10
1033	227	235	9	13
1033	235	227	13	9
1034	227	244	12	6
1034	244	227	6	12
1035	227	249	9	13
1035	249	227	13	9
1036	227	256	10	9
1036	256	227	9	10
1037	227	58	7	15
1037	58	227	15	7
1038	227	231	12	10
1038	231	227	10	12
1039	227	341	10	8
1039	341	227	8	10
1040	227	317	8	12
1040	317	227	12	8
1041	227	229	9	12
1041	229	227	12	9
1042	227	249	8	9
1042	249	227	9	8
1043	240	238	10	5
1043	238	240	5	10
1044	240	337	10	15
1044	337	240	15	10
1045	240	121	1	15
1045	121	240	15	1
1046	240	342	3	15
1046	342	240	15	3
1047	240	343	14	8
1047	343	240	8	14
1048	240	344	5	15
1048	344	240	15	5
1049	240	345	12	8
1049	345	240	8	12
1050	240	346	2	15
1050	346	240	15	2
1051	240	342	4	15
1051	342	240	15	4
1052	240	344	7	9
1052	344	240	9	7
1053	124	125	12	11
1053	125	124	11	12
1054	124	123	13	3
1054	123	124	3	13
1055	124	125	13	8
1055	125	124	8	13
1056	124	39	7	13
1056	39	124	13	7
1057	124	191	13	6
1057	191	124	6	13
1058	124	55	13	6
1058	55	124	6	13
1059	124	24	13	8
1059	24	124	8	13
1060	124	140	11	10
1060	140	124	10	11
1061	124	102	13	6
1061	102	124	6	13
1062	124	344	13	3
1062	344	124	3	13
1063	124	203	13	1
1063	203	124	1	13
1064	124	232	12	15
1064	232	124	15	12
1065	124	137	15	10
1065	137	124	10	15
1066	124	42	3	13
1066	42	124	13	3
1067	209	313	11	10
1067	313	209	10	11
1068	209	347	11	7
1068	347	209	7	11
1069	209	314	11	8
1069	314	209	8	11
1070	209	348	8	13
1070	348	209	13	8
1071	209	187	9	10
1071	187	209	10	9
1072	209	208	8	5
1072	208	209	5	8
1073	209	210	6	7
1073	210	209	7	6
1074	209	81	8	9
1074	81	209	9	8
1075	209	208	9	8
1075	208	209	8	9
1076	209	183	8	11
1076	183	209	11	8
1077	209	172	12	11
1077	172	209	11	12
1078	209	333	10	11
1078	333	209	11	10
1079	209	303	10	11
1079	303	209	11	10
1080	209	204	8	15
1080	204	209	15	8
1081	209	347	12	9
1081	347	209	9	12
1082	209	68	12	7
1082	68	209	7	12
1083	209	348	7	5
1083	348	209	5	7
1084	348	349	11	5
1084	349	348	5	11
1085	348	109	11	10
1085	109	348	10	11
1086	348	207	9	8
1086	207	348	8	9
1087	348	212	11	8
1087	212	348	8	11
1088	348	189	7	10
1088	189	348	10	7
1089	348	81	7	9
1089	81	348	9	7
1090	348	183	7	6
1090	183	348	6	7
1091	348	210	8	5
1091	210	348	5	8
1092	348	189	8	12
1092	189	348	12	8
1093	348	81	4	7
1093	81	348	7	4
1094	348	159	9	11
1094	159	348	11	9
1095	348	109	8	12
1095	109	348	12	8
1096	348	198	12	5
1096	198	348	5	12
1097	348	106	6	11
1097	106	348	11	6
1098	348	312	11	10
1098	312	348	10	11
1099	348	314	9	7
1099	314	348	7	9
1100	143	145	14	4
1100	145	143	4	14
1101	143	144	15	5
1101	144	143	5	15
1102	143	150	7	8
1102	150	143	8	7
1103	143	213	8	5
1103	213	143	5	8
1104	143	212	4	11
1104	212	143	11	4
1105	143	215	11	6
1105	215	143	6	11
1106	143	350	11	8
1106	350	143	8	11
1107	218	267	6	8
1107	267	218	8	6
1108	218	351	8	10
1108	351	218	10	8
1109	218	151	7	9
1109	151	218	9	7
1110	218	352	7	3
1110	352	218	3	7
1111	218	151	5	11
1111	151	218	11	5
1112	218	95	8	9
1112	95	218	9	8
1113	218	88	3	13
1113	88	218	13	3
1114	218	219	7	10
1114	219	218	10	7
1115	218	217	9	3
1115	217	218	3	9
1116	218	91	11	10
1116	91	218	10	11
1117	218	90	14	5
1117	90	218	5	14
1118	204	231	10	9
1118	231	204	9	10
1119	204	55	9	5
1119	55	204	5	9
1120	204	56	8	11
1120	56	204	11	8
1121	204	58	7	13
1121	58	204	13	7
1122	204	250	9	13
1122	250	204	13	9
1123	204	60	13	9
1123	60	204	9	13
1124	204	38	10	9
1124	38	204	9	10
1125	204	112	7	13
1125	112	204	13	7
1126	204	206	11	7
1126	206	204	7	11
1127	204	336	10	1
1127	336	204	1	10
1128	204	111	13	2
1128	111	204	2	13
1129	204	77	13	7
1129	77	204	7	13
1130	204	314	8	9
1130	314	204	9	8
1131	204	68	13	5
1131	68	204	5	13
1132	204	303	10	11
1132	303	204	11	10
1133	204	106	14	11
1133	106	204	11	14
1134	204	303	8	10
1134	303	204	10	8
1135	204	109	10	5
1135	109	204	5	10
1136	145	144	15	3
1136	144	145	3	15
1137	145	322	9	3
1137	322	145	3	9
1138	145	321	3	13
1138	321	145	13	3
1139	145	312	2	13
1139	312	145	13	2
1140	145	267	9	11
1140	267	145	11	9
1141	145	353	13	5
1141	353	145	5	13
1142	145	69	7	13
1142	69	145	13	7
1143	145	353	13	1
1143	353	145	1	13
1144	145	312	2	15
1144	312	145	15	2
1145	145	69	7	4
1145	69	145	4	7
1146	145	354	13	4
1146	354	145	4	13
1147	145	144	10	5
1147	144	145	5	10
1148	145	152	3	7
1148	152	145	7	3
1149	145	352	5	9
1149	352	145	9	5
1150	145	351	11	10
1150	351	145	10	11
1151	145	355	10	9
1151	355	145	9	10
1152	145	352	9	11
1152	352	145	11	9
1153	100	137	1	13
1153	137	100	13	1
1154	100	346	4	13
1154	346	100	13	4
1155	100	344	7	12
1155	344	100	12	7
1156	100	44	2	13
1156	44	100	13	2
1157	100	26	5	10
1157	26	100	10	5
1158	100	343	7	11
1158	343	100	11	7
1159	100	342	4	11
1159	342	100	11	4
1160	100	98	9	13
1160	98	100	13	9
1161	100	97	4	13
1161	97	100	13	4
1162	100	99	3	13
1162	99	100	13	3
1163	100	102	8	11
1163	102	100	11	8
1164	100	101	8	4
1164	101	100	4	8
1165	107	68	13	3
1165	68	107	3	13
1166	107	72	13	4
1166	72	107	4	13
1167	107	77	15	4
1167	77	107	4	15
1168	107	185	10	11
1168	185	107	11	10
1169	107	81	13	10
1169	81	107	10	13
1170	107	105	11	12
1170	105	107	12	11
1171	107	63	9	12
1171	63	107	12	9
1172	107	106	8	13
1172	106	107	13	8
1173	107	311	14	15
1173	311	107	15	14
1174	107	104	15	7
1174	104	107	7	15
1175	107	287	5	13
1175	287	107	13	5
1176	107	189	7	13
1176	189	107	13	7
1177	107	237	7	8
1177	237	107	8	7
1178	107	136	6	8
1178	136	107	8	6
1179	107	189	15	14
1179	189	107	14	15
1180	107	232	9	8
1180	232	107	8	9
1181	356	357	8	13
1181	357	356	13	8
1182	356	69	6	13
1182	69	356	13	6
1183	356	351	8	2
1183	351	356	2	8
1184	356	358	3	13
1184	358	356	13	3
1185	356	95	3	8
1185	95	356	8	3
1186	356	148	3	13
1186	148	356	13	3
1187	356	351	15	7
1187	351	356	7	15
1188	317	17	6	0
1188	17	317	0	6
1189	317	9	9	5
1189	9	317	5	9
1190	317	111	11	4
1190	111	317	4	11
1191	317	13	13	6
1191	13	317	6	13
1192	317	41	13	6
1192	41	317	6	13
1193	317	359	15	5
1193	359	317	5	15
1194	317	257	15	9
1194	257	317	9	15
1195	317	61	11	12
1195	61	317	12	11
1196	317	249	14	6
1196	249	317	6	14
1197	317	105	14	7
1197	105	317	7	14
1198	317	249	13	6
1198	249	317	6	13
1199	317	41	15	7
1199	41	317	7	15
1200	317	58	9	5
1200	58	317	5	9
1201	330	319	13	4
1201	319	330	4	13
1202	330	360	13	3
1202	360	330	3	13
1203	330	172	7	8
1203	172	330	8	7
1204	330	184	9	13
1204	184	330	13	9
1205	330	172	11	8
1205	172	330	8	11
1206	330	185	7	13
1206	185	330	13	7
1207	330	11	7	10
1207	11	330	10	7
1208	330	76	11	10
1208	76	330	10	11
1209	330	9	10	13
1209	9	330	13	10
1210	330	13	11	10
1210	13	330	10	11
1211	330	12	10	9
1211	12	330	9	10
1212	330	306	10	9
1212	306	330	9	10
1213	330	186	6	13
1213	186	330	13	6
1214	330	6	3	13
1214	6	330	13	3
1215	330	76	8	12
1215	76	330	12	8
1216	330	329	13	2
1216	329	330	2	13
1217	330	73	15	6
1217	73	330	6	15
1218	268	315	15	6
1218	315	268	6	15
1219	268	169	15	4
1219	169	268	4	15
1220	268	166	15	2
1220	166	268	2	15
1221	268	169	15	2
1221	169	268	2	15
1222	268	22	14	10
1222	22	268	10	14
1223	268	136	11	12
1223	136	268	12	11
1224	268	173	9	10
1224	173	268	10	9
1225	268	155	8	11
1225	155	268	11	8
1226	268	173	7	10
1226	173	268	10	7
1227	268	196	9	10
1227	196	268	10	9
1228	268	155	7	6
1228	155	268	6	7
1229	166	167	7	6
1229	167	166	6	7
1230	166	22	2	13
1230	22	166	13	2
1231	166	167	12	9
1231	167	166	9	12
1232	333	150	8	9
1232	150	333	9	8
1233	333	352	10	3
1233	352	333	3	10
1234	333	302	9	11
1234	302	333	11	9
1235	333	355	10	6
1235	355	333	6	10
1236	333	73	8	13
1236	73	333	13	8
1237	333	179	11	5
1237	179	333	5	11
1238	333	216	13	6
1238	216	333	6	13
1239	333	71	13	6
1239	71	333	6	13
1240	333	216	13	4
1240	216	333	4	13
1241	333	303	6	14
1241	303	333	14	6
1242	333	159	5	13
1242	159	333	13	5
1243	333	198	11	7
1243	198	333	7	11
1244	333	110	7	9
1244	110	333	9	7
1245	333	207	9	11
1245	207	333	11	9
1246	333	172	5	9
1246	172	333	9	5
1247	361	151	7	8
1247	151	361	8	7
1248	361	334	6	9
1248	334	361	9	6
1249	361	355	5	13
1249	355	361	13	5
1250	361	358	13	3
1250	358	361	3	13
1251	361	352	7	9
1251	352	361	9	7
1252	362	332	1	13
1252	332	362	13	1
1253	362	155	1	13
1253	155	362	13	1
1254	362	267	0	13
1254	267	362	13	0
1255	362	16	5	10
1255	16	362	10	5
1256	362	15	7	11
1256	15	362	11	7
1257	121	120	17	5
1257	120	121	5	17
1258	121	238	13	2
1258	238	121	2	13
1259	121	125	7	11
1259	125	121	11	7
1260	121	116	9	6
1260	116	121	6	9
1261	121	155	7	4
1261	155	121	4	7
1262	121	363	9	3
1262	363	121	3	9
1263	121	184	1	11
1263	184	121	11	1
1264	121	172	12	11
1264	172	121	11	12
1265	121	184	4	9
1265	184	121	9	4
1266	121	6	4	13
1266	6	121	13	4
1267	121	337	7	8
1267	337	121	8	7
1268	238	125	2	13
1268	125	238	13	2
1269	238	123	6	12
1269	123	238	12	6
1270	238	120	2	13
1270	120	238	13	2
1271	339	176	12	9
1271	176	339	9	12
1272	339	364	4	13
1272	364	339	13	4
1273	339	297	5	10
1273	297	339	10	5
1274	339	43	4	13
1274	43	339	13	4
1275	339	291	9	7
1275	291	339	7	9
1276	339	297	1	13
1276	297	339	13	1
1277	339	310	14	4
1277	310	339	4	14
1278	339	365	13	12
1278	365	339	12	13
1279	339	199	10	11
1279	199	339	11	10
1280	73	206	8	9
1280	206	73	9	8
1281	73	179	9	7
1281	179	73	7	9
1282	73	302	13	10
1282	302	73	10	13
1283	73	206	15	14
1283	206	73	14	15
1284	73	66	8	9
1284	66	73	9	8
1285	73	74	15	2
1285	74	73	2	15
1286	73	75	7	11
1286	75	73	11	7
1287	73	313	12	14
1287	313	73	14	12
1288	73	81	12	14
1288	81	73	14	12
1289	73	189	3	13
1289	189	73	13	3
1290	73	185	5	13
1290	185	73	13	5
1291	73	184	1	13
1291	184	73	13	1
1292	73	188	2	9
1292	188	73	9	2
1293	73	76	8	15
1293	76	73	15	8
1294	267	151	8	6
1294	151	267	6	8
1295	267	351	12	4
1295	351	267	4	12
1296	267	358	11	2
1296	358	267	2	11
1297	267	351	10	5
1297	351	267	5	10
1298	267	151	7	4
1298	151	267	4	7
1299	267	155	6	8
1299	155	267	8	6
1300	267	332	8	3
1300	332	267	3	8
1301	267	17	8	9
1301	17	267	9	8
1302	267	69	11	9
1302	69	267	9	11
1303	267	312	2	13
1303	312	267	13	2
1304	267	353	13	4
1304	353	267	4	13
1305	267	69	12	7
1305	69	267	7	12
1306	267	312	7	13
1306	312	267	13	7
1307	311	158	7	13
1307	158	311	13	7
1308	311	303	8	13
1308	303	311	13	8
1309	311	104	13	11
1309	104	311	11	13
1310	311	159	12	11
1310	159	311	11	12
1311	311	103	11	10
1311	103	311	10	11
1312	311	54	8	13
1312	54	311	13	8
1313	311	289	8	13
1313	289	311	13	8
1314	311	108	13	5
1314	108	311	5	13
1315	311	159	15	10
1315	159	311	10	15
1316	311	63	8	13
1316	63	311	13	8
1317	311	366	15	7
1317	366	311	7	15
1318	311	208	10	7
1318	208	311	7	10
1319	311	111	7	14
1319	111	311	14	7
1320	311	72	12	11
1320	72	311	11	12
1321	311	112	11	15
1321	112	311	15	11
1322	311	81	15	11
1322	81	311	11	15
1323	311	313	8	11
1323	313	311	11	8
1324	66	34	7	13
1324	34	66	13	7
1325	66	65	6	11
1325	65	66	11	6
1326	66	10	15	4
1326	10	66	4	15
1327	66	207	8	13
1327	207	66	13	8
1328	66	70	11	4
1328	70	66	4	11
1329	66	69	13	2
1329	69	66	2	13
1330	66	67	9	8
1330	67	66	8	9
1331	66	68	10	9
1331	68	66	9	10
1332	66	72	10	12
1332	72	66	12	10
1333	66	75	6	12
1333	75	66	12	6
1334	66	74	15	0
1334	74	66	0	15
1335	66	60	14	13
1335	60	66	13	14
1336	66	72	10	9
1336	72	66	9	10
1337	66	77	9	15
1337	77	66	15	9
1338	66	320	8	7
1338	320	66	7	8
1339	66	36	12	8
1339	36	66	8	12
1340	66	35	7	13
1340	35	66	13	7
1341	66	113	10	4
1341	113	66	4	10
1342	66	39	11	12
1342	39	66	12	11
1343	66	36	8	11
1343	36	66	11	8
1344	66	116	5	11
1344	116	66	11	5
1345	325	323	9	12
1345	323	325	12	9
1346	325	318	15	10
1346	318	325	10	15
1347	325	323	10	15
1347	323	325	15	10
1348	325	326	13	4
1348	326	325	4	13
1349	325	116	8	13
1349	116	325	13	8
1350	325	319	15	11
1350	319	325	11	15
1351	325	35	0	15
1351	35	325	15	0
1352	325	116	13	11
1352	116	325	11	13
1353	325	36	13	15
1353	36	325	15	13
1354	171	172	9	15
1354	172	171	15	9
1355	171	170	12	5
1355	170	171	5	12
1356	171	13	6	10
1356	13	171	10	6
1357	171	360	8	15
1357	360	171	15	8
1358	171	155	3	15
1358	155	171	15	3
1359	171	154	13	10
1359	154	171	10	13
1360	171	360	9	8
1360	360	171	8	9
1361	171	367	8	3
1361	367	171	3	8
1362	171	170	13	4
1362	170	171	4	13
1363	184	104	13	10
1363	104	184	10	13
1364	184	289	12	13
1364	289	184	13	12
1365	184	281	9	13
1365	281	184	13	9
1366	184	103	13	8
1366	103	184	8	13
1367	184	104	14	11
1367	104	184	11	14
1368	184	363	11	2
1368	363	184	2	11
1369	184	155	10	4
1369	155	184	4	10
1370	184	116	11	0
1370	116	184	0	11
1371	184	12	13	4
1371	12	184	4	13
1372	184	222	13	5
1372	222	184	5	13
1373	184	11	13	3
1373	11	184	3	13
1374	184	188	9	10
1374	188	184	10	9
1375	184	222	12	8
1375	222	184	8	12
1376	184	183	11	13
1376	183	184	13	11
1377	184	76	13	6
1377	76	184	6	13
1378	184	189	14	10
1378	189	184	10	14
1379	184	187	13	12
1379	187	184	12	13
1380	184	183	15	13
1380	183	184	13	15
1381	115	36	7	10
1381	36	115	10	7
1382	115	114	13	6
1382	114	115	6	13
1383	115	113	11	6
1383	113	115	6	11
1384	115	318	15	4
1384	318	115	4	15
1385	115	113	7	13
1385	113	115	13	7
1386	231	203	10	6
1386	203	231	6	10
1387	231	232	12	11
1387	232	231	11	12
1388	231	228	11	13
1388	228	231	13	11
1389	231	109	12	8
1389	109	231	8	12
1390	231	104	13	6
1390	104	231	6	13
1391	231	159	12	7
1391	159	231	7	12
1392	231	32	11	6
1392	32	231	6	11
1393	231	289	13	15
1393	289	231	15	13
1394	231	105	14	10
1394	105	231	10	14
1395	231	31	13	15
1395	31	231	15	13
1396	231	341	10	14
1396	341	231	14	10
1397	231	58	8	11
1397	58	231	11	8
1398	231	41	10	14
1398	41	231	14	10
1399	231	43	11	8
1399	43	231	8	11
1400	231	203	13	11
1400	203	231	11	13
1401	231	105	11	4
1401	105	231	4	11
1402	38	263	7	12
1402	263	38	12	7
1403	38	56	8	11
1403	56	38	11	8
1404	38	286	3	13
1404	286	38	13	3
1405	38	112	10	11
1405	112	38	11	10
1406	38	232	8	12
1406	232	38	12	8
1407	38	203	12	10
1407	203	38	10	12
1408	38	46	13	6
1408	46	38	6	13
1409	38	60	10	7
1409	60	38	7	10
1410	38	24	14	9
1410	24	38	9	14
1411	38	197	12	9
1411	197	38	9	12
1412	60	250	4	13
1412	250	60	13	4
1413	60	261	5	13
1413	261	60	13	5
1414	60	58	2	13
1414	58	60	13	2
1415	60	54	1	13
1415	54	60	13	1
1416	60	55	9	12
1416	55	60	12	9
1417	60	24	10	9
1417	24	60	9	10
1418	60	203	12	11
1418	203	60	11	12
1419	60	198	15	11
1419	198	60	11	15
1420	60	197	9	10
1420	197	60	10	9
1421	60	24	11	10
1421	24	60	10	11
1422	60	76	15	11
1422	76	60	11	15
1423	60	81	8	9
1423	81	60	9	8
1424	60	319	15	4
1424	319	60	4	15
1425	60	76	13	8
1425	76	60	8	13
1426	368	163	11	5
1426	163	368	5	11
1427	368	46	11	6
1427	46	368	6	11
1428	368	49	11	0
1428	49	368	0	11
1429	368	369	11	2
1429	369	368	2	11
1430	163	49	13	6
1430	49	163	6	13
1431	163	50	3	13
1431	50	163	13	3
1432	163	50	3	13
1432	50	163	13	3
1433	163	49	8	1
1433	49	163	1	8
1434	163	217	6	4
1434	217	163	4	6
1435	163	46	7	6
1435	46	163	6	7
1436	163	369	7	6
1436	369	163	6	7
1437	188	306	12	11
1437	306	188	11	12
1438	188	186	13	3
1438	186	188	3	13
1439	188	13	12	8
1439	13	188	8	12
1440	188	9	13	9
1440	9	188	9	13
1441	188	186	13	10
1441	186	188	10	13
1442	188	329	13	0
1442	329	188	0	13
1443	188	187	9	10
1443	187	188	10	9
1444	188	183	12	15
1444	183	188	15	12
1445	188	185	12	11
1445	185	188	11	12
1446	72	68	9	8
1446	68	72	8	9
1447	72	185	10	11
1447	185	72	11	10
1448	72	34	8	14
1448	34	72	14	8
1449	72	71	12	7
1449	71	72	7	12
1450	72	67	9	6
1450	67	72	6	9
1451	72	68	9	7
1451	68	72	7	9
1452	72	69	10	9
1452	69	72	9	10
1453	72	111	8	10
1453	111	72	10	8
1454	72	208	11	9
1454	208	72	9	11
1455	72	366	11	7
1455	366	72	7	11
1456	72	319	15	5
1456	319	72	5	15
1457	70	69	11	9
1457	69	70	9	11
1458	70	68	7	10
1458	68	70	10	7
1459	70	67	10	8
1459	67	70	8	10
1460	70	71	8	3
1460	71	70	3	8
1461	70	77	4	15
1461	77	70	15	4
1462	70	313	4	13
1462	313	70	13	4
1463	70	319	6	9
1463	319	70	9	6
1464	70	112	4	15
1464	112	70	15	4
1465	70	366	15	7
1465	366	70	7	15
1466	74	80	5	8
1466	80	74	8	5
1467	74	79	11	9
1467	79	74	9	11
1468	74	80	13	7
1468	80	74	7	13
1469	74	75	1	15
1469	75	74	15	1
1470	74	366	5	15
1470	366	74	15	5
1471	74	370	10	8
1471	370	74	8	10
1472	74	371	5	10
1472	371	74	10	5
1473	74	17	5	13
1473	17	74	13	5
1474	74	16	11	7
1474	16	74	7	11
1475	74	372	9	10
1475	372	74	10	9
1476	74	17	5	15
1476	17	74	15	5
1477	104	281	7	12
1477	281	104	12	7
1478	104	289	12	13
1478	289	104	13	12
1479	104	159	10	13
1479	159	104	13	10
1480	104	32	9	13
1480	32	104	13	9
1481	104	109	11	4
1481	109	104	4	11
1482	104	103	15	12
1482	103	104	12	15
1483	104	63	10	14
1483	63	104	14	10
1484	104	106	9	10
1484	106	104	10	9
1485	104	349	15	3
1485	349	104	3	15
1486	104	207	13	5
1486	207	104	5	13
1487	104	347	13	6
1487	347	104	6	13
1488	104	172	15	7
1488	172	104	7	15
1489	80	79	11	8
1489	79	80	8	11
1490	261	237	12	9
1490	237	261	9	12
1491	261	286	11	10
1491	286	261	10	11
1492	261	263	9	12
1492	263	261	12	9
1493	261	250	13	10
1493	250	261	10	13
1494	261	263	10	13
1494	263	261	13	10
1495	261	230	13	11
1495	230	261	11	13
1496	261	262	13	12
1496	262	261	12	13
1497	261	233	8	15
1497	233	261	15	8
1498	261	230	10	15
1498	230	261	15	10
1499	261	281	13	14
1499	281	261	14	13
1500	261	35	15	4
1500	35	261	4	15
1501	261	65	13	8
1501	65	261	8	13
1502	261	264	9	10
1502	264	261	10	9
1503	261	281	15	11
1503	281	261	11	15
1504	261	262	10	9
1504	262	261	9	10
1505	114	323	6	10
1505	323	114	10	6
1506	114	113	5	8
1506	113	114	8	5
1507	114	36	4	12
1507	36	114	12	4
1508	114	36	6	13
1508	36	114	13	6
1509	114	113	6	13
1509	113	114	13	6
1510	114	319	9	14
1510	319	114	14	9
1511	114	326	9	7
1511	326	114	7	9
1512	36	138	10	11
1512	138	36	11	10
1513	36	46	9	7
1513	46	36	7	9
1514	36	139	11	8
1514	139	36	8	11
1515	36	323	5	12
1515	323	36	12	5
1516	36	113	8	10
1516	113	36	10	8
1517	36	35	3	13
1517	35	36	13	3
1518	36	320	10	9
1518	320	36	9	10
1519	197	318	13	5
1519	318	197	5	13
1520	197	116	9	12
1520	116	197	12	9
1521	197	323	12	10
1521	323	197	10	12
1522	197	116	10	15
1522	116	197	15	10
1523	281	289	10	13
1523	289	281	13	10
1524	281	158	15	14
1524	158	281	14	15
1525	281	63	15	13
1525	63	281	13	15
1526	281	31	15	11
1526	31	281	11	15
1527	281	263	13	11
1527	263	281	11	13
1528	281	286	9	11
1528	286	281	11	9
1529	281	228	12	13
1529	228	281	13	12
1530	281	264	9	15
1530	264	281	15	9
1531	281	262	10	14
1531	262	281	14	10
1532	281	228	15	13
1532	228	281	13	15
1533	281	230	13	11
1533	230	281	11	13
1534	281	32	11	7
1534	32	281	7	11
1535	281	228	15	11
1535	228	281	11	15
1536	281	32	10	9
1536	32	281	9	10
1537	323	113	8	6
1537	113	323	6	8
1538	323	113	9	5
1538	113	323	5	9
1539	113	326	11	4
1539	326	113	4	11
1540	113	320	7	10
1540	320	113	10	7
1541	236	273	13	11
1541	273	236	11	13
1542	236	274	13	8
1542	274	236	8	13
1543	236	254	15	10
1543	254	236	10	15
1544	236	274	15	8
1544	274	236	8	15
1545	236	237	11	15
1545	237	236	15	11
1546	236	280	8	15
1546	280	236	15	8
1547	236	256	5	15
1547	256	236	15	5
1548	236	237	3	11
1548	237	236	11	3
1549	367	373	11	7
1549	373	367	7	11
1550	367	177	7	8
1550	177	367	8	7
1551	367	346	2	13
1551	346	367	13	2
1552	367	374	4	7
1552	374	367	7	4
1553	367	373	7	3
1553	373	367	3	7
1554	367	170	12	6
1554	170	367	6	12
1555	367	375	9	7
1555	375	367	7	9
1556	367	154	6	8
1556	154	367	8	6
1557	134	282	13	7
1557	282	134	7	13
1558	134	127	13	5
1558	127	134	5	13
1559	134	249	3	13
1559	249	134	13	3
1560	134	128	12	7
1560	128	134	7	12
1561	134	126	13	4
1561	126	134	4	13
1562	134	127	12	11
1562	127	134	11	12
1563	134	125	8	7
1563	125	134	7	8
1564	123	125	6	13
1564	125	123	13	6
1565	173	174	14	10
1565	174	173	10	14
1566	173	360	12	6
1566	360	173	6	12
1567	173	291	9	5
1567	291	173	5	9
1568	173	360	12	9
1568	360	173	9	12
1569	173	359	13	11
1569	359	173	11	13
1570	173	136	8	10
1570	136	173	10	8
1571	173	21	13	7
1571	21	173	7	13
1572	173	136	8	13
1572	136	173	13	8
1573	173	156	8	7
1573	156	173	7	8
1574	340	26	9	5
1574	26	340	5	9
1575	340	192	11	2
1575	192	340	2	11
1576	340	342	10	8
1576	342	340	8	10
1577	340	376	9	8
1577	376	340	8	9
1578	340	44	4	9
1578	44	340	9	4
1579	340	137	8	9
1579	137	340	9	8
1580	340	377	13	9
1580	377	340	9	13
1581	340	257	8	13
1581	257	340	13	8
1582	340	199	13	7
1582	199	340	7	13
1583	340	297	7	6
1583	297	340	6	7
1584	340	376	11	3
1584	376	340	3	11
1585	378	299	0	13
1585	299	378	13	0
1586	378	379	0	13
1586	379	378	13	0
1587	378	309	8	9
1587	309	378	9	8
1588	26	27	13	9
1588	27	26	9	13
1589	26	24	0	13
1589	24	26	13	0
1590	26	28	6	13
1590	28	26	13	6
1591	26	46	6	15
1591	46	26	15	6
1592	26	27	6	0
1592	27	26	0	6
1593	26	40	7	13
1593	40	26	13	7
1594	26	30	3	15
1594	30	26	15	3
1595	26	156	5	13
1595	156	26	13	5
1596	26	51	15	5
1596	51	26	5	15
1597	26	47	3	15
1597	47	26	15	3
1598	26	342	3	9
1598	342	26	9	3
1599	26	192	7	8
1599	192	26	8	7
1600	26	380	7	12
1600	380	26	12	7
1601	26	343	7	10
1601	343	26	10	7
1602	26	42	4	13
1602	42	26	13	4
1603	26	139	9	8
1603	139	26	8	9
1604	26	138	9	8
1604	138	26	8	9
1605	26	381	12	15
1605	381	26	15	12
1606	26	99	15	13
1606	99	26	13	15
1607	198	217	13	2
1607	217	198	2	13
1608	198	382	13	1
1608	382	198	1	13
1609	198	179	6	7
1609	179	198	7	6
1610	198	95	8	5
1610	95	198	5	8
1611	198	199	12	10
1611	199	198	10	12
1612	198	207	7	10
1612	207	198	10	7
1613	198	347	8	7
1613	347	198	7	8
1614	198	68	7	14
1614	68	198	14	7
1615	198	347	8	11
1615	347	198	11	8
1616	198	349	15	4
1616	349	198	4	15
1617	217	179	1	13
1617	179	217	13	1
1618	217	95	5	7
1618	95	217	7	5
1619	217	382	8	6
1619	382	217	6	8
1620	217	46	2	11
1620	46	217	11	2
1621	217	369	8	9
1621	369	217	9	8
1622	217	49	7	6
1622	49	217	6	7
1623	217	95	8	10
1623	95	217	10	8
1624	217	88	2	13
1624	88	217	13	2
1625	217	219	4	8
1625	219	217	8	4
1626	217	90	10	12
1626	90	217	12	10
1627	217	91	7	0
1627	91	217	0	7
1628	150	302	5	12
1628	302	150	12	5
1629	150	352	13	3
1629	352	150	3	13
1630	150	179	10	8
1630	179	150	8	10
1631	150	206	8	12
1631	206	150	12	8
1632	150	302	9	5
1632	302	150	5	9
1633	150	148	8	7
1633	148	150	7	8
1634	150	146	4	9
1634	146	150	9	4
1635	150	216	8	10
1635	216	150	10	8
1636	150	147	13	6
1636	147	150	6	13
1637	150	148	8	10
1637	148	150	10	8
1638	150	152	1	0
1638	152	150	0	1
1639	150	302	7	13
1639	302	150	13	7
1640	150	151	12	7
1640	151	150	7	12
1641	154	12	9	7
1641	12	154	7	9
1642	154	360	13	6
1642	360	154	6	13
1643	154	383	9	8
1643	383	154	8	9
1644	352	302	1	13
1644	302	352	13	1
1645	352	334	7	13
1645	334	352	13	7
1646	352	355	6	9
1646	355	352	9	6
1647	352	152	2	13
1647	152	352	13	2
1648	352	144	6	7
1648	144	352	7	6
1649	352	354	12	2
1649	354	352	2	12
1650	352	353	13	1
1650	353	352	1	13
1651	352	384	13	2
1651	384	352	2	13
1652	136	279	12	9
1652	279	136	9	12
1653	136	244	5	11
1653	244	136	11	5
1654	136	30	11	10
1654	30	136	10	11
1655	136	287	11	14
1655	287	136	14	11
1656	136	279	9	14
1656	279	136	14	9
1657	136	196	9	7
1657	196	136	7	9
1658	28	27	13	1
1658	27	28	1	13
1659	28	24	5	13
1659	24	28	13	5
1660	28	30	5	15
1660	30	28	15	5
1661	28	43	5	9
1661	43	28	9	5
1662	28	294	10	3
1662	294	28	3	10
1663	28	381	4	13
1663	381	28	13	4
1664	28	364	5	13
1664	364	28	13	5
1665	28	377	10	12
1665	377	28	12	10
1666	28	385	12	8
1666	385	28	8	12
1667	28	363	12	7
1667	363	28	7	12
1668	28	296	7	13
1668	296	28	13	7
1669	28	297	7	13
1669	297	28	13	7
1670	28	379	6	13
1670	379	28	13	6
1671	28	174	12	9
1671	174	28	9	12
1672	363	116	6	9
1672	116	363	9	6
1673	363	155	5	10
1673	155	363	10	5
1674	363	360	9	6
1674	360	363	6	9
1675	363	319	5	7
1675	319	363	7	5
1676	363	385	12	7
1676	385	363	7	12
1677	363	42	3	13
1677	42	363	13	3
1678	363	298	3	10
1678	298	363	10	3
1679	363	386	1	13
1679	386	363	13	1
1680	363	297	5	12
1680	297	363	12	5
1681	363	291	13	6
1681	291	363	6	13
1682	363	177	4	6
1682	177	363	6	4
1683	363	387	9	7
1683	387	363	7	9
1684	363	169	9	5
1684	169	363	5	9
1685	363	156	4	13
1685	156	363	13	4
1686	363	15	9	4
1686	15	363	4	9
1687	363	178	8	7
1687	178	363	7	8
1688	363	21	7	6
1688	21	363	6	7
1689	388	169	3	13
1689	169	388	13	3
1690	388	15	1	10
1690	15	388	10	1
1691	388	387	6	7
1691	387	388	7	6
1692	388	169	0	0
1692	169	388	0	0
1693	305	306	3	13
1693	306	305	13	3
1694	305	307	8	13
1694	307	305	13	8
1695	305	293	1	13
1695	293	305	13	1
1696	305	177	5	9
1696	177	305	9	5
1697	305	389	7	6
1697	389	305	6	7
1698	105	43	13	11
1698	43	105	11	13
1699	105	47	12	9
1699	47	105	9	12
1700	105	108	15	10
1700	108	105	10	15
1701	105	156	15	8
1701	156	105	8	15
1702	105	43	15	7
1702	43	105	7	15
1703	105	106	10	8
1703	106	105	8	10
1704	105	63	11	9
1704	63	105	9	11
1705	105	65	12	13
1705	65	105	13	12
1706	105	54	7	15
1706	54	105	15	7
1707	105	249	11	14
1707	249	105	14	11
1708	105	42	13	11
1708	42	105	11	13
1709	105	103	11	10
1709	103	105	10	11
1710	381	294	13	2
1710	294	381	2	13
1711	381	43	6	9
1711	43	381	9	6
1712	381	296	10	8
1712	296	381	8	10
1713	381	293	10	9
1713	293	381	9	10
1714	381	364	10	9
1714	364	381	9	10
1715	381	386	6	12
1715	386	381	12	6
1716	381	386	10	11
1716	386	381	11	10
1717	381	203	9	7
1717	203	381	7	9
1718	381	341	4	11
1718	341	381	11	4
1719	381	42	7	13
1719	42	381	13	7
1720	381	203	15	13
1720	203	381	13	15
1721	381	30	15	6
1721	30	381	6	15
1722	381	390	13	5
1722	390	381	5	13
1723	381	297	13	9
1723	297	381	9	13
1724	381	389	13	8
1724	389	381	8	13
1725	381	376	13	9
1725	376	381	9	13
1726	381	257	11	8
1726	257	381	8	11
1727	381	292	13	6
1727	292	381	6	13
1728	42	298	13	10
1728	298	42	10	13
1729	42	385	13	2
1729	385	42	2	13
1730	42	377	13	10
1730	377	42	10	13
1731	42	364	9	10
1731	364	42	10	9
1732	42	293	6	9
1732	293	42	9	6
1733	42	298	11	5
1733	298	42	5	11
1734	42	138	13	0
1734	138	42	0	13
1735	42	137	13	8
1735	137	42	8	13
1736	42	189	12	15
1736	189	42	15	12
1737	42	41	9	15
1737	41	42	15	9
1738	42	40	14	6
1738	40	42	6	14
1739	42	44	14	13
1739	44	42	13	14
1740	42	293	6	13
1740	293	42	13	6
1741	42	341	0	0
1741	341	42	0	0
1742	309	174	2	13
1742	174	309	13	2
1743	309	385	1	11
1743	385	309	11	1
1744	309	391	8	13
1744	391	309	13	8
1745	310	365	4	13
1745	365	310	13	4
1746	310	391	13	8
1746	391	310	8	13
1747	310	365	4	9
1747	365	310	9	4
1748	310	299	3	12
1748	299	310	12	3
1749	302	110	4	13
1749	110	302	13	4
1750	302	187	7	11
1750	187	302	11	7
1751	302	222	7	13
1751	222	302	13	7
1752	302	215	13	2
1752	215	302	2	13
1753	302	215	15	6
1753	215	302	6	15
1754	302	334	9	6
1754	334	302	6	9
1755	302	335	10	4
1755	335	302	4	10
1756	302	151	9	5
1756	151	302	5	9
1757	302	336	7	9
1757	336	302	9	7
1758	302	148	13	7
1758	148	302	7	13
1759	302	335	10	11
1759	335	302	11	10
1760	46	39	2	13
1760	39	46	13	2
1761	46	47	6	13
1761	47	46	13	6
1762	46	30	10	13
1762	30	46	13	10
1763	46	193	11	8
1763	193	46	8	11
1764	46	24	7	13
1764	24	46	13	7
1765	46	191	9	10
1765	191	46	10	9
1766	46	369	9	4
1766	369	46	4	9
1767	65	34	8	10
1767	34	65	10	8
1768	65	61	11	9
1768	61	65	9	11
1769	65	106	9	14
1769	106	65	14	9
1770	65	63	6	13
1770	63	65	13	6
1771	65	262	5	13
1771	262	65	13	5
1772	65	229	12	13
1772	229	65	13	12
1773	65	41	13	11
1773	41	65	11	13
1774	65	31	10	13
1774	31	65	13	10
1775	65	110	13	6
1775	110	65	6	13
1776	65	289	14	13
1776	289	65	13	14
1777	65	32	6	15
1777	32	65	15	6
1778	65	264	7	13
1778	264	65	13	7
1779	65	63	11	13
1779	63	65	13	11
1780	65	56	13	11
1780	56	65	11	13
1781	65	230	7	13
1781	230	65	13	7
1782	372	17	2	13
1782	17	372	13	2
1783	372	370	11	7
1783	370	372	7	11
1784	372	16	9	4
1784	16	372	4	9
1785	372	371	3	10
1785	371	372	10	3
1786	372	371	3	10
1786	371	372	10	3
1787	345	379	7	6
1787	379	345	6	7
1788	345	194	10	9
1788	194	345	9	10
1789	345	40	9	8
1789	40	345	8	9
1790	345	137	5	12
1790	137	345	12	5
1791	345	343	15	4
1791	343	345	4	15
1792	345	344	8	14
1792	344	345	14	8
1793	345	346	11	12
1793	346	345	12	11
1794	345	342	12	11
1794	342	345	11	12
1795	345	343	15	6
1795	343	345	6	15
1796	68	207	11	4
1796	207	68	4	11
1797	68	67	11	6
1797	67	68	6	11
1798	68	71	9	6
1798	71	68	6	9
1799	68	205	9	5
1799	205	68	5	9
1800	68	313	5	3
1800	313	68	3	5
1801	68	314	3	13
1801	314	68	13	3
1802	68	206	11	8
1802	206	68	8	11
1803	68	206	8	11
1803	206	68	11	8
1804	68	205	7	10
1804	205	68	10	7
1805	68	349	9	8
1805	349	68	8	9
1806	68	314	9	6
1806	314	68	6	9
1807	342	385	13	6
1807	385	342	6	13
1808	342	380	8	12
1808	380	342	12	8
1809	342	346	7	10
1809	346	342	10	7
1810	342	346	15	7
1810	346	342	7	15
1811	342	343	15	3
1811	343	342	3	15
1812	342	344	14	10
1812	344	342	10	14
1813	342	346	10	13
1813	346	342	13	10
1814	343	385	7	12
1814	385	343	12	7
1815	343	341	0	13
1815	341	343	13	0
1816	343	376	8	13
1816	376	343	13	8
1817	343	346	11	15
1817	346	343	15	11
1818	343	344	7	15
1818	344	343	15	7
1819	108	196	12	7
1819	196	108	7	12
1820	108	43	8	13
1820	43	108	13	8
1821	108	47	9	11
1821	47	108	11	9
1822	108	195	12	7
1822	195	108	7	12
1823	108	44	9	15
1823	44	108	15	9
1824	108	40	11	8
1824	40	108	8	11
1825	108	54	8	12
1825	54	108	12	8
1826	108	103	9	10
1826	103	108	10	9
1827	108	289	3	13
1827	289	108	13	3
1828	108	110	9	14
1828	110	108	14	9
1829	108	109	6	14
1829	109	108	14	6
1830	108	24	8	15
1830	24	108	15	8
1831	108	55	6	9
1831	55	108	9	6
1832	108	160	8	7
1832	160	108	7	8
1833	19	17	11	8
1833	17	19	8	11
1834	19	155	1	13
1834	155	19	13	1
1835	19	9	8	12
1835	9	19	12	8
1836	19	22	6	7
1836	22	19	7	6
1837	19	9	9	15
1837	9	19	15	9
1838	20	169	15	3
1838	169	20	3	15
1839	20	9	7	14
1839	9	20	14	7
1840	20	43	7	12
1840	43	20	12	7
1841	20	44	8	12
1841	44	20	12	8
1842	20	386	10	9
1842	386	20	9	10
1843	20	30	10	12
1843	30	20	12	10
1844	20	40	10	9
1844	40	20	9	10
1845	20	298	8	6
1845	298	20	6	8
1846	306	13	9	7
1846	13	306	7	9
1847	306	186	5	10
1847	186	306	10	5
1848	306	222	3	13
1848	222	306	13	3
1849	306	10	13	6
1849	10	306	6	13
1850	306	76	12	11
1850	76	306	11	12
1851	306	307	13	4
1851	307	306	4	13
1852	306	293	12	11
1852	293	306	11	12
1853	306	346	7	8
1853	346	306	8	7
1854	306	390	10	7
1854	390	306	7	10
1855	176	297	7	12
1855	297	176	12	7
1856	176	364	4	13
1856	364	176	13	4
1857	176	387	2	13
1857	387	176	13	2
1858	176	175	13	2
1858	175	176	2	13
1859	176	169	11	7
1859	169	176	7	11
1860	176	21	6	11
1860	21	176	11	6
1861	313	314	10	6
1861	314	313	6	10
1862	313	347	11	8
1862	347	313	8	11
1863	313	207	13	12
1863	207	313	12	13
1864	313	314	8	10
1864	314	313	10	8
1865	313	205	10	5
1865	205	313	5	10
1866	313	206	7	9
1866	206	313	9	7
1867	313	312	10	7
1867	312	313	7	10
1868	313	77	13	7
1868	77	313	7	13
1869	313	319	15	9
1869	319	313	9	15
1870	313	112	8	14
1870	112	313	14	8
1871	313	111	10	12
1871	111	313	12	10
1872	358	355	7	6
1872	355	358	6	7
1873	358	334	4	9
1873	334	358	9	4
1874	358	355	2	12
1874	355	358	12	2
1875	358	351	10	9
1875	351	358	9	10
1876	358	95	4	8
1876	95	358	8	4
1877	358	69	7	6
1877	69	358	6	7
1878	358	148	3	13
1878	148	358	13	3
1879	358	69	9	7
1879	69	358	7	9
1880	6	4	13	5
1880	4	6	5	13
1881	6	2	11	13
1881	2	6	13	11
1882	6	337	13	5
1882	337	6	5	13
1883	6	76	13	5
1883	76	6	5	13
1884	6	186	13	1
1884	186	6	1	13
1885	6	185	12	7
1885	185	6	7	12
1886	6	183	11	14
1886	183	6	14	11
1887	6	187	15	6
1887	187	6	6	15
1888	111	320	10	6
1888	320	111	6	10
1889	111	17	10	5
1889	17	111	5	10
1890	111	318	11	0
1890	318	111	0	11
1891	111	9	6	7
1891	9	111	7	6
1892	111	336	10	7
1892	336	111	7	10
1893	111	206	2	7
1893	206	111	7	2
1894	111	147	11	5
1894	147	111	5	11
1895	111	205	8	7
1895	205	111	7	8
1896	111	336	11	4
1896	336	111	4	11
1897	111	208	11	10
1897	208	111	10	11
1898	111	366	12	6
1898	366	111	6	12
1899	111	75	11	6
1899	75	111	6	11
1900	156	30	11	13
1900	30	156	13	11
1901	156	40	13	4
1901	40	156	4	13
1902	156	47	13	11
1902	47	156	11	13
1903	156	44	15	6
1903	44	156	6	15
1904	156	155	11	12
1904	155	156	12	11
1905	156	13	10	9
1905	13	156	9	10
1906	156	155	9	8
1906	155	156	8	9
1907	54	112	9	10
1907	112	54	10	9
1908	54	228	4	13
1908	228	54	13	4
1909	54	203	13	10
1909	203	54	10	13
1910	54	232	8	10
1910	232	54	10	8
1911	54	250	9	10
1911	250	54	10	9
1912	54	103	10	4
1912	103	54	4	10
1913	54	289	12	10
1913	289	54	10	12
1914	54	32	9	11
1914	32	54	11	9
1915	54	31	11	14
1915	31	54	14	11
1916	76	11	9	13
1916	11	76	13	9
1917	76	185	7	13
1917	185	76	13	7
1918	76	12	13	6
1918	12	76	6	13
1919	76	81	7	9
1919	81	76	9	7
1920	76	208	15	13
1920	208	76	13	15
1921	76	186	10	13
1921	186	76	13	10
1922	76	329	15	6
1922	329	76	6	15
1923	50	49	13	4
1923	49	50	4	13
1924	50	49	13	2
1924	49	50	2	13
1925	50	48	13	6
1925	48	50	6	13
1926	50	52	13	3
1926	52	50	3	13
1927	50	52	15	6
1927	52	50	6	15
1928	50	47	15	8
1928	47	50	8	15
1929	22	167	11	2
1929	167	22	2	11
1930	22	315	15	9
1930	315	22	9	15
1931	22	169	11	7
1931	169	22	7	11
1932	22	169	12	6
1932	169	22	6	12
1933	22	21	15	4
1933	21	22	4	15
1934	56	203	11	10
1934	203	56	10	11
1935	56	286	7	13
1935	286	56	13	7
1936	56	58	8	13
1936	58	56	13	8
1937	56	233	12	11
1937	233	56	11	12
1938	56	287	13	9
1938	287	56	9	13
1939	56	233	9	13
1939	233	56	13	9
1940	56	228	5	13
1940	228	56	13	5
1941	56	158	3	13
1941	158	56	13	3
1942	56	230	13	11
1942	230	56	11	13
1943	61	67	13	7
1943	67	61	7	13
1944	61	77	13	3
1944	77	61	3	13
1945	61	185	13	5
1945	185	61	5	13
1946	61	81	14	10
1946	81	61	10	14
1947	61	35	9	12
1947	35	61	12	9
1948	61	58	6	13
1948	58	61	13	6
1949	61	106	8	9
1949	106	61	9	8
1950	61	75	8	6
1950	75	61	6	8
1951	61	257	11	6
1951	257	61	6	11
1952	61	155	12	9
1952	155	61	9	12
1953	61	172	13	9
1953	172	61	9	13
1954	61	41	12	11
1954	41	61	11	12
1955	375	365	10	4
1955	365	375	4	10
1956	375	308	8	6
1956	308	375	6	8
1957	375	392	12	5
1957	392	375	5	12
1958	375	391	15	7
1958	391	375	7	15
1959	375	390	14	15
1959	390	375	15	14
1960	375	390	14	13
1960	390	375	13	14
1961	375	170	9	8
1961	170	375	8	9
1962	375	383	2	11
1962	383	375	11	2
1963	375	360	3	13
1963	360	375	13	3
1964	13	186	10	13
1964	186	13	13	10
1965	13	359	10	7
1965	359	13	7	10
1966	13	41	6	14
1966	41	13	14	6
1967	13	257	11	14
1967	257	13	14	11
1968	13	172	9	10
1968	172	13	10	9
1969	13	155	8	9
1969	155	13	9	8
1970	13	155	10	7
1970	155	13	7	10
1971	13	196	5	6
1971	196	13	6	5
1972	360	172	8	13
1972	172	360	13	8
1973	360	319	7	8
1973	319	360	8	7
1974	360	155	4	10
1974	155	360	10	4
1975	360	116	9	8
1975	116	360	8	9
1976	360	291	8	10
1976	291	360	10	8
1977	360	174	8	7
1977	174	360	7	8
1978	360	170	11	12
1978	170	360	12	11
1979	360	383	11	5
1979	383	360	5	11
1980	189	183	12	9
1980	183	189	9	12
1981	189	212	13	3
1981	212	189	3	13
1982	189	81	10	7
1982	81	189	7	10
1983	189	187	12	9
1983	187	189	9	12
1984	189	237	9	13
1984	237	189	13	9
1985	189	287	7	9
1985	287	189	9	7
1986	189	386	13	3
1986	386	189	3	13
1987	189	185	13	10
1987	185	189	10	13
1988	189	183	13	8
1988	183	189	8	13
1989	189	185	13	10
1989	185	189	10	13
1990	84	88	0	11
1990	88	84	11	0
1991	84	85	5	8
1991	85	84	8	5
1992	228	232	13	9
1992	232	228	9	13
1993	228	263	11	13
1993	263	228	13	11
1994	228	230	9	13
1994	230	228	13	9
1995	228	250	13	12
1995	250	228	12	13
1996	228	237	9	11
1996	237	228	11	9
1997	228	286	4	13
1997	286	228	13	4
1998	228	263	5	13
1998	263	228	13	5
1999	228	158	10	15
1999	158	228	15	10
2000	228	35	15	6
2000	35	228	6	15
2001	228	158	8	13
2001	158	228	13	8
2002	228	233	10	13
2002	233	228	13	10
2003	228	287	8	10
2003	287	228	10	8
2004	228	262	11	15
2004	262	228	15	11
2005	228	233	15	14
2005	233	228	14	15
2006	307	293	5	13
2006	293	307	13	5
2007	307	389	7	3
2007	389	307	3	7
2008	307	308	9	6
2008	308	307	6	9
2009	296	293	5	13
2009	293	296	13	5
2010	296	297	8	9
2010	297	296	9	8
2011	296	298	7	9
2011	298	296	9	7
2012	296	299	13	3
2012	299	296	3	13
2013	296	387	13	2
2013	387	296	2	13
2014	296	386	7	12
2014	386	296	12	7
2015	296	377	11	7
2015	377	296	7	11
2016	296	385	13	4
2016	385	296	4	13
2017	296	297	10	11
2017	297	296	11	10
2018	296	390	13	3
2018	390	296	3	13
2019	296	257	11	12
2019	257	296	12	11
2020	296	376	9	11
2020	376	296	11	9
2021	296	297	6	8
2021	297	296	8	6
2022	299	293	5	13
2022	293	299	13	5
2023	299	298	5	13
2023	298	299	13	5
2024	299	297	4	13
2024	297	299	13	4
2025	299	379	5	13
2025	379	299	13	5
2026	299	391	13	5
2026	391	299	5	13
2027	299	385	9	12
2027	385	299	12	9
2028	199	376	13	11
2028	376	199	11	13
2029	199	292	9	13
2029	292	199	13	9
2030	199	379	13	12
2030	379	199	12	13
2031	199	390	7	9
2031	390	199	9	7
2032	52	138	8	11
2032	138	52	11	8
2033	52	51	8	9
2033	51	52	9	8
2034	52	393	12	11
2034	393	52	11	12
2035	52	193	7	10
2035	193	52	10	7
2036	52	47	3	13
2036	47	52	13	3
2037	52	51	10	13
2037	51	52	13	10
2038	52	48	13	8
2038	48	52	8	13
2039	30	47	13	8
2039	47	30	8	13
2040	30	39	11	9
2040	39	30	9	11
2041	30	24	9	2
2041	24	30	2	9
2042	30	40	13	6
2042	40	30	6	13
2043	30	40	15	13
2043	40	30	13	15
2044	30	44	9	10
2044	44	30	10	9
2045	30	55	10	9
2045	55	30	9	10
2046	30	203	4	13
2046	203	30	13	4
2047	30	137	6	11
2047	137	30	11	6
2048	30	344	15	11
2048	344	30	11	15
2049	30	293	11	10
2049	293	30	10	11
2050	30	229	6	13
2050	229	30	13	6
2051	30	247	9	10
2051	247	30	10	9
2052	30	203	9	10
2052	203	30	10	9
2053	30	247	0	0
2053	247	30	0	0
2054	51	44	2	13
2054	44	51	13	2
2055	51	195	9	10
2055	195	51	10	9
2056	51	196	3	9
2056	196	51	9	3
2057	51	191	8	10
2057	191	51	10	8
2058	51	193	8	7
2058	193	51	7	8
2059	51	393	9	6
2059	393	51	6	9
2060	51	47	4	13
2060	47	51	13	4
2061	51	48	11	9
2061	48	51	9	11
2062	51	47	4	11
2062	47	51	11	4
2063	386	377	13	3
2063	377	386	3	13
2064	386	387	13	1
2064	387	386	1	13
2065	386	292	12	8
2065	292	386	8	12
2066	386	43	11	8
2066	43	386	8	11
2067	386	341	10	12
2067	341	386	12	10
2068	386	203	11	5
2068	203	386	5	11
2069	386	279	2	13
2069	279	386	13	2
2070	386	137	15	10
2070	137	386	10	15
2071	386	232	13	14
2071	232	386	14	13
2072	386	203	10	12
2072	203	386	12	10
2073	386	298	10	12
2073	298	386	12	10
2074	386	103	10	8
2074	103	386	8	10
2075	386	44	6	15
2075	44	386	15	6
2076	386	298	10	11
2076	298	386	11	10
2077	386	40	8	2
2077	40	386	2	8
2078	44	195	13	2
2078	195	44	2	13
2079	44	344	10	8
2079	344	44	8	10
2080	44	137	10	9
2080	137	44	9	10
2081	44	346	13	8
2081	346	44	8	13
2082	44	40	7	5
2082	40	44	5	7
2083	44	341	8	9
2083	341	44	9	8
2084	44	43	11	15
2084	43	44	15	11
2085	44	247	15	8
2085	247	44	8	15
2086	178	221	13	1
2086	221	178	1	13
2087	178	21	9	11
2087	21	178	11	9
2088	178	177	8	4
2088	177	178	4	8
2089	179	206	7	8
2089	206	179	8	7
2090	179	151	10	9
2090	151	179	9	10
2091	179	334	13	12
2091	334	179	12	13
2092	179	95	8	9
2092	95	179	9	8
2093	179	382	13	3
2093	382	179	3	13
2094	179	93	13	7
2094	93	179	7	13
2095	382	95	9	7
2095	95	382	7	9
2096	201	202	11	12
2096	202	201	12	11
2097	201	202	9	4
2097	202	201	4	9
2098	201	202	6	10
2098	202	201	10	6
2099	326	116	0	13
2099	116	326	13	0
2100	326	318	8	9
2100	318	326	9	8
2101	10	81	2	13
2101	81	10	13	2
2102	10	207	4	13
2102	207	10	13	4
2103	10	106	0	13
2103	106	10	13	0
2104	10	9	5	13
2104	9	10	13	5
2105	379	344	10	11
2105	344	379	11	10
2106	379	40	5	13
2106	40	379	13	5
2107	379	194	10	6
2107	194	379	6	10
2108	379	192	9	7
2108	192	379	7	9
2109	379	292	9	13
2109	292	379	13	9
2110	379	377	11	5
2110	377	379	5	11
2111	202	254	9	7
2111	254	202	7	9
2112	85	88	1	10
2112	88	85	10	1
2113	357	95	7	10
2113	95	357	10	7
2114	158	303	13	2
2114	303	158	2	13
2115	158	32	15	7
2115	32	158	7	15
2116	158	289	15	8
2116	289	158	8	15
2117	158	75	13	2
2117	75	158	2	13
2118	158	34	13	6
2118	34	158	6	13
2119	158	31	11	2
2119	31	158	2	11
2120	158	262	11	4
2120	262	158	4	11
2121	158	230	13	6
2121	230	158	6	13
2122	158	265	13	7
2122	265	158	7	13
2123	158	264	13	10
2123	264	158	10	13
2124	158	235	15	11
2124	235	158	11	15
2125	158	286	15	14
2125	286	158	14	15
2126	158	287	13	9
2126	287	158	9	13
2127	158	233	13	8
2127	233	158	8	13
2128	158	264	9	15
2128	264	158	15	9
2129	63	159	13	9
2129	159	63	9	13
2130	63	75	13	11
2130	75	63	11	13
2131	63	32	14	12
2131	32	63	12	14
2132	63	303	12	13
2132	303	63	13	12
2133	63	229	13	8
2133	229	63	8	13
2134	63	262	12	13
2134	262	63	13	12
2135	63	287	4	10
2135	287	63	10	4
2136	63	106	8	11
2136	106	63	11	8
2137	63	41	15	14
2137	41	63	14	15
2138	63	286	5	13
2138	286	63	13	5
2139	63	262	8	13
2139	262	63	13	8
2140	63	265	7	13
2140	265	63	13	7
2141	63	230	6	15
2141	230	63	15	6
2142	320	9	4	10
2142	9	320	10	4
2143	320	318	7	2
2143	318	320	2	7
2144	320	17	4	7
2144	17	320	7	4
2145	320	35	3	11
2145	35	320	11	3
2146	320	319	13	8
2146	319	320	8	13
2147	186	222	12	11
2147	222	186	11	12
2148	116	155	3	11
2148	155	116	11	3
2149	116	319	6	9
2149	319	116	9	6
2150	116	318	11	4
2150	318	116	4	11
2151	75	159	13	8
2151	159	75	8	13
2152	75	31	12	15
2152	31	75	15	12
2153	75	289	10	12
2153	289	75	12	10
2154	75	32	8	14
2154	32	75	14	8
2155	75	34	7	13
2155	34	75	13	7
2156	75	106	7	10
2156	106	75	10	7
2157	75	81	15	11
2157	81	75	11	15
2158	75	112	12	13
2158	112	75	13	12
2159	32	103	13	8
2159	103	32	8	13
2160	32	31	10	13
2160	31	32	13	10
2161	32	31	7	13
2161	31	32	13	7
2162	32	229	8	9
2162	229	32	9	8
2163	32	159	13	6
2163	159	32	6	13
2164	32	109	9	8
2164	109	32	8	9
2165	32	106	13	9
2165	106	32	9	13
2166	32	230	13	8
2166	230	32	8	13
2167	32	233	12	11
2167	233	32	11	12
2168	160	55	7	15
2168	55	160	15	7
2169	221	177	9	10
2169	177	221	10	9
2170	221	169	3	2
2170	169	221	2	3
2171	221	387	0	0
2171	387	221	0	0
2172	137	194	11	5
2172	194	137	5	11
2173	137	192	11	4
2173	192	137	4	11
2174	137	138	11	7
2174	138	137	7	11
2175	137	101	11	1
2175	101	137	1	11
2176	137	138	15	1
2176	138	137	1	15
2177	137	344	8	4
2177	344	137	4	8
2178	137	341	7	8
2178	341	137	8	7
2179	137	139	11	7
2179	139	137	7	11
2180	265	264	9	10
2180	264	265	10	9
2181	265	280	12	7
2181	280	265	7	12
2182	265	264	10	13
2182	264	265	13	10
2183	265	226	12	10
2183	226	265	10	12
2184	265	235	12	13
2184	235	265	13	12
2185	265	264	9	12
2185	264	265	12	9
2186	265	230	10	9
2186	230	265	9	10
2187	265	263	15	12
2187	263	265	12	15
2188	265	235	14	15
2188	235	265	15	14
2189	265	233	10	15
2189	233	265	15	10
2190	265	262	11	13
2190	262	265	13	11
2191	265	286	5	13
2191	286	265	13	5
2192	265	233	15	12
2192	233	265	12	15
2193	265	262	15	13
2193	262	265	13	15
2194	88	219	13	3
2194	219	88	3	13
2195	88	95	11	7
2195	95	88	7	11
2196	88	93	15	6
2196	93	88	6	15
2197	95	69	8	9
2197	69	95	9	8
2198	95	148	8	9
2198	148	95	9	8
2199	95	351	10	8
2199	351	95	8	10
2200	95	148	12	15
2200	148	95	15	12
2201	95	219	9	8
2201	219	95	8	9
2202	95	93	5	14
2202	93	95	14	5
2203	120	125	8	13
2203	125	120	13	8
2204	120	131	7	4
2204	131	120	4	7
2205	120	130	9	10
2205	130	120	10	9
2206	120	130	9	10
2206	130	120	10	9
2207	376	140	12	10
2207	140	376	10	12
2208	376	341	9	13
2208	341	376	13	9
2209	376	385	13	7
2209	385	376	7	13
2210	376	40	4	8
2210	40	376	8	4
2211	376	308	11	5
2211	308	376	5	11
2212	376	390	10	11
2212	390	376	11	10
2213	376	389	11	8
2213	389	376	8	11
2214	376	374	13	5
2214	374	376	5	13
2215	376	373	10	5
2215	373	376	5	10
2216	376	374	11	4
2216	374	376	4	11
2217	376	292	12	11
2217	292	376	11	12
2218	376	377	13	10
2218	377	376	10	13
2219	247	249	8	13
2219	249	247	13	8
2220	247	248	9	10
2220	248	247	10	9
2221	247	257	13	12
2221	257	247	12	13
2222	247	256	9	13
2222	256	247	13	9
2223	247	229	8	15
2223	229	247	15	8
2224	247	293	9	14
2224	293	247	14	9
2225	247	40	11	8
2225	40	247	8	11
2226	247	298	13	11
2226	298	247	11	13
2227	41	110	13	10
2227	110	41	10	13
2228	41	31	6	13
2228	31	41	13	6
2229	41	103	8	15
2229	103	41	15	8
2230	41	159	13	15
2230	159	41	15	13
2231	41	359	10	7
2231	359	41	7	10
2232	41	291	13	7
2232	291	41	7	13
2233	41	257	11	6
2233	257	41	6	11
2234	41	40	15	6
2234	40	41	6	15
2235	41	229	9	11
2235	229	41	11	9
2236	175	387	6	5
2236	387	175	5	6
2237	369	49	7	6
2237	49	369	6	7
2238	349	207	4	13
2238	207	349	13	4
2239	349	109	11	9
2239	109	349	9	11
2240	349	314	10	7
2240	314	349	7	10
2241	349	207	5	8
2241	207	349	8	5
2242	349	205	6	12
2242	205	349	12	6
2243	349	314	5	13
2243	314	349	13	5
2244	349	312	1	15
2244	312	349	15	1
2245	9	185	11	9
2245	185	9	9	11
2246	9	11	13	11
2246	11	9	11	13
2247	9	169	11	6
2247	169	9	6	11
2248	9	21	15	8
2248	21	9	8	15
2249	5	2	10	13
2249	2	5	13	10
2250	5	4	11	10
2250	4	5	10	11
2251	5	11	8	13
2251	11	5	13	8
2252	5	3	13	8
2252	3	5	8	13
2253	5	127	10	13
2253	127	5	13	10
2254	5	282	10	11
2254	282	5	11	10
2255	155	319	10	5
2255	319	155	5	10
2256	155	332	13	6
2256	332	155	6	13
2257	155	257	9	13
2257	257	155	13	9
2258	155	291	5	10
2258	291	155	10	5
2259	155	170	8	12
2259	170	155	12	8
2260	155	174	15	7
2260	174	155	7	15
2261	103	31	10	13
2261	31	103	13	10
2262	103	159	12	15
2262	159	103	15	12
2263	103	289	9	13
2263	289	103	13	9
2264	103	298	14	11
2264	298	103	11	14
2265	103	203	12	9
2265	203	103	9	12
2266	103	249	6	13
2266	249	103	13	6
2267	103	293	12	9
2267	293	103	9	12
2268	103	203	6	8
2268	203	103	8	6
2269	15	17	2	11
2269	17	15	11	2
2270	15	16	4	5
2270	16	15	5	4
2271	15	332	1	13
2271	332	15	13	1
2272	194	101	11	5
2272	101	194	5	11
2273	194	192	7	9
2273	192	194	9	7
2274	194	138	6	7
2274	138	194	7	6
2275	194	101	15	4
2275	101	194	4	15
2276	194	98	12	7
2276	98	194	7	12
2277	194	40	5	9
2277	40	194	9	5
2278	194	346	4	12
2278	346	194	12	4
2279	194	385	8	7
2279	385	194	7	8
2280	194	101	13	5
2280	101	194	5	13
2281	194	102	13	6
2281	102	194	6	13
2282	194	193	9	10
2282	193	194	10	9
2283	194	98	15	4
2283	98	194	4	15
2284	194	99	10	15
2284	99	194	15	10
2285	341	140	9	7
2285	140	341	7	9
2286	341	380	12	3
2286	380	341	3	12
2287	341	203	12	10
2287	203	341	10	12
2288	341	232	8	7
2288	232	341	7	8
2289	341	263	11	15
2289	263	341	15	11
2290	341	279	6	15
2290	279	341	15	6
2291	341	58	7	11
2291	58	341	11	7
2292	341	229	9	11
2292	229	341	11	9
2293	341	203	10	14
2293	203	341	14	10
2294	341	43	8	13
2294	43	341	13	8
2295	344	346	8	11
2295	346	344	11	8
2296	344	140	11	5
2296	140	344	5	11
2297	344	346	4	13
2297	346	344	13	4
2298	344	102	13	7
2298	102	344	7	13
2299	344	140	10	9
2299	140	344	9	10
2300	344	139	12	8
2300	139	344	8	12
2301	344	99	15	13
2301	99	344	13	15
2302	344	203	13	12
2302	203	344	12	13
2303	344	346	15	13
2303	346	344	13	15
2304	344	346	9	12
2304	346	344	12	9
2305	264	234	15	9
2305	234	264	9	15
2306	264	258	15	4
2306	258	264	4	15
2307	264	235	15	14
2307	235	264	14	15
2308	264	275	15	1
2308	275	264	1	15
2309	264	235	15	10
2309	235	264	10	15
2310	264	280	13	11
2310	280	264	11	13
2311	264	235	13	11
2311	235	264	11	13
2312	264	230	13	10
2312	230	264	10	13
2313	264	233	15	14
2313	233	264	14	15
2314	264	235	15	12
2314	235	264	12	15
2315	264	286	11	15
2315	286	264	15	11
2316	273	275	15	2
2316	275	273	2	15
2317	273	274	12	13
2317	274	273	13	12
2318	273	235	4	15
2318	235	273	15	4
2319	273	274	11	10
2319	274	273	10	11
2320	273	258	9	14
2320	258	273	14	9
2321	273	274	12	13
2321	274	273	13	12
2322	273	394	15	14
2322	394	273	14	15
2323	273	395	15	9
2323	395	273	9	15
2324	235	258	15	2
2324	258	235	2	15
2325	235	234	15	12
2325	234	235	12	15
2326	235	234	15	12
2326	234	235	12	15
2327	235	249	13	7
2327	249	235	7	13
2328	235	233	10	9
2328	233	235	9	10
2329	235	35	13	9
2329	35	235	9	13
2330	235	244	14	13
2330	244	235	13	14
2331	235	256	14	15
2331	256	235	15	14
2332	235	234	15	14
2332	234	235	14	15
2333	235	250	15	10
2333	250	235	10	15
2334	235	226	15	12
2334	226	235	12	15
2335	235	234	15	13
2335	234	235	13	15
2336	274	275	15	2
2336	275	274	2	15
2337	274	275	15	4
2337	275	274	4	15
2338	274	234	6	15
2338	234	274	15	6
2339	274	4	15	9
2339	4	274	9	15
2340	301	109	13	5
2340	109	301	5	13
2341	301	205	13	7
2341	205	301	7	13
2342	301	146	13	6
2342	146	301	6	13
2343	301	187	15	10
2343	187	301	10	15
2344	301	222	15	6
2344	222	301	6	15
2345	3	4	11	12
2345	4	3	12	11
2346	3	254	12	13
2346	254	3	13	12
2347	3	275	13	8
2347	275	3	8	13
2348	3	4	9	13
2348	4	3	13	9
2349	3	396	15	7
2349	396	3	7	15
2350	3	397	10	13
2350	397	3	13	10
2351	3	275	15	9
2351	275	3	9	15
2352	262	229	13	9
2352	229	262	9	13
2353	262	58	8	6
2353	58	262	6	8
2354	262	230	14	15
2354	230	262	15	14
2355	262	263	12	15
2355	263	262	15	12
2356	262	286	5	13
2356	286	262	13	5
2357	148	146	2	5
2357	146	148	5	2
2358	148	146	7	10
2358	146	148	10	7
2359	148	216	2	3
2359	216	148	3	2
2360	148	351	13	7
2360	351	148	7	13
2361	148	69	9	6
2361	69	148	6	9
2362	148	147	13	4
2362	147	148	4	13
2363	148	151	13	12
2363	151	148	12	13
2364	148	334	11	13
2364	334	148	13	11
2365	332	16	11	7
2365	16	332	7	11
2366	207	81	7	12
2366	81	207	12	7
2367	207	106	3	13
2367	106	207	13	3
2368	207	109	11	12
2368	109	207	12	11
2369	207	206	5	14
2369	206	207	14	5
2370	207	34	9	12
2370	34	207	12	9
2371	322	216	6	8
2371	216	322	8	6
2372	322	321	5	10
2372	321	322	10	5
2373	322	219	3	6
2373	219	322	6	3
2374	322	219	1	15
2374	219	322	15	1
2375	322	351	12	6
2375	351	322	6	12
2376	322	353	13	2
2376	353	322	2	13
2377	322	355	10	5
2377	355	322	5	10
2378	322	384	10	6
2378	384	322	6	10
2379	322	335	3	13
2379	335	322	13	3
2380	322	147	13	10
2380	147	322	10	13
2381	322	152	8	13
2381	152	322	13	8
2382	230	55	12	9
2382	55	230	9	12
2383	230	229	13	6
2383	229	230	6	13
2384	230	233	13	12
2384	233	230	12	13
2385	230	286	8	15
2385	286	230	15	8
2386	172	319	12	7
2386	319	172	7	12
2387	172	170	15	4
2387	170	172	4	15
2388	172	359	14	5
2388	359	172	5	14
2389	172	291	15	6
2389	291	172	6	15
2390	172	347	13	7
2390	347	172	7	13
2391	172	312	11	9
2391	312	172	9	11
2392	172	206	11	13
2392	206	172	13	11
2393	254	253	10	9
2393	253	254	9	10
2394	254	252	10	8
2394	252	254	8	10
2395	254	4	5	13
2395	4	254	13	5
2396	254	275	13	6
2396	275	254	6	13
2397	254	394	15	10
2397	394	254	10	15
2398	254	4	15	11
2398	4	254	11	15
2399	275	258	4	15
2399	258	275	15	4
2400	275	4	4	13
2400	4	275	13	4
2401	275	397	9	13
2401	397	275	13	9
2402	275	396	9	8
2402	396	275	8	9
2403	347	314	12	11
2403	314	347	11	12
2404	347	109	12	10
2404	109	347	10	12
2405	347	34	3	11
2405	34	347	11	3
2406	213	212	2	13
2406	212	213	13	2
2407	213	350	8	11
2407	350	213	11	8
2408	213	215	6	13
2408	215	213	13	6
2409	11	4	13	7
2409	4	11	7	13
2410	11	2	9	13
2410	2	11	13	9
2411	11	185	7	11
2411	185	11	11	7
2412	11	285	15	11
2412	285	11	11	15
2413	11	395	12	11
2413	395	11	11	12
2414	229	232	10	7
2414	232	229	7	10
2415	229	237	6	13
2415	237	229	13	6
2416	229	55	13	5
2416	55	229	5	13
2417	229	237	8	13
2417	237	229	13	8
2418	229	250	12	13
2418	250	229	13	12
2419	229	203	5	9
2419	203	229	9	5
2420	229	293	13	8
2420	293	229	8	13
2421	229	58	11	13
2421	58	229	13	11
2422	387	377	6	10
2422	377	387	10	6
2423	387	294	10	3
2423	294	387	3	10
2424	387	196	6	13
2424	196	387	13	6
2425	387	21	3	12
2425	21	387	12	3
2426	4	395	15	13
2426	395	4	13	15
2427	215	187	4	13
2427	187	215	13	4
2428	215	110	4	13
2428	110	215	13	4
2429	215	222	2	12
2429	222	215	12	2
2430	215	146	7	12
2430	146	215	12	7
2431	215	146	4	10
2431	146	215	10	4
2432	215	210	4	10
2432	210	215	10	4
2433	215	350	4	5
2433	350	215	5	4
2434	146	205	10	11
2434	205	146	11	10
2435	146	109	7	12
2435	109	146	12	7
2436	146	109	9	8
2436	109	146	8	9
2437	146	350	9	5
2437	350	146	5	9
2438	146	210	10	11
2438	210	146	11	10
2439	146	212	12	8
2439	212	146	8	12
2440	146	210	6	11
2440	210	146	11	6
2441	98	139	8	15
2441	139	98	15	8
2442	98	191	4	14
2442	191	98	14	4
2443	98	101	15	1
2443	101	98	1	15
2444	98	99	8	13
2444	99	98	13	8
2445	98	97	1	13
2445	97	98	13	1
2446	98	193	8	9
2446	193	98	9	8
2447	185	77	13	5
2447	77	185	5	13
2448	185	67	13	4
2448	67	185	4	13
2449	185	106	8	13
2449	106	185	13	8
2450	185	222	9	13
2450	222	185	13	9
2451	77	67	10	3
2451	67	77	3	10
2452	77	34	8	11
2452	34	77	11	8
2453	77	312	7	9
2453	312	77	9	7
2454	77	147	10	3
2454	147	77	3	10
2455	77	312	10	5
2455	312	77	5	10
2456	77	206	10	11
2456	206	77	11	10
2457	77	112	9	13
2457	112	77	13	9
2458	77	319	15	3
2458	319	77	3	15
2459	77	208	15	13
2459	208	77	13	15
2460	222	12	11	7
2460	12	222	7	11
2461	222	110	8	7
2461	110	222	7	8
2462	222	187	8	7
2462	187	222	7	8
2463	222	205	12	10
2463	205	222	10	12
2464	350	210	5	11
2464	210	350	11	5
2465	308	391	14	6
2465	391	308	6	14
2466	308	390	8	15
2466	390	308	15	8
2467	308	392	15	7
2467	392	308	7	15
2468	308	365	8	11
2468	365	308	11	8
2469	308	365	4	8
2469	365	308	8	4
2470	308	389	6	11
2470	389	308	11	6
2471	308	374	4	12
2471	374	308	12	4
2472	308	390	6	11
2472	390	308	11	6
2473	355	334	8	9
2473	334	355	9	8
2474	355	351	2	4
2474	351	355	4	2
2475	355	353	13	4
2475	353	355	4	13
2476	355	384	13	3
2476	384	355	3	13
2477	355	351	9	8
2477	351	355	8	9
2478	355	354	13	0
2478	354	355	0	13
2479	355	384	13	5
2479	384	355	5	13
2480	314	205	10	1
2480	205	314	1	10
2481	314	312	10	7
2481	312	314	7	10
2482	314	312	10	8
2482	312	314	8	10
2483	314	110	7	8
2483	110	314	8	7
2484	314	109	5	15
2484	109	314	15	5
2485	40	43	6	15
2485	43	40	15	6
2486	216	219	9	6
2486	219	216	6	9
2487	216	321	7	4
2487	321	216	4	7
2488	216	71	10	8
2488	71	216	8	10
2489	193	393	12	9
2489	393	193	9	12
2490	193	101	13	2
2490	101	193	2	13
2491	193	102	6	9
2491	102	193	9	6
2492	193	97	4	15
2492	97	193	15	4
2493	48	49	13	4
2493	49	48	4	13
2494	48	49	15	6
2494	49	48	6	15
2495	125	285	8	7
2495	285	125	7	8
2496	125	128	10	7
2496	128	125	7	10
2497	125	126	12	9
2497	126	125	9	12
2498	125	282	11	5
2498	282	125	5	11
2499	125	128	8	9
2499	128	125	9	8
2500	125	128	11	13
2500	128	125	13	11
2501	125	127	13	8
2501	127	125	8	13
2502	131	130	6	7
2502	130	131	7	6
2503	128	127	9	10
2503	127	128	10	9
2504	128	282	9	6
2504	282	128	6	9
2505	128	127	13	10
2505	127	128	10	13
2506	248	127	5	13
2506	127	248	13	5
2507	248	249	5	13
2507	249	248	13	5
2508	248	282	11	7
2508	282	248	7	11
2509	248	249	6	13
2509	249	248	13	6
2510	248	2	6	13
2510	2	248	13	6
2511	248	127	7	12
2511	127	248	12	7
2512	253	252	12	8
2512	252	253	8	12
2513	394	397	13	11
2513	397	394	11	13
2514	394	396	13	7
2514	396	394	7	13
2515	394	395	13	6
2515	395	394	6	13
2516	353	69	1	13
2516	69	353	13	1
2517	353	312	0	13
2517	312	353	13	0
2518	353	384	2	13
2518	384	353	13	2
2519	353	351	4	10
2519	351	353	10	4
2520	353	144	5	11
2520	144	353	11	5
2521	258	234	13	14
2521	234	258	14	13
2522	334	206	9	15
2522	206	334	15	9
2523	334	335	10	9
2523	335	334	9	10
2524	334	151	6	9
2524	151	334	9	6
2525	334	336	8	9
2525	336	334	9	8
2526	334	147	13	4
2526	147	334	4	13
2527	334	336	12	8
2527	336	334	8	12
2528	334	335	7	11
2528	335	334	11	7
2529	31	303	14	11
2529	303	31	11	14
2530	31	58	11	10
2530	58	31	10	11
2531	31	110	12	9
2531	110	31	9	12
2532	31	106	12	15
2532	106	31	15	12
2533	318	17	2	8
2533	17	318	8	2
2534	318	39	3	13
2534	39	318	13	3
2535	318	319	5	7
2535	319	318	7	5
2536	55	112	7	13
2536	112	55	13	7
2537	55	203	10	11
2537	203	55	11	10
2538	55	139	13	8
2538	139	55	8	13
2539	55	138	13	7
2539	138	55	7	13
2540	49	47	4	13
2540	47	49	13	4
2541	127	112	11	12
2541	112	127	12	11
2542	127	256	13	8
2542	256	127	8	13
2543	43	196	13	9
2543	196	43	9	13
2544	43	294	13	1
2544	294	43	1	13
2545	43	298	12	8
2545	298	43	8	12
2546	43	364	9	11
2546	364	43	11	9
2547	43	293	9	7
2547	293	43	7	9
2548	377	257	7	13
2548	257	377	13	7
2549	377	389	10	7
2549	389	377	7	10
2550	377	390	2	13
2550	390	377	13	2
2551	293	298	10	11
2551	298	293	11	10
2552	293	297	11	7
2552	297	293	7	11
2553	293	292	12	5
2553	292	293	5	12
2554	293	291	10	3
2554	291	293	3	10
2555	293	385	13	2
2555	385	293	2	13
2556	293	292	7	4
2556	292	293	4	7
2557	293	390	11	5
2557	390	293	5	11
2558	293	346	10	6
2558	346	293	6	10
2559	293	298	13	6
2559	298	293	6	13
2560	389	374	8	9
2560	374	389	9	8
2561	389	390	9	10
2561	390	389	10	9
2562	389	391	13	5
2562	391	389	5	13
2563	389	385	11	10
2563	385	389	10	11
2564	389	174	5	13
2564	174	389	13	5
2565	249	244	8	9
2565	244	249	9	8
2566	249	279	7	10
2566	279	249	10	7
2567	249	256	11	7
2567	256	249	7	11
2568	249	226	8	12
2568	226	249	12	8
2569	249	280	8	11
2569	280	249	11	8
2570	249	112	9	7
2570	112	249	7	9
2571	252	285	3	13
2571	285	252	13	3
2572	252	126	8	11
2572	126	252	11	8
2573	101	138	5	11
2573	138	101	11	5
2574	101	192	5	9
2574	192	101	9	5
2575	101	102	11	12
2575	102	101	12	11
2576	101	102	9	13
2576	102	101	13	9
2577	144	219	9	5
2577	219	144	5	9
2578	144	321	7	11
2578	321	144	11	7
2579	144	152	4	13
2579	152	144	13	4
2580	144	354	13	2
2580	354	144	2	13
2581	144	384	6	10
2581	384	144	10	6
2582	144	351	12	9
2582	351	144	9	12
2583	336	206	3	12
2583	206	336	12	3
2584	336	205	7	10
2584	205	336	10	7
2585	336	147	13	11
2585	147	336	11	13
2586	336	151	11	8
2586	151	336	8	11
2587	336	335	8	6
2587	335	336	6	8
2588	336	151	11	8
2588	151	336	8	11
2589	354	152	1	13
2589	152	354	13	1
2590	354	351	0	13
2590	351	354	13	0
2591	110	109	12	13
2591	109	110	13	12
2592	110	187	6	11
2592	187	110	11	6
2593	110	109	8	13
2593	109	110	13	8
2594	110	34	8	13
2594	34	110	13	8
2595	110	312	15	4
2595	312	110	4	15
2596	110	34	13	8
2596	34	110	8	13
2597	110	206	5	9
2597	206	110	9	5
2598	384	351	13	6
2598	351	384	6	13
2599	205	109	11	9
2599	109	205	9	11
2600	205	187	12	11
2600	187	205	11	12
2601	205	206	13	7
2601	206	205	7	13
2602	205	109	12	6
2602	109	205	6	12
2603	205	303	8	5
2603	303	205	5	8
2604	147	312	1	13
2604	312	147	13	1
2605	151	351	13	3
2605	351	151	3	13
2606	151	335	7	10
2606	335	151	10	7
2607	321	219	11	6
2607	219	321	6	11
2608	109	159	10	9
2608	159	109	9	10
2609	109	312	14	9
2609	312	109	9	14
2610	109	206	15	10
2610	206	109	10	15
2611	109	159	12	10
2611	159	109	10	12
2612	99	97	7	13
2612	97	99	13	7
2613	99	97	13	10
2613	97	99	10	13
2614	35	58	5	13
2614	58	35	13	5
2615	35	303	8	9
2615	303	35	9	8
2616	35	233	7	13
2616	233	35	13	7
2617	35	263	9	15
2617	263	35	15	9
2618	35	39	15	8
2618	39	35	8	15
2619	195	196	7	15
2619	196	195	15	7
2620	195	47	9	15
2620	47	195	15	9
2621	39	47	13	10
2621	47	39	10	13
2622	39	24	12	13
2622	24	39	13	12
2623	39	47	15	3
2623	47	39	3	15
2624	39	203	12	10
2624	203	39	10	12
2625	39	319	13	5
2625	319	39	5	13
2626	27	24	2	13
2626	24	27	13	2
2627	263	112	13	6
2627	112	263	6	13
2628	263	233	11	13
2628	233	263	13	11
2629	263	58	12	9
2629	58	263	9	12
2630	263	286	12	13
2630	286	263	13	12
2631	263	279	13	12
2631	279	263	12	13
2632	263	232	13	3
2632	232	263	3	13
2633	263	287	10	5
2633	287	263	5	10
2634	263	237	15	10
2634	237	263	10	15
2635	263	287	10	13
2635	287	263	13	10
2636	203	237	8	13
2636	237	203	13	8
2637	203	191	13	5
2637	191	203	5	13
2638	203	298	13	10
2638	298	203	10	13
2639	102	140	6	11
2639	140	102	11	6
2640	102	97	9	11
2640	97	102	11	9
2641	102	97	13	15
2641	97	102	15	13
2642	139	191	15	12
2642	191	139	12	15
2643	139	138	11	12
2643	138	139	12	11
2644	139	191	11	9
2644	191	139	9	11
2645	139	393	13	3
2645	393	139	3	13
2646	139	191	11	5
2646	191	139	5	11
2647	139	138	15	13
2647	138	139	13	15
2648	192	138	9	8
2648	138	192	8	9
2649	192	191	10	9
2649	191	192	9	10
2650	192	138	6	7
2650	138	192	7	6
2651	192	380	6	9
2651	380	192	9	6
2652	192	140	7	8
2652	140	192	8	7
2653	97	140	13	15
2653	140	97	15	13
2654	140	385	10	9
2654	385	140	9	10
2655	140	138	7	11
2655	138	140	11	7
2656	21	177	11	4
2656	177	21	4	11
2657	359	174	15	7
2657	174	359	7	15
2658	359	170	15	7
2658	170	359	7	15
2659	312	69	13	1
2659	69	312	1	13
2660	138	24	4	13
2660	24	138	13	4
2661	346	177	8	7
2661	177	346	7	8
2662	346	373	13	5
2662	373	346	5	13
2663	287	106	13	12
2663	106	287	12	13
2664	287	303	13	8
2664	303	287	8	13
2665	287	237	11	8
2665	237	287	8	11
2666	287	233	10	9
2666	233	287	9	10
2667	287	286	8	15
2667	286	287	15	8
2668	212	81	10	9
2668	81	212	9	10
2669	212	183	9	6
2669	183	212	6	9
2670	212	208	6	9
2670	208	212	9	6
2671	232	233	11	10
2671	233	232	10	11
2672	232	279	10	13
2672	279	232	13	10
2673	256	244	3	12
2673	244	256	12	3
2674	256	280	5	13
2674	280	256	13	5
2675	256	279	5	10
2675	279	256	10	5
2676	256	244	6	9
2676	244	256	9	6
2677	256	226	5	13
2677	226	256	13	5
2678	256	280	8	13
2678	280	256	13	8
2679	256	112	10	9
2679	112	256	9	10
2680	256	234	13	15
2680	234	256	15	13
2681	256	244	4	15
2681	244	256	15	4
2682	256	289	14	13
2682	289	256	13	14
2683	282	126	9	11
2683	126	282	11	9
2684	282	126	10	11
2684	126	282	11	10
2685	47	196	11	15
2685	196	47	15	11
2686	280	226	5	13
2686	226	280	13	5
2687	280	244	11	7
2687	244	280	7	11
2688	280	289	15	11
2688	289	280	11	15
2689	280	226	11	15
2689	226	280	15	11
2690	280	244	10	15
2690	244	280	15	10
2691	250	286	8	10
2691	286	250	10	8
2692	250	237	15	14
2692	237	250	14	15
2693	279	237	11	15
2693	237	279	15	11
2694	383	170	13	4
2694	170	383	4	13
2695	196	177	10	6
2695	177	196	6	10
2696	233	237	13	8
2696	237	233	8	13
2697	233	286	8	13
2697	286	233	13	8
2698	233	286	10	15
2698	286	233	15	10
2699	81	106	7	13
2699	106	81	13	7
2700	81	34	14	8
2700	34	81	8	14
2701	81	183	10	8
2701	183	81	8	10
2702	81	187	5	12
2702	187	81	12	5
2703	244	226	5	13
2703	226	244	13	5
2704	244	234	15	13
2704	234	244	13	15
2705	244	234	13	14
2705	234	244	14	13
2706	244	226	10	15
2706	226	244	15	10
2707	69	71	9	12
2707	71	69	12	9
2708	69	67	8	9
2708	67	69	9	8
2709	69	351	7	8
2709	351	69	8	7
2710	289	303	13	15
2710	303	289	15	13
2711	289	106	12	9
2711	106	289	9	12
2712	289	226	15	14
2712	226	289	14	15
2713	289	237	15	8
2713	237	289	8	15
2714	67	71	4	5
2714	71	67	5	4
2715	112	286	4	13
2715	286	112	13	4
2716	112	2	13	9
2716	2	112	9	13
2717	112	319	15	1
2717	319	112	1	15
2718	366	208	3	15
2718	208	366	15	3
2719	371	16	11	9
2719	16	371	9	11
2720	371	370	13	5
2720	370	371	5	13
2721	371	17	5	13
2721	17	371	13	5
2722	371	17	9	12
2722	17	371	12	9
2723	319	208	4	10
2723	208	319	10	4
2724	396	395	7	13
2724	395	396	13	7
2725	396	397	13	8
2725	397	396	8	13
2726	396	395	13	8
2726	395	396	8	13
2727	396	395	8	13
2727	395	396	13	8
2728	58	286	9	13
2728	286	58	13	9
2729	385	298	6	13
2729	298	385	13	6
2730	385	291	6	9
2730	291	385	9	6
2731	385	391	12	5
2731	391	385	5	12
2732	385	365	6	10
2732	365	385	10	6
2733	385	365	6	7
2733	365	385	7	6
2734	285	395	13	8
2734	395	285	8	13
2735	90	93	4	13
2735	93	90	13	4
2736	90	91	9	7
2736	91	90	7	9
2737	90	219	7	15
2737	219	90	15	7
2738	183	210	13	8
2738	210	183	8	13
2739	177	373	6	10
2739	373	177	10	6
2740	365	392	12	5
2740	392	365	5	12
2741	365	391	15	3
2741	391	365	3	15
2742	365	390	9	15
2742	390	365	15	9
2743	298	297	10	9
2743	297	298	9	10
2744	298	291	13	5
2744	291	298	5	13
2745	298	292	9	10
2745	292	298	10	9
2746	210	187	5	12
2746	187	210	12	5
2747	210	208	9	8
2747	208	210	8	9
2748	364	297	8	7
2748	297	364	7	8
2749	329	187	0	13
2749	187	329	13	0
2750	303	106	13	12
2750	106	303	12	13
2751	303	34	7	3
2751	34	303	3	7
2752	16	17	1	13
2752	17	16	13	1
2753	16	17	6	13
2753	17	16	13	6
2754	16	370	8	6
2754	370	16	6	8
2755	16	370	6	12
2755	370	16	12	6
2756	208	187	1	12
2756	187	208	12	1
2757	17	370	12	5
2757	370	17	5	12
2758	91	93	8	9
2758	93	91	9	8
2759	234	257	13	4
2759	257	234	4	13
2760	395	397	12	11
2760	397	395	11	12
2761	106	34	11	10
2761	34	106	10	11
2762	390	392	15	3
2762	392	390	3	15
2763	390	391	15	0
2763	391	390	0	15
2764	390	374	9	5
2764	374	390	5	9
2765	390	297	9	12
2765	297	390	12	9
2766	390	174	13	8
2766	174	390	8	13
2767	291	292	10	13
2767	292	291	13	10
2768	291	174	13	8
2768	174	291	8	13
2769	392	391	4	8
2769	391	392	8	4
2770	392	391	6	5
2770	391	392	5	6
2771	297	292	6	13
2771	292	297	13	6
2772	297	292	9	10
2772	292	297	10	9
2773	257	174	12	10
2773	174	257	10	12
2774	315	169	15	3
2774	169	315	3	15
2775	315	169	14	11
2775	169	315	11	14
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.teams (team_id, name) FROM stdin;
1	Air Force (Afterburn)
2	Whitman (Whitman Sweets)
3	Pacific Lutheran (Reign Men)
4	Reed (Hoot)
5	Occidental (Detox)
6	Lewis & Clark (Bacchus)
7	Claremont (Braineaters)
8	Carleton College-CHOP (Carleton House of Pancakes)
9	Oberlin (Flying Horsecows)
10	Navy (Poseidon)
11	Puget Sound (Postmen)
12	Xavier (B.L.O.B.)
13	Michigan Tech (DiscoTech)
14	Akron (GoonSquad)
15	Ohio-B (Bass)
16	Maryland-B (Astro Quakers)
17	West Virginia (WV Wild)
18	Butler (Butler Big Dog)
19	Kent State (Klockwork)
20	Kentucky (KULT)
21	Toledo (Savage)
22	Miami (Ohio) (Miami Boogiemen)
23	Alabama (Yellow Hammer)
24	LSU (Purple Haze)
25	Berry (Bucks)
26	Harding (Harding Apocalypse)
27	Tennessee-Chattanooga -B (Tennessee-Chattanooga B)
28	Illinois State (Gnomes)
29	Alabama-Birmingham (Inferno)
30	Mississippi State (Dark Horse)
31	South Carolina (Gamecock Ultimate)
32	North Carolina-Wilmington (Seamen)
33	Carnegie Mellon (Mr. Yuk)
34	Yale (Süperfly)
35	Tennessee (Tennessee)
36	Georgia Southern (Eagles)
37	Arkansas (Ludicrous Speed)
38	Florida (Florida)
39	Tennessee-Chattanooga (Swamp Donkeys)
40	Saint Louis (Archangel)
41	Notre Dame (Papal Rage)
42	Iowa State (ISUC)
43	Southern Illinois-Edwardsville (SIEGE)
44	Missouri S&T (Miner Threat)
45	Alabama-B (Yellow Hammer)
46	Jacksonville State (Firebird)
47	Union (Tennessee) (Union Jaxx)
48	Samford (Dogma)
49	South Florida-B (Scourge)
50	Miami (Florida) (UMiami Vice)
51	Mississippi State-B (Trenches)
52	Mississippi (Ole Miss Flagship)
53	Alabama-Huntsville (Nightmares)
54	McGill (MUT)
55	South Florida (Scallywags)
56	Michigan (MagnUM)
57	Carleton College (CUT)
58	Washington University (Contra)
59	Central Florida (Dogs of War)
60	Florida State (DUF)
61	Michigan State (ARC)
62	Chicago (Fission)
63	North Carolina State (NC State Alpha)
64	American (Stall 11)
65	James Madison (Hellfish)
66	East Carolina (Irates)
67	Virginia Commonwealth (Biscuit Villains)
68	Johns Hopkins (Dangerzone)
69	Villanova (Main Line Ultimate)
70	George Washington (George Washington Men’s Club Ultimate)
71	Maryland-Baltimore County (Booya)
72	George Mason (Meteors)
73	Dickinson (Dumptrucks)
74	George Washington-B (George Washington Men’s Club Ultimate B)
75	North Carolina-Charlotte (Charlotte Skyrise)
76	Messiah (Falcons)
77	RIT (RIT Spudheds)
78	American-B (Revolution)
79	Richmond-B (Spider Pigs)
80	Georgetown-B (Black Squirrels)
81	Vermont-B (Chill Dev)
82	Appalachian State (Nomads)
83	Amherst (Army of Darkness)
84	Middlebury-B (Branksters)
85	New Hampshire (New Hampshire Ultimate Team)
86	Brown-B (Brown - B)
87	Colby (CDC (Men's))
88	Northeastern-B (Beastern)
89	Bates (Orange Whip)
90	Wentworth (Concrete Jungle)
91	Western New England (Golden Bears)
92	Clark (Heart of Clarkness)
93	Worcester Polytechnic (Whisper)
94	Brandeis (TRON)
95	Northeastern-C (Salty C Dogs)
96	Angelo State (Ramz Ultimate Frisbee)
97	Texas-B (Graze)
98	Rice (Cloud 9)
99	Tarleton State (Texan Ultimate)
100	Dallas (Vortex)
101	Stephen F Austin (Frontier)
102	Texas A&M-B (Dozen Matter)
103	Ohio State (Leadbelly)
104	Georgetown (Justice)
105	Indiana (HoosierMama?s)
106	William & Mary (Merry Men)
107	Dartmouth (Pain Train)
108	Kennesaw State (Parliament)
109	Syracuse (Doom)
110	SUNY-Binghamton (SUNY-Binghamton)
111	Liberty (Flames)
112	Virginia Tech (Burn)
113	Georgia-B (Chillydawgs)
114	Georgia College (Disconnected)
115	Embry-Riddle (Dirty Birds)
116	North Carolina-B (BatCH)
117	Charleston (Palmetto Bums)
118	Arizona (Sunburn)
119	Arizona State-B (Pleasure)
120	Northern Arizona (El Ponderoso)
121	Denver (Sourdough)
122	Brigham Young-B (CHI B)
123	Grand Canyon-B (G-Force)
124	Colorado-B (CUCU)
125	San Diego State (Federales)
126	Loyola Marymount (Lions)
127	Southern California (USC Lockdown)
128	San Jose State (Spartans)
129	Cal Poly-Pomona (Cow Ultimate)
130	Southern California-B (USC Blockdown)
131	San Diego State-B (Bomberos)
132	California-San Diego-B (Air Squids LITE)
133	Arizona State (Prime)
134	Grand Canyon (Lopes)
135	Colorado College (Wasabi)
136	Illinois (Rise)
137	North Texas (UNT)
138	Trinity (Turbulence)
139	Texas State (Texas State Buckets)
140	Texas-Dallas (Woof)
141	Boston College (Eagles)
142	Army (Army-West Point)
143	Connecticut College (Deimos)
144	Stevens Tech (Stevens Tech)
145	Cornell-B (Cornell-B (Shake))
146	Rhode Island (RIUT)
147	SUNY-Cortland  (Team Rocket)
148	Penn State-B (LoveTap)
149	College of New Jersey (Revolution)
150	Haverford (Big Donkey Ultimate)
151	SUNY-Geneseo (Snail)
152	Vermont-C (Chill B)
153	Asbury (Asbury Ultimate)
154	Hillsdale (Chargers)
155	Ohio (Trout)
156	Lipscomb (Bisons)
157	Auburn (Aetos)
158	North Carolina (Darkside)
159	Temple (Alert)
160	North Florida (Category 5)
161	Clemson (Joint Chiefs of Waft)
162	Ave Maria (Gyrenes)
163	Florida-B (Florida B)
164	Ave Maria-B (Ave Maria B Team)
165	Ball State (Wizardz)
166	Dayton-B (UD FLUD B)
167	SUNY-Buffalo-B (Buffalo Grinch)
168	Case Western Reserve-B (Fighting Gobies)
169	Wright State (Airstrike)
170	Western Michigan (Dark Horse)
171	Eastern Michigan (Fighting Hellfish)
172	Pittsburgh-B (University of Pittsburgh- B)
173	Grand Valley (Lakers)
174	Wisconsin-Platteville (Udderburn)
175	Notre Dame-B (Opus D's)
176	Knox (River Rats)
177	Loyola-Chicago (Darkwing)
178	Missouri State (Missouri State Ultimate)
179	MIT (Grim Beaver)
180	Bowdoin (Clown)
181	Bentley (Icehouse)
182	Boston University (Boston University)
183	Wesleyan (Nietzsch Factor)
184	Elon (Big Fat Bomb)
185	Richmond (Spidermonkeys)
186	North Carolina-Asheville (UNC Asheville Mudpuppy)
187	Williams (WUFO)
188	Franciscan (Fatal)
189	Middlebury (Pranksters)
190	Baylor (Stonewall A)
191	Texas-San Antonio (Siesta)
192	Texas Tech (Tumbleweed)
193	Sam Houston (Prison Break)
194	Oklahoma (Apes of Wrath)
195	Tennessee Tech (Tech Talons)
196	Vanderbilt (Armada)
197	Georgia State (Underground)
198	Harvard (Red Line)
199	Minnesota-Duluth (Northern Lights)
200	Boise State (Mamu Zaldi)
201	Montana (Smokejump)
202	Nevada-Reno (Elevation Ultimate)
203	Texas A&M (Dozen)
204	Cornell (Buds)
205	SUNY-Buffalo (Green Eggs and Ham)
206	West Chester (West Chester (A))
207	Pennsylvania (Void)
208	Massachusetts -B (Umass Amherst Developmental)
209	Columbia (Uptown Local)
210	Maine (Snositi)
211	Boston University-B (Boston University B)
212	Tufts-B (Tufts B)
213	Providence (PC Ulty)
214	Central Connecticut State (Yetis)
215	Rensselaer Polytech (Trudge)
216	Salisbury (Buzz)
217	Harvard-B (BRed Line)
218	Connecticut-B (Grind)
219	Massachusetts-Lowell (Riverhawks)
220	Bradley (Angry Otters)
221	North Park (Lost Boys)
222	Rochester (Piggies)
223	Brigham Young (CHI)
224	California-Santa Barbara (Black Tide)
225	Cal Poly-SLO (SLOCORE)
226	Washington (Sundodgers)
227	Colorado State (Hibida)
228	Minnesota (Minnesota A)
229	Purdue (Undue Ultimate)
230	Pittsburgh (En Sabah Nur)
231	Emory (Emory Juice)
232	Tulane (Tucks)
233	Vermont (Chill)
234	Western Washington (DIRT)
235	Oregon State (Beavers)
236	Gonzaga (GURU)
237	Wisconsin (Hodags)
238	Denver-B (Sourdough B Team)
239	Colorado Mines (Entropy)
240	Colorado State-B (Bibida)
241	California-B (Ursa Minor)
242	British Columbia (Thunderbirds)
243	Cal Poly-SLO-B (SLOB)
244	Victoria (Vikes)
245	California-Santa Cruz (Slugs)
246	California (Ursa Major)
247	Northwestern (Lake Effect)
248	Santa Clara (SCAB)
249	Stanford (Stanford Men's Ultimate Team)
250	Utah State (Scotsmen)
251	British Columbia -B (B-Birds)
252	Stanford-B (Huck Syndrome)
253	Santa Clara-B (SCRATCH)
254	Portland (Uprise)
255	California-San Diego (Air Squids)
256	UCLA (Smaug)
257	Wisconsin-Milwaukee (Black Cat)
258	Simon Fraser (SFU Red Leafs)
259	Brown (Brownian Motion)
260	Colorado (Mamabird)
261	Georgia (Jojah)
262	Penn State (Spank)
263	Texas (TUFF)
264	Oregon (Ego)
265	Northeastern (Huskies)
266	Cleveland State (Cleveland State Vikings)
267	Drexel (Spitfire)
268	Dayton (FLUD)
269	Cal Poly-CCWR (CCWR)
270	California-Davis (Davis Dogs)
271	California-Santa Barbara-B (Black Out)
272	Cal Poly-Humboldt (Humboldt Buds)
273	Oregon -B (Bucks)
274	Oregon State-B (Oregon State B)
275	Portland State (Vitruvious)
276	California-Santa Cruz-B (UCSC B (Ooze))
277	Chico State (Chico State)
278	California-Irvine (Nightlife)
279	Utah Valley (Utah Valley Ultimate)
280	Utah (Zion Curtain)
281	Georgia Tech (Tribe)
282	UCLA-B (UCLA Smoke)
283	Cal State-Long Beach (Pyramid Scheme)
284	Cal Poly-SLO-C (SLOC)
285	Washington-B (Washington B)
286	Massachusetts (Zoodisc)
287	Tufts (Elephant Men)
288	Colorado Mines-B (Benchropy)
289	Virginia (Night Train)
290	Carleton College-C (Karls)
291	Wisconsin-B (Fauxdags)
292	Wisconsin-La Crosse (BadLUC)
293	St Olaf (Berzerkers)
294	Wisconsin-Eau Claire-B (Breauzone)
295	Case Western Reserve (Fighting Gobies[A])
296	Minnesota-B (Minnesota B)
297	Wisconsin-Eau Claire (EauZone)
298	Macalester (Macalester Open Ultimate)
299	Minnesota-C (Minnesota C)
300	Carleton University (Ravens)
301	Ottawa (Gee-Gees)
302	Ithaca (Nawshus Ultimate)
303	Maryland (Maryland Ultimate)
304	Carthage (Carthage Blitz)
305	Illinois-Chicago (Juice)
306	Kenyon (SERF)
307	Minnesota State-Mankato (Blue Skunks)
308	Rose-Hulman (Elephantitis)
309	Iowa State-B (BSUC)
310	Iowa-B (Iowa-B (HUCititis))
311	Duke (Brimstone)
312	Towson (Pandamonium)
313	Lehigh (Lehigh)
314	Rutgers (Machine)
315	Wooster  (Wooster Hawks)
316	Cedarville (Swarm)
317	Davenport (Panthers)
318	South Carolina-B (South Carolina)
319	Wake Forest (Well Oiled Machine, Baby)
320	North Carolina State-B (SixPack)
321	Swarthmore (Earthworms)
322	Pennsylvania Western (Haggis)
323	Georgia Tech-B (Tribe)
324	Clemson-B (Joint Biefs)
325	East Tennessee State (Dry Bones)
326	Morehouse (Morehouse Ultimate)
327	Cincinnati (Bearcats)
328	Christopher Newport (Skymaul)
329	Mary Washington (Mother of George)
330	Davidson (DUFF)
331	Cincinnati -B (Bearcats B)
332	Penn State-Behrend (JustDisc League)
333	Delaware (Sideshow)
334	Skidmore (Wombats)
335	Vassar (Swinging Monks)
336	SUNY-Albany (SCAM)
337	Montana State (Rum Runners)
338	Colorado Mesa (Colorado Mesa Mavericks)
339	DePaul (DUC)
340	Grinnell (Grinnellephants)
341	Oklahoma Christian (Eagles)
342	Kansas (Horrorzontals)
343	Kansas State (Wizards)
344	Oklahoma State (Ultimato)
345	John Brown (Ironfist)
346	Truman State (JujiTSU)
347	Princeton (Clockwork)
348	Connecticut (UConn Huskies)
349	NYU (New York University)
350	Roger Williams (RWU Mens Ultimate)
351	West Chester-B (West Chester (B))
352	Hofstra (Flying Dutchmen)
353	Siena (Siena Saints)
354	SUNY-Albany-B (SCAM)
355	Rowan (Ruf Riders)
356	Dartmouth-B (Discomfort Trolley)
357	New Jersey Tech (Highlanders)
358	Lehigh-B (Lehigh-B)
359	Toronto (TULA)
360	Michigan-B (Michigan-B)
361	Delaware-B (Sideshow)
362	Denison (Denison Frisbee Ultimate Club)
363	Illinois-B (Boomland)
364	Marquette (Birdhouse)
365	Luther (LUFDA)
366	Virginia Tech-B (Virginia Tech B)
367	Grace (Lancer Ultimate)
368	Florida Tech (F-IT)
369	Nova Southeastern (Sharks Ultimate)
370	William & Mary-B (Seahorse)
371	Virginia-B (Caboose)
372	James Madison-B (Smellfish)
373	Wisconsin-Stevens Point (Homegrown)
374	Wisconsin-Whitewater (Sub*Par)
375	Michigan State-B (Riot Control)
376	Northern Iowa (AmmUNItion)
377	St John's (Minnesota) (BAM)
378	Grinnell-B (Gphants)
379	Nebraska (Cornfed Ultimate)
380	Wichita State (Wheaties)
381	Iowa (IHUC)
382	MIT-B (Woodmunchers)
383	Valparaiso (Vult)
384	SUNY-Binghamton-B (SUNY-Binghamton B)
385	Washington University-B (Contraband)
386	Missouri (Missouri)
387	Purdue-B (CTRL-Z)
388	Illinois-C (Cornland)
389	St Thomas (Purple Reign)
390	Winona State (Experience)
391	Wisconsin-Milwaukee-B (BLACKOUT)
392	Wisconsin-C (Daglets)
393	LSU-B (Purple Haze)
394	Seattle (Throbots)
395	Whitworth (Bangarang)
396	Washington State (Air Raid)
397	Willamette (Asylum)
\.


--
-- PostgreSQL database dump complete
--

