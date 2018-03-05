--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.11
-- Dumped by pg_dump version 9.5.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: elements; Type: TABLE; Schema: public; Owner: trent
--

CREATE TABLE elements (
    ele_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE elements OWNER TO trent;

--
-- Name: status_effects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE status_effects (
    status_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE status_effects OWNER TO postgres;

--
-- Name: weapon_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE weapon_types (
    wep_type_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE weapon_types OWNER TO postgres;

--
-- Name: weapons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE weapons (
    wep_id integer NOT NULL,
    name text NOT NULL,
    attack integer NOT NULL,
    true_attack integer NOT NULL,
    element_type integer,
    element_value integer,
    needs_awakening boolean NOT NULL,
    rarity integer NOT NULL,
    affinity integer NOT NULL,
    wep_type_id integer NOT NULL,
    status_type integer NOT NULL,
    status_value integer NOT NULL
);


ALTER TABLE weapons OWNER TO postgres;

--
-- Name: weapons_sharpness; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE weapons_sharpness (
    wep_id integer NOT NULL,
    handicraft_level integer NOT NULL,
    red integer,
    orange integer,
    yellow integer,
    green integer,
    blue integer,
    white integer,
    CONSTRAINT weapons_sharpness_handicraft_level_check CHECK ((handicraft_level >= 0)),
    CONSTRAINT weapons_sharpness_handicraft_level_check1 CHECK ((handicraft_level <= 5))
);


ALTER TABLE weapons_sharpness OWNER TO postgres;

--
-- Name: weapons_slots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE weapons_slots (
    wep_id integer NOT NULL,
    slot_level integer NOT NULL,
    CONSTRAINT weapons_slots_slot_level_check CHECK ((slot_level > 0)),
    CONSTRAINT weapons_slots_slot_level_check1 CHECK ((slot_level <= 3))
);


ALTER TABLE weapons_slots OWNER TO postgres;

--
-- Data for Name: elements; Type: TABLE DATA; Schema: public; Owner: trent
--

COPY elements (ele_id, name) FROM stdin;
0	No Element
1	Fire
2	Water
3	Thunder
4	Ice
5	Dragon
\.


--
-- Data for Name: status_effects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY status_effects (status_id, name) FROM stdin;
0	No Status
1	Poison
2	Sleep
3	Paralysis
4	Blast
\.


--
-- Data for Name: weapon_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY weapon_types (wep_type_id, name) FROM stdin;
1	Hammer
2	Great Sword
3	Sword & Shield
4	Dual Blades
5	Long Sword
6	Hunting Horn
7	Lance
8	Gunlance
9	Switch Axe
10	Charge Blade
11	Insect Glaive
12	Bow
13	Light Bowgun
14	Heavy Bowgun
\.


--
-- Data for Name: weapons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY weapons (wep_id, name, attack, true_attack, element_type, element_value, needs_awakening, rarity, affinity, wep_type_id, status_type, status_value) FROM stdin;
1	Iron Hammer I	416	80	0	0	f	1	0	1	0	0
2	Iron Hammer II	468	90	0	0	f	1	0	1	0	0
3	Iron Hammer III	520	100	0	0	f	2	0	1	0	0
4	Iron Demon I	572	110	0	0	f	3	0	1	0	0
5	Iron Demon II	676	130	0	0	f	4	0	1	0	0
6	Iron Demon III	728	140	0	0	t	5	0	1	4	210
7	Iron Archdemon I	832	160	0	0	t	6	0	1	4	240
8	Iron Archdemon II	936	180	0	0	t	6	0	1	4	270
9	Nergal Crusher	1040	200	5	90	f	7	0	1	0	0
10	Obliteration's Footfall	1092	210	5	120	f	8	0	1	0	0
11	Frozen Core 	624	120	4	270	f	4	0	1	0	0
12	Frozen Core+	832	160	4	390	f	6	0	1	0	0
13	Cocytus	936	180	4	450	f	7	0	1	0	0
14	Aqua Hammer I	572	110	2	90	f	2	0	1	0	0
15	Aqua Hammer II	624	120	2	120	f	3	0	1	0	0
16	Aqua Hammer III	676	130	2	150	f	4	0	1	0	0
17	Water Basher I	780	150	2	180	f	5	0	1	0	0
18	Water Basher II	832	160	2	210	f	6	0	1	0	0
19	Water Basher III	936	180	2	240	f	6	0	1	0	0
20	Girros Hammer I	624	120	0	0	f	3	0	1	3	210
21	Girros Hammer II	676	130	0	0	f	4	0	1	3	270
22	Malady's Fist I	728	140	0	0	f	5	20	1	3	330
23	Malady's Fist II	780	150	0	0	f	6	20	1	3	360
24	Malady's Fist III	832	160	0	0	f	6	20	1	3	390
25	Blooming Hammer I	520	100	0	0	f	2	0	1	1	300
26	Blooming Hammer II	624	120	0	0	f	3	0	1	1	360
27	Blooming Hammer III	728	140	0	0	f	4	0	1	1	420
28	Buon Fiore	780	150	0	0	f	5	0	1	1	480
29	Buona Flora	936	180	0	0	f	7	0	1	1	540
30	Thunder Hammer I	676	130	3	180	f	3	0	1	0	0
31	Thunder Hammer II	780	150	3	210	f	4	0	1	0	0
32	Lightning Bash I	832	160	3	832	f	5	0	1	0	0
33	Lightning Bash II	884	170	3	270	f	6	0	1	0	0
34	Lightning Bash III	988	190	3	300	f	6	0	1	0	0
35	Bone Bludgeon I	520	100	0	0	f	1	0	1	0	0
36	Bone Bludgeon II	572	110	0	0	f	1	0	1	0	0
37	Bone Bludgeon III	624	120	0	0	f	2	0	1	0	0
38	Fossil Bludgeon I	728	140	0	0	f	3	0	1	0	0
39	Fossil Bludgeon II	780	150	0	0	f	4	0	1	0	0
40	Fossil Bludgeon III	832	160	3	360	t	5	0	1	0	0
41	Grandrock I	884	170	3	390	t	6	0	1	0	0
42	Grandrock II	988	190	3	420	t	6	0	1	0	0
43	Hazak Vlafos	988	190	5	210	f	7	0	1	0	0
44	Pandemonium's Root	1040	200	5	270	f	8	0	1	0	0
45	Bone Spike I	676	130	0	0	f	3	0	1	2	150
46	Bone Spike II	728	140	0	0	f	4	0	1	2	180
47	Baan Strike I	780	150	0	0	f	5	0	1	2	210
48	Baan Strike II	884	170	0	0	f	6	0	1	2	240
49	Baan Strike III	988	190	0	0	f	6	0	1	2	270
50	Brazenbreak I	988	190	1	120	f	6	0	1	0	0
51	Brazenbreak II	1092	210	1	120	f	7	0	1	0	0
52	Kulu Beak I	624	120	0	0	f	2	15	1	0	0
53	Kulu Beak II	676	130	0	0	f	3	15	1	0	0
54	Kulu Beak III	728	140	0	0	f	4	15	1	0	0
55	Crushing Beak I	780	150	0	0	t	5	25	1	2	240
56	Crushing Beak II	832	160	0	0	t	6	25	1	2	300
57	Crushing Beak III	884	170	0	0	t	6	25	1	2	360
58	Diablos Sledge I	884	170	0	0	f	4	-25	1	0	0
59	Diablos Sledge II	988	190	4	120	t	5	-25	1	0	0
60	Diablos Shatterer I	1092	210	4	150	t	6	-25	1	0	0
61	Diablos Shatterer II	1196	230	4	150	t	7	-25	1	0	0
62	Carapace Sledge I	676	130	0	0	f	2	-10	1	0	0
63	Carapace Sledge II	728	140	0	0	f	3	-10	1	0	0
64	Carapace Sledge III	832	160	0	0	f	4	-10	1	0	0
65	Barroth Breaker I	936	180	0	0	t	5	-10	1	3	270
66	Barroth Breaker II	988	190	0	0	t	6	-10	1	3	330
67	Barroth Breaker III	1040	200	0	0	t	6	-10	1	3	390
68	Blazing Hammer I	780	150	1	210	f	3	-20	1	0	0
69	Blazing Hammer II	832	160	1	270	f	4	-20	1	0	0
70	Anja Striker I	884	170	1	330	f	5	-20	1	0	0
71	Anja Striker II	988	190	1	360	f	6	-20	1	0	0
72	Anja Striker III	1092	210	1	390	f	6	-20	1	0	0
73	Dragonbone Basher I	520	100	5	300	f	3	0	1	0	0
74	Dragonbone Basher II	572	110	5	360	f	4	0	1	0	0
75	Dragonbone Basher III	832	160	5	420	f	6	0	1	0	0
76	Magda Floga	832	160	0	0	f	5	-20	1	4	330
77	Ragefire Magda Floga	1144	220	0	0	f	8	-20	1	4	420
78	Blacksteel Hammer I	520	100	5	120	f	5	0	1	0	0
79	Blacksteel Hammer II	572	110	5	150	f	6	0	1	0	0
80	Icesteel Hammer	988	190	4	120	f	7	0	1	0	0
81	Daora's Colossus	1040	200	4	150	f	8	0	1	0	0
82	Xeno Maph'agarna	884	170	5	180	f	8	10	1	0	0
83	Jail Hammer	832	160	0	0	f	6	0	1	3	180
84	Binder Mace	936	180	0	0	f	8	0	1	3	210
85	Buster Sword I	384	80	0	0	f	1	0	2	0	0
86	Buster Sword II	432	90	0	0	f	1	0	2	0	0
87	Buster Sword III	480	100	0	0	f	2	0	2	0	0
88	Buster Blade I	576	120	0	0	f	3	0	2	0	0
89	Buster Blade II	624	130	0	0	f	4	0	2	0	0
90	Buster Blade III	672	140	0	0	t	5	0	2	1	240
91	Chrome Razor I	720	150	0	0	t	6	0	2	1	330
92	Chrome Razor II	864	180	0	0	t	6	0	2	1	420
93	Nergal Judicator	912	190	5	120	f	7	0	2	0	0
94	Purgation's Atrocity	1008	210	5	150	f	8	0	2	0	0
95	Thunder Blade I	528	110	3	120	f	3	0	2	0	0
96	Thunder Blade II	624	130	3	150	f	4	0	2	0	0
97	Lightning Punisher I	672	140	3	180	f	5	0	2	0	0
98	Lightning Punisher II	816	170	3	210	f	6	0	2	0	0
99	Lightning Punisher III	912	190	3	240	f	6	0	2	0	0
100	Freeze Blade I	576	120	4	240	f	4	0	2	0	0
101	Freeze Blade II	624	130	4	270	f	5	0	2	0	0
102	Frost Blaze I	720	150	4	330	f	6	0	2	0	0
103	Frost Blaze II	768	160	4	390	f	6	0	2	0	0
104	Jagras Blade I	528	110	0	0	f	2	0	2	0	0
105	Jagras Blade II	576	120	0	0	f	3	0	2	0	0
106	Jagras Blade III	672	140	0	0	f	4	0	2	0	0
107	Jagras Hacker I	816	170	4	210	t	5	0	2	0	0
108	Jagras Hacker II	864	180	4	240	t	6	0	2	0	0
109	Jagras Hacker III	912	190	4	300	t	6	0	2	0	0
110	Girros Blade I	528	110	0	0	f	3	15	2	3	210
111	Girros Blade II	624	130	0	0	f	4	15	2	3	240
112	Malady's Kiss I	672	140	0	0	f	5	20	2	3	270
113	Malady's Kiss II	720	150	0	0	f	6	20	2	3	360
114	Malady's Kiss III	768	160	0	0	f	6	20	2	3	450
115	Lava Blaze I	768	160	1	270	f	6	0	2	0	0
116	Lava Blaze II	864	180	1	330	f	7	0	2	0	0
117	Blooming Blade I	528	110	0	0	f	2	0	2	1	240
118	Blooming Blade II	576	120	0	0	f	3	0	2	1	300
119	Blooming Blade III	624	130	0	0	f	4	0	2	1	360
120	Datura Blaze I	720	150	0	0	f	5	0	2	1	420
121	Datura Blaze II	768	160	0	0	f	6	0	2	1	480
122	Datura Blaze III	816	170	0	0	f	6	0	2	1	540
123	Flame Blade I	672	140	1	120	f	4	10	2	0	0
124	Flame Blade II	720	150	1	150	f	5	10	2	0	0
125	Red Wing	768	160	1	180	f	6	15	2	0	0
126	Blue Wing	816	170	1	210	f	7	15	2	0	0
127	Rathalos Glinsword	912	190	1	240	f	8	15	2	0	0
128	Bone Blade I	480	100	0	0	f	1	0	2	0	0
129	Bone Blade II	528	110	0	0	f	1	0	2	0	0
130	Bone Blade III	576	120	0	0	f	2	0	2	0	0
131	Bone Slasher I	672	140	0	0	f	3	0	2	0	0
132	Bone Slasher II	720	150	0	0	f	4	0	2	0	0
133	Bone Slasher III	768	160	4	180	t	5	0	2	0	0
134	Giant Jawblade I	816	170	4	240	t	6	0	2	0	0
135	Giant Jawblade II	912	190	4	300	f	6	0	2	0	0
136	Hazak Kys	912	190	5	300	f	7	0	2	0	0
137	Leviathan's Fury	960	200	5	300	f	8	0	2	0	0
138	Flammenzahn	720	150	1	240	f	3	-30	2	0	0
139	Flammenzahn+	864	180	1	300	f	5	-30	2	0	0
140	Gnshing Flammenzahn	1008	210	1	360	f	7	-30	2	0	0
141	Aqua Slasher I	576	120	2	120	f	2	0	2	0	0
142	Aqua Slasher II	624	130	2	150	f	3	0	2	0	0
143	Aqua Slasher III	672	140	2	180	f	4	0	2	0	0
144	Water Golum I	768	160	2	240	f	5	0	2	0	0
145	Water Golum II	816	170	2	270	f	6	0	2	0	0
146	Water Golum III	912	190	2	300	f	6	0	2	0	0
147	Carapace Buster I	624	130	0	0	f	2	-20	2	0	0
148	Carapace Buster II	672	140	0	0	f	3	-20	2	0	0
149	Carapace Buster III	720	150	0	0	f	4	-20	2	0	0
150	Barroth Shredder I	816	170	0	0	t	5	-20	2	3	270
151	Barroth Shredder II	864	180	0	0	t	6	-20	2	3	330
152	Barroth Shredder III	960	200	0	0	t	6	-20	2	3	390
153	Spiked Blade I	624	130	0	0	f	3	0	2	2	150
154	Spiked Blade II	672	140	0	0	f	4	0	2	2	180
155	Radobaan Slab I	768	160	0	0	f	5	0	2	2	210
156	Radobaan Slab II	816	170	0	0	f	6	0	2	2	240
157	Radobaan Slab III	912	190	0	0	f	6	0	2	2	270
158	Dragonbone Cleaver I	480	100	5	270	f	3	0	2	0	0
159	Dragonbone Cleaver II	576	120	5	330	f	4	0	2	0	0
160	Dragonbone Cleaver III	768	160	5	420	f	6	0	2	0	0
161	Thundersword	528	110	3	390	f	4	0	2	0	0
162	Kirin Thundersword	720	150	3	480	f	7	0	2	0	0
163	King Thundersword	768	160	3	540	f	8	0	2	0	0
164	Magda Potestas I	768	160	0	0	f	5	-20	2	4	330
165	Magda Potestas II	1056	220	0	0	f	7	-20	2	4	420
166	Blacksteel Chopper I	480	100	5	90	f	5	10	2	0	0
167	Blacksteel Chopper II	576	120	5	120	f	6	10	2	0	0
168	Icesteel Edge 	816	170	4	210	f	7	0	2	0	0
169	Daora's Decimator	864	180	4	270	f	8	0	2	0	0
170	Xeno Maliq	816	170	5	210	f	8	15	2	0	0
171	Wyvern Jawblade	864	180	0	0	t	6	0	2	4	240
172	Great Wyvern Jawblade	960	200	0	0	t	8	0	2	4	330
173	Hunter's Knife I	112	80	0	0	f	1	0	3	0	0
174	Hunter's Knife II	126	90	0	0	f	1	0	3	0	0
175	Hunter's Knife III	140	100	0	0	f	2	0	3	0	0
176	Steel Knife I	168	120	0	0	f	3	0	3	0	0
177	Steel Knife II	182	130	0	0	f	4	0	3	0	0
178	Steel Knife III	196	140	0	0	t	5	0	3	2	120
179	Chrome Slicer I	224	160	0	0	t	6	0	3	2	150
180	Chrome Slicer II	252	180	0	0	t	6	0	3	2	240
181	Nergal Jack	280	200	5	120	f	7	0	3	0	0
182	Eradication Vanguard	294	210	5	150	f	8	0	3	0	0
183	Flame Knife I	182	130	1	120	f	4	10	3	0	0
184	Flame Knife II	196	140	1	120	f	5	10	3	0	0
185	Heat Edge	224	160	1	150	f	6	20	3	0	0
186	Corona	266	190	1	180	f	7	20	3	0	0
187	Heavy Bang	210	150	0	0	f	4	0	3	0	0
188	Heavy Bang+	252	180	3	270	t	6	0	3	0	0
189	Master Bang	280	200	3	330	t	7	0	3	0	0
190	Aqua Messer I	140	100	2	90	f	2	0	3	0	0
191	Aqua Messer II	168	120	2	120	f	3	0	3	0	0
192	Aqua Messer III	196	140	2	150	f	4	0	3	0	0
193	Rogue Wave I	210	150	2	180	f	5	0	3	0	0
194	Rogue Wave II	224	160	2	210	f	6	0	3	0	0
195	Rogue Wave III	252	180	2	240	f	6	0	3	0	0
196	Glacial Grace I	182	130	4	210	f	4	0	3	0	0
197	Glacial Grace II	196	140	4	240	f	5	0	3	0	0
198	Rimespire	210	150	4	300	f	6	0	3	0	0
199	Legia Rimespire	224	160	4	330	f	8	0	3	0	0
200	Princess Rapier	168	120	0	0	f	3	10	3	1	150
201	Queen Rapier	210	150	0	0	f	5	10	3	1	180
202	Queen Rose	238	170	0	0	f	6	10	3	1	210
203	Royal Rose	266	190	0	0	f	7	10	3	1	240
204	Lumu Knife I	168	120	0	0	f	3	0	3	0	0
205	Lumu Knife II	182	130	0	0	f	4	0	3	0	0
206	Lumu Tabar I	210	150	0	0	t	5	0	3	4	270
207	Lumu Tabar II	224	160	0	0	t	6	0	3	4	300
208	Lumu Tabar III	238	170	0	0	t	6	0	3	4	330
209	Blooming Knife I	154	110	0	0	f	2	0	3	1	210
210	Blooming Knife II	182	130	0	0	f	3	0	3	1	240
211	Blooming Knife III	196	140	0	0	f	4	0	3	1	270
212	Datura Blossom I	210	150	0	0	f	5	0	3	1	330
213	Datura Blossom II	224	160	0	0	f	6	0	3	1	360
214	Datura Blossom III	238	170	0	0	f	6	0	3	1	390
215	Girros Knife I	168	120	0	0	f	3	10	3	3	120
216	Girros Knife II	182	130	0	0	f	4	10	3	3	150
217	Malady's Tabar I	196	140	0	0	f	5	20	3	3	180
218	Malady's Tabar II	210	150	0	0	f	6	20	3	3	210
219	Malady's Tabar III	224	160	0	0	f	6	20	3	3	240
220	Bone Kukri I	140	100	0	0	f	1	0	3	0	0
221	Bone Kukri II	154	110	0	0	f	1	0	3	0	0
222	Bone Kukri III	168	120	0	0	f	2	0	3	0	0
223	Chief Kukri I	196	140	0	0	f	3	0	3	0	0
224	Chief Kukri II	210	150	0	0	f	4	0	3	0	0
225	Chief Kukri III	224	160	0	0	t	5	0	3	3	180
226	Grand Barong I	238	170	0	0	t	6	0	3	3	240
227	Grand Barong II	266	190	0	0	t	6	0	3	3	300
228	Spiked Edge I	182	130	0	0	f	3	0	3	2	120
229	Spiked Edge II	196	140	0	0	f	4	0	3	2	120
230	Baan Claw I	238	170	0	0	f	5	0	3	2	150
231	Baan Claw II	252	180	0	0	f	6	0	3	2	180
232	Baan Claw III	266	190	0	0	f	6	0	3	2	210
233	Jagras Edge I	168	120	0	0	f	2	0	3	0	0
234	Jagras Edge II	196	140	0	0	f	3	0	3	0	0
235	Jagras Edge III	210	150	0	0	f	4	0	3	0	0
236	Jagras Garotte I	238	170	2	300	t	5	0	3	0	0
237	Jagras Garotte II	252	180	2	330	t	6	0	3	0	0
238	Jagras Garotte III	266	190	2	360	t	6	0	3	0	0
239	Thunder Edge I	182	130	3	90	f	3	0	3	0	0
240	Thunder Edge II	210	150	3	120	f	4	0	3	0	0
241	Lightning Nemesis I	224	160	3	150	f	5	0	3	0	0
242	Lightning Nemesis II	252	180	3	180	f	6	0	3	0	0
243	Lightning Nemesis III	266	190	3	210	f	6	0	3	0	0
244	Carapace Edge I	182	130	0	0	f	2	0	3	0	0
245	Carapace Edge II	196	140	0	0	f	3	0	3	0	0
246	Carapace Edge III	224	160	0	0	f	4	0	3	0	0
247	Barroth Club I	252	180	0	0	t	5	0	3	3	120
248	Barroth Club II	266	190	0	0	t	6	0	3	3	150
249	Barroth Club III	294	210	0	0	t	6	0	3	3	180
250	Blazing Edge I	196	140	1	150	f	3	-20	3	0	0
251	Blazing Edge II	224	160	1	180	f	4	-20	3	0	0
252	Flammensucher	266	190	1	210	f	5	-20	3	0	0
253	Gnashing Flammensucher	294	210	1	240	f	7	-20	3	0	0
254	Dragonbone Sword I	140	100	5	270	f	3	0	3	0	0
255	Dragonbone Sword II	154	110	5	330	f	4	0	3	0	0
256	Dragonbone Sword III	196	140	5	450	f	6	0	3	0	0
257	Fulminator	154	110	3	270	f	4	0	3	0	0
258	Thunderbolt Sword I	210	150	3	300	f	6	0	3	0	0
259	Thunderbolt Sword II	224	160	3	360	f	7	0	3	0	0
260	Blacksteel Sword I	140	100	5	120	f	5	0	3	0	0
261	Blacksteel Sword II	154	110	5	150	f	6	0	3	0	0
262	Teostra's Spada	252	180	0	0	f	7	0	3	4	210
263	Teostra's Emblem	266	190	0	0	f	8	0	3	4	240
264	Xeno Mabura	238	170	5	270	f	8	15	3	0	0
265	Matched Slicers I	112	80	0	0	f	1	0	4	0	0
266	Matched Slicers II	126	90	0	0	f	1	0	4	0	0
267	Matched Slicers III	140	100	0	0	f	2	0	4	0	0
268	Dual Slicers I	154	110	0	0	f	3	0	4	0	0
269	Dual Slicers II	182	130	0	0	f	4	0	4	0	0
270	Dual Slicers III	196	140	0	0	t	5	0	4	1	210
271	Chrome Slicers I	224	160	0	0	t	6	0	4	1	240
272	Chrome Slicers II	252	180	0	0	t	6	0	4	1	270
273	Nergal Gouge	280	200	5	90	f	7	0	4	0	0
274	Decimation Claws	294	210	5	120	f	8	0	4	0	0
275	Luminous Daggers I	168	120	0	0	f	3	0	4	0	0
276	Luminous Daggers II	196	140	0	0	f	4	0	4	0	0
277	Dual Destroyers I	224	160	3	120	t	5	0	4	0	0
278	Dual Destroyers II	238	170	3	150	t	6	0	4	0	0
279	Dual Destroyers III	252	180	3	210	t	6	0	4	0	0
280	Rookslayer Handaxes	252	180	0	0	f	6	-10	4	4	120
281	Bazelhawk Rookslayer	280	200	0	0	f	8	-10	4	4	150
282	Freeze Daggers I	182	130	4	60	f	4	0	4	0	0
283	Freeze Daggers II	210	150	4	60	f	5	0	4	0	0
284	Freeze Chain I	238	170	4	120	f	6	0	4	0	0
285	Freeze Chain II	252	180	4	150	f	6	0	4	0	0
286	Rending Beaks I	154	110	0	0	f	2	15	4	0	0
287	Rending Beaks II	168	120	0	0	f	3	15	4	0	0
288	Rending Beaks III	182	130	0	0	f	4	15	4	0	0
289	Arcanaria I	210	150	0	0	t	5	20	4	2	90
290	Arcanaria II	224	160	0	0	t	6	20	4	2	90
291	Arcanaria III	238	170	0	0	t	6	20	4	2	120
292	Sworn Rapiers	182	130	2	90	f	3	0	4	0	0
293	Sworn Rapiers+	210	150	2	90	f	5	0	4	0	0
294	Holy Sabers	252	180	2	120	f	2	0	4	0	0
295	Bone Hachets I	140	100	0	0	f	1	0	4	0	0
296	Bone Hachets II	154	110	0	0	f	1	0	4	0	0
297	Bone Hachets III	168	120	0	0	f	2	0	4	0	0
298	Wild Hachets I	196	140	0	0	f	3	0	4	0	0
299	Wild Hachets II	210	150	0	0	f	4	0	4	0	0
300	Wild Hachets III	224	160	0	0	t	5	0	4	4	120
301	Strong Hatchets I	238	170	0	0	t	6	0	4	4	150
302	Strong Hatchets II	266	190	0	0	t	6	0	4	4	180
303	Blazing Hachets I	196	140	1	90	f	3	-20	4	0	0
304	Blazing Hachets II	210	150	1	120	f	4	-20	4	0	0
305	Anja Cyclone I	238	170	1	150	f	5	-20	4	0	0
306	Anja Cyclone II	266	190	1	180	f	6	-20	4	0	0
307	Anja Cyclone III	294	210	1	210	f	7	-20	4	0	0
308	Diablos Hachets I	224	160	0	0	f	4	-10	4	0	0
309	Diablos Hachets II	266	190	4	90	t	5	-10	4	0	0
310	Diablos Clubs I	294	210	4	90	t	6	-10	4	0	0
311	Diablos Clubs II	322	230	4	90	t	7	-10	4	0	0
312	Madness Pangas I	154	110	2	90	f	2	0	4	0	0
313	Madness Pangas II	182	130	2	90	f	3	0	4	0	0
314	Madness Pangas III	210	150	2	120	f	4	0	4	0	0
315	Jyura Hatchets I	238	170	2	150	f	5	0	4	0	0
316	Jyura Hatchets II	252	180	2	180	f	6	0	4	0	0
317	Jyura Hatchets III	266	190	2	210	f	6	0	4	0	0
318	Lava Cyclone I	252	180	1	120	f	6	0	4	0	0
319	Lava Cyclone II	252	180	1	150	f	7	0	4	0	0
320	Taurus Pangas I	168	120	0	0	f	3	0	4	0	0
321	Taurus Pangas II	182	130	0	0	f	4	0	4	0	0
322	Dark Ripper I	196	140	0	0	t	5	0	4	3	90
323	Dark Ripper II	210	150	0	0	t	6	0	4	3	90
324	Dark Ripper III	224	160	0	0	t	6	0	4	3	90
325	Pulsar Hachets I	154	110	3	60	f	2	10	4	0	0
326	Pulsar Hachets II	168	120	3	60	f	3	10	4	0	0
327	Pulsar Hachets III	196	140	3	60	f	4	10	4	0	0
328	Kadachi Claws I	224	160	3	90	f	5	10	4	0	0
329	Kadachi Claws II	238	170	3	120	f	6	10	4	0	0
330	Kadachi Claws III	252	180	3	150	f	6	10	4	0	0
331	Garon Hatchets I	182	130	0	0	f	4	20	4	0	0
332	Garon Hatchets II	196	140	1	180	t	5	20	4	0	0
333	Blood-drinker Chainblade	210	150	1	180	t	6	20	4	0	0
334	Sin	224	160	1	180	t	8	20	4	0	0
335	Dragonbone Twinblades I	140	100	5	120	f	3	0	4	0	0
336	Dragonbone Twinblades II	168	120	5	120	f	4	0	4	0	0
337	Enduring Schism	196	140	5	270	f	7	0	4	0	0
338	Kirin Bolts	154	110	3	210	f	4	0	4	0	0
339	Kirin Bolts+	196	140	3	240	f	7	0	4	0	0
340	Monarch	224	160	3	270	f	8	0	4	0	0
341	Magda Ungulae I	224	160	0	0	f	5	-20	4	4	180
342	Magda Ungulae II	308	220	0	0	f	7	-20	4	4	210
343	Blacksteel Twins I	140	100	5	90	f	5	0	4	0	0
344	Blacksteel Twins II	154	110	5	120	f	6	0	4	0	0
345	Twin Nails	238	170	4	210	f	7	0	4	0	0
346	Fire and Ice	252	180	4	240	f	8	0	4	0	0
347	Xeno Raqs	238	170	5	150	f	8	0	4	0	0
348	Iron Katana I	264	80	0	0	f	1	0	5	0	0
349	Iron Katana II	297	90	0	0	f	1	0	5	0	0
350	Iron Katana III	330	100	0	0	f	2	0	5	0	0
351	Iron Grace I	363	110	0	0	f	3	0	5	0	0
352	Iron Grace II	429	130	0	0	f	4	0	5	0	0
353	Iron Grace III	462	140	2	120	t	5	0	5	0	0
354	Iron Gospel I	528	160	2	150	t	6	0	5	0	0
355	Iron Gospel II	594	180	2	180	t	6	0	5	0	0
356	Nergal Reaver	627	190	5	90	f	7	0	5	0	0
357	Extermination's Edge	693	210	5	120	f	8	0	5	0	0
358	Flickering Glow I	429	130	0	0	f	3	0	5	0	0
359	Flickering Glow II	462	140	0	0	f	4	0	5	0	0
360	Dazzling Flash I	528	160	3	240	t	5	0	5	0	0
361	Dazzling Flash II	561	170	3	300	t	6	0	5	0	0
362	Dazzling Flash III	594	180	3	360	t	6	0	5	0	0
363	First Dance I	330	100	0	0	f	2	15	5	0	0
364	First Dance II	363	110	0	0	f	3	15	5	0	0
365	First Dance III	429	130	0	0	f	4	15	5	0	0
366	Last Dance I	495	150	0	0	t	5	20	5	2	210
367	Last Dance II	528	160	0	0	t	6	20	5	2	240
368	Last Dance III	561	170	0	0	t	6	20	5	2	270
369	Brazenridge I	594	180	1	90	f	6	-10	5	0	0
370	Brazenridge II	660	200	1	120	f	7	-10	5	0	0
371	Wyvern Blade Leaf	363	110	0	0	f	3	10	5	1	240
372	Wyvern Blade Verde	495	150	0	0	f	5	10	5	1	270
373	Wyvern Blade Holly	627	190	0	0	f	7	10	5	1	330
374	Wyvern Blade Fall	396	120	1	150	f	4	15	5	0	0
375	Wyvern Blade Blood	528	160	1	180	f	6	15	5	0	0
376	Wyvern Blade Azure	561	170	1	210	f	7	15	5	0	0
377	Wyvern Blade Indigo	627	190	1	240	f	8	15	5	0	0
378	Bone Shotel I	297	90	0	0	f	1	0	5	0	0
379	Bone Shotel II	330	100	0	0	f	1	0	5	0	0
380	Bone Shotel III	396	120	0	0	f	2	0	5	0	0
381	Hard Bone Shotel I	429	130	0	0	f	3	0	5	0	0
382	Hard Bone Shotel II	495	150	0	0	f	4	0	5	0	0
383	Hard Bone Shotel III	528	160	0	0	t	5	0	5	2	210
384	Bone Reaper I	561	170	0	0	t	6	0	5	2	240
385	Bone Reaper II	627	190	0	0	t	6	0	5	2	270
386	Rookslayer Long Sword	561	170	0	0	f	6	-10	5	4	150
387	Bazel Varga Rookslayer	660	200	0	0	f	8	-10	5	4	210
388	Blazing Shotel I	462	140	1	150	f	3	-20	5	0	0
389	Blazing Shotel II	528	160	1	210	f	4	-20	5	0	0
390	Anja Scimitar I	594	180	1	270	f	5	-20	5	0	0
391	Anja Scimitar II	660	200	1	330	f	6	-20	5	0	0
392	Anja Scimitar III	693	210	1	390	f	6	-20	5	0	0
393	Jyura Shotel I	396	120	2	150	f	2	0	5	0	0
394	Jyura Shotel II	429	130	2	180	f	3	0	5	0	0
395	Jyura Shotel III	462	140	2	210	f	4	0	5	0	0
396	Dipterus I	495	150	2	240	f	5	0	5	0	0
397	Dipterus II	561	170	2	300	f	6	0	5	0	0
398	Dipterus III	627	190	2	360	f	6	0	5	0	0
399	Hazak Grosser I	627	190	5	210	f	7	0	5	0	0
400	Hazak Grosser II	660	200	5	270	f	7	0	5	0	0
401	Pulsar Shotel I	363	110	3	120	f	3	10	5	0	0
402	Pulsar Shotel II	396	120	3	150	f	3	10	5	0	0
403	Pulsar Shotel III	462	140	3	180	f	4	10	5	0	0
404	Kadachi Fang I	528	160	3	210	f	5	15	5	0	0
405	Kadachi Fang II	561	170	3	240	f	6	15	5	0	0
406	Kadachi Fang III	594	180	3	270	f	6	15	5	0	0
407	Glacial Shotel I	429	130	4	210	f	4	0	5	0	0
408	Glacial Shotel II	462	140	4	240	f	5	0	5	0	0
409	Stealer	495	150	4	300	f	6	0	5	0	0
410	Legia Stealer	528	160	4	360	f	8	0	5	0	0
411	Dark Shotel I	396	120	0	0	f	3	0	5	0	0
412	Dark Shotel II	429	130	0	0	f	4	0	5	0	0
413	Dark Scimitar I	462	140	0	0	t	5	0	5	3	180
414	Dark Scimitar II	495	150	0	0	t	6	0	5	3	210
415	Dark Scimitar III	528	160	0	0	t	6	0	5	3	240
416	Dragonbone Stabber I	330	100	5	270	f	3	0	5	0	0
417	Dragonbone Stabber II	363	110	5	330	f	4	0	5	0	0
418	Dragonbone Stabber III	528	160	5	420	f	6	0	5	0	0
419	Magda Facultas I	528	160	0	0	f	5	-20	5	4	300
420	Magda Facultas II	726	220	0	0	f	7	-20	5	4	360
421	Blacksteel Long Sword I	330	100	5	120	f	5	0	5	0	0
422	Blacksteel Long Sword II	363	110	5	150	f	6	0	5	0	0
423	Imperial Saber	561	170	0	0	f	7	0	5	4	300
424	Imperial Shimmer	627	190	0	0	f	8	0	5	4	300
425	Xeno Cypher 	594	180	5	180	f	8	15	5	0	0
426	Supermacy Blade	561	170	5	120	t	6	0	5	0	0
427	Divine Slasher	693	210	5	150	t	8	0	5	0	0
428	Azure Star Blade	363	110	2	120	f	3	20	5	0	0
429	Metal Bagpipe I	336	80	0	0	f	1	0	6	0	0
430	Metal Bagpipe II	378	90	0	0	f	1	0	6	0	0
431	Metal Bagpipe III	420	100	0	0	f	2	0	6	0	0
432	Great Bagpipe I	462	110	0	0	f	3	0	6	0	0
433	Great Bagpipe II	546	130	0	0	f	4	0	6	0	0
434	Great Bagpipe III	588	140	0	0	t	5	0	6	3	210
435	Fortissimo I	672	160	0	0	t	6	0	6	3	240
436	Fortissimo II	756	180	0	0	t	6	0	6	3	270
437	Nergal Groove	840	200	5	120	f	7	0	6	0	0
438	Desolation's Overture	882	210	5	150	f	8	0	6	0	0
439	Thunder Gaida I	504	120	3	120	f	3	0	6	0	0
440	Thunder Gaida II	546	130	3	150	f	4	0	6	0	0
441	Lightning Drum I	630	150	3	180	f	5	0	6	0	0
442	Lightning Drum II	714	170	3	210	f	6	0	6	0	0
443	Lightning Drum III	756	180	3	240	f	6	0	6	0	0
444	Kulu Duda I	420	100	0	0	f	2	15	6	0	0
445	Kulu Duda II	504	120	0	0	f	3	15	6	0	0
446	Kulu Duda III	588	140	0	0	f	4	15	6	0	0
447	Dancing Davul I	630	150	0	0	t	5	25	6	2	240
448	Dancing Davul II	672	160	0	0	t	6	25	6	2	300
449	Dancing Davul III	714	170	0	0	t	6	25	6	2	360
450	Valkyrie Chordmaker	462	110	1	150	f	3	15	6	0	0
451	Queen Chordmaker	630	150	1	180	f	5	15	6	0	0
452	Coral Chordmaker	714	170	1	210	f	6	25	6	0	0
453	Royal Chordmaker	798	190	1	240	f	7	25	6	0	0
454	Aqua Bagpipe I	420	100	2	120	f	2	0	6	0	0
455	Aqua Bagpipe II	504	120	2	150	f	3	0	6	0	0
456	Aqua Bagpipe III	546	130	2	180	f	4	0	6	0	0
457	Water Tamtam I	588	140	2	210	f	5	0	6	0	0
458	Water Tamtam II	672	160	2	240	f	6	0	6	0	0
459	Water Tamtam III	756	180	2	270	f	6	0	6	0	0
460	Glacial Bagpipe I	546	130	4	240	f	4	0	6	0	0
461	Glacial Bagpipe II	588	140	4	300	f	5	0	6	0	0
462	Sectored	630	150	4	330	f	6	0	6	0	0
463	Legia Sectored	672	160	4	360	f	7	0	6	0	0
464	Bone Horn I	420	100	0	0	f	1	0	6	0	0
465	Bone Horn II	462	110	0	0	f	1	0	6	0	0
466	Bone Horn III	504	120	0	0	f	2	0	6	0	0
467	Hard Bone Horn I	588	140	0	0	f	3	0	6	0	0
468	Hard Bone Horn II	630	150	0	0	f	4	0	6	0	0
469	Hard Bone Horn III	672	160	4	180	t	5	0	6	0	0
470	Heavy Bone Horn I	714	170	4	210	t	6	0	6	0	0
471	Heavy Bone Horn II	798	190	4	240	t	6	0	6	0	0
472	Gama Horn I	756	180	0	0	f	6	0	6	4	120
473	Gama Horn II	798	190	0	0	f	7	0	6	4	150
474	Blazing Horn I	546	130	1	210	f	3	-20	6	0	0
475	Blazing Horn II	630	150	1	240	f	4	-20	6	0	0
476	Anja Barone I	672	160	1	270	f	5	-20	6	0	0
477	Anja Barone II	798	190	1	330	f	6	-20	6	0	0
478	Anja Barone III	882	210	1	450	f	6	-20	6	0	0
479	Blooming Horn I	504	120	0	0	f	2	0	6	1	240
480	Blooming Horn II	546	130	0	0	f	3	0	6	1	300
481	Blooming Horn III	588	140	0	0	f	4	0	6	1	360
482	Datura Horn I	630	150	0	0	f	5	0	6	1	420
483	Datura Horn II	672	160	0	0	f	6	0	6	1	480
484	Datura Horn III	714	170	0	0	f	6	0	6	1	540
485	Lumu Horn I	546	130	0	0	f	3	10	6	0	0
486	Lumu Horn II	588	140	0	0	f	4	10	6	0	0
487	Lumu Barone I	630	150	2	420	f	5	10	6	0	0
488	Lumu Barone II	672	160	2	480	f	6	10	6	0	0
489	Lumu Barone III	714	170	2	570	f	6	10	6	0	0
490	Rookslayer Drum	756	180	0	0	f	6	-10	6	4	180
491	Bazelreid Rookslayer	840	200	0	0	f	8	-10	6	4	210
492	Sonic Horn I	462	110	0	0	f	2	0	6	3	120
493	Sonic Horn II	504	120	0	0	f	3	0	6	3	150
494	Sonic Horn III	546	130	0	0	f	4	0	6	3	180
495	Glass Royale	588	140	0	0	f	5	0	6	3	240
496	Glass Royale+	630	150	0	0	f	6	0	6	3	270
497	Queen Vespoid Horn	672	160	0	0	f	7	0	6	3	300
498	Spiked Horn I	546	130	0	0	f	3	0	6	2	150
499	Spiked Horn II	588	140	0	0	f	4	0	6	2	180
500	Baan Horn I	672	160	0	0	f	5	0	6	2	210
501	Baan Horn II	756	180	0	0	f	6	0	6	2	240
502	Baan Horn III	798	190	0	0	f	6	0	6	2	270
503	Dragonbone Auldhorn I	420	100	5	300	f	3	0	6	0	0
504	Dragonbone Auldhorn II	462	110	5	360	f	4	0	6	0	0
505	Dragonbone Auldhorn III	672	160	5	420	f	6	0	6	0	0
506	Thundercry Horn 	504	120	3	390	f	4	0	6	0	0
507	Thunderbolt Horn I	588	140	3	480	f	6	0	6	0	0
508	Thunderbolt Horn II	672	160	3	540	f	7	0	6	0	0
509	Blacksteel Dragonhorn I	420	100	5	120	f	5	0	6	0	0
510	Blacksteel Dragonhorn II	462	110	5	150	f	6	0	6	0	0
511	Teostra's Tiple	756	180	0	0	f	7	0	6	4	330
512	Teostra's Orphée	798	190	0	0	f	8	0	6	4	390
513	Xeno Manasheena	714	170	5	180	f	8	15	6	0	0
514	Iron Lance I	184	80	0	0	f	1	0	7	0	0
515	Iron Lance II	207	90	0	0	f	1	0	7	0	0
516	Iron Lance III	230	100	0	0	f	2	0	7	0	0
517	Steel Lance I	253	110	0	0	f	3	0	7	0	0
518	Steel Lance II	299	130	0	0	f	4	0	7	0	0
519	Steel Lance III	322	140	0	0	t	5	0	7	3	210
520	Chrome Lance I	368	160	0	0	t	6	0	7	3	240
521	Chrome Lance II	414	180	0	0	t	6	0	7	3	270
522	Nergal Impaler	460	200	5	120	f	7	0	7	0	0
523	Perdition's Hand	483	210	5	150	f	8	0	7	0	0
524	Glacial Lance I	299	130	4	270	f	4	0	7	0	0
525	Glacial Lance II	322	140	4	300	f	5	0	7	0	0
526	Legiana Halberd I	345	150	4	330	f	6	0	7	0	0
527	Legiana Halberd II	368	160	4	360	f	7	0	7	0	0
528	Kulu Lance I	253	110	0	0	f	2	15	7	0	0
529	Kulu Lance II	276	120	0	0	f	2	15	7	0	0
530	Kulu Lance III	299	130	0	0	f	4	15	7	0	0
531	Kulu Hasta I	345	150	0	0	t	5	25	7	2	300
532	Kulu Hasta II	368	160	0	0	t	6	25	7	2	330
533	Kulu Hasta III	391	170	0	0	t	6	25	7	2	360
534	Gama Pilebunker I	368	160	0	0	f	6	0	7	4	180
535	Gama Pilebunker II	391	170	0	0	f	7	0	7	4	210
536	Thunder Lance I	276	120	3	120	f	3	0	7	0	0
537	Thunder Lance II	322	140	3	150	f	4	0	7	0	0
538	Lightning Spire I	368	160	3	180	f	5	0	7	0	0
539	Lightning Spire II	391	170	3	210	f	6	0	7	0	0
540	Lightning Spire III	414	180	3	240	f	6	0	7	0	0
541	Blooming Lance I	230	100	0	0	f	2	0	7	1	240
542	Blooming Lance II	253	110	0	0	f	3	0	7	1	300
543	Blooming Lance III	299	130	0	0	f	4	0	7	1	360
544	Datura Pike I	345	150	0	0	f	5	0	7	1	420
545	Datura Pike II	368	160	0	0	f	6	0	7	1	480
546	Datura Pike III	391	170	0	0	f	6	0	7	1	540
547	Flame Lance I	299	130	1	180	f	4	10	7	0	0
548	Flame Lance II	322	140	1	210	f	5	10	7	0	0
549	Red Tail	391	170	1	240	f	6	10	7	0	0
550	Blue Tail	414	180	1	210	f	7	20	7	0	0
551	Blue Prominence	437	190	1	300	f	8	20	7	0	0
552	Bone Lance I	207	90	0	0	f	1	0	7	0	0
553	Bone Lance II	230	100	0	0	f	1	0	7	0	0
554	Bone Lance III	253	110	0	0	f	2	0	7	0	0
555	Hard Bone Lance I	322	140	0	0	f	3	0	7	0	0
556	Hard Bone Lance II	345	150	0	0	f	4	0	7	0	0
557	Hard Bone Lance III	368	160	0	0	t	5	0	7	1	180
558	Heavy Bone Lance I	391	170	0	0	t	6	0	7	1	210
559	Heavy Bone Lance II	437	190	0	0	t	6	0	7	1	240
560	Hazak Wächter	437	190	5	240	f	7	0	7	0	0
561	Love's Sorrow	460	200	5	270	f	8	0	7	0	0
562	Taurus Lance I	276	120	0	0	f	3	0	7	0	0
563	Taurus Lance II	299	130	0	0	f	4	0	7	0	0
564	Dark Stinger I	322	140	0	0	t	5	0	7	4	180
565	Dark Stinger II	345	150	0	0	t	6	0	7	4	210
566	Dark Stinger III	368	160	0	0	t	6	0	7	4	240
567	Carapace Lance I	253	110	0	0	f	2	-20	7	0	0
568	Carapace Lance II	276	120	0	0	f	3	-20	7	0	0
569	Carapace Lance III	345	150	0	0	f	4	-20	7	0	0
570	Barroth Stinger I	391	170	0	0	t	5	-20	7	3	300
571	Barroth Stinger II	437	190	0	0	t	6	-20	7	3	330
572	Barroth Stinger III	460	200	0	0	t	6	-20	7	3	390
573	Garon Lance I	299	130	0	0	f	4	15	7	0	0
574	Garon Lance II	322	140	1	150	t	5	0	7	0	0
575	Garon Dhara I	345	150	1	180	t	6	30	7	0	0
576	Garon Dhara II	391	170	1	210	t	7	30	7	0	0
577	Aqua Horn I	253	110	2	150	f	2	0	7	0	0
578	Aqua Horn II	276	120	2	180	f	2	0	7	0	0
579	Aqua Horn III	322	140	2	210	f	4	0	7	0	0
580	Water Spike I	345	150	2	240	f	5	0	7	0	0
581	Water Spike II	391	170	2	270	f	6	0	7	0	0
582	Water Spike III	437	190	2	300	f	6	0	7	0	0
583	Dragonbone Lance I	230	100	5	300	f	3	0	7	0	0
584	Dragonbone Lance II	253	110	5	360	f	4	0	7	0	0
585	Dragonbone Lance III	368	160	5	420	f	6	0	7	0	0
586	Rookslayer Lance	414	180	0	0	f	6	-10	7	4	180
587	Bazel Myniad Rookslayer	460	200	0	0	f	8	-10	7	4	210
588	Thunderpike	253	110	3	420	f	4	0	7	0	0
589	Thunderspear	345	150	3	480	f	7	10	7	0	0
590	Thunderpiercer	368	160	3	540	f	8	10	7	0	0
591	Blacksteel Lance I	230	100	5	120	f	5	0	7	0	0
592	Blacksteel Lance II	253	110	5	150	f	6	0	7	0	0
593	Icesteel Spear	391	170	4	210	f	7	10	7	0	0
594	Daora's Fang	414	180	4	240	f	8	10	7	0	0
595	Xeno Zauta	391	170	5	180	f	8	15	7	0	0
596	Babel Spear	414	180	1	270	t	6	0	7	0	0
597	Elder Babel Spear	460	200	1	330	t	8	0	7	0	0
598	Iron Gunlance I	184	80	0	0	f	1	0	8	0	0
599	Iron Gunlance II	207	90	0	0	f	1	0	8	0	0
600	Iron Gunlance III	230	100	0	0	f	2	0	8	0	0
601	Steel Gunlance I	253	110	0	0	f	3	0	8	0	0
602	Steel Gunlance II	299	130	0	0	f	4	0	8	0	0
603	Steel Gunlance III	322	140	0	0	f	5	0	8	0	0
604	Chrome Gunlance I	368	160	0	0	t	6	0	8	4	240
605	Chrome Gunlance II	414	180	0	0	t	6	0	8	4	270
606	Nergal Ram	460	200	5	120	f	7	0	8	0	0
607	Eradication Flame	483	210	5	150	f	8	0	8	0	0
608	Pulsar Gunlance I	230	100	3	120	f	2	10	8	0	0
609	Pulsar Gunlance II	253	110	3	150	f	3	10	8	0	0
610	Pulsar Gunlance III	299	130	3	180	f	4	10	8	0	0
611	Kadachi Striker	345	150	3	210	f	5	20	8	0	0
612	Kadachi Striker+	391	170	3	240	f	6	20	8	0	0
613	Mythic Kadachi Striker	414	180	3	270	f	7	20	8	0	0
614	Rath Gunlance I	276	120	1	120	f	4	15	8	0	0
615	Rath Gunlance II	322	140	1	150	f	5	15	8	0	0
616	Red Rook	345	150	1	180	f	6	20	8	0	0
617	Blue Rook	414	180	1	210	f	7	20	8	0	0
618	Blue Chariot	437	190	1	240	f	8	20	8	0	0
619	Princess Panoply	276	120	0	0	f	3	10	8	1	240
620	Princess Panoply+	345	150	0	0	f	5	10	8	1	270
621	Rose Burst	391	170	0	0	f	6	15	8	1	300
622	Royal Burst	437	190	0	0	f	7	15	8	1	330
623	Madness Gunlance I	253	110	2	210	f	2	0	8	0	0
624	Madness Gunlance II	276	120	2	240	f	3	0	8	0	0
625	Madness Gunlance III	299	130	2	270	f	4	0	8	0	0
626	Jyura Blaster I	345	150	2	300	f	5	0	8	0	0
627	Jyura Blaster II	368	160	2	330	f	6	0	8	0	0
628	Jyura Blaster III	437	190	2	360	f	6	0	8	0	0
629	Glacial Gunlance I	299	130	4	180	f	4	0	8	0	0
630	Glacial Gunlance II	322	140	4	240	f	5	0	8	0	0
631	Legiana Cannon I	345	150	4	300	f	6	0	8	0	0
632	Legiana Cannon II	368	160	4	360	f	7	0	8	0	0
633	Bone Gunlance I	207	90	0	0	f	1	0	8	0	0
634	Bone Gunlance II	230	100	0	0	f	1	0	8	0	0
635	Bone Gunlance III	253	110	0	0	f	2	0	8	0	0
636	Bone Cannon I	276	120	0	0	f	3	0	8	0	0
637	Bone Cannon II	322	140	0	0	f	4	0	8	0	0
638	Bone Cannon III	368	160	3	210	t	5	0	8	0	0
639	Great Bone Gunlance I	391	170	3	240	t	6	0	8	0	0
640	Great Bone Gunlance II	437	190	3	270	t	6	0	8	0	0
641	Bazel Buster I	437	190	0	0	f	6	-10	8	4	180
642	Bazel Buster II	460	200	0	0	f	7	-10	8	4	210
643	Jagras Gunlance I	253	110	0	0	f	2	0	8	0	0
644	Jagras Gunlance II	276	120	0	0	f	3	0	8	0	0
645	Jagras Gunlance III	322	140	0	0	f	4	0	8	0	0
646	Glutton Gunlance I	345	150	0	0	t	5	0	8	2	240
647	Glutton Gunlance II	437	190	0	0	t	6	0	8	2	270
648	Glutton Gunlance III	437	190	0	0	t	6	0	8	2	300
649	Girros Gunlance I	276	120	0	0	f	3	0	8	3	210
650	Girros Gunlance II	299	130	0	0	f	4	0	8	3	270
651	Deathfang Gunlance I	322	140	0	0	f	5	10	8	3	330
652	Deathfang Gunlance II	345	150	0	0	f	6	10	8	3	390
653	Deathfang Gunlance III	368	160	0	0	f	6	10	8	3	450
654	Hazak Spysa I	437	190	5	240	f	7	0	8	0	0
655	Hazak Spysa II	460	200	5	270	f	7	0	8	0	0
656	Carapace Cannon I	276	120	0	0	f	2	-10	8	0	0
657	Carapace Cannon II	299	130	0	0	f	3	-10	8	0	0
658	Carapace Cannon III	345	150	0	0	f	4	-10	8	0	0
659	Barroth Blaster I	391	170	0	0	t	5	-10	8	3	270
660	Barroth Blaster II	437	190	0	0	t	6	-10	8	3	330
661	Barroth Blaster III	460	200	0	0	t	6	-10	8	3	390
662	Blazing Gunlance I	299	130	1	210	f	3	-20	8	0	0
663	Blazing Gunlance II	322	140	1	240	f	4	-20	8	0	0
664	Anja Cannon I	368	160	1	270	f	5	-20	8	0	0
665	Anja Cannon II	414	180	1	330	f	6	-20	8	0	0
666	Anja Cannon III	483	210	1	450	f	6	-20	8	0	0
667	Dragonbone Gunlance I	230	100	5	360	f	3	0	8	0	0
668	Dragonbone Gunlance II	253	110	5	390	f	4	0	8	0	0
669	Dragonbone Gunlance III	368	160	5	420	f	6	0	8	0	0
670	Magda Lahat	368	160	0	0	f	5	-10	8	4	330
671	Earthshaker Magda Lahat	460	200	0	0	f	8	-10	8	4	420
672	Blacksteel Gunlance I	230	100	5	120	f	5	0	8	0	0
673	Blacksteel Gunlance II	253	110	5	150	f	6	0	8	0	0
674	Icesteel Gunlance	391	170	4	210	f	7	10	8	0	0
675	Daora's Brigia	414	180	4	240	f	8	10	8	0	0
676	Xeno Hemta	391	170	5	180	f	8	15	8	0	0
677	Proto Iron Axe I	280	80	0	0	f	1	0	9	0	0
678	Proto Iron Axe II	315	90	0	0	f	1	0	9	0	0
679	Proto Iron Axe III	350	100	0	0	f	2	0	9	0	0
680	Improved Steel Axe I	385	110	0	0	f	3	0	9	0	0
681	Improved Steel Axe II	455	130	0	0	f	4	0	9	0	0
682	Improved Steel Axe III	490	140	0	0	t	5	0	9	1	300
683	Perfected Alloy Axe I	560	160	0	0	t	6	0	9	1	360
684	Perfected Alloy Axe II	630	180	0	0	t	6	0	9	1	420
685	Nergal Gash	665	190	5	120	f	7	0	9	0	0
686	Dying Light	700	200	5	150	f	8	0	9	0	0
687	Glacial Axe I	455	130	4	210	f	4	0	9	0	0
688	Glacial Axe II	490	140	4	240	f	5	0	9	0	0
689	Frostreaver	525	150	4	270	f	6	0	9	0	0
690	Legia Frostreaver	560	160	4	300	f	7	0	9	0	0
691	Thunder Axe I	420	120	3	90	f	3	0	9	0	0
692	Thunder Axe II	490	140	3	90	f	4	0	9	0	0
693	Lightning Chopper I	560	160	3	120	f	5	0	9	0	0
694	Lightning Chopper II	595	170	3	150	f	6	0	9	0	0
695	Lightning Chopper III	630	180	3	180	f	6	0	9	0	0
696	Motor Chopper I	630	180	1	120	f	6	0	9	0	0
697	Motor Chopper II	735	210	1	120	f	7	0	9	0	0
698	Jagras Axe I	385	110	0	0	f	2	0	9	0	0
699	Jagras Axe II	420	120	0	0	f	3	0	9	0	0
700	Jagras Axe III	490	140	0	0	f	4	0	9	0	0
701	Jagras Rider I	560	160	0	0	t	5	0	9	2	180
702	Jagras Rider II	630	180	0	0	t	6	0	9	2	210
703	Jagras Rider III	665	190	0	0	t	6	0	9	2	240
704	Bazel Rider I	665	190	0	0	f	6	-15	9	4	150
705	Bazel Rider II	700	200	0	0	f	7	-15	9	4	180
706	Rathalos Axe I	455	130	1	120	f	4	10	9	0	0
707	Rathalos Axe II	490	140	1	120	f	4	10	9	0	0
708	Rathbringer Axe I	560	160	1	150	f	6	15	9	0	0
709	Rathbringer Axe II	665	190	1	150	f	7	15	9	0	0
710	Bone Axe I	315	90	0	0	f	1	0	9	0	0
711	Bone Axe II	350	100	0	0	f	1	0	9	0	0
712	Bone Axe III	385	110	0	0	f	2	0	9	0	0
713	Bone Smasher I	490	140	0	0	f	3	0	9	0	0
714	Bone Smasher II	525	150	0	0	f	4	0	9	0	0
715	Bone Smasher III	560	160	0	0	f	5	0	9	0	0
716	Power Smasher I	595	170	0	0	f	6	0	9	0	0
717	Power Smasher II	665	190	0	0	f	6	10	9	0	0
718	Hazak Demios I	665	190	5	180	f	7	0	9	0	0
719	Hazak Demios II	700	200	5	210	f	7	0	9	0	0
720	Madness Axe I	385	110	2	150	f	2	0	9	0	0
721	Madness Axe II	420	120	2	180	f	3	0	9	0	0
722	Madness Axe III	490	140	2	210	f	4	0	9	0	0
723	Jyura Drought I	560	160	2	240	f	5	0	9	0	0
724	Jyura Drought II	630	180	2	270	f	6	0	9	0	0
725	Jyura Drought III	665	190	2	300	f	7	0	9	0	0
726	Lumu Axe I	420	120	0	0	f	3	10	9	0	0
727	Lumu Axe II	490	140	0	0	f	4	10	9	0	0
728	Lumu Smasher I	525	150	0	0	t	5	20	9	4	360
729	Lumu Smasher II	560	160	0	0	t	6	20	9	4	390
730	Lumu Smasher III	595	170	0	0	t	7	20	9	4	420
731	Carapace Axe I	420	120	0	0	f	2	-20	9	0	0
732	Carapace Axe II	490	140	0	0	f	3	-20	9	0	0
733	Carapace Axe III	560	160	0	0	f	5	-20	9	0	0
734	Barroth Grinder I	595	170	0	0	t	5	-20	9	3	240
735	Barroth Grinder II	665	190	0	0	t	6	-20	9	3	270
736	Barroth Grinder III	735	210	0	0	t	6	-20	9	3	300
737	Diablos Axe I	595	170	0	0	f	4	-30	9	0	0
738	Diablos Axe II	630	180	4	90	t	5	-30	9	0	0
739	Axe Semper Tyrannis	735	210	4	120	t	6	-30	9	0	0
740	Axe of Thanatos	770	220	4	150	t	7	-30	9	0	0
741	Axe of Demons	805	230	4	180	t	8	-30	9	0	0
742	Flammenbeil	455	130	1	180	f	3	-20	9	0	0
743	Flammenbeil+	560	160	1	240	f	5	-20	9	0	0
744	Gnashing Flammenbeil	735	210	1	300	f	7	-20	9	0	0
745	Dragonbone Slicer I	350	100	5	210	f	3	0	9	0	0
746	Dragonbone Slicer II	385	110	5	270	f	4	0	9	0	0
747	Dragonbone Slicer III	560	160	5	330	f	6	0	9	0	0
748	Peal	385	110	3	360	f	4	0	9	0	0
749	Peal+	490	140	3	390	f	7	0	9	0	0
750	Kirin Thunderpeal	560	160	3	420	f	8	0	9	0	0
751	Blacksteel Switch Axe I	350	100	5	120	f	5	15	9	0	0
752	Blacksteel Switch Axe II	385	110	5	150	f	6	15	9	0	0
753	Teostra's Arx	630	180	0	0	f	7	0	9	4	300
754	Teostra's Castle	665	190	0	0	f	8	0	9	4	300
755	Xeno Martshu	595	170	5	150	f	8	0	9	0	0
756	Proto Commision Axe I	288	80	0	0	f	1	0	10	0	0
757	Proto Commision Axe II	324	90	0	0	f	1	0	10	0	0
758	Proto Commision Axe III	360	100	0	0	f	2	0	10	0	0
759	Elite Commision Axe I	396	110	0	0	f	3	0	10	0	0
760	Elite Commision Axe II	468	130	0	0	f	4	0	10	0	0
761	Elite Commision Axe III	504	140	3	120	t	5	0	10	0	0
762	Chrome Guardian I	576	160	3	150	t	6	0	10	0	0
763	Chrome Guardian II	648	180	3	270	t	6	0	10	0	0
764	Nergal Lacerator	720	200	5	120	f	7	0	10	0	0
765	Devastation's Thorns	756	210	5	150	f	8	0	10	0	0
766	Rathsblade I	432	120	1	150	f	4	10	10	0	0
767	Rathsblade II	576	160	1	180	f	5	10	10	0	0
768	Axelion Blade	612	170	1	210	f	6	20	10	0	0
769	Halberion Blade	684	190	1	240	f	7	20	10	0	0
770	Mudslide Blade I	396	110	2	120	f	3	0	10	0	0
771	Mudslide Blade II	432	120	2	150	f	3	0	10	0	0
772	Mudslide Blade III	504	140	2	180	f	5	0	10	0	0
773	Jyura Depth I	576	160	2	210	f	5	0	10	0	0
774	Jyura Depth II	648	180	2	240	f	6	0	10	0	0
775	Jyura Depth III	684	190	2	270	f	6	0	10	0	0
776	Everfrost Blade I	504	140	4	150	f	4	0	10	0	0
777	Everfrost Blade II	540	150	4	180	f	5	0	10	0	0
778	Gigafrost I	576	160	4	210	f	6	0	10	0	0
779	Gigafrost II	612	170	4	240	f	6	0	10	0	0
780	Dear Lutemis	468	130	0	0	f	3	0	10	1	240
781	Dear Lutemia	540	150	0	0	f	5	0	10	1	270
782	Dear Hecatel	612	170	0	0	f	6	0	10	1	300
783	Dear Hecatelia	684	190	0	0	f	7	0	10	1	330
784	Bone Strongarm I	324	90	0	0	f	1	0	10	0	0
785	Bone Strongarm II	360	100	0	0	f	1	0	10	0	0
786	Bone Strongarm III	396	110	0	0	f	2	0	10	0	0
787	Hard Bone Strongarm I	432	120	0	0	f	3	0	10	0	0
788	Hard Bone Strongarm II	504	140	0	0	f	4	0	10	0	0
789	Hard Bone Strongarm III	576	160	0	0	t	5	0	10	4	180
790	Mighty Strongarm I	612	170	0	0	t	6	0	10	4	210
791	Mighty Strongarm II	684	190	0	0	t	6	0	10	4	240
792	Diablos Wall I	612	170	0	0	f	4	-30	10	0	0
793	Diablos Wall II	684	190	4	90	t	5	-30	10	0	0
794	Diablos Tyrannis I	756	210	4	120	t	6	-30	10	0	0
795	Diablos Tyrannis II	828	230	4	180	t	7	-30	10	0	0
796	Jagras Strongarm I	396	110	0	0	f	2	0	10	0	0
797	Jagras Strongarm II	432	120	0	0	f	3	0	10	0	0
798	Jagras Strongarm III	468	130	0	0	f	4	0	10	0	0
799	Jagras Escudo I	540	150	0	0	t	5	0	10	2	120
800	Jagras Escudo II	648	180	0	0	t	6	0	10	2	150
801	Jagras Escudo III	684	190	0	0	t	6	0	10	2	180
802	Gama Silt I	576	160	0	0	f	6	0	10	4	150
803	Gama Silt II	612	170	0	0	f	7	0	10	4	180
804	Girros Strongarm I	432	120	0	0	f	3	15	10	3	180
805	Girros Strongarm II	468	130	0	0	f	4	15	10	3	210
806	Girros Nadja I	504	140	0	0	f	5	20	10	3	240
807	Girros Nadja II	540	150	0	0	f	6	20	10	3	270
808	Girros Nadja III	576	160	0	0	f	6	20	10	3	300
809	Hazak Aspida I	648	180	5	210	f	7	0	10	0	0
810	Hazak Aspida II	684	190	5	270	f	7	0	10	0	0
811	Pulsar Strongarm I	396	110	3	90	f	2	10	10	0	0
812	Pulsar Strongarm II	432	120	3	120	f	3	10	10	0	0
813	Pulsar Strongarm III	468	130	3	120	f	4	10	10	0	0
814	Kadachi Kaina I	504	140	3	150	f	5	15	10	0	0
815	Kadachi Kaina II	576	160	3	180	f	6	15	10	0	0
816	Kadachi Kaina III	648	180	3	210	f	6	15	10	0	0
817	Garon Strongarm I	468	130	0	0	f	4	20	10	0	0
818	Garon Strongarm II	504	140	1	120	t	5	20	10	0	0
819	Hate's Undying Flame	540	150	1	150	t	6	25	10	0	0
820	Odium	576	160	1	180	t	8	25	10	0	0
821	Dragonbone Cutter I	360	100	5	270	f	3	0	10	0	0
822	Dragonbone Cutter II	396	110	5	300	f	4	0	10	0	0
823	Dragonbone Cutter III	576	160	5	360	f	6	0	10	0	0
824	Magda Manus	576	160	0	0	f	5	-10	10	4	180
825	Avenging Magda Manus	756	210	0	0	f	8	-10	10	4	210
826	Blacksteel Charger I	360	100	5	120	f	5	0	10	0	0
827	Blacksteel Charger II	396	110	5	150	f	6	0	10	0	0
828	Daora's Casca	612	170	4	150	f	7	10	10	0	0
829	Daora's Thwartoise	648	180	4	180	f	8	15	10	0	0
830	Xeno Ra'atz	648	180	5	180	f	8	15	10	0	0
831	Iron Blade I	248	80	0	0	f	1	0	11	0	0
832	Iron Blade II	279	90	0	0	f	1	0	11	0	0
833	Iron Blade III	310	100	0	0	f	2	0	11	0	0
834	Steel Blade I	341	110	0	0	f	3	0	11	0	0
835	Steel Blade II	403	130	0	0	f	4	0	11	0	0
836	Steel Blade III	434	140	0	0	t	5	0	11	4	210
837	Chrome Blade I	496	160	0	0	t	6	0	11	4	240
838	Chrome Blade II	558	180	0	0	t	6	0	11	4	270
839	Nergal Reaper	620	200	5	120	f	7	0	11	0	0
840	Catastrophe's Light	651	210	5	150	f	8	0	11	0	0
841	Flame Glaive I	372	120	1	90	f	4	10	11	0	0
842	Flame Glaive II	465	150	1	120	f	5	10	11	0	0
843	Rathmaul	527	170	1	150	f	6	20	11	0	0
844	Firedance Rathmaul	589	190	1	180	f	7	20	11	0	0
845	Kulu Blade I	310	100	0	0	f	2	10	11	0	0
846	Kulu Blade II	341	110	0	0	f	3	10	11	0	0
847	Kulu Blade III	434	140	0	0	f	4	10	11	0	0
848	Ya-Ku Wrath I	465	150	0	0	t	5	20	11	2	150
849	Ya-Ku Wrath II	496	160	0	0	t	6	20	11	2	180
850	Ya-Ku Wrath III	527	170	0	0	t	6	20	11	2	210
851	Luminous Blade I	372	120	0	0	f	3	0	11	0	0
852	Luminous Blade II	434	140	0	0	f	4	0	11	0	0
853	Destroyer Bo I	496	160	3	240	f	5	0	11	0	0
854	Destroyer Bo II	527	170	3	270	f	6	0	11	0	0
855	Destroyer Bo III	558	180	3	300	f	6	0	11	0	0
856	Frost Blade I	434	140	4	150	f	4	0	11	0	0
857	Frost Blade II	465	150	4	180	f	4	0	11	0	0
858	Freeze Gale I	496	160	4	210	f	6	0	11	0	0
859	Freeze Gale II	527	170	4	240	f	6	0	11	0	0
860	Blooming Glaive I	310	100	0	0	f	2	0	11	1	240
861	Blooming Glaive II	341	110	0	0	f	3	0	11	1	270
862	Blooming Glaive III	403	130	0	0	f	4	0	11	1	300
863	Datura Blade I	465	150	0	0	f	5	0	11	1	330
864	Datura Blade II	496	160	0	0	f	6	0	11	1	360
865	Datura Blade III	527	170	0	0	f	6	0	11	1	390
866	Gama Cane I	496	160	0	0	f	6	0	11	4	120
867	Gama Cane II	527	170	0	0	f	7	0	11	4	150
868	Bone Rod I	279	90	0	0	f	1	0	11	0	0
869	Bone Rod II	310	100	0	0	f	1	0	11	0	0
870	Bone Rod III	341	110	0	0	f	2	0	11	0	0
871	Hard Bone Rod I	434	140	0	0	f	3	0	11	0	0
872	Hard Bone Rod II	465	150	0	0	f	4	0	11	0	0
873	Hard Bone Rod III	496	160	0	0	t	5	0	11	3	180
874	Aerial Rod I	527	170	0	0	t	6	0	11	3	210
875	Aerial Rod II	589	190	0	0	t	6	0	11	3	210
876	Hazak Entoma I	589	190	5	150	f	7	0	11	0	0
877	Hazak Entoma II	620	200	5	180	f	7	0	11	0	0
878	Flammenkaefer	403	130	1	210	f	3	-20	11	0	0
879	Flammenkaefer+	558	180	1	240	f	5	-20	11	0	0
880	Gnashing Flammenkaefer	651	210	1	270	f	7	-20	11	0	0
881	Aqua Rod I	341	110	2	60	f	2	0	11	0	0
882	Aqua Rod II	372	120	2	90	f	3	0	11	0	0
883	Aqua Rod III	434	140	2	120	f	4	0	11	0	0
884	Water Glaive I	465	150	2	150	f	5	0	11	0	0
885	Water Glaive II	527	170	2	180	f	6	0	11	0	0
886	Water Glaive III	589	190	2	210	f	6	0	11	0	0
887	Diablos Rod I	496	160	0	0	f	4	-30	11	0	0
888	Diablos Rod II	620	200	4	120	t	5	-30	11	0	0
889	Tyrannis Glaive I	682	220	4	150	t	6	-30	11	0	0
890	Tyrannis Glaive II	713	230	4	180	t	7	-30	11	0	0
891	Pulsar Rod I	341	110	3	90	f	2	10	11	0	0
892	Pulsar Rod II	372	120	3	120	f	3	10	11	0	0
893	Pulsar Rod III	434	140	3	150	f	4	10	11	0	0
894	Kadachi Pillar I	465	150	3	180	f	5	10	11	0	0
895	Kadachi Pillar II	527	170	3	210	f	6	10	11	0	0
896	Kadachi Pillar III	558	180	3	240	f	6	10	11	0	0
897	Garon Rod I	403	130	0	0	f	4	10	11	0	0
898	Garon Rod II	434	140	1	90	t	5	10	11	0	0
899	Temptation's Trident	465	150	1	120	t	6	20	11	0	0
900	Vice	496	160	1	150	t	8	20	11	0	0
901	Dragonbone Glaive I	310	100	5	300	f	3	0	11	0	0
902	Dragonbone Glaive II	341	110	5	330	f	4	0	11	0	0
903	Dragonbone Glaive III	496	160	5	390	f	6	0	11	0	0
904	Indigo Flash	341	110	3	300	f	4	0	11	0	0
905	Azure Bolt	434	140	3	330	f	7	0	11	0	0
906	Verdant Levin	496	160	3	360	f	8	0	11	0	0
907	Blacksteel Glaive I	310	100	5	60	f	5	0	11	0	0
908	Blacksteel Glaive II	341	110	5	90	f	6	0	11	0	0
909	Daora's Entom	527	170	4	150	f	7	10	11	0	0
910	Daora's Tethidine	558	180	4	180	f	8	10	11	0	0
911	Xeno Shmaena	558	180	5	120	f	8	15	11	0	0
912	Iron Bow I	96	80	0	0	f	1	0	12	0	0
913	Iron Bow II	108	90	0	0	f	1	0	12	0	0
914	Iron Bow III	120	100	0	0	f	2	0	12	0	0
915	Steel Bow I	132	110	0	0	f	3	0	12	0	0
916	Steel Bow II	156	130	0	0	f	4	0	12	0	0
917	Steel Bow III	168	140	3	90	t	5	0	12	0	0
918	Alloy Bow I	180	150	3	120	t	6	0	12	0	0
919	Alloy Bow II	204	170	3	150	t	6	0	12	0	0
920	Nergal Whisper	228	190	5	120	f	7	0	12	0	0
921	Doom's Shaft	240	200	5	150	f	8	0	12	0	0
922	Kulu Arrow I	120	100	0	0	f	2	15	12	0	0
923	Kulu Arrow II	132	110	0	0	f	3	15	12	0	0
924	Kulu Arrow III	156	130	0	0	f	4	15	12	0	0
925	Archer's Dance I	180	150	0	0	t	5	20	12	4	210
926	Archer's Dance II	192	160	0	0	t	6	20	12	4	240
927	Archer's Dance III	204	170	0	0	t	6	20	12	4	270
928	Brazencord	204	170	1	120	f	6	0	12	0	0
929	Gigacles	228	190	1	150	f	8	0	12	0	0
930	Princess Arrow I	132	110	0	0	f	3	10	12	0	0
931	Princess Arrow II	192	160	5	180	t	5	10	12	0	0
932	Princess Arrow III	216	180	5	240	t	6	10	12	0	0
933	Rathslinger I	144	120	1	150	f	4	15	12	0	0
934	Rathslinger II	204	170	1	210	f	6	15	12	0	0
935	Rathslinger III	216	180	1	240	f	7	15	12	0	0
936	Aqua Arrow I	120	100	2	90	f	2	0	12	0	0
937	Aqua Arrow II	132	110	2	120	f	3	0	12	0	0
938	Aqua Arrow III	144	120	2	150	f	4	0	12	0	0
939	Water Shot I	168	140	2	180	f	5	0	12	0	0
940	Water Shot II	180	150	2	210	f	6	0	12	0	0
941	Water Shot III	204	170	2	240	f	6	0	12	0	0
942	Glacial Arrow I	144	120	4	270	f	4	0	12	0	0
943	Glacial Arrow II	156	130	4	330	f	5	0	12	0	0
944	Snowfletcher	168	140	4	360	f	6	0	12	0	0
945	Legia Snowfletcher	180	150	4	390	f	8	0	12	0	0
946	Hunter's Bow I	120	100	0	0	f	1	0	12	0	0
947	Hunter's Bow II	132	110	0	0	f	1	0	12	0	0
948	Hunter's Bow III	144	120	0	0	f	2	0	12	0	0
949	Hunter's Stoutbow I	156	130	0	0	f	3	0	12	0	0
950	Hunter's Stoutbow II	168	140	0	0	f	4	0	12	0	0
951	Hunter's Stoutbow III	180	150	2	240	t	5	0	12	0	0
952	Hunter's Proudbow I	192	160	2	300	t	6	0	12	0	0
953	Hunter's Proudbow II	216	180	2	360	t	6	0	12	0	0
954	Hazak Velos I	216	180	5	240	f	7	0	12	0	0
955	Hazak Velos II	228	190	5	270	f	7	0	12	0	0
956	Diablos Bow I	192	160	0	0	f	4	-30	12	0	0
957	Diablos Bow II	216	180	4	60	t	5	-30	12	0	0
958	Diablos Coilbender	240	200	4	90	t	7	-30	12	0	0
959	Galebender	252	210	4	120	t	7	-30	12	0	0
960	Cera Coilbender	264	220	4	150	t	8	-30	12	0	0
961	Blooming Arch I	144	120	0	0	f	2	0	12	0	0
962	Blooming Arch II	156	130	0	0	f	3	0	12	0	0
963	Blooming Arch III	168	140	0	0	f	4	0	12	0	0
964	Datura String I	180	150	0	0	t	5	0	12	4	180
965	Datura String II	192	160	0	0	t	6	0	12	4	210
966	Datura String III	204	170	0	0	t	6	0	12	4	240
967	Blazing Bow I	156	130	1	210	f	3	-20	12	0	0
968	Blazing Bow II	168	140	1	270	f	4	-20	12	0	0
969	Anja Arch I	192	160	1	330	f	5	-20	12	0	0
970	Anja Arch II	216	180	1	360	f	6	-20	12	0	0
971	Anja Arch III	240	200	1	390	f	6	-20	12	0	0
972	Pulsar Bow I	144	120	3	150	f	2	10	12	0	0
973	Pulsar Bow II	156	130	3	180	f	3	10	12	0	0
974	Pulsar Bow III	168	140	3	210	f	4	10	12	0	0
975	Kadachi Strikebow	180	150	3	250	f	5	15	12	0	0
976	Flying Kadachi Strikebow	204	170	3	270	f	7	15	12	0	0
977	Dragonbone Bow I	120	100	5	300	f	3	0	12	0	0
978	Dragonbone Bow II	132	110	5	360	f	4	0	12	0	0
979	Dragonbone Bow III	180	150	5	420	f	6	0	12	0	0
980	Blacksteel Bow I	120	100	5	120	f	5	0	12	0	0
981	Blacksteel Bow II	132	110	5	150	f	6	0	12	0	0
982	Icesteel Bow 	192	160	4	210	f	7	0	12	0	0
983	Daora's Sagittarii	204	170	4	240	f	8	0	12	0	0
984	Xeno Metora	204	170	5	180	f	8	15	12	0	0
985	Cross Hunter's Bow	216	180	0	0	f	6	0	12	4	120
986	Great Hunter's Bow	228	190	0	0	f	8	0	12	4	150
987	Chain Blitz I	130	100	0	0	f	1	0	13	0	0
988	Chain Blitz II	143	110	0	0	f	1	0	13	0	0
989	Chain Blitz III	156	120	0	0	f	2	0	13	0	0
990	High Chain Blitz I	169	130	0	0	f	3	0	13	0	0
991	High Chain Blitz II	182	140	0	0	f	4	0	13	0	0
992	High Chain Blitz III	195	150	0	0	f	5	0	13	0	0
993	Cross Blitz I	208	160	0	0	f	6	0	13	0	0
994	Cross Blitz II	234	180	0	0	f	6	0	13	0	0
995	Nergal Spitter	247	190	0	0	f	7	0	13	0	0
996	Cataclysm's Trigger	260	200	0	0	f	8	0	13	0	0
997	Lumu Blitz I	169	130	0	0	f	3	10	13	0	0
998	Lumu Blitz II	182	140	0	0	f	4	10	13	0	0
999	Lumu Typhon I	195	150	0	0	f	5	15	13	0	0
1000	Lumu Typhon II	208	160	0	0	f	6	15	13	0	0
1001	Lumu Typhon III	221	170	0	0	f	7	15	13	0	0
1002	Bazel Typhoon I	247	190	0	0	f	6	-10	13	0	0
1003	Bazel Typhoon II	260	200	0	0	f	7	-10	13	0	0
1004	Jagras Blitz I	169	130	0	0	f	2	0	13	0	0
1005	Jagras Blitz II	182	140	0	0	f	3	0	13	0	0
1006	Jagras Blitz III	195	150	0	0	f	4	0	13	0	0
1007	Jagras Fire I	208	160	0	0	f	5	0	13	0	0
1008	Jagras Fire II	234	180	0	0	f	6	0	13	0	0
1009	Jagras Fire III	247	190	0	0	f	6	0	13	0	0
1010	Flame Blitz I	195	150	0	0	f	4	10	13	0	0
1011	Flame Blitz II	208	160	0	0	f	5	10	13	0	0
1012	Rathbuster I	221	170	0	0	f	6	20	13	0	0
1013	Rathbuster II	247	190	0	0	f	7	20	13	0	0
1014	Thunder Blitz I	182	140	0	0	f	3	0	13	0	0
1015	Thunder Blitz II	195	150	0	0	f	4	0	13	0	0
1016	Lightning Blitz I	208	160	0	0	f	5	0	13	0	0
1017	Lightning Blitz II	221	170	0	0	f	6	0	13	0	0
1018	Lightning Blitz III	234	180	0	0	f	6	0	13	0	0
1019	Snow Blitz I	182	140	0	0	f	4	0	13	0	0
1020	Snow Blitz II	195	150	0	0	f	5	0	13	0	0
1021	Frost Blitz I	221	170	0	0	f	6	0	13	0	0
1022	Frost Blitz II	247	190	0	0	f	6	0	13	0	0
1023	Hunter's Rifle I	143	110	0	0	f	1	0	13	0	0
1024	Hunter's Rifle II	156	120	0	0	f	1	0	13	0	0
1025	Hunter's Rifle III	169	130	0	0	f	2	0	13	0	0
1026	Power Rifle I	182	140	0	0	f	3	0	13	0	0
1027	Power Rifle II	195	150	0	0	f	4	0	13	0	0
1028	Power Rifle III	208	160	0	0	f	5	0	13	0	0
1029	Sniper Shot I	221	170	0	0	f	6	0	13	0	0
1030	Sniper Shot II	247	190	0	0	f	6	0	13	0	0
1031	Hazak Ereipia	247	190	0	0	f	7	0	13	0	0
1032	Gulgoleth's Wail	260	200	0	0	f	8	0	13	0	0
1033	Blazing Rifle I	195	150	0	0	f	3	-30	13	0	0
1034	Blazing Rifle II	221	170	0	0	f	4	-30	13	0	0
1035	Anja Buster I	234	180	0	0	f	5	-30	13	0	0
1036	Anja Buster II	260	200	0	0	f	6	-30	13	0	0
1037	Anja Buster III	273	210	0	0	f	6	-30	13	0	0
1038	Madness Rifle I	169	130	0	0	f	2	0	13	0	0
1039	Madness Rifle II	182	140	0	0	f	3	0	13	0	0
1040	Madness Rifle III	195	150	0	0	f	4	0	13	0	0
1041	Jyura Bullet I	208	160	0	0	f	5	0	13	0	0
1042	Jyura Bullet II	234	180	0	0	f	6	0	13	0	0
1043	Jyura Bullet III	247	190	0	0	f	6	0	13	0	0
1044	Lava Bullet I	221	170	0	0	f	6	0	13	0	0
1045	Lava Bullet II	234	180	0	0	f	7	0	13	0	0
1046	Carapace Rifle I	169	130	0	0	f	2	-20	13	0	0
1047	Carapace Rifle II	182	140	0	0	f	3	-20	13	0	0
1048	Carapace Rifle III	208	160	0	0	f	4	-20	13	0	0
1049	Barroth Shot I	234	180	0	0	f	5	-20	13	0	0
1050	Barroth Shot II	247	190	0	0	f	6	-20	13	0	0
1051	Barroth Shot III	260	200	0	0	f	6	-20	13	0	0
1052	Garon Rifle I	195	150	0	0	f	4	15	13	0	0
1053	Garon Rifle II	208	160	0	0	f	5	15	13	0	0
1054	Fate's Ember	221	170	0	0	f	6	30	13	0	0
1055	Karma	234	180	0	0	f	8	30	13	0	0
1056	Dragonbone Bowgun I	130	100	0	0	f	3	0	13	0	0
1057	Dragonbone Bowgun II	143	110	0	0	f	4	0	13	0	0
1058	Dragonbone Bowgun III	208	160	0	0	f	6	0	13	0	0
1059	Onigashima	208	160	0	0	f	7	0	13	0	0
1060	Dai-Onigashima	221	170	0	0	f	8	0	13	0	0
1061	Mythical Horn	143	110	0	0	f	4	0	13	0	0
1062	Mythical Horn+	182	140	0	0	f	7	0	13	0	0
1063	Mythical Three-Horn	208	160	0	0	f	8	0	13	0	0
1064	Blacksteel Crossbow I	130	100	0	0	f	5	0	13	0	0
1065	Blacksteel Crossbow II	143	110	0	0	f	6	0	13	0	0
1066	Icesteel Wasp	221	170	0	0	f	7	10	13	0	0
1067	Daora's Hornet	234	180	0	0	f	8	10	13	0	0
1068	Xeno Neqiina	234	180	0	0	f	8	0	13	0	0
1069	Cross Bowgun	234	180	0	0	f	6	0	13	0	0
1070	Great Bowgun	260	200	0	0	f	8	0	13	0	0
1071	Iron Assault I	150	100	0	0	f	1	0	14	0	0
1072	Iron Assault II	165	110	0	0	f	1	0	14	0	0
1073	Iron Assault III	180	120	0	0	f	2	0	14	0	0
1074	Steel Assault I	195	130	0	0	f	3	0	14	0	0
1075	Steel Assault II	210	140	0	0	f	4	0	14	0	0
1076	Steel Assault III	225	150	0	0	f	5	0	14	0	0
1077	Chrome Assault I	240	160	0	0	f	6	0	14	0	0
1078	Chrome Assault II	255	170	0	0	f	6	0	14	0	0
1079	Nergal Roar	270	180	0	0	f	7	0	14	0	0
1080	Destruction's Fusillade	285	190	0	0	f	8	0	14	0	0
1081	Aqua Assault I	180	120	0	0	f	2	0	14	0	0
1082	Aqua Assault II	195	130	0	0	f	3	0	14	0	0
1083	Aqua Assault III	210	140	0	0	f	4	0	14	0	0
1084	Water Cannon I	225	150	0	0	f	5	0	14	0	0
1085	Water Cannon II	240	160	0	0	f	6	0	14	0	0
1086	Water Cannon III	255	170	0	0	f	6	0	14	0	0
1087	Luminous Assault I	195	130	0	0	f	3	0	14	0	0
1088	Luminous Assault II	210	140	0	0	f	4	0	14	0	0
1089	Arma Destroyer I	225	150	0	0	f	4	0	14	0	0
1090	Arma Destroyer II	240	160	0	0	f	6	0	14	0	0
1091	Arma Destroyer III	255	170	0	0	f	6	0	14	0	0
1092	Shattercryst	210	140	0	0	f	4	0	14	0	0
1093	Shattercryst+	240	160	0	0	f	6	0	14	0	0
1094	Legia Shattercryst	255	170	0	0	f	7	0	14	0	0
1095	Jagras Assault I	180	120	0	0	f	2	0	14	0	0
1096	Jagras Assault II	195	130	0	0	f	3	0	14	0	0
1097	Jagras Assault III	210	140	0	0	f	4	0	14	0	0
1098	Jagras Cannon I	240	160	0	0	f	5	0	14	0	0
1099	Jagras Cannon II	255	170	0	0	f	6	0	14	0	0
1100	Jagras Cannon III	270	180	0	0	f	7	0	14	0	0
1101	Blazing Assault I	210	140	0	0	f	3	-20	14	0	0
1102	Blazing Assault II	225	150	0	0	f	4	-20	14	0	0
1103	Flammenkanone	255	170	0	0	f	5	-20	14	0	0
1104	Gnashing Flammenkanone	300	200	0	0	f	7	-20	14	0	0
1105	Bone Shooter I	150	100	0	0	f	1	0	14	0	0
1106	Bone Shooter II	165	110	0	0	f	1	0	14	0	0
1107	Bone Shooter III	195	130	0	0	f	2	0	14	0	0
1108	Heavy Shooter I	210	140	0	0	f	3	0	14	0	0
1109	Heavy Shooter II	225	150	0	0	f	4	0	14	0	0
1110	Heavy Shooter III	240	160	0	0	f	5	0	14	0	0
1111	Power Shooter I	255	170	0	0	f	6	0	14	0	0
1112	Power Shooter II	270	180	0	0	f	6	0	14	0	0
1113	Diablos Shooter I	240	160	0	0	f	4	-20	14	0	0
1114	Diablos Shooter II	270	180	0	0	f	5	-20	14	0	0
1115	Dual Threat	300	200	0	0	f	6	-20	14	0	0
1116	Nero's Blazooka	315	210	0	0	f	7	-20	14	0	0
1117	Griffon Blazooka	330	220	0	0	f	8	-20	14	0	0
1118	Blooming Shooter I	180	120	0	0	f	2	0	14	0	0
1119	Blooming Shooter II	195	130	0	0	f	3	0	14	0	0
1120	Blooming Shooter III	210	140	0	0	f	4	0	14	0	0
1121	Datura Blaster I	225	150	0	0	f	5	0	14	0	0
1122	Datura Blaster II	240	160	0	0	f	6	0	14	0	0
1123	Datura Blaster III	255	170	0	0	f	6	0	14	0	0
1124	Spiked Shooter I	195	130	0	0	f	3	0	14	0	0
1125	Spiked Shooter II	210	140	0	0	f	4	0	14	0	0
1126	Baan Roar I	225	150	0	0	f	5	0	14	0	0
1127	Baan Roar II	255	170	0	0	f	6	0	14	0	0
1128	Baan Roar III	270	180	0	0	f	6	0	14	0	0
1129	Gama Cannon I	240	160	0	0	f	6	0	14	0	0
1130	Gama Cannon II	255	170	0	0	f	7	0	14	0	0
1131	Pulsar Shooter I	180	120	0	0	f	2	10	14	0	0
1132	Pulsar Shooter II	195	130	0	0	f	3	0	14	0	0
1133	Pulsar Shooter III	210	140	0	0	f	4	0	14	0	0
1134	Kadachi Lion I	225	150	0	0	f	5	15	14	0	0
1135	Kadachi Lion II	240	160	0	0	f	6	15	14	0	0
1136	Kadachi Lion III	255	170	0	0	f	6	15	14	0	0
1137	Dragonbone Cannon I	150	100	0	0	f	3	0	14	0	0
1138	Dragonbone Cannon II	210	140	0	0	f	4	0	14	0	0
1139	Dragonbone Cannon III	255	170	0	0	f	6	0	14	0	0
1140	Quickcaster	195	130	0	0	f	4	0	14	0	0
1141	Quickcaster+	240	160	0	0	f	7	0	14	0	0
1142	Quickquiver	255	170	0	0	f	8	0	14	0	0
1143	Magda Gemitus I	240	160	0	0	f	5	-20	14	0	0
1144	Magda Gemitus II	315	210	0	0	f	7	-20	14	0	0
1145	Blacksteel Cannon I	150	100	0	0	f	5	0	14	0	0
1146	Blacksteel Cannon II	165	110	0	0	f	6	0	14	0	0
1147	Teostra's Artillery	255	170	0	0	f	7	0	14	0	0
1148	Teostra's Flames	270	180	0	0	f	8	0	14	0	0
1149	Xeno Jiiqa	255	170	0	0	f	8	0	14	0	0
\.


--
-- Data for Name: weapons_sharpness; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY weapons_sharpness (wep_id, handicraft_level, red, orange, yellow, green, blue, white) FROM stdin;
756	0	90	50	60	0	0	0
756	1	90	50	70	0	0	0
756	2	90	50	80	0	0	0
756	3	90	50	80	10	0	0
756	4	90	50	80	20	0	0
756	5	90	50	80	30	0	0
757	0	70	70	30	30	0	0
757	1	70	70	30	40	0	0
757	2	70	70	30	50	0	0
757	3	70	70	30	60	0	0
757	4	70	70	30	70	0	0
757	5	70	70	30	80	0	0
758	0	50	70	30	50	0	0
758	1	50	70	30	60	0	0
758	2	50	70	30	70	0	0
758	3	50	70	30	80	0	0
758	4	50	70	30	90	0	0
758	5	50	70	30	100	0	0
759	0	70	50	80	50	0	0
759	1	70	50	80	60	0	0
759	2	70	50	80	70	0	0
759	3	70	50	80	80	0	0
759	4	70	50	80	90	0	0
759	5	70	50	80	100	0	0
760	0	50	50	80	70	0	0
760	1	50	50	80	80	0	0
760	2	50	50	80	90	0	0
760	3	50	50	80	100	0	0
760	4	50	50	80	110	0	0
760	5	50	50	80	120	0	0
761	0	100	50	50	80	20	0
761	1	100	50	50	80	30	0
761	2	100	50	50	80	40	0
761	3	100	50	50	80	50	0
761	4	100	50	50	80	60	0
761	5	100	50	50	80	70	0
762	0	80	50	50	80	40	0
762	1	80	50	50	80	50	0
762	2	80	50	50	80	60	0
762	3	80	50	50	80	70	0
762	4	80	50	50	80	80	0
762	5	80	50	50	80	90	0
763	0	60	60	20	150	60	0
763	1	60	60	20	150	70	0
763	2	60	60	20	150	80	0
763	3	60	60	20	150	90	0
763	4	60	60	20	150	90	10
763	5	60	60	20	150	90	20
764	0	110	120	40	50	80	0
764	1	110	120	40	50	80	0
764	2	110	120	40	50	80	0
764	3	110	120	40	50	80	0
764	4	110	120	40	50	80	0
764	5	110	120	40	50	80	0
765	0	100	120	40	50	90	0
765	1	100	120	40	50	90	0
765	2	100	120	40	50	90	0
765	3	100	120	40	50	90	0
765	4	100	120	40	50	90	0
765	5	100	120	40	50	90	0
766	0	60	50	80	60	0	0
766	1	60	50	80	70	0	0
766	2	60	50	80	80	0	0
766	3	60	50	80	90	0	0
766	4	60	50	80	100	0	0
766	5	60	50	80	110	0	0
767	0	100	50	80	70	0	0
767	1	100	50	80	80	0	0
767	2	100	50	80	90	0	0
767	3	100	50	80	100	0	0
767	4	100	50	80	100	10	0
767	5	100	50	80	100	20	0
768	0	90	50	50	80	30	0
768	1	90	50	50	80	40	0
768	2	90	50	50	80	50	0
768	3	90	50	50	80	60	0
768	4	90	50	50	80	70	0
768	5	90	50	50	80	80	0
769	0	70	50	60	120	50	0
769	1	70	50	60	120	60	0
769	2	70	50	60	120	60	10
769	3	70	50	60	120	60	20
769	4	70	50	60	120	60	30
769	5	70	50	60	120	60	40
770	0	80	70	30	20	0	0
770	1	80	70	30	30	0	0
770	2	80	70	30	40	0	0
770	3	80	70	30	50	0	0
770	4	80	70	30	60	0	0
770	5	80	70	30	70	0	0
771	0	90	50	80	30	0	0
771	1	90	50	80	40	0	0
771	2	90	50	80	50	0	0
771	3	90	50	80	60	0	0
771	4	90	50	80	70	0	0
771	5	90	50	80	80	0	0
772	0	80	50	80	40	0	0
772	1	80	50	80	50	0	0
772	2	80	50	80	60	0	0
772	3	80	50	80	70	0	0
772	4	80	50	80	80	0	0
772	5	80	50	80	90	0	0
773	0	110	50	80	60	0	0
773	1	110	50	80	70	0	0
773	2	110	50	80	80	0	0
773	3	110	50	80	90	0	0
773	4	110	50	80	100	0	0
773	5	110	50	80	100	10	0
774	0	110	50	50	80	10	0
774	1	110	50	50	80	20	0
774	2	110	50	50	80	30	0
774	3	110	50	50	80	40	0
774	4	110	50	50	80	50	0
774	5	110	50	50	80	60	0
775	0	100	60	60	100	30	0
775	1	100	60	60	100	40	0
775	2	100	60	60	100	50	0
775	3	100	60	60	100	50	10
775	4	100	60	60	100	50	20
775	5	100	60	60	100	50	30
776	0	70	50	80	50	0	0
776	1	70	50	80	60	0	0
776	2	70	50	80	70	0	0
776	3	70	50	80	80	0	0
776	4	70	50	80	90	0	0
776	5	70	50	80	100	0	0
777	0	100	50	80	70	0	0
777	1	100	50	80	80	0	0
777	2	100	50	80	90	0	0
777	3	100	50	80	100	0	0
777	4	100	50	80	100	10	0
777	5	100	50	80	100	20	0
778	0	100	50	50	80	20	0
778	1	100	50	50	80	30	0
778	2	100	50	50	80	40	0
778	3	100	50	50	80	50	0
778	4	100	50	50	80	60	0
778	5	100	50	50	80	70	0
779	0	90	60	80	80	40	0
779	1	90	60	80	80	50	0
779	2	90	60	80	80	60	0
779	3	90	60	80	80	70	0
779	4	90	60	80	80	70	10
779	5	90	60	80	80	70	20
780	0	70	50	80	50	0	0
780	1	70	50	80	60	0	0
780	2	70	50	80	70	0	0
780	3	70	50	80	80	0	0
780	4	70	50	80	90	0	0
780	5	70	50	80	100	0	0
781	0	100	50	50	80	20	0
781	1	100	50	50	80	30	0
781	2	100	50	50	80	40	0
781	3	100	50	50	80	50	0
781	4	100	50	50	80	60	0
781	5	100	50	50	80	70	0
782	0	90	50	50	30	80	0
782	1	90	50	50	30	90	0
782	2	90	50	50	30	100	0
782	3	90	50	50	30	110	0
782	4	90	50	50	30	120	0
782	5	90	50	50	30	130	0
783	0	70	50	60	120	50	0
783	1	70	50	60	120	60	0
783	2	70	50	60	120	60	10
783	3	70	50	60	120	60	20
783	4	70	50	60	120	60	30
783	5	70	50	60	120	60	40
784	0	90	60	50	0	0	0
784	1	90	60	60	0	0	0
784	2	90	60	70	0	0	0
784	3	90	60	80	0	0	0
784	4	90	60	80	10	0	0
784	5	90	60	80	20	0	0
785	0	80	50	70	0	0	0
785	1	80	50	80	0	0	0
785	2	80	50	80	10	0	0
785	3	80	50	80	20	0	0
785	4	80	50	80	30	0	0
785	5	80	50	80	40	0	0
786	0	80	50	50	20	0	0
786	1	80	50	50	30	0	0
786	2	80	50	50	40	0	0
786	3	80	50	50	50	0	0
786	4	80	50	50	60	0	0
786	5	80	50	50	70	0	0
787	0	110	70	30	40	0	0
787	1	110	70	30	50	0	0
787	2	110	70	30	60	0	0
787	3	110	70	30	70	0	0
787	4	110	70	30	80	0	0
787	5	110	70	30	90	0	0
788	0	100	70	30	50	0	0
788	1	100	70	30	60	0	0
788	2	100	70	30	70	0	0
788	3	100	70	30	80	0	0
788	4	100	70	30	90	0	0
788	5	100	70	30	100	0	0
789	0	130	70	30	70	0	0
789	1	130	70	30	80	0	0
789	2	130	70	30	90	0	0
789	3	130	70	30	100	0	0
789	4	130	70	30	100	10	0
789	5	130	70	30	100	20	0
790	0	90	100	40	40	30	0
790	1	90	100	40	40	40	0
790	2	90	100	40	40	50	0
790	3	90	100	40	40	60	0
790	4	90	100	40	40	70	0
790	5	90	100	40	40	80	0
791	0	90	120	40	50	50	0
791	1	90	120	40	50	60	0
791	2	90	120	40	50	70	0
791	3	90	120	40	50	80	0
791	4	90	120	40	50	90	0
791	5	90	120	40	50	100	0
792	0	100	70	30	50	0	0
792	1	100	70	30	60	0	0
792	2	100	70	30	70	0	0
792	3	100	70	30	80	0	0
792	4	100	70	30	90	0	0
792	5	100	70	30	100	0	0
793	0	140	70	30	60	0	0
793	1	140	70	30	70	0	0
793	2	140	70	30	80	0	0
793	3	140	70	30	90	0	0
793	4	140	70	30	100	0	0
793	5	140	70	30	100	10	0
794	0	110	100	40	50	0	0
794	1	110	100	40	50	10	0
794	2	110	100	40	50	20	0
794	3	110	100	40	50	30	0
794	4	110	100	40	50	40	0
794	5	110	100	40	50	50	0
795	0	90	50	60	120	30	0
795	1	90	50	60	120	40	0
795	2	90	50	60	120	50	0
795	3	90	50	60	120	60	0
795	4	90	50	60	120	60	10
795	5	90	50	60	120	60	20
796	0	70	50	50	30	0	0
796	1	70	50	50	40	0	0
796	2	70	50	50	50	0	0
796	3	70	50	50	60	0	0
796	4	70	50	50	70	0	0
796	5	70	50	50	80	0	0
797	0	100	70	30	50	0	0
797	1	100	70	30	60	0	0
797	2	100	70	30	70	0	0
797	3	100	70	30	80	0	0
797	4	100	70	30	90	0	0
797	5	100	70	30	100	0	0
798	0	90	70	30	60	0	0
798	1	90	70	30	70	0	0
798	2	90	70	30	80	0	0
798	3	90	70	30	90	0	0
798	4	90	70	30	100	0	0
798	5	90	70	30	110	0	0
799	0	130	70	30	70	0	0
799	1	130	70	30	80	0	0
799	2	130	70	30	90	0	0
799	3	130	70	30	100	0	0
799	4	130	70	30	100	10	0
799	5	130	70	30	100	20	0
800	0	90	100	40	40	30	0
800	1	90	100	40	40	40	0
800	2	90	100	40	40	50	0
800	3	90	100	40	40	60	0
800	4	90	100	40	40	70	0
800	5	90	100	40	40	80	0
801	0	100	120	40	50	40	0
801	1	100	120	40	50	50	0
801	2	100	120	40	50	60	0
801	3	100	120	40	50	70	0
801	4	100	120	40	50	80	0
801	5	100	120	40	50	90	0
802	0	80	100	40	40	40	0
802	1	80	100	40	40	50	0
802	2	80	100	40	40	60	0
802	3	80	100	40	40	70	0
802	4	80	100	40	40	80	0
802	5	80	100	40	40	90	0
803	0	110	110	40	40	50	0
803	1	110	110	40	40	60	0
803	2	110	110	40	40	70	0
803	3	110	110	40	40	80	0
803	4	110	110	40	40	80	10
803	5	110	110	40	40	80	20
804	0	110	70	30	40	0	0
804	1	110	70	30	50	0	0
804	2	110	70	30	60	0	0
804	3	110	70	30	70	0	0
804	4	110	70	30	80	0	0
804	5	110	70	30	90	0	0
805	0	100	70	30	50	0	0
805	1	100	70	30	60	0	0
805	2	100	70	30	70	0	0
805	3	100	70	30	80	0	0
805	4	100	70	30	90	0	0
805	5	100	70	30	100	0	0
806	0	110	100	40	40	10	0
806	1	110	100	40	40	20	0
806	2	110	100	40	40	30	0
806	3	110	100	40	40	40	0
806	4	110	100	40	40	50	0
806	5	110	100	40	40	60	0
807	0	100	100	40	40	20	0
807	1	100	100	40	40	30	0
807	2	100	100	40	40	40	0
807	3	100	100	40	40	50	0
807	4	100	100	40	40	60	0
807	5	100	100	40	40	70	0
808	0	110	110	40	40	50	0
808	1	110	110	40	40	60	0
808	2	110	110	40	40	70	0
808	3	110	110	40	40	80	0
808	4	110	110	40	40	80	10
808	5	110	110	40	40	80	20
809	0	130	110	40	40	30	0
809	1	130	110	40	40	40	0
809	2	130	110	40	40	50	0
809	3	130	110	40	40	60	0
809	4	130	110	40	40	60	10
809	5	130	110	40	40	60	20
810	0	200	70	20	20	40	0
810	1	200	70	20	20	50	0
810	2	200	70	20	20	50	10
810	3	200	70	20	20	50	20
810	4	200	70	20	20	50	30
810	5	200	70	20	20	50	40
811	0	60	70	30	40	0	0
811	1	60	70	30	50	0	0
811	2	60	70	30	60	0	0
811	3	60	70	30	70	0	0
811	4	60	70	30	80	0	0
811	5	60	70	30	90	0	0
812	0	100	70	30	50	0	0
812	1	100	70	30	60	0	0
812	2	100	70	30	70	0	0
812	3	100	70	30	80	0	0
812	4	100	70	30	90	0	0
812	5	100	70	30	100	0	0
813	0	80	70	30	70	0	0
813	1	80	70	30	80	0	0
813	2	80	70	30	90	0	0
813	3	80	70	30	100	0	0
813	4	80	70	30	110	0	0
813	5	80	70	30	120	0	0
814	0	90	100	40	40	30	0
814	1	90	100	40	40	40	0
814	2	90	100	40	40	50	0
814	3	90	100	40	40	60	0
814	4	90	100	40	40	70	0
814	5	90	100	40	40	80	0
815	0	80	100	40	40	40	0
815	1	80	100	40	40	50	0
815	2	80	100	40	40	60	0
815	3	80	100	40	40	70	0
815	4	80	100	40	40	80	0
815	5	80	100	40	40	90	0
816	0	190	70	20	20	50	0
816	1	190	70	20	20	60	0
816	2	190	70	20	20	60	10
816	3	190	70	20	20	60	20
816	4	190	70	20	20	60	30
816	5	190	70	20	20	60	40
817	0	90	70	30	60	0	0
817	1	90	70	30	70	0	0
817	2	90	70	30	80	0	0
817	3	90	70	30	90	0	0
817	4	90	70	30	100	0	0
817	5	90	70	30	110	0	0
818	0	100	100	40	40	20	0
818	1	100	100	40	40	30	0
818	2	100	100	40	40	40	0
818	3	100	100	40	40	50	0
818	4	100	100	40	40	60	0
818	5	100	100	40	40	70	0
819	0	90	100	40	40	30	0
819	1	90	100	40	40	40	0
819	2	90	100	40	40	50	0
819	3	90	100	40	40	60	0
819	4	90	100	40	40	70	0
819	5	90	100	40	40	80	0
820	0	200	70	20	20	50	40
820	1	200	70	20	20	50	40
820	2	200	70	20	20	50	40
820	3	200	70	20	20	50	40
820	4	200	70	20	20	50	40
820	5	200	70	20	20	50	40
821	0	110	70	30	40	0	0
821	1	110	70	30	50	0	0
821	2	110	70	30	60	0	0
821	3	110	70	30	70	0	0
821	4	110	70	30	80	0	0
821	5	110	70	30	90	0	0
822	0	70	70	30	80	0	0
822	1	70	70	30	90	0	0
822	2	70	70	30	100	0	0
822	3	70	70	30	110	0	0
822	4	70	70	30	120	0	0
822	5	70	70	30	130	0	0
823	0	120	110	40	40	40	0
823	1	120	110	40	40	50	0
823	2	120	110	40	40	60	0
823	3	120	110	40	40	70	0
823	4	120	110	40	40	70	10
823	5	120	110	40	40	70	20
824	0	110	50	80	60	0	0
824	1	110	50	80	70	0	0
824	2	110	50	80	80	0	0
824	3	110	50	80	90	0	0
824	4	110	50	80	100	0	0
824	5	110	50	80	100	10	0
825	0	210	30	40	70	0	0
825	1	210	30	40	80	0	0
825	2	210	30	40	90	0	0
825	3	210	30	40	90	10	0
825	4	210	30	40	90	20	0
825	5	210	30	40	90	30	0
826	0	150	110	40	0	0	0
826	1	150	110	40	10	0	0
826	2	150	110	40	20	0	0
826	3	150	110	40	30	0	0
826	4	150	110	40	40	0	0
826	5	150	110	40	40	10	0
827	0	140	110	10	40	0	0
827	1	140	110	10	50	0	0
827	2	140	110	10	60	0	0
827	3	140	110	10	70	0	0
827	4	140	110	10	70	10	0
827	5	140	110	10	70	20	0
828	0	110	60	80	80	20	0
828	1	110	60	80	80	30	0
828	2	110	60	80	80	40	0
828	3	110	60	80	80	50	0
828	4	110	60	80	80	50	10
828	5	110	60	80	80	50	20
829	0	90	60	80	80	40	0
829	1	90	60	80	80	50	0
829	2	90	60	80	80	60	0
829	3	90	60	80	80	70	0
829	4	90	60	80	80	70	10
829	5	90	60	80	80	70	20
830	0	130	30	60	80	40	10
830	1	130	30	60	80	40	20
830	2	130	30	60	80	40	30
830	3	130	30	60	80	40	40
830	4	130	30	60	80	40	50
830	5	130	30	60	80	40	60
265	0	90	50	60	0	0	0
265	1	90	50	70	0	0	0
265	2	90	50	80	0	0	0
265	3	90	50	80	10	0	0
265	4	90	50	80	20	0	0
265	5	90	50	80	30	0	0
266	0	70	70	30	30	0	0
266	1	70	70	30	40	0	0
266	2	70	70	30	50	0	0
266	3	70	70	30	60	0	0
266	4	70	70	30	70	0	0
266	5	70	70	30	80	0	0
267	0	50	70	30	50	0	0
267	1	50	70	30	60	0	0
267	2	50	70	30	70	0	0
267	3	50	70	30	80	0	0
267	4	50	70	30	90	0	0
267	5	50	70	30	100	0	0
268	0	60	50	80	60	0	0
268	1	60	50	80	70	0	0
268	2	60	50	80	80	0	0
268	3	60	50	80	90	0	0
268	4	60	50	80	100	0	0
268	5	60	50	80	110	0	0
269	0	50	50	80	70	0	0
269	1	50	50	80	80	0	0
269	2	50	50	80	90	0	0
269	3	50	50	80	100	0	0
269	4	50	50	80	110	0	0
269	5	50	50	80	120	0	0
270	0	90	50	50	80	30	0
270	1	90	50	50	80	40	0
270	2	90	50	50	80	50	0
270	3	90	50	50	80	60	0
270	4	90	50	50	80	70	0
270	5	90	50	50	80	80	0
271	0	80	50	50	80	40	0
271	1	80	50	50	80	50	0
271	2	80	50	50	80	60	0
271	3	80	50	50	80	70	0
271	4	80	50	50	80	80	0
271	5	80	50	50	80	90	0
272	0	60	60	20	150	60	0
272	1	60	60	20	150	70	0
272	2	60	60	20	150	80	0
272	3	60	60	20	150	90	0
272	4	60	60	20	150	90	10
272	5	60	60	20	150	90	20
273	0	110	120	40	50	80	0
273	1	110	120	40	50	80	0
273	2	110	120	40	50	80	0
273	3	110	120	40	50	80	0
273	4	110	120	40	50	80	0
273	5	110	120	40	50	80	0
274	0	90	120	40	50	100	0
274	1	90	120	40	50	100	0
274	2	90	120	40	50	100	0
274	3	90	120	40	50	100	0
274	4	90	120	40	50	100	0
274	5	90	120	40	50	100	0
275	0	70	50	80	50	0	0
275	1	70	50	80	60	0	0
275	2	70	50	80	70	0	0
275	3	70	50	80	80	0	0
275	4	70	50	80	90	0	0
275	5	70	50	80	100	0	0
276	0	60	50	80	60	0	0
276	1	60	50	80	70	0	0
276	2	60	50	80	80	0	0
276	3	60	50	80	90	0	0
276	4	60	50	80	100	0	0
276	5	60	50	80	110	0	0
277	0	100	50	50	80	20	0
277	1	100	50	50	80	30	0
277	2	100	50	50	80	40	0
277	3	100	50	50	80	50	0
277	4	100	50	50	80	60	0
277	5	100	50	50	80	70	0
278	0	90	50	50	80	30	0
278	1	90	50	50	80	40	0
278	2	90	50	50	80	50	0
278	3	90	50	50	80	60	0
278	4	90	50	50	80	70	0
278	5	90	50	50	80	80	0
279	0	80	50	60	120	40	0
279	1	80	50	60	120	50	0
279	2	80	50	60	120	50	10
279	3	80	50	60	120	50	20
279	4	80	50	60	120	50	30
279	5	80	50	60	120	50	40
280	0	100	50	50	80	20	0
280	1	100	50	50	80	30	0
280	2	100	50	50	80	40	0
280	3	100	50	50	80	50	0
280	4	100	50	50	80	60	0
280	5	100	50	50	80	70	0
281	0	60	120	80	60	30	0
281	1	60	120	80	60	30	10
281	2	60	120	80	60	30	20
281	3	60	120	80	60	30	30
281	4	60	120	80	60	30	40
281	5	60	120	80	60	30	50
282	0	50	50	80	70	0	0
282	1	50	50	80	80	0	0
282	2	50	50	80	90	0	0
282	3	50	50	80	100	0	0
282	4	50	50	80	110	0	0
282	5	50	50	80	120	0	0
283	0	100	50	50	80	20	0
283	1	100	50	50	80	30	0
283	2	100	50	50	80	40	0
283	3	100	50	50	80	50	0
283	4	100	50	50	80	60	0
283	5	100	50	50	80	70	0
284	0	90	50	50	80	30	0
284	1	90	50	50	80	40	0
284	2	90	50	50	80	50	0
284	3	90	50	50	80	60	0
284	4	90	50	50	80	70	0
284	5	90	50	50	80	80	0
285	0	80	50	60	120	40	0
285	1	80	50	60	120	50	0
285	2	80	50	60	120	50	10
285	3	80	50	60	120	50	20
285	4	80	50	60	120	50	30
285	5	80	50	60	120	50	40
286	0	60	70	30	40	0	0
286	1	60	70	30	50	0	0
286	2	60	70	30	60	0	0
286	3	60	70	30	70	0	0
286	4	60	70	30	80	0	0
286	5	60	70	30	90	0	0
287	0	60	50	80	60	0	0
287	1	60	50	80	70	0	0
287	2	60	50	80	80	0	0
287	3	60	50	80	90	0	0
287	4	60	50	80	100	0	0
287	5	60	50	80	110	0	0
288	0	50	50	80	70	0	0
288	1	50	50	80	80	0	0
288	2	50	50	80	90	0	0
288	3	50	50	80	100	0	0
288	4	50	50	80	110	0	0
288	5	50	50	80	120	0	0
289	0	90	50	50	80	30	0
289	1	90	50	50	80	40	0
289	2	90	50	50	80	50	0
289	3	90	50	50	80	60	0
289	4	90	50	50	80	70	0
289	5	90	50	50	80	80	0
290	0	80	50	50	80	40	0
290	1	80	50	50	80	50	0
290	2	80	50	50	80	60	0
290	3	80	50	50	80	70	0
290	4	80	50	50	80	80	0
290	5	80	50	50	80	90	0
291	0	80	60	60	100	50	0
291	1	80	60	60	100	60	0
291	2	80	60	60	100	70	0
291	3	80	60	60	100	70	10
291	4	80	60	60	100	70	20
291	5	80	60	60	100	70	30
292	0	50	50	80	70	0	0
292	1	50	50	80	80	0	0
292	2	50	50	80	90	0	0
292	3	50	50	80	100	0	0
292	4	50	50	80	110	0	0
292	5	50	50	80	120	0	0
293	0	90	50	50	80	30	0
293	1	90	50	50	80	40	0
293	2	90	50	50	80	50	0
293	3	90	50	50	80	60	0
293	4	90	50	50	80	70	0
293	5	90	50	50	80	80	0
294	0	60	50	60	70	110	0
294	1	60	50	60	70	120	0
294	2	60	50	60	70	120	10
294	3	60	50	60	70	120	20
294	4	60	50	60	70	120	30
294	5	60	50	60	70	120	40
295	0	100	60	40	0	0	0
295	1	100	60	50	0	0	0
295	2	100	60	60	0	0	0
295	3	100	60	70	0	0	0
295	4	100	60	80	0	0	0
295	5	100	60	80	10	0	0
296	0	90	50	60	0	0	0
296	1	90	50	70	0	0	0
296	2	90	50	80	0	0	0
296	3	90	50	80	10	0	0
296	4	90	50	80	20	0	0
296	5	90	50	80	30	0	0
297	0	80	70	30	20	0	0
297	1	80	70	30	30	0	0
297	2	80	70	30	40	0	0
297	3	80	70	30	50	0	0
297	4	80	70	30	60	0	0
297	5	80	70	30	70	0	0
298	0	110	70	30	40	0	0
298	1	110	70	30	50	0	0
298	2	110	70	30	60	0	0
298	3	110	70	30	70	0	0
298	4	110	70	30	80	0	0
298	5	110	70	30	90	0	0
299	0	90	70	30	60	0	0
299	1	90	70	30	70	0	0
299	2	90	70	30	80	0	0
299	3	90	70	30	90	0	0
299	4	90	70	30	100	0	0
299	5	90	70	30	110	0	0
300	0	120	70	30	80	0	0
300	1	120	70	30	90	0	0
300	2	120	70	30	100	0	0
300	3	120	70	30	100	10	0
300	4	120	70	30	100	20	0
300	5	120	70	30	100	30	0
301	0	60	60	60	100	20	0
301	1	60	60	60	100	30	0
301	2	60	60	60	100	40	0
301	3	60	60	60	100	50	0
301	4	60	60	60	100	60	0
301	5	60	60	60	100	70	0
302	0	110	50	50	80	60	0
302	1	110	50	50	80	70	0
302	2	110	50	50	80	80	0
302	3	110	50	50	80	90	0
302	4	110	50	50	80	100	0
302	5	110	50	50	80	110	0
303	0	120	70	30	30	0	0
303	1	120	70	30	40	0	0
303	2	120	70	30	50	0	0
303	3	120	70	30	60	0	0
303	4	120	70	30	70	0	0
303	5	120	70	30	80	0	0
304	0	100	70	30	50	0	0
304	1	100	70	30	60	0	0
304	2	100	70	30	70	0	0
304	3	100	70	30	80	0	0
304	4	100	70	30	90	0	0
304	5	100	70	30	100	0	0
305	0	140	70	30	60	0	0
305	1	140	70	30	70	0	0
305	2	140	70	30	80	0	0
305	3	140	70	30	90	0	0
305	4	140	70	30	100	0	0
305	5	140	70	30	100	10	0
306	0	130	70	30	70	0	0
306	1	130	70	30	80	0	0
306	2	130	70	30	90	0	0
306	3	130	70	30	100	0	0
306	4	130	70	30	100	10	0
306	5	130	70	30	100	20	0
307	0	100	120	40	50	40	0
307	1	100	120	40	50	50	0
307	2	100	120	40	50	60	0
307	3	100	120	40	50	70	0
307	4	100	120	40	50	80	0
307	5	100	120	40	50	90	0
308	0	110	70	30	40	0	0
308	1	110	70	30	50	0	0
308	2	110	70	30	60	0	0
308	3	110	70	30	70	0	0
308	4	110	70	30	80	0	0
308	5	110	70	30	90	0	0
309	0	140	70	30	60	0	0
309	1	140	70	30	70	0	0
309	2	140	70	30	80	0	0
309	3	140	70	30	90	0	0
309	4	140	70	30	100	0	0
309	5	140	70	30	100	10	0
310	0	90	50	60	120	30	0
310	1	90	50	60	120	40	0
310	2	90	50	60	120	50	0
310	3	90	50	60	120	60	0
310	4	90	50	60	120	60	10
310	5	90	50	60	120	60	20
311	0	90	50	60	120	30	0
311	1	90	50	60	120	40	0
311	2	90	50	60	120	50	0
311	3	90	50	60	120	60	0
311	4	90	50	60	120	60	10
311	5	90	50	60	120	60	20
312	0	80	50	50	20	0	0
312	1	80	50	50	30	0	0
312	2	80	50	50	40	0	0
312	3	80	50	50	50	0	0
312	4	80	50	50	60	0	0
312	5	80	50	50	70	0	0
313	0	120	70	30	30	0	0
313	1	120	70	30	40	0	0
313	2	120	70	30	50	0	0
313	3	120	70	30	60	0	0
313	4	120	70	30	70	0	0
313	5	120	70	30	80	0	0
314	0	110	70	30	40	0	0
314	1	110	70	30	50	0	0
314	2	110	70	30	60	0	0
314	3	110	70	30	70	0	0
314	4	110	70	30	80	0	0
314	5	110	70	30	90	0	0
315	0	140	70	30	60	0	0
315	1	140	70	30	70	0	0
315	2	140	70	30	80	0	0
315	3	140	70	30	90	0	0
315	4	140	70	30	100	0	0
315	5	140	70	30	100	10	0
316	0	100	100	40	40	20	0
316	1	100	100	40	40	30	0
316	2	100	100	40	40	40	0
316	3	100	100	40	40	50	0
316	4	100	100	40	40	60	0
316	5	100	100	40	40	70	0
317	0	110	150	30	30	30	0
317	1	110	150	30	30	40	0
317	2	110	150	30	30	50	0
317	3	110	150	30	30	50	10
317	4	110	150	30	30	50	20
317	5	110	150	30	30	50	30
318	0	100	100	40	40	20	0
318	1	100	100	40	40	30	0
318	2	100	100	40	40	40	0
318	3	100	100	40	40	50	0
318	4	100	100	40	40	60	0
318	5	100	100	40	40	70	0
319	0	200	70	20	20	40	0
319	1	200	70	20	20	50	0
319	2	200	70	20	20	50	10
319	3	200	70	20	20	50	20
319	4	200	70	20	20	50	30
319	5	200	70	20	20	50	40
320	0	100	70	30	50	0	0
320	1	100	70	30	60	0	0
320	2	100	70	30	70	0	0
320	3	100	70	30	80	0	0
320	4	100	70	30	90	0	0
320	5	100	70	30	100	0	0
321	0	80	70	30	70	0	0
321	1	80	70	30	80	0	0
321	2	80	70	30	90	0	0
321	3	80	70	30	100	0	0
321	4	80	70	30	110	0	0
321	5	80	70	30	120	0	0
322	0	90	100	40	40	30	0
322	1	90	100	40	40	40	0
322	2	90	100	40	40	50	0
322	3	90	100	40	40	60	0
322	4	90	100	40	40	70	0
322	5	90	100	40	40	80	0
323	0	80	100	40	40	40	0
323	1	80	100	40	40	50	0
323	2	80	100	40	40	60	0
323	3	80	100	40	40	70	0
323	4	80	100	40	40	80	0
323	5	80	100	40	40	90	0
324	0	110	30	60	80	40	30
324	1	110	30	60	80	40	40
324	2	110	30	60	80	40	50
324	3	110	30	60	80	40	60
324	4	110	30	60	80	40	70
324	5	110	30	60	80	40	80
325	0	70	50	50	30	0	0
325	1	70	50	50	40	0	0
325	2	70	50	50	50	0	0
325	3	70	50	50	60	0	0
325	4	70	50	50	70	0	0
325	5	70	50	50	80	0	0
326	0	100	70	30	50	0	0
326	1	100	70	30	60	0	0
326	2	100	70	30	70	0	0
326	3	100	70	30	80	0	0
326	4	100	70	30	90	0	0
326	5	100	70	30	100	0	0
327	0	90	70	30	60	0	0
327	1	90	70	30	70	0	0
327	2	90	70	30	80	0	0
327	3	90	70	30	90	0	0
327	4	90	70	30	100	0	0
327	5	90	70	30	110	0	0
328	0	100	100	40	40	20	0
328	1	100	100	40	40	30	0
328	2	100	100	40	40	40	0
328	3	100	100	40	40	50	0
328	4	100	100	40	40	60	0
328	5	100	100	40	40	70	0
329	0	90	100	40	40	30	0
329	1	90	100	40	40	40	0
329	2	90	100	40	40	50	0
329	3	90	100	40	40	60	0
329	4	90	100	40	40	70	0
329	5	90	100	40	40	80	0
330	0	200	70	20	20	40	0
330	1	200	70	20	20	50	0
330	2	200	70	20	20	50	10
330	3	200	70	20	20	50	20
330	4	200	70	20	20	50	30
330	5	200	70	20	20	50	40
331	0	80	70	30	70	0	0
331	1	80	70	30	80	0	0
331	2	80	70	30	90	0	0
331	3	80	70	30	100	0	0
331	4	80	70	30	110	0	0
331	5	80	70	30	120	0	0
332	0	90	100	40	40	30	0
332	1	90	100	40	40	40	0
332	2	90	100	40	40	50	0
332	3	90	100	40	40	60	0
332	4	90	100	40	40	70	0
332	5	90	100	40	40	80	0
333	0	80	100	40	40	40	0
333	1	80	100	40	40	50	0
333	2	80	100	40	40	60	0
333	3	80	100	40	40	70	0
333	4	80	100	40	40	80	0
333	5	80	100	40	40	90	0
334	0	200	70	20	20	50	40
334	1	200	70	20	20	50	40
334	2	200	70	20	20	50	40
334	3	200	70	20	20	50	40
334	4	200	70	20	20	50	40
334	5	200	70	20	20	50	40
335	0	110	70	30	40	0	0
335	1	110	70	30	50	0	0
335	2	110	70	30	60	0	0
335	3	110	70	30	70	0	0
335	4	110	70	30	80	0	0
335	5	110	70	30	90	0	0
336	0	70	70	30	80	0	0
336	1	70	70	30	90	0	0
336	2	70	70	30	100	0	0
336	3	70	70	30	110	0	0
336	4	70	70	30	120	0	0
336	5	70	70	30	130	0	0
337	0	110	110	40	40	50	0
337	1	110	110	40	40	60	0
337	2	110	110	40	40	70	0
337	3	110	110	40	40	80	0
337	4	110	110	40	40	80	10
337	5	110	110	40	40	80	20
338	0	70	70	30	80	0	0
338	1	70	70	30	90	0	0
338	2	70	70	30	100	0	0
338	3	70	70	30	110	0	0
338	4	70	70	30	120	0	0
338	5	70	70	30	130	0	0
339	0	110	20	20	140	60	0
339	1	110	20	20	140	70	0
339	2	110	20	20	140	80	0
339	3	110	20	20	140	90	0
339	4	110	20	20	140	100	0
339	5	110	20	20	140	110	0
340	0	110	20	20	120	80	0
340	1	110	20	20	120	90	0
340	2	110	20	20	120	100	0
340	3	110	20	20	120	110	0
340	4	110	20	20	120	120	0
340	5	110	20	20	120	130	0
341	0	110	50	80	60	0	0
341	1	110	50	80	70	0	0
341	2	110	50	80	80	0	0
341	3	110	50	80	90	0	0
341	4	110	50	80	100	0	0
341	5	110	50	80	100	10	0
342	0	180	30	60	80	0	0
342	1	180	30	60	90	0	0
342	2	180	30	60	90	10	0
342	3	180	30	60	90	20	0
342	4	180	30	60	90	30	0
342	5	180	30	60	90	40	0
343	0	150	110	40	0	0	0
343	1	150	110	40	10	0	0
343	2	150	110	40	20	0	0
343	3	150	110	40	30	0	0
343	4	150	110	40	40	0	0
343	5	150	110	40	40	10	0
344	0	140	110	40	10	0	0
344	1	140	110	40	20	0	0
344	2	140	110	40	30	0	0
344	3	140	110	40	40	0	0
344	4	140	110	40	40	10	0
344	5	140	110	40	40	20	0
345	0	100	60	80	80	30	0
345	1	100	60	80	80	40	0
345	2	100	60	80	80	50	0
345	3	100	60	80	80	60	0
345	4	100	60	80	80	60	10
345	5	100	60	80	80	60	20
346	0	60	50	60	120	60	0
346	1	60	50	60	120	70	0
346	2	60	50	60	120	70	10
346	3	60	50	60	120	70	20
346	4	60	50	60	120	70	30
346	5	60	50	60	120	70	40
347	0	120	30	60	80	40	20
347	1	120	30	60	80	40	30
347	2	120	30	60	80	40	40
347	3	120	30	60	80	40	50
347	4	120	30	60	80	40	60
347	5	120	30	60	80	40	70
85	0	100	50	50	0	0	0
85	1	100	50	60	0	0	0
85	2	100	50	70	0	0	0
85	3	100	50	80	0	0	0
85	4	100	50	80	10	0	0
85	5	100	50	80	20	0	0
86	0	70	70	30	30	0	0
86	1	70	70	30	40	0	0
86	2	70	70	30	50	0	0
86	3	70	70	30	60	0	0
86	4	70	70	30	70	0	0
86	5	70	70	30	80	0	0
87	0	60	70	30	40	0	0
87	1	60	70	30	50	0	0
87	2	60	70	30	60	0	0
87	3	60	70	30	70	0	0
87	4	60	70	30	80	0	0
87	5	60	70	30	90	0	0
88	0	70	50	80	50	0	0
88	1	70	50	80	60	0	0
88	2	70	50	80	70	0	0
88	3	70	50	80	80	0	0
88	4	70	50	80	90	0	0
88	5	70	50	80	100	0	0
89	0	60	50	80	60	0	0
89	1	60	50	80	70	0	0
89	2	60	50	80	80	0	0
89	3	60	50	80	90	0	0
89	4	60	50	80	100	0	0
89	5	60	50	80	110	0	0
90	0	100	50	50	80	20	0
90	1	100	50	50	80	30	0
90	2	100	50	50	80	40	0
90	3	100	50	50	80	50	0
90	4	100	50	50	80	60	0
90	5	100	50	50	80	70	0
91	0	90	50	50	80	30	0
91	1	90	50	50	80	40	0
91	2	90	50	50	80	50	0
91	3	90	50	50	80	60	0
91	4	90	50	50	80	70	0
91	5	90	50	50	80	80	0
92	0	60	60	20	150	60	0
92	1	60	60	20	150	70	0
92	2	60	60	20	150	80	0
92	3	60	60	20	150	90	0
92	4	60	60	20	150	90	10
92	5	60	60	20	150	90	20
93	0	120	120	40	50	70	0
93	1	120	120	40	50	70	0
93	2	120	120	40	50	70	0
93	3	120	120	40	50	70	0
93	4	120	120	40	50	70	0
93	5	120	120	40	50	70	0
94	0	110	120	40	50	80	0
94	1	110	120	40	50	80	0
94	2	110	120	40	50	80	0
94	3	110	120	40	50	80	0
94	4	110	120	40	50	80	0
94	5	110	120	40	50	80	0
95	0	70	50	80	50	0	0
95	1	70	50	80	60	0	0
95	2	70	50	80	70	0	0
95	3	70	50	80	80	0	0
95	4	70	50	80	90	0	0
95	5	70	50	80	100	0	0
96	0	60	50	80	60	0	0
96	1	60	50	80	70	0	0
96	2	60	50	80	80	0	0
96	3	60	50	80	90	0	0
96	4	60	50	80	100	0	0
96	5	60	50	80	110	0	0
97	0	100	50	80	70	0	0
97	1	100	50	80	80	0	0
97	2	100	50	80	90	0	0
97	3	100	50	80	100	0	0
97	4	100	50	80	100	10	0
97	5	100	50	80	100	20	0
98	0	100	50	50	80	20	0
98	1	100	50	50	80	30	0
98	2	100	50	50	80	40	0
98	3	100	50	50	80	50	0
98	4	100	50	50	80	60	0
98	5	100	50	50	80	70	0
99	0	100	120	40	50	40	0
99	1	100	120	40	50	50	0
99	2	100	120	40	50	60	0
99	3	100	120	40	50	70	0
99	4	100	120	40	50	80	0
99	5	100	120	40	50	90	0
100	0	60	50	80	60	0	0
100	1	60	50	80	70	0	0
100	2	60	50	80	80	0	0
100	3	60	50	80	90	0	0
100	4	60	50	80	100	0	0
100	5	60	50	80	110	0	0
101	0	100	50	80	70	0	0
101	1	100	50	80	80	0	0
101	2	100	50	80	90	0	0
101	3	100	50	80	100	0	0
101	4	100	50	80	100	10	0
101	5	100	50	80	100	20	0
102	0	90	50	50	80	30	0
102	1	90	50	50	80	40	0
102	2	90	50	50	80	50	0
102	3	90	50	50	80	60	0
102	4	90	50	50	80	70	0
102	5	90	50	50	80	80	0
103	0	70	70	80	80	50	0
103	1	70	70	80	80	60	0
103	2	70	70	80	80	70	0
103	3	70	70	80	80	80	0
103	4	70	70	80	80	80	10
103	5	70	70	80	80	80	20
104	0	80	70	30	20	0	0
104	1	80	70	30	30	0	0
104	2	80	70	30	40	0	0
104	3	80	70	30	50	0	0
104	4	80	70	30	60	0	0
104	5	80	70	30	70	0	0
105	0	80	50	80	40	0	0
105	1	80	50	80	50	0	0
105	2	80	50	80	60	0	0
105	3	80	50	80	70	0	0
105	4	80	50	80	80	0	0
105	5	80	50	80	90	0	0
106	0	60	50	80	60	0	0
106	1	60	50	80	70	0	0
106	2	60	50	80	80	0	0
106	3	60	50	80	90	0	0
106	4	60	50	80	100	0	0
106	5	60	50	80	110	0	0
107	0	100	50	80	70	0	0
107	1	100	50	80	80	0	0
107	2	100	50	80	90	0	0
107	3	100	50	80	100	0	0
107	4	100	50	80	100	10	0
107	5	100	50	80	100	20	0
108	0	110	50	50	80	10	0
108	1	110	50	50	80	20	0
108	2	110	50	50	80	30	0
108	3	110	50	50	80	40	0
108	4	110	50	50	80	50	0
108	5	110	50	50	80	60	0
109	0	110	120	40	50	30	0
109	1	110	120	40	50	40	0
109	2	110	120	40	50	50	0
109	3	110	120	40	50	60	0
109	4	110	120	40	50	70	0
109	5	110	120	40	50	80	0
110	0	80	50	80	40	0	0
110	1	80	50	80	50	0	0
110	2	80	50	80	60	0	0
110	3	80	50	80	70	0	0
110	4	80	50	80	80	0	0
110	5	80	50	80	90	0	0
111	0	60	50	80	60	0	0
111	1	60	50	80	70	0	0
111	2	60	50	80	80	0	0
111	3	60	50	80	90	0	0
111	4	60	50	80	100	0	0
111	5	60	50	80	110	0	0
112	0	110	50	50	80	10	0
112	1	110	50	50	80	20	0
112	2	110	50	50	80	30	0
112	3	110	50	50	80	40	0
112	4	110	50	50	80	50	0
112	5	110	50	50	80	60	0
113	0	100	50	50	80	20	0
113	1	100	50	50	80	30	0
113	2	100	50	50	80	40	0
113	3	100	50	50	80	50	0
113	4	100	50	50	80	60	0
113	5	100	50	50	80	70	0
114	0	80	60	60	100	50	0
114	1	80	60	60	100	60	0
114	2	80	60	60	100	70	0
114	3	80	60	60	100	70	10
114	4	80	60	60	100	70	20
114	5	80	60	60	100	70	30
115	0	100	50	50	80	20	0
115	1	100	50	50	80	30	0
115	2	100	50	50	80	40	0
115	3	100	50	50	80	50	0
115	4	100	50	50	80	60	0
115	5	100	50	50	80	70	0
116	0	90	60	60	100	40	0
116	1	90	60	60	100	50	0
116	2	90	60	60	100	60	0
116	3	90	60	60	100	60	10
116	4	90	60	60	100	60	20
116	5	90	60	60	100	60	30
117	0	60	70	30	40	0	0
117	1	60	70	30	50	0	0
117	2	60	70	30	60	0	0
117	3	60	70	30	70	0	0
117	4	60	70	30	80	0	0
117	5	60	70	30	90	0	0
118	0	70	50	80	50	0	0
118	1	70	50	80	60	0	0
118	2	70	50	80	70	0	0
118	3	70	50	80	80	0	0
118	4	70	50	80	90	0	0
118	5	70	50	80	100	0	0
119	0	60	50	80	60	0	0
119	1	60	50	80	70	0	0
119	2	60	50	80	80	0	0
119	3	60	50	80	90	0	0
119	4	60	50	80	100	0	0
119	5	60	50	80	110	0	0
120	0	110	50	40	90	10	0
120	1	110	50	40	90	20	0
120	2	110	50	40	90	30	0
120	3	110	50	40	90	40	0
120	4	110	50	40	90	50	0
120	5	110	50	40	90	60	0
121	0	100	50	50	80	20	0
121	1	100	50	50	80	30	0
121	2	100	50	50	80	40	0
121	3	100	50	50	80	50	0
121	4	100	50	50	80	60	0
121	5	100	50	50	80	70	0
122	0	110	120	40	50	30	0
122	1	110	120	40	50	40	0
122	2	110	120	40	50	50	0
122	3	110	120	40	50	60	0
122	4	110	120	40	50	70	0
122	5	110	120	40	50	80	0
123	0	70	50	80	50	0	0
123	1	70	50	80	60	0	0
123	2	70	50	80	70	0	0
123	3	70	50	80	80	0	0
123	4	70	50	80	90	0	0
123	5	70	50	80	100	0	0
124	0	100	50	80	70	0	0
124	1	100	50	80	80	0	0
124	2	100	50	80	90	0	0
124	3	100	50	80	100	0	0
124	4	100	50	80	100	10	0
124	5	100	50	80	100	20	0
125	0	100	50	50	80	20	0
125	1	100	50	50	80	30	0
125	2	100	50	50	80	40	0
125	3	100	50	50	80	50	0
125	4	100	50	50	80	60	0
125	5	100	50	50	80	70	0
126	0	110	120	40	50	30	0
126	1	110	120	40	50	40	0
126	2	110	120	40	50	50	0
126	3	110	120	40	50	60	0
126	4	110	120	40	50	70	0
126	5	110	120	40	50	80	0
127	0	90	60	60	100	40	0
127	1	90	60	60	100	50	0
127	2	90	60	60	100	60	0
127	3	90	60	60	100	60	10
127	4	90	60	60	100	60	20
127	5	90	60	60	100	60	30
128	0	100	60	40	0	0	0
128	1	100	60	50	0	0	0
128	2	100	60	60	0	0	0
128	3	100	60	70	0	0	0
128	4	100	60	80	0	0	0
128	5	100	60	80	10	0	0
129	0	90	60	50	0	0	0
129	1	90	60	60	0	0	0
129	2	90	60	70	0	0	0
129	3	90	60	80	0	0	0
129	4	90	60	80	10	0	0
129	5	90	60	80	20	0	0
130	0	90	50	50	10	0	0
130	1	90	50	50	20	0	0
130	2	90	50	50	30	0	0
130	3	90	50	50	40	0	0
130	4	90	50	50	50	0	0
130	5	90	50	50	60	0	0
131	0	130	70	30	20	0	0
131	1	130	70	30	30	0	0
131	2	130	70	30	40	0	0
131	3	130	70	30	50	0	0
131	4	130	70	30	60	0	0
131	5	130	70	30	70	0	0
132	0	120	70	30	30	0	0
132	1	120	70	30	40	0	0
132	2	120	70	30	50	0	0
132	3	120	70	30	60	0	0
132	4	120	70	30	70	0	0
132	5	120	70	30	80	0	0
133	0	120	60	80	40	0	0
133	1	120	60	80	50	0	0
133	2	120	60	80	60	0	0
133	3	120	60	80	70	0	0
133	4	120	60	80	80	0	0
133	5	120	60	80	80	10	0
134	0	110	100	40	40	10	0
134	1	110	100	40	40	20	0
134	2	110	100	40	40	30	0
134	3	110	100	40	40	40	0
134	4	110	100	40	40	50	0
134	5	110	100	40	40	60	0
135	0	110	120	40	50	30	0
135	1	110	120	40	50	40	0
135	2	110	120	40	50	50	0
135	3	110	120	40	50	60	0
135	4	110	120	40	50	70	0
135	5	110	120	40	50	80	0
136	0	110	60	80	80	20	0
136	1	110	60	80	80	30	0
136	2	110	60	80	80	40	0
136	3	110	60	80	80	50	0
136	4	110	60	80	80	50	10
136	5	110	60	80	80	50	20
137	0	200	70	20	20	40	0
137	1	200	70	20	20	50	0
137	2	200	70	20	20	50	10
137	3	200	70	20	20	50	20
137	4	200	70	20	20	50	30
137	5	200	70	20	20	50	40
138	0	120	70	30	30	0	0
138	1	120	70	30	40	0	0
138	2	120	70	30	50	0	0
138	3	120	70	30	60	0	0
138	4	120	70	30	70	0	0
138	5	120	70	30	80	0	0
139	0	110	100	40	40	10	0
139	1	110	100	40	40	20	0
139	2	110	100	40	40	30	0
139	3	110	100	40	40	40	0
139	4	110	100	40	40	50	0
139	5	110	100	40	40	60	0
140	0	120	120	40	50	20	0
140	1	120	120	40	50	30	0
140	2	120	120	40	50	40	0
140	3	120	120	40	50	50	0
140	4	120	120	40	50	60	0
140	5	120	120	40	50	70	0
141	0	90	70	30	10	0	0
141	1	90	70	30	20	0	0
141	2	90	70	30	30	0	0
141	3	90	70	30	40	0	0
141	4	90	70	30	50	0	0
141	5	90	70	30	60	0	0
142	0	130	70	30	20	0	0
142	1	130	70	30	30	0	0
142	2	130	70	30	40	0	0
142	3	130	70	30	50	0	0
142	4	130	70	30	60	0	0
142	5	130	70	30	70	0	0
143	0	120	70	30	30	0	0
143	1	120	70	30	40	0	0
143	2	120	70	30	50	0	0
143	3	120	70	30	60	0	0
143	4	120	70	30	70	0	0
143	5	120	70	30	80	0	0
144	0	140	70	30	60	0	0
144	1	140	70	30	70	0	0
144	2	140	70	30	80	0	0
144	3	140	70	30	90	0	0
144	4	140	70	30	100	0	0
144	5	140	70	30	100	10	0
145	0	130	70	30	70	0	0
145	1	130	70	30	80	0	0
145	2	130	70	30	90	0	0
145	3	130	70	30	100	0	0
145	4	130	70	30	100	10	0
145	5	130	70	30	100	20	0
146	0	190	70	20	50	20	0
146	1	190	70	20	50	30	0
146	2	190	70	20	50	30	10
146	3	190	70	20	50	30	20
146	4	190	70	20	50	30	30
146	5	190	70	20	50	30	40
147	0	80	70	30	20	0	0
147	1	80	70	30	30	0	0
147	2	80	70	30	40	0	0
147	3	80	70	30	50	0	0
147	4	80	70	30	60	0	0
147	5	80	70	30	70	0	0
148	0	120	70	30	30	0	0
148	1	120	70	30	40	0	0
148	2	120	70	30	50	0	0
148	3	120	70	30	60	0	0
148	4	120	70	30	70	0	0
148	5	120	70	30	80	0	0
149	0	110	70	30	40	0	0
149	1	110	70	30	50	0	0
149	2	110	70	30	60	0	0
149	3	110	70	30	70	0	0
149	4	110	70	30	80	0	0
149	5	110	70	30	90	0	0
150	0	110	100	40	40	10	0
150	1	110	100	40	40	20	0
150	2	110	100	40	40	30	0
150	3	110	100	40	40	40	0
150	4	110	100	40	40	50	0
150	5	110	100	40	40	60	0
151	0	100	100	40	40	20	0
151	1	100	100	40	40	30	0
151	2	100	100	40	40	40	0
151	3	100	100	40	40	50	0
151	4	100	100	40	40	60	0
151	5	100	100	40	40	70	0
152	0	110	120	40	50	30	0
152	1	110	120	40	50	40	0
152	2	110	120	40	50	50	0
152	3	110	120	40	50	60	0
152	4	110	120	40	50	70	0
152	5	110	120	40	50	80	0
153	0	120	70	30	30	0	0
153	1	120	70	30	40	0	0
153	2	120	70	30	50	0	0
153	3	120	70	30	60	0	0
153	4	120	70	30	70	0	0
153	5	120	70	30	80	0	0
154	0	110	70	30	40	0	0
154	1	110	70	30	50	0	0
154	2	110	70	30	60	0	0
154	3	110	70	30	70	0	0
154	4	110	70	30	80	0	0
154	5	110	70	30	90	0	0
155	0	140	70	30	60	0	0
155	1	140	70	30	70	0	0
155	2	140	70	30	80	0	0
155	3	140	70	30	90	0	0
155	4	140	70	30	100	0	0
155	5	140	70	30	100	10	0
156	0	110	100	40	40	10	0
156	1	110	100	40	40	20	0
156	2	110	100	40	40	30	0
156	3	110	100	40	40	40	0
156	4	110	100	40	40	50	0
156	5	110	100	40	40	60	0
157	0	110	120	40	50	30	0
157	1	110	120	40	50	40	0
157	2	110	120	40	50	50	0
157	3	110	120	40	50	60	0
157	4	110	120	40	50	70	0
157	5	110	120	40	50	80	0
158	0	110	70	30	40	0	0
158	1	110	70	30	50	0	0
158	2	110	70	30	60	0	0
158	3	110	70	30	70	0	0
158	4	110	70	30	80	0	0
158	5	110	70	30	90	0	0
159	0	100	70	30	50	0	0
159	1	100	70	30	60	0	0
159	2	100	70	30	70	0	0
159	3	100	70	30	80	0	0
159	4	100	70	30	90	0	0
159	5	100	70	30	100	0	0
160	0	120	110	40	40	40	0
160	1	120	110	40	40	50	0
160	2	120	110	40	40	60	0
160	3	120	110	40	40	70	0
160	4	120	110	40	40	70	10
160	5	120	110	40	40	70	20
161	0	60	50	80	60	0	0
161	1	60	50	80	70	0	0
161	2	60	50	80	80	0	0
161	3	60	50	80	90	0	0
161	4	60	50	80	100	0	0
161	5	60	50	80	110	0	0
162	0	110	20	20	160	40	0
162	1	110	20	20	160	50	0
162	2	110	20	20	160	60	0
162	3	110	20	20	160	70	0
162	4	110	20	20	160	80	0
162	5	110	20	20	160	90	0
163	0	110	20	20	150	50	0
163	1	110	20	20	150	60	0
163	2	110	20	20	150	70	0
163	3	110	20	20	150	80	0
163	4	110	20	20	150	90	0
163	5	110	20	20	150	100	0
164	0	110	50	80	60	0	0
164	1	110	50	80	70	0	0
164	2	110	50	80	80	0	0
164	3	110	50	80	90	0	0
164	4	110	50	80	100	0	0
164	5	110	50	80	100	10	0
165	0	210	30	40	70	0	0
165	1	210	30	40	80	0	0
165	2	210	30	40	90	0	0
165	3	210	30	40	90	10	0
165	4	210	30	40	90	20	0
165	5	210	30	40	90	30	0
166	0	150	110	40	0	0	0
166	1	150	110	40	10	0	0
166	2	150	110	40	20	0	0
166	3	150	110	40	30	0	0
166	4	150	110	40	40	0	0
166	5	150	110	40	40	10	0
167	0	140	110	40	10	0	0
167	1	140	110	40	20	0	0
167	2	140	110	40	30	0	0
167	3	140	110	40	40	0	0
167	4	140	110	40	40	10	0
167	5	140	110	40	40	20	0
168	0	110	60	80	80	20	0
168	1	110	60	80	80	30	0
168	2	110	60	80	80	40	0
168	3	110	60	80	80	50	0
168	4	110	60	80	80	50	10
168	5	110	60	80	80	50	20
169	0	90	60	80	80	40	0
169	1	90	60	80	80	50	0
169	2	90	60	80	80	60	0
169	3	90	60	80	80	70	0
169	4	90	60	80	80	70	10
169	5	90	60	80	80	70	20
170	0	130	30	60	80	40	10
170	1	130	30	60	80	40	20
170	2	130	30	60	80	40	30
170	3	130	30	60	80	40	40
170	4	130	30	60	80	40	50
170	5	130	30	60	80	40	60
171	0	120	120	40	50	20	0
171	1	120	120	40	50	30	0
171	2	120	120	40	50	40	0
171	3	120	120	40	50	50	0
171	4	120	120	40	50	60	0
171	5	120	120	40	50	70	0
172	0	110	120	40	50	30	0
172	1	110	120	40	50	40	0
172	2	110	120	40	50	50	0
172	3	110	120	40	50	60	0
172	4	110	120	40	50	70	0
172	5	110	120	40	50	80	0
598	0	100	50	50	0	0	0
598	1	100	50	60	0	0	0
598	2	100	50	70	0	0	0
598	3	100	50	80	0	0	0
598	4	100	50	80	10	0	0
598	5	100	50	80	20	0	0
599	0	70	70	30	30	0	0
599	1	70	70	30	40	0	0
599	2	70	70	30	50	0	0
599	3	70	70	30	60	0	0
599	4	70	70	30	70	0	0
599	5	70	70	30	80	0	0
600	0	60	70	30	40	0	0
600	1	60	70	30	50	0	0
600	2	60	70	30	60	0	0
600	3	60	70	30	70	0	0
600	4	60	70	30	80	0	0
600	5	60	70	30	90	0	0
601	0	80	50	80	40	0	0
601	1	80	50	80	50	0	0
601	2	80	50	80	60	0	0
601	3	80	50	80	70	0	0
601	4	80	50	80	80	0	0
601	5	80	50	80	90	0	0
602	0	70	50	80	50	0	0
602	1	70	50	80	60	0	0
602	2	70	50	80	70	0	0
602	3	70	50	80	80	0	0
602	4	70	50	80	90	0	0
602	5	70	50	80	100	0	0
603	0	90	50	50	80	30	0
603	1	90	50	50	80	40	0
603	2	90	50	50	80	50	0
603	3	90	50	50	80	60	0
603	4	90	50	50	80	70	0
603	5	90	50	50	80	80	0
604	0	70	50	50	80	50	0
604	1	70	50	50	80	60	0
604	2	70	50	50	80	70	0
604	3	70	50	50	80	80	0
604	4	70	50	50	80	90	0
604	5	70	50	50	80	100	0
605	0	60	60	20	150	60	0
605	1	60	60	20	150	70	0
605	2	60	60	20	150	80	0
605	3	60	60	20	150	90	0
605	4	60	60	20	150	90	10
605	5	60	60	20	150	90	20
606	0	120	120	40	50	70	0
606	1	120	120	40	50	70	0
606	2	120	120	40	50	70	0
606	3	120	120	40	50	70	0
606	4	120	120	40	50	70	0
606	5	120	120	40	50	70	0
607	0	110	120	40	50	80	0
607	1	110	120	40	50	80	0
607	2	110	120	40	50	80	0
607	3	110	120	40	50	80	0
607	4	110	120	40	50	80	0
607	5	110	120	40	50	80	0
608	0	70	70	30	30	0	0
608	1	70	70	30	40	0	0
608	2	70	70	30	50	0	0
608	3	70	70	30	60	0	0
608	4	70	70	30	70	0	0
608	5	70	70	30	80	0	0
609	0	80	50	80	40	0	0
609	1	80	50	80	50	0	0
609	2	80	50	80	60	0	0
609	3	80	50	80	70	0	0
609	4	80	50	80	80	0	0
609	5	80	50	80	90	0	0
610	0	70	50	80	50	0	0
610	1	70	50	80	60	0	0
610	2	70	50	80	70	0	0
610	3	70	50	80	80	0	0
610	4	70	50	80	90	0	0
610	5	70	50	80	100	0	0
611	0	110	50	50	80	10	0
611	1	110	50	50	80	20	0
611	2	110	50	50	80	30	0
611	3	110	50	50	80	40	0
611	4	110	50	50	80	50	0
611	5	110	50	50	80	60	0
612	0	100	50	50	80	20	0
612	1	100	50	50	80	30	0
612	2	100	50	50	80	40	0
612	3	100	50	50	80	50	0
612	4	100	50	50	80	60	0
612	5	100	50	50	80	70	0
613	0	100	60	60	100	30	0
613	1	100	60	60	100	40	0
613	2	100	60	60	100	50	0
613	3	100	60	60	100	50	10
613	4	100	60	60	100	50	20
613	5	100	60	60	100	50	30
614	0	60	50	80	60	0	0
614	1	60	50	80	70	0	0
614	2	60	50	80	80	0	0
614	3	60	50	80	90	0	0
614	4	60	50	80	100	0	0
614	5	60	50	80	110	0	0
615	0	90	50	80	80	0	0
615	1	90	50	80	90	0	0
615	2	90	50	80	100	0	0
615	3	90	50	80	100	10	0
615	4	90	50	80	100	20	0
615	5	90	50	80	100	30	0
616	0	110	50	50	90	0	0
616	1	110	50	50	90	10	0
616	2	110	50	50	90	20	0
616	3	110	50	50	90	30	0
616	4	110	50	50	90	40	0
616	5	110	50	50	90	50	0
617	0	110	60	80	80	20	0
617	1	110	60	80	80	30	0
617	2	110	60	80	80	40	0
617	3	110	60	80	80	50	0
617	4	110	60	80	80	50	10
617	5	110	60	80	80	50	20
618	0	80	50	60	120	40	0
618	1	80	50	60	120	50	0
618	2	80	50	60	120	50	10
618	3	80	50	60	120	50	20
618	4	80	50	60	120	50	30
618	5	80	50	60	120	50	40
619	0	70	50	80	50	0	0
619	1	70	50	80	60	0	0
619	2	70	50	80	70	0	0
619	3	70	50	80	80	0	0
619	4	70	50	80	90	0	0
619	5	70	50	80	100	0	0
620	0	100	50	50	80	20	0
620	1	100	50	50	80	30	0
620	2	100	50	50	80	40	0
620	3	100	50	50	80	50	0
620	4	100	50	50	80	60	0
620	5	100	50	50	80	70	0
621	0	90	50	50	80	30	0
621	1	90	50	50	80	40	0
621	2	90	50	50	80	50	0
621	3	90	50	50	80	60	0
621	4	90	50	50	80	70	0
621	5	90	50	50	80	80	0
622	0	80	60	60	100	50	0
622	1	80	60	60	100	60	0
622	2	80	60	60	100	70	0
622	3	80	60	60	100	70	10
622	4	80	60	60	100	70	20
622	5	80	60	60	100	70	30
623	0	60	70	30	40	0	0
623	1	60	70	30	50	0	0
623	2	60	70	30	60	0	0
623	3	60	70	30	70	0	0
623	4	60	70	30	80	0	0
623	5	60	70	30	90	0	0
624	0	70	50	80	50	0	0
624	1	70	50	80	60	0	0
624	2	70	50	80	70	0	0
624	3	70	50	80	80	0	0
624	4	70	50	80	90	0	0
624	5	70	50	80	100	0	0
625	0	60	50	80	60	0	0
625	1	60	50	80	70	0	0
625	2	60	50	80	80	0	0
625	3	60	50	80	90	0	0
625	4	60	50	80	100	0	0
625	5	60	50	80	110	0	0
626	0	100	50	80	70	0	0
626	1	100	50	80	80	0	0
626	2	100	50	80	90	0	0
626	3	100	50	80	100	0	0
626	4	100	50	80	100	10	0
626	5	100	50	80	100	20	0
627	0	110	50	50	80	10	0
627	1	110	50	50	80	20	0
627	2	110	50	50	80	30	0
627	3	110	50	50	80	40	0
627	4	110	50	50	80	50	0
627	5	110	50	50	80	60	0
628	0	110	60	80	80	20	0
628	1	110	60	80	80	30	0
628	2	110	60	80	80	40	0
628	3	110	60	80	80	50	0
628	4	110	60	80	80	50	10
628	5	110	60	80	80	50	20
629	0	50	50	80	70	0	0
629	1	50	50	80	80	0	0
629	2	50	50	80	90	0	0
629	3	50	50	80	100	0	0
629	4	50	50	80	110	0	0
629	5	50	50	80	120	0	0
630	0	100	50	50	80	20	0
630	1	100	50	50	80	30	0
630	2	100	50	50	80	40	0
630	3	100	50	50	80	50	0
630	4	100	50	50	80	60	0
630	5	100	50	50	80	70	0
631	0	80	50	50	80	40	0
631	1	80	50	50	80	50	0
631	2	80	50	50	80	60	0
631	3	80	50	50	80	70	0
631	4	80	50	50	80	80	0
631	5	80	50	50	80	90	0
632	0	130	30	60	80	40	10
632	1	130	30	60	80	40	20
632	2	130	30	60	80	40	30
632	3	130	30	60	80	40	40
632	4	130	30	60	80	40	50
632	5	130	30	60	80	40	60
633	0	100	60	40	0	0	0
633	1	100	60	50	0	0	0
633	2	100	60	60	0	0	0
633	3	100	60	70	0	0	0
633	4	100	60	80	0	0	0
633	5	100	60	80	10	0	0
634	0	80	50	70	0	0	0
634	1	80	50	80	0	0	0
634	2	80	50	80	10	0	0
634	3	80	50	80	20	0	0
634	4	80	50	80	30	0	0
634	5	80	50	80	40	0	0
635	0	80	50	50	20	0	0
635	1	80	50	50	30	0	0
635	2	80	50	50	40	0	0
635	3	80	50	50	50	0	0
635	4	80	50	50	60	0	0
635	5	80	50	50	70	0	0
636	0	120	70	30	30	0	0
636	1	120	70	30	40	0	0
636	2	120	70	30	50	0	0
636	3	120	70	30	60	0	0
636	4	120	70	30	70	0	0
636	5	120	70	30	80	0	0
637	0	110	70	30	40	0	0
637	1	110	70	30	50	0	0
637	2	110	70	30	60	0	0
637	3	110	70	30	70	0	0
637	4	110	70	30	80	0	0
637	5	110	70	30	90	0	0
638	0	140	70	30	60	0	0
638	1	140	70	30	70	0	0
638	2	140	70	30	80	0	0
638	3	140	70	30	90	0	0
638	4	140	70	30	100	0	0
638	5	140	70	30	100	10	0
639	0	100	100	40	40	20	0
639	1	100	100	40	40	30	0
639	2	100	100	40	40	40	0
639	3	100	100	40	40	50	0
639	4	100	100	40	40	60	0
639	5	100	100	40	40	70	0
640	0	100	120	40	50	40	0
640	1	100	120	40	50	50	0
640	2	100	120	40	50	60	0
640	3	100	120	40	50	70	0
640	4	100	120	40	50	80	0
640	5	100	120	40	50	90	0
641	0	100	100	40	40	20	0
641	1	100	100	40	40	30	0
641	2	100	100	40	40	40	0
641	3	100	100	40	40	50	0
641	4	100	100	40	40	60	0
641	5	100	100	40	40	70	0
642	0	60	120	80	60	30	0
642	1	60	120	80	60	30	10
642	2	60	120	80	60	30	20
642	3	60	120	80	60	30	30
642	4	60	120	80	60	30	40
642	5	60	120	80	60	30	50
643	0	90	50	50	10	0	0
643	1	90	50	50	20	0	0
643	2	90	50	50	30	0	0
643	3	90	50	50	40	0	0
643	4	90	50	50	50	0	0
643	5	90	50	50	60	0	0
644	0	110	70	30	40	0	0
644	1	110	70	30	50	0	0
644	2	110	70	30	60	0	0
644	3	110	70	30	70	0	0
644	4	110	70	30	80	0	0
644	5	110	70	30	90	0	0
645	0	90	70	30	60	0	0
645	1	90	70	30	70	0	0
645	2	90	70	30	80	0	0
645	3	90	70	30	90	0	0
645	4	90	70	30	100	0	0
645	5	90	70	30	110	0	0
646	0	130	70	30	70	0	0
646	1	130	70	30	80	0	0
646	2	130	70	30	90	0	0
646	3	130	70	30	100	0	0
646	4	130	70	30	100	10	0
646	5	130	70	30	100	20	0
647	0	110	50	50	80	10	0
647	1	110	50	50	80	20	0
647	2	110	50	50	80	30	0
647	3	110	50	50	80	40	0
647	4	110	50	50	80	50	0
647	5	110	50	50	80	60	0
648	0	90	120	40	50	50	0
648	1	90	120	40	50	60	0
648	2	90	120	40	50	70	0
648	3	90	120	40	50	80	0
648	4	90	120	40	50	90	0
648	5	90	120	40	50	100	0
649	0	120	70	30	30	0	0
649	1	120	70	30	40	0	0
649	2	120	70	30	50	0	0
649	3	120	70	30	60	0	0
649	4	120	70	30	70	0	0
649	5	120	70	30	80	0	0
650	0	110	70	30	40	0	0
650	1	110	70	30	50	0	0
650	2	110	70	30	60	0	0
650	3	110	70	30	70	0	0
650	4	110	70	30	80	0	0
650	5	110	70	30	90	0	0
651	0	140	70	30	60	0	0
651	1	140	70	30	70	0	0
651	2	140	70	30	80	0	0
651	3	140	70	30	90	0	0
651	4	140	70	30	100	0	0
651	5	140	70	30	100	10	0
652	0	100	100	40	40	20	0
652	1	100	100	40	40	30	0
652	2	100	100	40	40	40	0
652	3	100	100	40	40	50	0
652	4	100	100	40	40	60	0
652	5	100	100	40	40	70	0
653	0	150	100	30	30	40	0
653	1	150	100	30	30	50	0
653	2	150	100	30	30	60	0
653	3	150	100	30	30	60	10
653	4	150	100	30	30	60	20
653	5	150	100	30	30	60	30
654	0	140	110	40	40	20	0
654	1	140	110	40	40	30	0
654	2	140	110	40	40	40	0
654	3	140	110	40	40	50	0
654	4	140	110	40	40	50	10
654	5	140	110	40	40	50	20
655	0	200	70	20	20	40	0
655	1	200	70	20	20	50	0
655	2	200	70	20	20	50	10
655	3	200	70	20	20	50	20
655	4	200	70	20	20	50	30
655	5	200	70	20	20	50	40
656	0	80	50	50	20	0	0
656	1	80	50	50	30	0	0
656	2	80	50	50	40	0	0
656	3	80	50	50	50	0	0
656	4	80	50	50	60	0	0
656	5	80	50	50	70	0	0
657	0	110	70	30	40	0	0
657	1	110	70	30	50	0	0
657	2	110	70	30	60	0	0
657	3	110	70	30	70	0	0
657	4	110	70	30	80	0	0
657	5	110	70	30	90	0	0
658	0	90	70	30	60	0	0
658	1	90	70	30	70	0	0
658	2	90	70	30	80	0	0
658	3	90	70	30	90	0	0
658	4	90	70	30	100	0	0
658	5	90	70	30	110	0	0
659	0	120	70	30	80	0	0
659	1	120	70	30	90	0	0
659	2	120	70	30	100	0	0
659	3	120	70	30	100	10	0
659	4	120	70	30	100	20	0
659	5	120	70	30	100	30	0
660	0	100	50	50	80	20	0
660	1	100	50	50	80	30	0
660	2	100	50	50	80	40	0
660	3	100	50	50	80	50	0
660	4	100	50	50	80	60	0
660	5	100	50	50	80	70	0
661	0	120	70	30	100	30	0
661	1	120	70	30	100	40	0
661	2	120	70	30	100	50	0
661	3	120	70	30	100	60	0
661	4	120	70	30	100	70	0
661	5	120	70	30	100	80	0
662	0	120	70	30	30	0	0
662	1	120	70	30	40	0	0
662	2	120	70	30	50	0	0
662	3	120	70	30	60	0	0
662	4	120	70	30	70	0	0
662	5	120	70	30	80	0	0
663	0	110	70	30	40	0	0
663	1	110	70	30	50	0	0
663	2	110	70	30	60	0	0
663	3	110	70	30	70	0	0
663	4	110	70	30	80	0	0
663	5	110	70	30	90	0	0
664	0	140	70	30	60	0	0
664	1	140	70	30	70	0	0
664	2	140	70	30	80	0	0
664	3	140	70	30	90	0	0
664	4	140	70	30	100	0	0
664	5	140	70	30	100	10	0
665	0	130	70	30	70	0	0
665	1	130	70	30	80	0	0
665	2	130	70	30	90	0	0
665	3	130	70	30	100	0	0
665	4	130	70	30	100	10	0
665	5	130	70	30	100	20	0
666	0	130	70	30	100	20	0
666	1	130	70	30	100	30	0
666	2	130	70	30	100	40	0
666	3	130	70	30	100	50	0
666	4	130	70	30	100	60	0
666	5	130	70	30	100	70	0
667	0	110	70	30	40	0	0
667	1	110	70	30	50	0	0
667	2	110	70	30	60	0	0
667	3	110	70	30	70	0	0
667	4	110	70	30	80	0	0
667	5	110	70	30	90	0	0
668	0	70	70	30	80	0	0
668	1	70	70	30	90	0	0
668	2	70	70	30	100	0	0
668	3	70	70	30	110	0	0
668	4	70	70	30	120	0	0
668	5	70	70	30	130	0	0
669	0	120	110	40	40	40	0
669	1	120	110	40	40	50	0
669	2	120	110	40	40	60	0
669	3	120	110	40	40	70	0
669	4	120	110	40	40	70	10
669	5	120	110	40	40	70	20
670	0	110	50	80	60	0	0
670	1	110	50	80	70	0	0
670	2	110	50	80	80	0	0
670	3	110	50	80	90	0	0
670	4	110	50	80	100	0	0
670	5	110	50	80	100	10	0
671	0	210	30	40	70	0	0
671	1	210	30	40	80	0	0
671	2	210	30	40	90	0	0
671	3	210	30	40	90	10	0
671	4	210	30	40	90	20	0
671	5	210	30	40	90	30	0
672	0	150	110	40	0	0	0
672	1	150	110	40	10	0	0
672	2	150	110	40	20	0	0
672	3	150	110	40	30	0	0
672	4	150	110	40	40	0	0
672	5	150	110	40	40	10	0
673	0	140	110	50	0	0	0
673	1	140	110	60	0	0	0
673	2	140	110	70	0	0	0
673	3	140	110	80	0	0	0
673	4	140	110	80	10	0	0
673	5	140	110	80	20	0	0
674	0	110	60	80	80	20	0
674	1	110	60	80	80	30	0
674	2	110	60	80	80	40	0
674	3	110	60	80	80	50	0
674	4	110	60	80	80	50	10
674	5	110	60	80	80	50	20
675	0	90	60	80	80	40	0
675	1	90	60	80	80	50	0
675	2	90	60	80	80	60	0
675	3	90	60	80	80	70	0
675	4	90	60	80	80	70	10
675	5	90	60	80	80	70	20
676	0	130	30	60	80	40	10
676	1	130	30	60	80	40	20
676	2	130	30	60	80	40	30
676	3	130	30	60	80	40	40
676	4	130	30	60	80	40	50
676	5	130	30	60	80	40	60
1	0	100	50	50	0	0	0
1	1	100	50	60	0	0	0
1	2	100	50	70	0	0	0
1	3	100	50	80	0	0	0
1	4	100	50	80	10	0	0
1	5	100	50	80	20	0	0
2	0	80	70	30	20	0	0
2	1	80	70	30	30	0	0
2	2	80	70	30	40	0	0
2	3	80	70	30	50	0	0
2	4	80	70	30	60	0	0
2	5	80	70	30	70	0	0
3	0	60	70	30	40	0	0
3	1	60	70	30	50	0	0
3	2	60	70	30	60	0	0
3	3	60	70	30	70	0	0
3	4	60	70	30	80	0	0
3	5	60	70	30	90	0	0
4	0	70	50	80	50	0	0
4	1	70	50	80	60	0	0
4	2	70	50	80	70	0	0
4	3	70	50	80	80	0	0
4	4	70	50	80	90	0	0
4	5	70	50	80	100	0	0
5	0	60	50	80	60	0	0
5	1	60	50	80	70	0	0
5	2	60	50	80	80	0	0
5	3	60	50	80	90	0	0
5	4	60	50	80	100	0	0
5	5	60	50	80	110	0	0
6	0	100	50	50	80	20	0
6	1	100	50	50	80	30	0
6	2	100	50	50	80	40	0
6	3	100	50	50	80	50	0
6	4	100	50	50	80	60	0
6	5	100	50	50	80	70	0
7	0	90	50	50	80	30	0
7	1	90	50	50	80	40	0
7	2	90	50	50	80	50	0
7	3	90	50	50	80	60	0
7	4	90	50	50	80	70	0
7	5	90	50	50	80	80	0
8	0	60	60	20	150	60	0
8	1	60	60	20	150	70	0
8	2	60	60	20	150	80	0
8	3	60	60	20	150	90	0
8	4	60	60	20	150	90	10
8	5	60	60	20	150	90	20
9	0	120	120	40	50	70	0
9	1	120	120	40	50	70	0
9	2	120	120	40	50	70	0
9	3	120	120	40	50	70	0
9	4	120	120	40	50	70	0
9	5	120	120	40	50	70	0
10	0	110	120	40	50	80	0
10	1	110	120	40	50	80	0
10	2	110	120	40	50	80	0
10	3	110	120	40	50	80	0
10	4	110	120	40	50	80	0
10	5	110	120	40	50	80	0
11	0	50	50	80	70	0	0
11	1	50	50	80	80	0	0
11	2	50	50	80	90	0	0
11	3	50	50	80	100	0	0
11	4	50	50	80	110	0	0
11	5	50	50	80	120	0	0
12	0	90	50	50	80	30	0
12	1	90	50	50	80	40	0
12	2	90	50	50	80	50	0
12	3	90	50	50	80	60	0
12	4	90	50	50	80	70	0
12	5	90	50	50	80	80	0
13	0	110	120	40	50	30	0
13	1	110	120	40	50	40	0
13	2	110	120	40	50	50	0
13	3	110	120	40	50	60	0
13	4	110	120	40	50	70	0
13	5	110	120	40	50	80	0
14	0	80	70	30	20	0	0
14	1	80	70	30	30	0	0
14	2	80	70	30	40	0	0
14	3	80	70	30	50	0	0
14	4	80	70	30	60	0	0
14	5	80	70	30	70	0	0
15	0	90	50	80	30	0	0
15	1	90	50	80	40	0	0
15	2	90	50	80	50	0	0
15	3	90	50	80	60	0	0
15	4	90	50	80	70	0	0
15	5	90	50	80	80	0	0
16	0	80	50	80	40	0	0
16	1	80	50	80	50	0	0
16	2	80	50	80	60	0	0
16	3	80	50	80	70	0	0
16	4	80	50	80	80	0	0
16	5	80	50	80	90	0	0
17	0	110	60	80	50	0	0
17	1	110	60	80	60	0	0
17	2	110	60	80	70	0	0
17	3	110	60	80	80	0	0
17	4	110	60	80	80	10	0
17	5	110	60	80	80	20	0
18	0	100	50	50	80	20	0
18	1	100	50	50	80	30	0
18	2	100	50	50	80	40	0
18	3	100	50	50	80	50	0
18	4	100	50	50	80	60	0
18	5	100	50	50	80	70	0
19	0	90	60	80	80	40	0
19	1	90	60	80	80	50	0
19	2	90	60	80	80	60	0
19	3	90	60	80	80	70	0
19	4	90	60	80	80	70	10
19	5	90	60	80	80	70	20
20	0	80	50	80	40	0	0
20	1	80	50	80	50	0	0
20	2	80	50	80	60	0	0
20	3	80	50	80	70	0	0
20	4	80	50	80	80	0	0
20	5	80	50	80	90	0	0
21	0	70	50	80	50	0	0
21	1	70	50	80	60	0	0
21	2	70	50	80	70	0	0
21	3	70	50	80	80	0	0
21	4	70	50	80	90	0	0
21	5	70	50	80	100	0	0
22	0	60	50	80	110	0	0
22	1	60	50	80	120	0	0
22	2	60	50	80	130	0	0
22	3	60	50	80	140	0	0
22	4	60	50	80	150	0	0
22	5	60	50	80	150	10	0
23	0	90	50	50	80	30	0
23	1	90	50	50	80	40	0
23	2	90	50	50	80	50	0
23	3	90	50	50	80	60	0
23	4	90	50	50	80	70	0
23	5	90	50	50	80	80	0
24	0	90	60	60	100	40	0
24	1	90	60	60	100	50	0
24	2	90	60	60	100	60	0
24	3	90	60	60	100	60	10
24	4	90	60	60	100	60	20
24	5	90	60	60	100	60	30
25	0	70	70	30	30	0	0
25	1	70	70	30	40	0	0
25	2	70	70	30	50	0	0
25	3	70	70	30	60	0	0
25	4	70	70	30	70	0	0
25	5	70	70	30	80	0	0
26	0	70	50	80	50	0	0
26	1	70	50	80	60	0	0
26	2	70	50	80	70	0	0
26	3	70	50	80	80	0	0
26	4	70	50	80	90	0	0
26	5	70	50	80	100	0	0
27	0	50	50	80	70	0	0
27	1	50	50	80	80	0	0
27	2	50	50	80	90	0	0
27	3	50	50	80	100	0	0
27	4	50	50	80	110	0	0
27	5	50	50	80	120	0	0
28	0	100	50	80	70	0	0
28	1	100	50	80	80	0	0
28	2	100	50	80	90	0	0
28	3	100	50	80	100	0	0
28	4	100	50	80	100	10	0
28	5	100	50	80	100	20	0
29	0	100	120	40	50	40	0
29	1	100	120	40	50	50	0
29	2	100	120	40	50	60	0
29	3	100	120	40	50	70	0
29	4	100	120	40	50	80	0
29	5	100	120	40	50	90	0
30	0	80	50	80	40	0	0
30	1	80	50	80	50	0	0
30	2	80	50	80	60	0	0
30	3	80	50	80	70	0	0
30	4	80	50	80	80	0	0
30	5	80	50	80	90	0	0
31	0	70	50	80	50	0	0
31	1	70	50	80	60	0	0
31	2	70	50	80	70	0	0
31	3	70	50	80	80	0	0
31	4	70	50	80	90	0	0
31	5	70	50	80	100	0	0
32	0	110	50	80	60	0	0
32	1	110	50	80	70	0	0
32	2	110	50	80	80	0	0
32	3	110	50	80	90	0	0
32	4	110	50	80	100	0	0
32	5	110	50	80	100	10	0
33	0	100	100	40	40	20	0
33	1	100	100	40	40	30	0
33	2	100	100	40	40	40	0
33	3	100	100	40	40	50	0
33	4	100	100	40	40	60	0
33	5	100	100	40	40	70	0
34	0	150	100	30	30	40	0
34	1	150	100	30	30	50	0
34	2	150	100	30	30	60	0
34	3	150	100	30	30	60	10
34	4	150	100	30	30	60	20
34	5	150	100	30	30	60	30
35	0	110	60	30	0	0	0
35	1	110	60	40	0	0	0
35	2	110	60	50	0	0	0
35	3	110	60	60	0	0	0
35	4	110	60	70	0	0	0
35	5	110	60	80	0	0	0
36	0	90	60	50	0	0	0
36	1	90	60	60	0	0	0
36	2	90	60	70	0	0	0
36	3	90	60	80	0	0	0
36	4	90	60	80	10	0	0
36	5	90	60	80	20	0	0
37	0	90	50	50	10	0	0
37	1	90	50	50	20	0	0
37	2	90	50	50	30	0	0
37	3	90	50	50	40	0	0
37	4	90	50	50	50	0	0
37	5	90	50	50	60	0	0
38	0	130	70	30	20	0	0
38	1	130	70	30	30	0	0
38	2	130	70	30	40	0	0
38	3	130	70	30	50	0	0
38	4	130	70	30	60	0	0
38	5	130	70	30	70	0	0
39	0	120	70	30	30	0	0
39	1	120	70	30	40	0	0
39	2	120	70	30	50	0	0
39	3	120	70	30	60	0	0
39	4	120	70	30	70	0	0
39	5	120	70	30	80	0	0
40	0	110	70	30	90	0	0
40	1	110	70	30	100	0	0
40	2	110	70	30	100	10	0
40	3	110	70	30	100	20	0
40	4	110	70	30	100	30	0
40	5	110	70	30	100	40	0
41	0	110	100	40	40	10	0
41	1	110	100	40	40	20	0
41	2	110	100	40	40	30	0
41	3	110	100	40	40	40	0
41	4	110	100	40	40	50	0
41	5	110	100	40	40	60	0
42	0	110	120	40	50	30	0
42	1	110	120	40	50	40	0
42	2	110	120	40	50	50	0
42	3	110	120	40	50	60	0
42	4	110	120	40	50	70	0
42	5	110	120	40	50	80	0
43	0	140	110	40	40	20	0
43	1	140	110	40	40	30	0
43	2	140	110	40	40	40	0
43	3	140	110	40	40	50	0
43	4	140	110	40	40	50	10
43	5	140	110	40	40	50	20
44	0	200	70	20	20	40	0
44	1	200	70	20	20	50	0
44	2	200	70	20	20	50	10
44	3	200	70	20	20	50	20
44	4	200	70	20	20	50	30
44	5	200	70	20	20	50	40
45	0	120	70	30	30	0	0
45	1	120	70	30	40	0	0
45	2	120	70	30	50	0	0
45	3	120	70	30	60	0	0
45	4	120	70	30	70	0	0
45	5	120	70	30	80	0	0
46	0	110	70	30	40	0	0
46	1	110	70	30	50	0	0
46	2	110	70	30	60	0	0
46	3	110	70	30	70	0	0
46	4	110	70	30	80	0	0
46	5	110	70	30	90	0	0
47	0	110	100	40	40	10	0
47	1	110	100	40	40	20	0
47	2	110	100	40	40	30	0
47	3	110	100	40	40	40	0
47	4	110	100	40	40	50	0
47	5	110	100	40	40	60	0
48	0	100	100	40	40	20	0
48	1	100	100	40	40	30	0
48	2	100	100	40	40	40	0
48	3	100	100	40	40	50	0
48	4	100	100	40	40	60	0
48	5	100	100	40	40	70	0
49	0	110	120	40	50	30	0
49	1	110	120	40	50	40	0
49	2	110	120	40	50	50	0
49	3	110	120	40	50	60	0
49	4	110	120	40	50	70	0
49	5	110	120	40	50	80	0
50	0	110	100	40	40	10	0
50	1	110	100	40	40	20	0
50	2	110	100	40	40	30	0
50	3	110	100	40	40	40	0
50	4	110	100	40	40	50	0
50	5	110	100	40	40	60	0
51	0	120	120	40	50	20	0
51	1	120	120	40	50	30	0
51	2	120	120	40	50	40	0
51	3	120	120	40	50	50	0
51	4	120	120	40	50	60	0
51	5	120	120	40	50	70	0
52	0	60	70	30	40	0	0
52	1	60	70	30	50	0	0
52	2	60	70	30	60	0	0
52	3	60	70	30	70	0	0
52	4	60	70	30	80	0	0
52	5	60	70	30	90	0	0
53	0	110	70	30	40	0	0
53	1	110	70	30	50	0	0
53	2	110	70	30	60	0	0
53	3	110	70	30	70	0	0
53	4	110	70	30	80	0	0
53	5	110	70	30	90	0	0
54	0	100	70	30	50	0	0
54	1	100	70	30	60	0	0
54	2	100	70	30	70	0	0
54	3	100	70	30	80	0	0
54	4	100	70	30	90	0	0
54	5	100	70	30	100	0	0
55	0	140	70	30	60	0	0
55	1	140	70	30	70	0	0
55	2	140	70	30	80	0	0
55	3	140	70	30	90	0	0
55	4	140	70	30	100	0	0
55	5	140	70	30	100	10	0
56	0	130	70	30	70	0	0
56	1	130	70	30	80	0	0
56	2	130	70	30	90	0	0
56	3	130	70	30	100	0	0
56	4	130	70	30	100	10	0
56	5	130	70	30	100	20	0
57	0	120	110	40	40	40	0
57	1	120	110	40	40	50	0
57	2	120	110	40	40	60	0
57	3	120	110	40	40	70	0
57	4	120	110	40	40	70	10
57	5	120	110	40	40	70	20
58	0	90	70	30	60	0	0
58	1	90	70	30	70	0	0
58	2	90	70	30	80	0	0
58	3	90	70	30	90	0	0
58	4	90	70	30	100	0	0
58	5	90	70	30	110	0	0
59	0	130	70	30	70	0	0
59	1	130	70	30	80	0	0
59	2	130	70	30	90	0	0
59	3	130	70	30	100	0	0
59	4	130	70	30	100	10	0
59	5	130	70	30	100	20	0
60	0	120	70	30	80	0	0
60	1	120	70	30	90	0	0
60	2	120	70	30	100	0	0
60	3	120	70	30	100	10	0
60	4	120	70	30	100	20	0
60	5	120	70	30	100	30	0
61	0	100	50	60	120	20	0
61	1	100	50	60	120	30	0
61	2	100	50	60	120	40	0
61	3	100	50	60	120	50	0
61	4	100	50	60	120	50	10
61	5	100	50	60	120	50	20
62	0	70	50	50	30	0	0
62	1	70	50	50	40	0	0
62	2	70	50	50	50	0	0
62	3	70	50	50	60	0	0
62	4	70	50	50	70	0	0
62	5	70	50	50	80	0	0
63	0	110	70	30	40	0	0
63	1	110	70	30	50	0	0
63	2	110	70	30	60	0	0
63	3	110	70	30	70	0	0
63	4	110	70	30	80	0	0
63	5	110	70	30	90	0	0
64	0	100	70	30	50	0	0
64	1	100	70	30	60	0	0
64	2	100	70	30	70	0	0
64	3	100	70	30	80	0	0
64	4	100	70	30	90	0	0
64	5	100	70	30	100	0	0
65	0	130	70	30	70	0	0
65	1	130	70	30	80	0	0
65	2	130	70	30	90	0	0
65	3	130	70	30	100	0	0
65	4	130	70	30	100	10	0
65	5	130	70	30	100	20	0
66	0	110	70	30	90	0	0
66	1	110	70	30	100	0	0
66	2	110	70	30	100	10	0
66	3	110	70	30	100	20	0
66	4	110	70	30	100	30	0
66	5	110	70	30	100	40	0
67	0	110	120	40	50	30	0
67	1	110	120	40	50	40	0
67	2	110	120	40	50	50	0
67	3	110	120	40	50	60	0
67	4	110	120	40	50	70	0
67	5	110	120	40	50	80	0
68	0	120	70	30	30	0	0
68	1	120	70	30	40	0	0
68	2	120	70	30	50	0	0
68	3	120	70	30	60	0	0
68	4	120	70	30	70	0	0
68	5	120	70	30	80	0	0
69	0	110	70	30	40	0	0
69	1	110	70	30	50	0	0
69	2	110	70	30	60	0	0
69	3	110	70	30	70	0	0
69	4	110	70	30	80	0	0
69	5	110	70	30	90	0	0
70	0	110	60	80	50	0	0
70	1	110	60	80	60	0	0
70	2	110	60	80	70	0	0
70	3	110	60	80	80	0	0
70	4	110	60	80	80	10	0
70	5	110	60	80	80	20	0
71	0	110	100	40	50	0	0
71	1	110	100	40	50	10	0
71	2	110	100	40	50	20	0
71	3	110	100	40	50	30	0
71	4	110	100	40	50	40	0
71	5	110	100	40	50	50	0
72	0	120	120	40	50	20	0
72	1	120	120	40	50	30	0
72	2	120	120	40	50	40	0
72	3	120	120	40	50	50	0
72	4	120	120	40	50	60	0
72	5	120	120	40	50	70	0
73	0	110	70	30	40	0	0
73	1	110	70	30	50	0	0
73	2	110	70	30	60	0	0
73	3	110	70	30	70	0	0
73	4	110	70	30	80	0	0
73	5	110	70	30	90	0	0
74	0	70	70	30	80	0	0
74	1	70	70	30	90	0	0
74	2	70	70	30	100	0	0
74	3	70	70	30	110	0	0
74	4	70	70	30	120	0	0
74	5	70	70	30	130	0	0
75	0	120	110	40	40	40	0
75	1	120	110	40	40	50	0
75	2	120	110	40	40	60	0
75	3	120	110	40	40	70	0
75	4	120	110	40	40	70	10
75	5	120	110	40	40	70	20
76	0	110	50	80	60	0	0
76	1	110	50	80	70	0	0
76	2	110	50	80	80	0	0
76	3	110	50	80	90	0	0
76	4	110	50	80	100	0	0
76	5	110	50	80	100	10	0
77	0	190	30	60	70	0	0
77	1	190	30	60	80	0	0
77	2	190	30	60	80	10	0
77	3	190	30	60	80	20	0
77	4	190	30	60	80	30	0
77	5	190	30	60	80	40	0
78	0	100	160	40	0	0	0
78	1	100	160	40	10	0	0
78	2	100	160	40	20	0	0
78	3	100	160	40	30	0	0
78	4	100	160	40	40	0	0
78	5	100	160	40	40	10	0
79	0	140	110	50	0	0	0
79	1	140	110	50	10	0	0
79	2	140	110	50	20	0	0
79	3	140	110	50	30	0	0
79	4	140	110	50	30	10	0
79	5	140	110	50	30	20	0
80	0	110	60	80	80	20	0
80	1	110	60	80	80	30	0
80	2	110	60	80	80	40	0
80	3	110	60	80	80	50	0
80	4	110	60	80	80	50	10
80	5	110	60	80	80	50	20
81	0	90	60	80	80	40	0
81	1	90	60	80	80	50	0
81	2	90	60	80	80	60	0
81	3	90	60	80	80	70	0
81	4	90	60	80	80	70	10
81	5	90	60	80	80	70	20
82	0	130	30	60	80	40	10
82	1	130	30	60	80	40	20
82	2	130	30	60	80	40	30
82	3	130	30	60	80	40	40
82	4	130	30	60	80	40	50
82	5	130	30	60	80	40	60
83	0	120	120	40	50	20	0
83	1	120	120	40	50	30	0
83	2	120	120	40	50	40	0
83	3	120	120	40	50	50	0
83	4	120	120	40	50	60	0
83	5	120	120	40	50	70	0
84	0	160	100	30	30	30	0
84	1	160	100	30	30	40	0
84	2	160	100	30	30	50	0
84	3	160	100	30	30	50	10
84	4	160	100	30	30	50	20
84	5	160	100	30	30	50	30
429	0	100	50	50	0	0	0
429	1	100	50	60	0	0	0
429	2	100	50	70	0	0	0
429	3	100	50	80	0	0	0
429	4	100	50	80	10	0	0
429	5	100	50	80	20	0	0
430	0	80	70	30	20	0	0
430	1	80	70	30	30	0	0
430	2	80	70	30	40	0	0
430	3	80	70	30	50	0	0
430	4	80	70	30	60	0	0
430	5	80	70	30	70	0	0
431	0	60	70	30	40	0	0
431	1	60	70	30	50	0	0
431	2	60	70	30	60	0	0
431	3	60	70	30	70	0	0
431	4	60	70	30	80	0	0
431	5	60	70	30	90	0	0
432	0	70	50	80	50	0	0
432	1	70	50	80	60	0	0
432	2	70	50	80	70	0	0
432	3	70	50	80	80	0	0
432	4	70	50	80	90	0	0
432	5	70	50	80	100	0	0
433	0	60	50	80	60	0	0
433	1	60	50	80	70	0	0
433	2	60	50	80	80	0	0
433	3	60	50	80	90	0	0
433	4	60	50	80	100	0	0
433	5	60	50	80	110	0	0
434	0	100	50	50	80	20	0
434	1	100	50	50	80	30	0
434	2	100	50	50	80	40	0
434	3	100	50	50	80	50	0
434	4	100	50	50	80	60	0
434	5	100	50	50	80	70	0
435	0	90	50	50	80	30	0
435	1	90	50	50	80	40	0
435	2	90	50	50	80	50	0
435	3	90	50	50	80	60	0
435	4	90	50	50	80	70	0
435	5	90	50	50	80	80	0
436	0	60	60	20	150	60	0
436	1	60	60	20	150	70	0
436	2	60	60	20	150	80	0
436	3	60	60	20	150	90	0
436	4	60	60	20	150	90	10
436	5	60	60	20	150	90	20
437	0	120	120	40	50	70	0
437	1	120	120	40	50	70	0
437	2	120	120	40	50	70	0
437	3	120	120	40	50	70	0
437	4	120	120	40	50	70	0
437	5	120	120	40	50	70	0
438	0	110	120	40	50	80	0
438	1	110	120	40	50	80	0
438	2	110	120	40	50	80	0
438	3	110	120	40	50	80	0
438	4	110	120	40	50	80	0
438	5	110	120	40	50	80	0
439	0	80	50	80	40	0	0
439	1	80	50	80	50	0	0
439	2	80	50	80	60	0	0
439	3	80	50	80	70	0	0
439	4	80	50	80	80	0	0
439	5	80	50	80	90	0	0
440	0	70	50	80	50	0	0
440	1	70	50	80	60	0	0
440	2	70	50	80	70	0	0
440	3	70	50	80	80	0	0
440	4	70	50	80	90	0	0
440	5	70	50	80	100	0	0
441	0	110	50	80	60	0	0
441	1	110	50	80	70	0	0
441	2	110	50	80	80	0	0
441	3	110	50	80	90	0	0
441	4	110	50	80	100	0	0
441	5	110	50	80	100	10	0
442	0	100	50	50	80	20	0
442	1	100	50	50	80	30	0
442	2	100	50	50	80	40	0
442	3	100	50	50	80	50	0
442	4	100	50	50	80	60	0
442	5	100	50	50	80	70	0
443	0	90	60	80	80	40	0
443	1	90	60	80	80	50	0
443	2	90	60	80	80	60	0
443	3	90	60	80	80	70	0
443	4	90	60	80	80	70	10
443	5	90	60	80	80	70	20
444	0	70	70	30	30	0	0
444	1	70	70	30	40	0	0
444	2	70	70	30	50	0	0
444	3	70	70	30	60	0	0
444	4	70	70	30	70	0	0
444	5	70	70	30	80	0	0
445	0	80	50	80	40	0	0
445	1	80	50	80	50	0	0
445	2	80	50	80	60	0	0
445	3	80	50	80	70	0	0
445	4	80	50	80	80	0	0
445	5	80	50	80	90	0	0
446	0	70	50	80	50	0	0
446	1	70	50	80	60	0	0
446	2	70	50	80	70	0	0
446	3	70	50	80	80	0	0
446	4	70	50	80	90	0	0
446	5	70	50	80	100	0	0
447	0	110	50	80	60	0	0
447	1	110	50	80	70	0	0
447	2	110	50	80	80	0	0
447	3	110	50	80	90	0	0
447	4	110	50	80	100	0	0
447	5	110	50	80	100	10	0
448	0	100	50	50	80	20	0
448	1	100	50	50	80	30	0
448	2	100	50	50	80	40	0
448	3	100	50	50	80	50	0
448	4	100	50	50	80	60	0
448	5	100	50	50	80	70	0
449	0	90	60	80	80	40	0
449	1	90	60	80	80	50	0
449	2	90	60	80	80	60	0
449	3	90	60	80	80	70	0
449	4	90	60	80	80	70	10
449	5	90	60	80	80	70	20
450	0	60	50	80	60	0	0
450	1	60	50	80	70	0	0
450	2	60	50	80	80	0	0
450	3	60	50	80	90	0	0
450	4	60	50	80	100	0	0
450	5	60	50	80	110	0	0
451	0	100	50	50	80	20	0
451	1	100	50	50	80	30	0
451	2	100	50	50	80	40	0
451	3	100	50	50	80	50	0
451	4	100	50	50	80	60	0
451	5	100	50	50	80	70	0
452	0	80	50	50	80	40	0
452	1	80	50	50	80	50	0
452	2	80	50	50	80	60	0
452	3	80	50	50	80	70	0
452	4	80	50	50	80	80	0
452	5	80	50	50	80	90	0
453	0	70	50	60	120	50	0
453	1	70	50	60	120	60	0
453	2	70	50	60	120	60	10
453	3	70	50	60	120	60	20
453	4	70	50	60	120	60	30
453	5	70	50	60	120	60	40
454	0	60	70	30	40	0	0
454	1	60	70	30	50	0	0
454	2	60	70	30	60	0	0
454	3	60	70	30	70	0	0
454	4	60	70	30	80	0	0
454	5	60	70	30	90	0	0
455	0	70	50	80	50	0	0
455	1	70	50	80	60	0	0
455	2	70	50	80	70	0	0
455	3	70	50	80	80	0	0
455	4	70	50	80	90	0	0
455	5	70	50	80	100	0	0
456	0	60	50	80	60	0	0
456	1	60	50	80	70	0	0
456	2	60	50	80	80	0	0
456	3	60	50	80	90	0	0
456	4	60	50	80	100	0	0
456	5	60	50	80	110	0	0
457	0	100	50	80	70	0	0
457	1	100	50	80	80	0	0
457	2	100	50	80	90	0	0
457	3	100	50	80	100	0	0
457	4	100	50	80	100	10	0
457	5	100	50	80	100	20	0
458	0	90	50	50	80	30	0
458	1	90	50	50	80	40	0
458	2	90	50	50	80	50	0
458	3	90	50	50	80	60	0
458	4	90	50	50	80	70	0
458	5	90	50	50	80	80	0
459	0	90	60	80	80	40	0
459	1	90	60	80	80	50	0
459	2	90	60	80	80	60	0
459	3	90	60	80	80	70	0
459	4	90	60	80	80	70	10
459	5	90	60	80	80	70	20
460	0	50	50	80	70	0	0
460	1	50	50	80	80	0	0
460	2	50	50	80	90	0	0
460	3	50	50	80	100	0	0
460	4	50	50	80	110	0	0
460	5	50	50	80	120	0	0
461	0	110	50	50	80	10	0
461	1	110	50	50	80	20	0
461	2	110	50	50	80	30	0
461	3	110	50	50	80	40	0
461	4	110	50	50	80	50	0
461	5	110	50	50	80	60	0
462	0	100	50	50	80	20	0
462	1	100	50	50	80	30	0
462	2	100	50	50	80	40	0
462	3	100	50	50	80	50	0
462	4	100	50	50	80	60	0
462	5	100	50	50	80	70	0
463	0	130	30	60	80	40	10
463	1	130	30	60	80	40	20
463	2	130	30	60	80	40	30
463	3	130	30	60	80	40	40
463	4	130	30	60	80	40	50
463	5	130	30	60	80	40	60
464	0	110	60	30	0	0	0
464	1	110	60	40	0	0	0
464	2	110	60	50	0	0	0
464	3	110	60	60	0	0	0
464	4	110	60	70	0	0	0
464	5	110	60	80	0	0	0
465	0	90	60	50	0	0	0
465	1	90	60	60	0	0	0
465	2	90	60	70	0	0	0
465	3	90	60	80	0	0	0
465	4	90	60	80	10	0	0
465	5	90	60	80	20	0	0
466	0	80	50	50	20	0	0
466	1	80	50	50	30	0	0
466	2	80	50	50	40	0	0
466	3	80	50	50	50	0	0
466	4	80	50	50	60	0	0
466	5	80	50	50	70	0	0
467	0	120	70	30	30	0	0
467	1	120	70	30	40	0	0
467	2	120	70	30	50	0	0
467	3	120	70	30	60	0	0
467	4	120	70	30	70	0	0
467	5	120	70	30	80	0	0
468	0	110	70	30	40	0	0
468	1	110	70	30	50	0	0
468	2	110	70	30	60	0	0
468	3	110	70	30	70	0	0
468	4	110	70	30	80	0	0
468	5	110	70	30	90	0	0
469	0	140	70	30	60	0	0
469	1	140	70	30	70	0	0
469	2	140	70	30	80	0	0
469	3	140	70	30	90	0	0
469	4	140	70	30	100	0	0
469	5	140	70	30	100	10	0
470	0	110	100	40	40	10	0
470	1	110	100	40	40	20	0
470	2	110	100	40	40	30	0
470	3	110	100	40	40	40	0
470	4	110	100	40	40	50	0
470	5	110	100	40	40	60	0
471	0	110	120	40	50	30	0
471	1	110	120	40	50	40	0
471	2	110	120	40	50	50	0
471	3	110	120	40	50	60	0
471	4	110	120	40	50	70	0
471	5	110	120	40	50	80	0
472	0	100	100	40	40	20	0
472	1	100	100	40	40	30	0
472	2	100	100	40	40	40	0
472	3	100	100	40	40	50	0
472	4	100	100	40	40	60	0
472	5	100	100	40	40	70	0
473	0	120	110	40	40	40	0
473	1	120	110	40	40	50	0
473	2	120	110	40	40	60	0
473	3	120	110	40	40	70	0
473	4	120	110	40	40	70	10
473	5	120	110	40	40	70	20
474	0	130	70	30	20	0	0
474	1	130	70	30	30	0	0
474	2	130	70	30	40	0	0
474	3	130	70	30	50	0	0
474	4	130	70	30	60	0	0
474	5	130	70	30	70	0	0
475	0	120	70	30	30	0	0
475	1	120	70	30	40	0	0
475	2	120	70	30	50	0	0
475	3	120	70	30	60	0	0
475	4	120	70	30	70	0	0
475	5	120	70	30	80	0	0
476	0	140	70	30	60	0	0
476	1	140	70	30	70	0	0
476	2	140	70	30	80	0	0
476	3	140	70	30	90	0	0
476	4	140	70	30	100	0	0
476	5	140	70	30	100	10	0
477	0	130	70	30	70	0	0
477	1	130	70	30	80	0	0
477	2	130	70	30	90	0	0
477	3	130	70	30	100	0	0
477	4	130	70	30	100	10	0
477	5	130	70	30	100	20	0
478	0	120	120	40	50	20	0
478	1	120	120	40	50	30	0
478	2	120	120	40	50	40	0
478	3	120	120	40	50	50	0
478	4	120	120	40	50	60	0
478	5	120	120	40	50	70	0
479	0	70	50	50	30	0	0
479	1	70	50	50	40	0	0
479	2	70	50	50	50	0	0
479	3	70	50	50	60	0	0
479	4	70	50	50	70	0	0
479	5	70	50	50	80	0	0
480	0	110	70	30	40	0	0
480	1	110	70	30	50	0	0
480	2	110	70	30	60	0	0
480	3	110	70	30	70	0	0
480	4	110	70	30	80	0	0
480	5	110	70	30	90	0	0
481	0	100	70	30	50	0	0
481	1	100	70	30	60	0	0
481	2	100	70	30	70	0	0
481	3	100	70	30	80	0	0
481	4	100	70	30	90	0	0
481	5	100	70	30	100	0	0
482	0	110	100	40	40	10	0
482	1	110	100	40	40	20	0
482	2	110	100	40	40	30	0
482	3	110	100	40	40	40	0
482	4	110	100	40	40	50	0
482	5	110	100	40	40	60	0
483	0	100	100	40	40	20	0
483	1	100	100	40	40	30	0
483	2	100	100	40	40	40	0
483	3	100	100	40	40	50	0
483	4	100	100	40	40	60	0
483	5	100	100	40	40	70	0
484	0	110	120	40	50	30	0
484	1	110	120	40	50	40	0
484	2	110	120	40	50	50	0
484	3	110	120	40	50	60	0
484	4	110	120	40	50	70	0
484	5	110	120	40	50	80	0
485	0	120	70	30	30	0	0
485	1	120	70	30	40	0	0
485	2	120	70	30	50	0	0
485	3	120	70	30	60	0	0
485	4	120	70	30	70	0	0
485	5	120	70	30	80	0	0
486	0	100	70	30	50	0	0
486	1	100	70	30	60	0	0
486	2	100	70	30	70	0	0
486	3	100	70	30	80	0	0
486	4	100	70	30	90	0	0
486	5	100	70	30	100	0	0
487	0	110	100	40	40	10	0
487	1	110	100	40	40	20	0
487	2	110	100	40	40	30	0
487	3	110	100	40	40	40	0
487	4	110	100	40	40	50	0
487	5	110	100	40	40	60	0
488	0	90	100	40	40	30	0
488	1	90	100	40	40	40	0
488	2	90	100	40	40	50	0
488	3	90	100	40	40	60	0
488	4	90	100	40	40	70	0
488	5	90	100	40	40	80	0
489	0	80	50	60	120	40	0
489	1	80	50	60	120	50	0
489	2	80	50	60	120	50	10
489	3	80	50	60	120	50	20
489	4	80	50	60	120	50	30
489	5	80	50	60	120	50	40
490	0	110	100	40	50	0	0
490	1	110	100	40	50	10	0
490	2	110	100	40	50	20	0
490	3	110	100	40	50	30	0
490	4	110	100	40	50	40	0
490	5	110	100	40	50	50	0
491	0	70	120	80	60	20	0
491	1	70	120	80	60	20	10
491	2	70	120	80	60	20	20
491	3	70	120	80	60	20	30
491	4	70	120	80	60	20	40
491	5	70	120	80	60	20	50
492	0	60	70	30	40	0	0
492	1	60	70	30	50	0	0
492	2	60	70	30	60	0	0
492	3	60	70	30	70	0	0
492	4	60	70	30	80	0	0
492	5	60	70	30	90	0	0
493	0	100	70	30	50	0	0
493	1	100	70	30	60	0	0
493	2	100	70	30	70	0	0
493	3	100	70	30	80	0	0
493	4	100	70	30	90	0	0
493	5	100	70	30	100	0	0
494	0	80	70	30	70	0	0
494	1	80	70	30	80	0	0
494	2	80	70	30	90	0	0
494	3	80	70	30	100	0	0
494	4	80	70	30	110	0	0
494	5	80	70	30	120	0	0
495	0	90	100	40	40	30	0
495	1	90	100	40	40	40	0
495	2	90	100	40	40	50	0
495	3	90	100	40	40	60	0
495	4	90	100	40	40	70	0
495	5	90	100	40	40	80	0
496	0	80	100	40	40	40	0
496	1	80	100	40	40	50	0
496	2	80	100	40	40	60	0
496	3	80	100	40	40	70	0
496	4	80	100	40	40	80	0
496	5	80	100	40	40	90	0
497	0	110	30	60	80	40	30
497	1	110	30	60	80	40	40
497	2	110	30	60	80	40	50
497	3	110	30	60	80	40	60
497	4	110	30	60	80	40	70
497	5	110	30	60	80	40	80
498	0	110	70	30	40	0	0
498	1	110	70	30	50	0	0
498	2	110	70	30	60	0	0
498	3	110	70	30	70	0	0
498	4	110	70	30	80	0	0
498	5	110	70	30	90	0	0
499	0	90	70	30	60	0	0
499	1	90	70	30	70	0	0
499	2	90	70	30	80	0	0
499	3	90	70	30	90	0	0
499	4	90	70	30	100	0	0
499	5	90	70	30	110	0	0
500	0	110	100	40	40	10	0
500	1	110	100	40	40	20	0
500	2	110	100	40	40	30	0
500	3	110	100	40	40	40	0
500	4	110	100	40	40	50	0
500	5	110	100	40	40	60	0
501	0	100	100	40	40	20	0
501	1	100	100	40	40	30	0
501	2	100	100	40	40	40	0
501	3	100	100	40	40	50	0
501	4	100	100	40	40	60	0
501	5	100	100	40	40	70	0
502	0	110	120	40	50	30	0
502	1	110	120	40	50	40	0
502	2	110	120	40	50	50	0
502	3	110	120	40	50	60	0
502	4	110	120	40	50	70	0
502	5	110	120	40	50	80	0
503	0	110	70	30	40	0	0
503	1	110	70	30	50	0	0
503	2	110	70	30	60	0	0
503	3	110	70	30	70	0	0
503	4	110	70	30	80	0	0
503	5	110	70	30	90	0	0
504	0	70	70	30	80	0	0
504	1	70	70	30	90	0	0
504	2	70	70	30	100	0	0
504	3	70	70	30	110	0	0
504	4	70	70	30	120	0	0
504	5	70	70	30	130	0	0
505	0	120	110	40	40	40	0
505	1	120	110	40	40	50	0
505	2	120	110	40	40	60	0
505	3	120	110	40	40	70	0
505	4	120	110	40	40	70	10
505	5	120	110	40	40	70	20
506	0	60	50	80	60	0	0
506	1	60	50	80	70	0	0
506	2	60	50	80	80	0	0
506	3	60	50	80	90	0	0
506	4	60	50	80	100	0	0
506	5	60	50	80	110	0	0
507	0	110	20	20	150	50	0
507	1	110	20	20	150	60	0
507	2	110	20	20	150	70	0
507	3	110	20	20	150	80	0
507	4	110	20	20	150	90	0
507	5	110	20	20	150	100	0
508	0	110	20	20	140	60	0
508	1	110	20	20	140	70	0
508	2	110	20	20	140	80	0
508	3	110	20	20	140	90	0
508	4	110	20	20	140	100	0
508	5	110	20	20	140	110	0
509	0	150	110	40	0	0	0
509	1	150	110	40	10	0	0
509	2	150	110	40	20	0	0
509	3	150	110	40	30	0	0
509	4	150	110	40	40	0	0
509	5	150	110	40	40	10	0
510	0	140	110	50	0	0	0
510	1	140	110	50	10	0	0
510	2	140	110	50	20	0	0
510	3	140	110	50	30	0	0
510	4	140	110	50	30	10	0
510	5	140	110	50	30	20	0
511	0	110	60	80	80	20	0
511	1	110	60	80	80	30	0
511	2	110	60	80	80	40	0
511	3	110	60	80	80	50	0
511	4	110	60	80	80	50	10
511	5	110	60	80	80	50	20
512	0	90	60	60	100	40	0
512	1	90	60	60	100	50	0
512	2	90	60	60	100	60	0
512	3	90	60	60	100	60	10
512	4	90	60	60	100	60	20
512	5	90	60	60	100	60	30
513	0	130	30	60	80	40	10
513	1	130	30	60	80	40	20
513	2	130	30	60	80	40	30
513	3	130	30	60	80	40	40
513	4	130	30	60	80	40	50
513	5	130	30	60	80	40	60
831	0	90	50	60	0	0	0
831	1	90	50	70	0	0	0
831	2	90	50	80	0	0	0
831	3	90	50	80	10	0	0
831	4	90	50	80	20	0	0
831	5	90	50	80	30	0	0
832	0	70	70	30	30	0	0
832	1	70	70	30	40	0	0
832	2	70	70	30	50	0	0
832	3	70	70	30	60	0	0
832	4	70	70	30	70	0	0
832	5	70	70	30	80	0	0
833	0	50	70	30	50	0	0
833	1	50	70	30	60	0	0
833	2	50	70	30	70	0	0
833	3	50	70	30	80	0	0
833	4	50	70	30	90	0	0
833	5	50	70	30	100	0	0
834	0	70	50	80	50	0	0
834	1	70	50	80	60	0	0
834	2	70	50	80	70	0	0
834	3	70	50	80	80	0	0
834	4	70	50	80	90	0	0
834	5	70	50	80	100	0	0
835	0	50	50	80	70	0	0
835	1	50	50	80	80	0	0
835	2	50	50	80	90	0	0
835	3	50	50	80	100	0	0
835	4	50	50	80	110	0	0
835	5	50	50	80	120	0	0
836	0	100	50	50	80	20	0
836	1	100	50	50	80	30	0
836	2	100	50	50	80	40	0
836	3	100	50	50	80	50	0
836	4	100	50	50	80	60	0
836	5	100	50	50	80	70	0
837	0	80	50	50	80	40	0
837	1	80	50	50	80	50	0
837	2	80	50	50	80	60	0
837	3	80	50	50	80	70	0
837	4	80	50	50	80	80	0
837	5	80	50	50	80	90	0
838	0	60	60	20	150	60	0
838	1	60	60	20	150	70	0
838	2	60	60	20	150	80	0
838	3	60	60	20	150	90	0
838	4	60	60	20	150	90	10
838	5	60	60	20	150	90	20
839	0	110	120	40	50	80	0
839	1	110	120	40	50	80	0
839	2	110	120	40	50	80	0
839	3	110	120	40	50	80	0
839	4	110	120	40	50	80	0
839	5	110	120	40	50	80	0
840	0	100	120	40	50	90	0
840	1	100	120	40	50	90	0
840	2	100	120	40	50	90	0
840	3	100	120	40	50	90	0
840	4	100	120	40	50	90	0
840	5	100	120	40	50	90	0
841	0	60	50	80	60	0	0
841	1	60	50	80	70	0	0
841	2	60	50	80	80	0	0
841	3	60	50	80	90	0	0
841	4	60	50	80	100	0	0
841	5	60	50	80	110	0	0
842	0	100	50	80	70	0	0
842	1	100	50	80	80	0	0
842	2	100	50	80	90	0	0
842	3	100	50	80	100	0	0
842	4	100	50	80	100	10	0
842	5	100	50	80	100	20	0
843	0	90	50	50	80	30	0
843	1	90	50	50	80	40	0
843	2	90	50	50	80	50	0
843	3	90	50	50	80	60	0
843	4	90	50	50	80	70	0
843	5	90	50	50	80	80	0
844	0	90	60	60	100	40	0
844	1	90	60	60	100	50	0
844	2	90	60	60	100	60	0
844	3	90	60	60	100	60	10
844	4	90	60	60	100	60	20
844	5	90	60	60	100	60	30
845	0	60	70	30	40	0	0
845	1	60	70	30	50	0	0
845	2	60	70	30	60	0	0
845	3	60	70	30	70	0	0
845	4	60	70	30	80	0	0
845	5	60	70	30	90	0	0
846	0	60	50	80	60	0	0
846	1	60	50	80	70	0	0
846	2	60	50	80	80	0	0
846	3	60	50	80	90	0	0
846	4	60	50	80	100	0	0
846	5	60	50	80	110	0	0
847	0	50	50	80	70	0	0
847	1	50	50	80	80	0	0
847	2	50	50	80	90	0	0
847	3	50	50	80	100	0	0
847	4	50	50	80	110	0	0
847	5	50	50	80	120	0	0
848	0	90	50	50	80	30	0
848	1	90	50	50	80	40	0
848	2	90	50	50	80	50	0
848	3	90	50	50	80	60	0
848	4	90	50	50	80	70	0
848	5	90	50	50	80	80	0
849	0	80	50	50	80	40	0
849	1	80	50	50	80	50	0
849	2	80	50	50	80	60	0
849	3	80	50	50	80	70	0
849	4	80	50	50	80	80	0
849	5	80	50	50	80	90	0
850	0	80	60	60	100	50	0
850	1	80	60	60	100	60	0
850	2	80	60	60	100	70	0
850	3	80	60	60	100	70	10
850	4	80	60	60	100	70	20
850	5	80	60	60	100	70	30
851	0	70	50	80	50	0	0
851	1	70	50	80	60	0	0
851	2	70	50	80	70	0	0
851	3	70	50	80	80	0	0
851	4	70	50	80	90	0	0
851	5	70	50	80	100	0	0
852	0	60	50	80	60	0	0
852	1	60	50	80	70	0	0
852	2	60	50	80	80	0	0
852	3	60	50	80	90	0	0
852	4	60	50	80	100	0	0
852	5	60	50	80	110	0	0
853	0	100	50	50	80	20	0
853	1	100	50	50	80	30	0
853	2	100	50	50	80	40	0
853	3	100	50	50	80	50	0
853	4	100	50	50	80	60	0
853	5	100	50	50	80	70	0
854	0	90	50	50	80	30	0
854	1	90	50	50	80	40	0
854	2	90	50	50	80	50	0
854	3	90	50	50	80	60	0
854	4	90	50	50	80	70	0
854	5	90	50	50	80	80	0
855	0	80	50	60	120	40	0
855	1	80	50	60	120	50	0
855	2	80	50	60	120	50	10
855	3	80	50	60	120	50	20
855	4	80	50	60	120	50	30
855	5	80	50	60	120	50	40
856	0	50	50	80	70	0	0
856	1	50	50	80	80	0	0
856	2	50	50	80	90	0	0
856	3	50	50	80	100	0	0
856	4	50	50	80	110	0	0
856	5	50	50	80	120	0	0
857	0	90	50	80	80	0	0
857	1	90	50	80	90	0	0
857	2	90	50	80	100	0	0
857	3	90	50	80	100	10	0
857	4	90	50	80	100	20	0
857	5	90	50	80	100	30	0
858	0	100	50	50	80	20	0
858	1	100	50	50	80	30	0
858	2	100	50	50	80	40	0
858	3	100	50	50	80	50	0
858	4	100	50	50	80	60	0
858	5	100	50	50	80	70	0
859	0	90	60	80	80	40	0
859	1	90	60	80	80	50	0
859	2	90	60	80	80	60	0
859	3	90	60	80	80	70	0
859	4	90	60	80	80	70	10
859	5	90	60	80	80	70	20
860	0	70	70	30	30	0	0
860	1	70	70	30	40	0	0
860	2	70	70	30	50	0	0
860	3	70	70	30	60	0	0
860	4	70	70	30	70	0	0
860	5	70	70	30	80	0	0
861	0	70	50	80	50	0	0
861	1	70	50	80	60	0	0
861	2	70	50	80	70	0	0
861	3	70	50	80	80	0	0
861	4	70	50	80	90	0	0
861	5	70	50	80	100	0	0
862	0	50	50	80	70	0	0
862	1	50	50	80	80	0	0
862	2	50	50	80	90	0	0
862	3	50	50	80	100	0	0
862	4	50	50	80	110	0	0
862	5	50	50	80	120	0	0
863	0	90	50	80	80	0	0
863	1	90	50	80	90	0	0
863	2	90	50	80	100	0	0
863	3	90	50	80	100	10	0
863	4	90	50	80	100	20	0
863	5	90	50	80	100	30	0
864	0	90	50	50	80	30	0
864	1	90	50	50	80	40	0
864	2	90	50	50	80	50	0
864	3	90	50	50	80	60	0
864	4	90	50	50	80	70	0
864	5	90	50	50	80	80	0
865	0	90	120	40	50	50	0
865	1	90	120	40	50	60	0
865	2	90	120	40	50	70	0
865	3	90	120	40	50	80	0
865	4	90	120	40	50	90	0
865	5	90	120	40	50	100	0
866	0	100	100	40	40	20	0
866	1	100	100	40	40	30	0
866	2	100	100	40	40	40	0
866	3	100	100	40	40	50	0
866	4	100	100	40	40	60	0
866	5	100	100	40	40	70	0
867	0	130	110	40	40	30	0
867	1	130	110	40	40	40	0
867	2	130	110	40	40	50	0
867	3	130	110	40	40	60	0
867	4	130	110	40	40	60	10
867	5	130	110	40	40	60	20
868	0	90	60	50	0	0	0
868	1	90	60	60	0	0	0
868	2	90	60	70	0	0	0
868	3	90	60	80	0	0	0
868	4	90	60	80	10	0	0
868	5	90	60	80	20	0	0
869	0	80	50	70	0	0	0
869	1	80	50	80	0	0	0
869	2	80	50	80	10	0	0
869	3	80	50	80	20	0	0
869	4	80	50	80	30	0	0
869	5	80	50	80	40	0	0
870	0	70	50	50	30	0	0
870	1	70	50	50	40	0	0
870	2	70	50	50	50	0	0
870	3	70	50	50	60	0	0
870	4	70	50	50	70	0	0
870	5	70	50	50	80	0	0
871	0	110	70	30	40	0	0
871	1	110	70	30	50	0	0
871	2	110	70	30	60	0	0
871	3	110	70	30	70	0	0
871	4	110	70	30	80	0	0
871	5	110	70	30	90	0	0
872	0	100	70	30	50	0	0
872	1	100	70	30	60	0	0
872	2	100	70	30	70	0	0
872	3	100	70	30	80	0	0
872	4	100	70	30	90	0	0
872	5	100	70	30	100	0	0
873	0	130	70	30	70	0	0
873	1	130	70	30	80	0	0
873	2	130	70	30	90	0	0
873	3	130	70	30	100	0	0
873	4	130	70	30	100	10	0
873	5	130	70	30	100	20	0
874	0	100	100	40	40	20	0
874	1	100	100	40	40	30	0
874	2	100	100	40	40	40	0
874	3	100	100	40	40	50	0
874	4	100	100	40	40	60	0
874	5	100	100	40	40	70	0
875	0	90	120	40	50	50	0
875	1	90	120	40	50	60	0
875	2	90	120	40	50	70	0
875	3	90	120	40	50	80	0
875	4	90	120	40	50	90	0
875	5	90	120	40	50	100	0
876	0	130	110	40	40	30	0
876	1	130	110	40	40	40	0
876	2	130	110	40	40	50	0
876	3	130	110	40	40	60	0
876	4	130	110	40	40	60	10
876	5	130	110	40	40	60	20
877	0	200	70	20	20	40	0
877	1	200	70	20	20	50	0
877	2	200	70	20	20	50	10
877	3	200	70	20	20	50	20
877	4	200	70	20	20	50	30
877	5	200	70	20	20	50	40
878	0	120	70	30	30	0	0
878	1	120	70	30	40	0	0
878	2	120	70	30	50	0	0
878	3	120	70	30	60	0	0
878	4	120	70	30	70	0	0
878	5	120	70	30	80	0	0
879	0	100	100	40	40	20	0
879	1	100	100	40	40	30	0
879	2	100	100	40	40	40	0
879	3	100	100	40	40	50	0
879	4	100	100	40	40	60	0
879	5	100	100	40	40	70	0
880	0	100	120	40	50	40	0
880	1	100	120	40	50	50	0
880	2	100	120	40	50	60	0
880	3	100	120	40	50	70	0
880	4	100	120	40	50	80	0
880	5	100	120	40	50	90	0
881	0	80	50	50	20	0	0
881	1	80	50	50	30	0	0
881	2	80	50	50	40	0	0
881	3	80	50	50	50	0	0
881	4	80	50	50	60	0	0
881	5	80	50	50	70	0	0
882	0	120	70	30	30	0	0
882	1	120	70	30	40	0	0
882	2	120	70	30	50	0	0
882	3	120	70	30	60	0	0
882	4	120	70	30	70	0	0
882	5	120	70	30	80	0	0
883	0	100	70	30	50	0	0
883	1	100	70	30	60	0	0
883	2	100	70	30	70	0	0
883	3	100	70	30	80	0	0
883	4	100	70	30	90	0	0
883	5	100	70	30	100	0	0
884	0	140	70	30	60	0	0
884	1	140	70	30	70	0	0
884	2	140	70	30	80	0	0
884	3	140	70	30	90	0	0
884	4	140	70	30	100	0	0
884	5	140	70	30	100	10	0
885	0	100	100	40	40	20	0
885	1	100	100	40	40	30	0
885	2	100	100	40	40	40	0
885	3	100	100	40	40	50	0
885	4	100	100	40	40	60	0
885	5	100	100	40	40	70	0
886	0	110	120	40	50	30	0
886	1	110	120	40	50	40	0
886	2	110	120	40	50	50	0
886	3	110	120	40	50	60	0
886	4	110	120	40	50	70	0
886	5	110	120	40	50	80	0
887	0	110	70	30	40	0	0
887	1	110	70	30	50	0	0
887	2	110	70	30	60	0	0
887	3	110	70	30	70	0	0
887	4	110	70	30	80	0	0
887	5	110	70	30	90	0	0
888	0	110	60	80	50	0	0
888	1	110	60	80	60	0	0
888	2	110	60	80	70	0	0
888	3	110	60	80	80	0	0
888	4	110	60	80	80	10	0
888	5	110	60	80	80	20	0
889	0	110	100	40	50	0	0
889	1	110	100	40	50	10	0
889	2	110	100	40	50	20	0
889	3	110	100	40	50	30	0
889	4	110	100	40	50	40	0
889	5	110	100	40	50	50	0
890	0	90	50	60	120	30	0
890	1	90	50	60	120	40	0
890	2	90	50	60	120	50	0
890	3	90	50	60	120	60	0
890	4	90	50	60	120	60	10
890	5	90	50	60	120	60	20
891	0	60	70	30	40	0	0
891	1	60	70	30	50	0	0
891	2	60	70	30	60	0	0
891	3	60	70	30	70	0	0
891	4	60	70	30	80	0	0
891	5	60	70	30	90	0	0
892	0	100	70	30	50	0	0
892	1	100	70	30	60	0	0
892	2	100	70	30	70	0	0
892	3	100	70	30	80	0	0
892	4	100	70	30	90	0	0
892	5	100	70	30	100	0	0
893	0	80	70	30	70	0	0
893	1	80	70	30	80	0	0
893	2	80	70	30	90	0	0
893	3	80	70	30	100	0	0
893	4	80	70	30	110	0	0
893	5	80	70	30	120	0	0
894	0	90	100	40	40	30	0
894	1	90	100	40	40	40	0
894	2	90	100	40	40	50	0
894	3	90	100	40	40	60	0
894	4	90	100	40	40	70	0
894	5	90	100	40	40	80	0
895	0	80	100	40	40	40	0
895	1	80	100	40	40	50	0
895	2	80	100	40	40	60	0
895	3	80	100	40	40	70	0
895	4	80	100	40	40	80	0
895	5	80	100	40	40	90	0
896	0	190	70	20	20	50	0
896	1	190	70	20	20	60	0
896	2	190	70	20	20	60	10
896	3	190	70	20	20	60	20
896	4	190	70	20	20	60	30
896	5	190	70	20	20	60	40
897	0	90	70	30	60	0	0
897	1	90	70	30	70	0	0
897	2	90	70	30	80	0	0
897	3	90	70	30	90	0	0
897	4	90	70	30	100	0	0
897	5	90	70	30	110	0	0
898	0	100	100	40	40	20	0
898	1	100	100	40	40	30	0
898	2	100	100	40	40	40	0
898	3	100	100	40	40	50	0
898	4	100	100	40	40	60	0
898	5	100	100	40	40	70	0
899	0	90	50	90	40	30	0
899	1	90	50	90	40	40	0
899	2	90	50	90	40	50	0
899	3	90	50	90	40	60	0
899	4	90	50	90	40	70	0
899	5	90	50	90	40	80	0
900	0	200	70	20	20	50	40
900	1	200	70	20	20	50	40
900	2	200	70	20	20	50	40
900	3	200	70	20	20	50	40
900	4	200	70	20	20	50	40
900	5	200	70	20	20	50	40
901	0	110	70	30	40	0	0
901	1	110	70	30	50	0	0
901	2	110	70	30	60	0	0
901	3	110	70	30	70	0	0
901	4	110	70	30	80	0	0
901	5	110	70	30	90	0	0
902	0	70	70	30	80	0	0
902	1	70	70	30	90	0	0
902	2	70	70	30	100	0	0
902	3	70	70	30	110	0	0
902	4	70	70	30	120	0	0
902	5	70	70	30	130	0	0
903	0	120	110	40	40	40	0
903	1	120	110	40	40	50	0
903	2	120	110	40	40	60	0
903	3	120	110	40	40	70	0
903	4	120	110	40	40	70	10
903	5	120	110	40	40	70	20
904	0	40	50	80	80	0	0
904	1	40	50	80	90	0	0
904	2	40	50	80	100	0	0
904	3	40	50	80	110	0	0
904	4	40	50	80	120	0	0
904	5	40	50	80	130	0	0
905	0	110	20	20	140	60	0
905	1	110	20	20	140	70	0
905	2	110	20	20	140	80	0
905	3	110	20	20	140	90	0
905	4	110	20	20	140	100	0
905	5	110	20	20	140	110	0
906	0	110	20	20	120	80	0
906	1	110	20	20	120	90	0
906	2	110	20	20	120	100	0
906	3	110	20	20	120	110	0
906	4	110	20	20	120	120	0
906	5	110	20	20	120	130	0
907	0	150	110	40	0	0	0
907	1	150	110	40	10	0	0
907	2	150	110	40	20	0	0
907	3	150	110	40	30	0	0
907	4	150	110	40	40	0	0
907	5	150	110	40	40	10	0
908	0	140	110	50	0	0	0
908	1	140	110	50	10	0	0
908	2	140	110	50	20	0	0
908	3	140	110	50	30	0	0
908	4	140	110	50	30	10	0
908	5	140	110	50	30	20	0
909	0	110	60	80	80	20	0
909	1	110	60	80	80	30	0
909	2	110	60	80	80	40	0
909	3	110	60	80	80	50	0
909	4	110	60	80	80	50	10
909	5	110	60	80	80	50	20
910	0	90	60	80	80	40	0
910	1	90	60	80	80	50	0
910	2	90	60	80	80	60	0
910	3	90	60	80	80	70	0
910	4	90	60	80	80	70	10
910	5	90	60	80	80	70	20
911	0	130	30	60	80	40	10
911	1	130	30	60	80	40	20
911	2	130	30	60	80	40	30
911	3	130	30	60	80	40	40
911	4	130	30	60	80	40	50
911	5	130	30	60	80	40	60
514	0	100	50	50	0	0	0
514	1	100	50	60	0	0	0
514	2	100	50	70	0	0	0
514	3	100	50	80	0	0	0
514	4	100	50	80	10	0	0
514	5	100	50	80	20	0	0
515	0	80	70	30	20	0	0
515	1	80	70	30	30	0	0
515	2	80	70	30	40	0	0
515	3	80	70	30	50	0	0
515	4	80	70	30	60	0	0
515	5	80	70	30	70	0	0
516	0	60	70	30	40	0	0
516	1	60	70	30	50	0	0
516	2	60	70	30	60	0	0
516	3	60	70	30	70	0	0
516	4	60	70	30	80	0	0
516	5	60	70	30	90	0	0
517	0	80	50	80	40	0	0
517	1	80	50	80	50	0	0
517	2	80	50	80	60	0	0
517	3	80	50	80	70	0	0
517	4	80	50	80	80	0	0
517	5	80	50	80	90	0	0
518	0	70	50	80	50	0	0
518	1	70	50	80	60	0	0
518	2	70	50	80	70	0	0
518	3	70	50	80	80	0	0
518	4	70	50	80	90	0	0
518	5	70	50	80	100	0	0
519	0	90	50	50	80	30	0
519	1	90	50	50	80	40	0
519	2	90	50	50	80	50	0
519	3	90	50	50	80	60	0
519	4	90	50	50	80	70	0
519	5	90	50	50	80	80	0
520	0	70	50	50	80	50	0
520	1	70	50	50	80	60	0
520	2	70	50	50	80	70	0
520	3	70	50	50	80	80	0
520	4	70	50	50	80	90	0
520	5	70	50	50	80	100	0
521	0	60	60	20	150	60	0
521	1	60	60	20	150	70	0
521	2	60	60	20	150	80	0
521	3	60	60	20	150	90	0
521	4	60	60	20	150	90	10
521	5	60	60	20	150	90	20
522	0	120	120	40	50	70	0
522	1	120	120	40	50	70	0
522	2	120	120	40	50	70	0
522	3	120	120	40	50	70	0
522	4	120	120	40	50	70	0
522	5	120	120	40	50	70	0
523	0	110	120	40	50	80	0
523	1	110	120	40	50	80	0
523	2	110	120	40	50	80	0
523	3	110	120	40	50	80	0
523	4	110	120	40	50	80	0
523	5	110	120	40	50	80	0
524	0	100	70	30	50	0	0
524	1	100	70	30	60	0	0
524	2	100	70	30	70	0	0
524	3	100	70	30	80	0	0
524	4	100	70	30	90	0	0
524	5	100	70	30	100	0	0
525	0	110	100	40	40	10	0
525	1	110	100	40	40	20	0
525	2	110	100	40	40	30	0
525	3	110	100	40	40	40	0
525	4	110	100	40	40	50	0
525	5	110	100	40	40	60	0
526	0	100	100	40	40	20	0
526	1	100	100	40	40	30	0
526	2	100	100	40	40	40	0
526	3	100	100	40	40	50	0
526	4	100	100	40	40	60	0
526	5	100	100	40	40	70	0
527	0	130	30	60	80	40	10
527	1	130	30	60	80	40	20
527	2	130	30	60	80	40	30
527	3	130	30	60	80	40	40
527	4	130	30	60	80	40	50
527	5	130	30	60	80	40	60
528	0	70	70	30	30	0	0
528	1	70	70	30	40	0	0
528	2	70	70	30	50	0	0
528	3	70	70	30	60	0	0
528	4	70	70	30	70	0	0
528	5	70	70	30	80	0	0
529	0	80	50	80	40	0	0
529	1	80	50	80	50	0	0
529	2	80	50	80	60	0	0
529	3	80	50	80	70	0	0
529	4	80	50	80	80	0	0
529	5	80	50	80	90	0	0
530	0	60	50	80	60	0	0
530	1	60	50	80	70	0	0
530	2	60	50	80	80	0	0
530	3	60	50	80	90	0	0
530	4	60	50	80	100	0	0
530	5	60	50	80	110	0	0
531	0	110	50	50	80	10	0
531	1	110	50	50	80	20	0
531	2	110	50	50	80	30	0
531	3	110	50	50	80	40	0
531	4	110	50	50	80	50	0
531	5	110	50	50	80	60	0
532	0	90	50	50	80	30	0
532	1	90	50	50	80	40	0
532	2	90	50	50	80	50	0
532	3	90	50	50	80	60	0
532	4	90	50	50	80	70	0
532	5	90	50	50	80	80	0
533	0	90	60	60	100	40	0
533	1	90	60	60	100	50	0
533	2	90	60	60	100	60	0
533	3	90	60	60	100	60	10
533	4	90	60	60	100	60	20
533	5	90	60	60	100	60	30
534	0	100	50	50	80	20	0
534	1	100	50	50	80	30	0
534	2	100	50	50	80	40	0
534	3	100	50	50	80	50	0
534	4	100	50	50	80	60	0
534	5	100	50	50	80	70	0
535	0	90	60	80	80	40	0
535	1	90	60	80	80	50	0
535	2	90	60	80	80	60	0
535	3	90	60	80	80	70	0
535	4	90	60	80	80	70	10
535	5	90	60	80	80	70	20
536	0	90	50	80	30	0	0
536	1	90	50	80	40	0	0
536	2	90	50	80	50	0	0
536	3	90	50	80	60	0	0
536	4	90	50	80	70	0	0
536	5	90	50	80	80	0	0
537	0	80	50	80	40	0	0
537	1	80	50	80	50	0	0
537	2	80	50	80	60	0	0
537	3	80	50	80	70	0	0
537	4	80	50	80	80	0	0
537	5	80	50	80	90	0	0
538	0	60	50	80	110	0	0
538	1	60	50	80	120	0	0
538	2	60	50	80	130	0	0
538	3	60	50	80	140	0	0
538	4	60	50	80	150	0	0
538	5	60	50	80	150	10	0
539	0	110	50	50	90	0	0
539	1	110	50	50	90	10	0
539	2	110	50	50	90	20	0
539	3	110	50	50	90	30	0
539	4	110	50	50	90	40	0
539	5	110	50	50	90	50	0
540	0	90	60	80	80	40	0
540	1	90	60	80	80	50	0
540	2	90	60	80	80	60	0
540	3	90	60	80	80	70	0
540	4	90	60	80	80	70	10
540	5	90	60	80	80	70	20
541	0	60	70	30	40	0	0
541	1	60	70	30	50	0	0
541	2	60	70	30	60	0	0
541	3	60	70	30	70	0	0
541	4	60	70	30	80	0	0
541	5	60	70	30	90	0	0
542	0	70	50	80	50	0	0
542	1	70	50	80	60	0	0
542	2	70	50	80	70	0	0
542	3	70	50	80	80	0	0
542	4	70	50	80	90	0	0
542	5	70	50	80	100	0	0
543	0	60	50	80	60	0	0
543	1	60	50	80	70	0	0
543	2	60	50	80	80	0	0
543	3	60	50	80	90	0	0
543	4	60	50	80	100	0	0
543	5	60	50	80	110	0	0
544	0	110	50	50	30	60	0
544	1	110	50	50	30	70	0
544	2	110	50	50	30	80	0
544	3	110	50	50	30	90	0
544	4	110	50	50	30	100	0
544	5	110	50	50	30	110	0
545	0	100	50	50	80	20	0
545	1	100	50	50	80	30	0
545	2	100	50	50	80	40	0
545	3	100	50	50	80	50	0
545	4	100	50	50	80	60	0
545	5	100	50	50	80	70	0
546	0	100	120	40	50	40	0
546	1	100	120	40	50	50	0
546	2	100	120	40	50	60	0
546	3	100	120	40	50	70	0
546	4	100	120	40	50	80	0
546	5	100	120	40	50	90	0
547	0	50	50	80	70	0	0
547	1	50	50	80	80	0	0
547	2	50	50	80	90	0	0
547	3	50	50	80	100	0	0
547	4	50	50	80	110	0	0
547	5	50	50	80	120	0	0
548	0	90	50	80	80	0	0
548	1	90	50	80	90	0	0
548	2	90	50	80	100	0	0
548	3	90	50	80	100	10	0
548	4	90	50	80	100	20	0
548	5	90	50	80	100	30	0
549	0	110	50	50	90	0	0
549	1	110	50	50	90	10	0
549	2	110	50	50	90	20	0
549	3	110	50	50	90	30	0
549	4	110	50	50	90	40	0
549	5	110	50	50	90	50	0
550	0	110	60	80	80	20	0
550	1	110	60	80	80	30	0
550	2	110	60	80	80	40	0
550	3	110	60	80	80	50	0
550	4	110	60	80	80	50	10
550	5	110	60	80	80	50	20
551	0	90	60	60	100	40	0
551	1	90	60	60	100	50	0
551	2	90	60	60	100	60	0
551	3	90	60	60	100	60	10
551	4	90	60	60	100	60	20
551	5	90	60	60	100	60	30
552	0	100	60	40	0	0	0
552	1	100	60	50	0	0	0
552	2	100	60	60	0	0	0
552	3	100	60	70	0	0	0
552	4	100	60	80	0	0	0
552	5	100	60	80	10	0	0
553	0	90	50	60	0	0	0
553	1	90	50	70	0	0	0
553	2	90	50	80	0	0	0
553	3	90	50	80	10	0	0
553	4	90	50	80	20	0	0
553	5	90	50	80	30	0	0
554	0	80	50	50	20	0	0
554	1	80	50	50	30	0	0
554	2	80	50	50	40	0	0
554	3	80	50	50	50	0	0
554	4	80	50	50	60	0	0
554	5	80	50	50	70	0	0
555	0	120	70	30	30	0	0
555	1	120	70	30	40	0	0
555	2	120	70	30	50	0	0
555	3	120	70	30	60	0	0
555	4	120	70	30	70	0	0
555	5	120	70	30	80	0	0
556	0	110	70	30	40	0	0
556	1	110	70	30	50	0	0
556	2	110	70	30	60	0	0
556	3	110	70	30	70	0	0
556	4	110	70	30	80	0	0
556	5	110	70	30	90	0	0
557	0	140	70	30	60	0	0
557	1	140	70	30	70	0	0
557	2	140	70	30	80	0	0
557	3	140	70	30	90	0	0
557	4	140	70	30	100	0	0
557	5	140	70	30	100	10	0
558	0	100	100	40	40	20	0
558	1	100	100	40	40	30	0
558	2	100	100	40	40	40	0
558	3	100	100	40	40	50	0
558	4	100	100	40	40	60	0
558	5	100	100	40	40	70	0
559	0	100	120	40	50	40	0
559	1	100	120	40	50	50	0
559	2	100	120	40	50	60	0
559	3	100	120	40	50	70	0
559	4	100	120	40	50	80	0
559	5	100	120	40	50	90	0
560	0	140	110	40	40	20	0
560	1	140	110	40	40	30	0
560	2	140	110	40	40	40	0
560	3	140	110	40	40	50	0
560	4	140	110	40	40	50	10
560	5	140	110	40	40	50	20
561	0	200	70	20	20	40	0
561	1	200	70	20	20	50	0
561	2	200	70	20	20	50	10
561	3	200	70	20	20	50	20
561	4	200	70	20	20	50	30
561	5	200	70	20	20	50	40
562	0	110	70	30	40	0	0
562	1	110	70	30	50	0	0
562	2	110	70	30	60	0	0
562	3	110	70	30	70	0	0
562	4	110	70	30	80	0	0
562	5	110	70	30	90	0	0
563	0	100	70	30	50	0	0
563	1	100	70	30	60	0	0
563	2	100	70	30	70	0	0
563	3	100	70	30	80	0	0
563	4	100	70	30	90	0	0
563	5	100	70	30	100	0	0
564	0	100	100	40	40	20	0
564	1	100	100	40	40	30	0
564	2	100	100	40	40	40	0
564	3	100	100	40	40	50	0
564	4	100	100	40	40	60	0
564	5	100	100	40	40	70	0
565	0	90	100	40	40	30	0
565	1	90	100	40	40	40	0
565	2	90	100	40	40	50	0
565	3	90	100	40	40	60	0
565	4	90	100	40	40	70	0
565	5	90	100	40	40	80	0
566	0	110	30	60	80	40	30
566	1	110	30	60	80	40	40
566	2	110	30	60	80	40	50
566	3	110	30	60	80	40	60
566	4	110	30	60	80	40	70
566	5	110	30	60	80	40	80
567	0	70	50	50	30	0	0
567	1	70	50	50	40	0	0
567	2	70	50	50	50	0	0
567	3	70	50	50	60	0	0
567	4	70	50	50	70	0	0
567	5	70	50	50	80	0	0
568	0	110	70	30	40	0	0
568	1	110	70	30	50	0	0
568	2	110	70	30	60	0	0
568	3	110	70	30	70	0	0
568	4	110	70	30	80	0	0
568	5	110	70	30	90	0	0
569	0	100	70	30	50	0	0
569	1	100	70	30	60	0	0
569	2	100	70	30	70	0	0
569	3	100	70	30	80	0	0
569	4	100	70	30	90	0	0
569	5	100	70	30	100	0	0
570	0	130	70	30	70	0	0
570	1	130	70	30	80	0	0
570	2	130	70	30	90	0	0
570	3	130	70	30	100	0	0
570	4	130	70	30	100	10	0
570	5	130	70	30	100	20	0
571	0	110	70	30	90	0	0
571	1	110	70	30	100	0	0
571	2	110	70	30	100	10	0
571	3	110	70	30	100	20	0
571	4	110	70	30	100	30	0
571	5	110	70	30	100	40	0
572	0	100	120	40	50	40	0
572	1	100	120	40	50	50	0
572	2	100	120	40	50	60	0
572	3	100	120	40	50	70	0
572	4	100	120	40	50	80	0
572	5	100	120	40	50	90	0
573	0	90	70	30	60	0	0
573	1	90	70	30	70	0	0
573	2	90	70	30	80	0	0
573	3	90	70	30	90	0	0
573	4	90	70	30	100	0	0
573	5	90	70	30	110	0	0
574	0	100	100	40	40	20	0
574	1	100	100	40	40	30	0
574	2	100	100	40	40	40	0
574	3	100	100	40	40	50	0
574	4	100	100	40	40	60	0
574	5	100	100	40	40	70	0
575	0	80	100	40	40	40	0
575	1	80	100	40	40	50	0
575	2	80	100	40	40	60	0
575	3	80	100	40	40	70	0
575	4	80	100	40	40	80	0
575	5	80	100	40	40	90	0
576	0	170	100	30	30	40	30
576	1	170	100	30	30	40	30
576	2	170	100	30	30	40	30
576	3	170	100	30	30	40	30
576	4	170	100	30	30	40	30
576	5	170	100	30	30	40	30
577	0	80	50	50	20	0	0
577	1	80	50	50	30	0	0
577	2	80	50	50	40	0	0
577	3	80	50	50	50	0	0
577	4	80	50	50	60	0	0
577	5	80	50	50	70	0	0
578	0	120	70	30	30	0	0
578	1	120	70	30	40	0	0
578	2	120	70	30	50	0	0
578	3	120	70	30	60	0	0
578	4	120	70	30	70	0	0
578	5	120	70	30	80	0	0
579	0	110	70	30	40	0	0
579	1	110	70	30	50	0	0
579	2	110	70	30	60	0	0
579	3	110	70	30	70	0	0
579	4	110	70	30	80	0	0
579	5	110	70	30	90	0	0
580	0	140	70	30	60	0	0
580	1	140	70	30	70	0	0
580	2	140	70	30	80	0	0
580	3	140	70	30	90	0	0
580	4	140	70	30	100	0	0
580	5	140	70	30	100	10	0
581	0	100	100	40	40	20	0
581	1	100	100	40	40	30	0
581	2	100	100	40	40	40	0
581	3	100	100	40	40	50	0
581	4	100	100	40	40	60	0
581	5	100	100	40	40	70	0
582	0	110	120	40	50	30	0
582	1	110	120	40	50	40	0
582	2	110	120	40	50	50	0
582	3	110	120	40	50	60	0
582	4	110	120	40	50	70	0
582	5	110	120	40	50	80	0
583	0	110	70	30	40	0	0
583	1	110	70	30	50	0	0
583	2	110	70	30	60	0	0
583	3	110	70	30	70	0	0
583	4	110	70	30	80	0	0
583	5	110	70	30	90	0	0
584	0	70	70	30	80	0	0
584	1	70	70	30	90	0	0
584	2	70	70	30	100	0	0
584	3	70	70	30	110	0	0
584	4	70	70	30	120	0	0
584	5	70	70	30	130	0	0
585	0	120	110	40	40	40	0
585	1	120	110	40	40	50	0
585	2	120	110	40	40	60	0
585	3	120	110	40	40	70	0
585	4	120	110	40	40	70	10
585	5	120	110	40	40	70	20
586	0	110	100	40	50	0	0
586	1	110	100	40	50	10	0
586	2	110	100	40	50	20	0
586	3	110	100	40	50	30	0
586	4	110	100	40	50	40	0
586	5	110	100	40	50	40	0
587	0	70	120	80	60	20	0
587	1	70	120	80	60	20	10
587	2	70	120	80	60	20	20
587	3	70	120	80	60	20	30
587	4	70	120	80	60	20	40
587	5	70	120	80	60	20	50
588	0	60	50	80	60	0	0
588	1	60	50	80	70	0	0
588	2	60	50	80	80	0	0
588	3	60	50	80	90	0	0
588	4	60	50	80	100	0	0
588	5	60	50	80	110	0	0
589	0	110	20	20	150	50	0
589	1	110	20	20	150	60	0
589	2	110	20	20	150	70	0
589	3	110	20	20	150	80	0
589	4	110	20	20	150	90	0
589	5	110	20	20	150	100	0
590	0	110	20	20	140	60	0
590	1	110	20	20	140	70	0
590	2	110	20	20	140	80	0
590	3	110	20	20	140	90	0
590	4	110	20	20	140	100	0
590	5	110	20	20	140	110	0
591	0	150	110	40	0	0	0
591	1	150	110	40	10	0	0
591	2	150	110	40	20	0	0
591	3	150	110	40	30	0	0
591	4	150	110	40	40	0	0
591	5	150	110	40	40	10	0
592	0	140	110	50	0	0	0
592	1	140	110	50	10	0	0
592	2	140	110	50	20	0	0
592	3	140	110	50	30	0	0
592	4	140	110	50	30	10	0
592	5	140	110	50	30	20	0
593	0	110	60	80	80	20	0
593	1	110	60	80	80	30	0
593	2	110	60	80	80	40	0
593	3	110	60	80	80	50	0
593	4	110	60	80	80	50	10
593	5	110	60	80	80	50	20
594	0	90	60	80	80	40	0
594	1	90	60	80	80	50	0
594	2	90	60	80	80	60	0
594	3	90	60	80	80	70	0
594	4	90	60	80	80	70	10
594	5	90	60	80	80	70	20
595	0	130	30	60	80	40	10
595	1	130	30	60	80	40	20
595	2	130	30	60	80	40	30
595	3	130	30	60	80	40	40
595	4	130	30	60	80	40	50
595	5	130	30	60	80	40	60
596	0	120	120	40	60	10	0
596	1	120	120	40	60	20	0
596	2	120	120	40	60	30	0
596	3	120	120	40	60	40	0
596	4	120	120	40	60	50	0
596	5	120	120	40	60	60	0
597	0	110	120	40	50	30	0
597	1	110	120	40	50	40	0
597	2	110	120	40	50	50	0
597	3	110	120	40	50	60	0
597	4	110	120	40	50	70	0
597	5	110	120	40	50	80	0
348	0	100	50	50	0	0	0
348	1	100	50	60	0	0	0
348	2	100	50	70	0	0	0
348	3	100	50	80	0	0	0
348	4	100	50	80	10	0	0
348	5	100	50	80	20	0	0
349	0	80	70	30	20	0	0
349	1	80	70	30	30	0	0
349	2	80	70	30	40	0	0
349	3	80	70	30	50	0	0
349	4	80	70	30	60	0	0
349	5	80	70	30	70	0	0
350	0	60	70	30	40	0	0
350	1	60	70	30	50	0	0
350	2	60	70	30	60	0	0
350	3	60	70	30	70	0	0
350	4	60	70	30	80	0	0
350	5	60	70	30	90	0	0
351	0	80	50	80	40	0	0
351	1	80	50	80	50	0	0
351	2	80	50	80	60	0	0
351	3	80	50	80	70	0	0
351	4	80	50	80	80	0	0
351	5	80	50	80	90	0	0
352	0	70	50	80	50	0	0
352	1	70	50	80	60	0	0
352	2	70	50	80	70	0	0
352	3	70	50	80	80	0	0
352	4	70	50	80	90	0	0
352	5	70	50	80	100	0	0
353	0	90	50	50	80	30	0
353	1	90	50	50	80	40	0
353	2	90	50	50	80	50	0
353	3	90	50	50	80	60	0
353	4	90	50	50	80	70	0
353	5	90	50	50	80	80	0
354	0	70	50	50	80	50	0
354	1	70	50	50	80	60	0
354	2	70	50	50	80	70	0
354	3	70	50	50	80	80	0
354	4	70	50	50	80	90	0
354	5	70	50	50	80	100	0
355	0	50	60	20	150	70	0
355	1	50	60	20	150	80	0
355	2	50	60	20	150	90	0
355	3	50	60	20	150	90	10
355	4	50	60	20	150	90	20
355	5	50	60	20	150	90	30
356	0	120	120	40	50	70	0
356	1	120	120	40	50	70	0
356	2	120	120	40	50	70	0
356	3	120	120	40	50	70	0
356	4	120	120	40	50	70	0
356	5	120	120	40	50	70	0
357	0	110	120	40	50	80	0
357	1	110	120	40	50	80	0
357	2	110	120	40	50	80	0
357	3	110	120	40	50	80	0
357	4	110	120	40	50	80	0
357	5	110	120	40	50	80	0
358	0	70	50	80	50	0	0
358	1	70	50	80	60	0	0
358	2	70	50	80	70	0	0
358	3	70	50	80	80	0	0
358	4	70	50	80	90	0	0
358	5	70	50	80	100	0	0
359	0	60	50	80	60	0	0
359	1	60	50	80	70	0	0
359	2	60	50	80	80	0	0
359	3	60	50	80	90	0	0
359	4	60	50	80	100	0	0
359	5	60	50	80	110	0	0
360	0	100	50	50	80	20	0
360	1	100	50	50	80	30	0
360	2	100	50	50	80	40	0
360	3	100	50	50	80	50	0
360	4	100	50	50	80	60	0
360	5	100	50	50	80	70	0
361	0	90	50	50	80	30	0
361	1	90	50	50	80	40	0
361	2	90	50	50	80	50	0
361	3	90	50	50	80	60	0
361	4	90	50	50	80	70	0
361	5	90	50	50	80	80	0
362	0	80	50	60	120	40	0
362	1	80	50	60	120	50	0
362	2	80	50	60	120	50	10
362	3	80	50	60	120	50	20
362	4	80	50	60	120	50	30
362	5	80	50	60	120	50	40
363	0	70	70	30	30	0	0
363	1	70	70	30	40	0	0
363	2	70	70	30	50	0	0
363	3	70	70	30	60	0	0
363	4	70	70	30	70	0	0
363	5	70	70	30	80	0	0
364	0	80	50	80	40	0	0
364	1	80	50	80	50	0	0
364	2	80	50	80	60	0	0
364	3	80	50	80	70	0	0
364	4	80	50	80	80	0	0
364	5	80	50	80	90	0	0
365	0	60	50	80	60	0	0
365	1	60	50	80	70	0	0
365	2	60	50	80	80	0	0
365	3	60	50	80	90	0	0
365	4	60	50	80	100	0	0
365	5	60	50	80	110	0	0
366	0	110	50	50	80	10	0
366	1	110	50	50	80	20	0
366	2	110	50	50	80	30	0
366	3	110	50	50	80	40	0
366	4	110	50	50	80	50	0
366	5	110	50	50	80	60	0
367	0	80	50	50	80	40	0
367	1	80	50	50	80	50	0
367	2	80	50	50	80	60	0
367	3	80	50	50	80	70	0
367	4	80	50	50	80	80	0
367	5	80	50	50	80	90	0
368	0	80	60	80	80	50	0
368	1	80	60	80	80	60	0
368	2	80	60	80	80	70	0
368	3	80	60	80	80	80	0
368	4	80	60	80	80	80	10
368	5	80	60	80	80	80	20
369	0	100	50	50	80	20	0
369	1	100	50	50	80	30	0
369	2	100	50	50	80	40	0
369	3	100	50	50	80	50	0
369	4	100	50	50	80	60	0
369	5	100	50	50	80	70	0
370	0	90	50	50	80	80	0
370	1	90	50	50	80	90	0
370	2	90	50	50	80	100	0
370	3	90	50	50	80	110	0
370	4	90	50	50	80	120	0
370	5	90	50	50	80	130	0
371	0	90	50	80	30	0	0
371	1	90	50	80	40	0	0
371	2	90	50	80	50	0	0
371	3	90	50	80	60	0	0
371	4	90	50	80	70	0	0
371	5	90	50	80	80	0	0
372	0	110	50	50	80	10	0
372	1	110	50	50	80	20	0
372	2	110	50	50	80	30	0
372	3	110	50	50	80	40	0
372	4	110	50	50	80	50	0
372	5	110	50	50	80	60	0
373	0	80	60	60	100	50	0
373	1	80	60	60	100	60	0
373	2	80	60	60	100	70	0
373	3	80	60	60	100	70	10
373	4	80	60	60	100	70	20
373	5	80	60	60	100	70	30
374	0	80	50	80	40	0	0
374	1	80	50	80	50	0	0
374	2	80	50	80	60	0	0
374	3	80	50	80	70	0	0
374	4	80	50	80	80	0	0
374	5	80	50	80	90	0	0
375	0	110	50	140	0	0	0
375	1	110	50	140	10	0	0
375	2	110	50	140	20	0	0
375	3	110	50	140	30	0	0
375	4	110	50	140	40	0	0
375	5	110	50	140	50	0	0
376	0	100	60	80	80	30	0
376	1	100	60	80	80	40	0
376	2	100	60	80	80	50	0
376	3	100	60	80	80	60	0
376	4	100	60	80	80	60	10
376	5	100	60	80	80	60	20
377	0	70	50	60	120	50	0
377	1	70	50	60	120	60	0
377	2	70	50	60	120	60	10
377	3	70	50	60	120	60	20
377	4	70	50	60	120	60	30
377	5	70	50	60	120	60	40
378	0	100	60	40	0	0	0
378	1	100	60	50	0	0	0
378	2	100	60	60	0	0	0
378	3	100	60	70	0	0	0
378	4	100	60	80	0	0	0
378	5	100	60	80	10	0	0
379	0	90	50	60	0	0	0
379	1	90	50	70	0	0	0
379	2	90	50	80	0	0	0
379	3	90	50	80	10	0	0
379	4	90	50	80	20	0	0
379	5	90	50	80	30	0	0
380	0	70	60	60	10	0	0
380	1	70	60	60	20	0	0
380	2	70	60	60	30	0	0
380	3	70	60	60	40	0	0
380	4	70	60	60	50	0	0
380	5	70	60	60	60	0	0
381	0	130	70	30	20	0	0
381	1	130	70	30	30	0	0
381	2	130	70	30	40	0	0
381	3	130	70	30	50	0	0
381	4	130	70	30	60	0	0
381	5	130	70	30	70	0	0
382	0	110	70	30	40	0	0
382	1	110	70	30	50	0	0
382	2	110	70	30	60	0	0
382	3	110	70	30	70	0	0
382	4	110	70	30	80	0	0
382	5	110	70	30	90	0	0
383	0	140	70	30	60	0	0
383	1	140	70	30	70	0	0
383	2	140	70	30	80	0	0
383	3	140	70	30	90	0	0
383	4	140	70	30	100	0	0
383	5	140	70	30	100	10	0
384	0	100	100	40	40	20	0
384	1	100	100	40	40	30	0
384	2	100	100	40	40	40	0
384	3	100	100	40	40	50	0
384	4	100	100	40	40	60	0
384	5	100	100	40	40	70	0
385	0	100	120	40	50	40	0
385	1	100	120	40	50	50	0
385	2	100	120	40	50	60	0
385	3	100	120	40	50	70	0
385	4	100	120	40	50	80	0
385	5	100	120	40	50	90	0
386	0	100	100	40	40	20	0
386	1	100	100	40	40	30	0
386	2	100	100	40	40	40	0
386	3	100	100	40	40	50	0
386	4	100	100	40	40	60	0
386	5	100	100	40	40	70	0
387	0	60	120	80	60	30	0
387	1	60	120	80	60	30	10
387	2	60	120	80	60	30	20
387	3	60	120	80	60	30	30
387	4	60	120	80	60	30	40
387	5	60	120	80	60	30	50
388	0	130	70	30	20	0	0
388	1	130	70	30	30	0	0
388	2	130	70	30	40	0	0
388	3	130	70	30	50	0	0
388	4	130	70	30	60	0	0
388	5	130	70	30	70	0	0
389	0	120	70	30	30	0	0
389	1	120	70	30	40	0	0
389	2	120	70	30	50	0	0
389	3	120	70	30	60	0	0
389	4	120	70	30	70	0	0
389	5	120	70	30	80	0	0
390	0	140	70	30	60	0	0
390	1	140	70	30	70	0	0
390	2	140	70	30	80	0	0
390	3	140	70	30	90	0	0
390	4	140	70	30	100	0	0
390	5	140	70	30	100	10	0
391	0	100	100	40	40	20	0
391	1	100	100	40	40	30	0
391	2	100	100	40	40	40	0
391	3	100	100	40	40	50	0
391	4	100	100	40	40	60	0
391	5	100	100	40	40	70	0
392	0	110	120	40	50	30	0
392	1	110	120	40	50	40	0
392	2	110	120	40	50	50	0
392	3	110	120	40	50	60	0
392	4	110	120	40	50	70	0
392	5	110	120	40	50	80	0
393	0	80	70	30	20	0	0
393	1	80	70	30	30	0	0
393	2	80	70	30	40	0	0
393	3	80	70	30	50	0	0
393	4	80	70	30	60	0	0
393	5	80	70	30	70	0	0
394	0	120	70	30	30	0	0
394	1	120	70	30	40	0	0
394	2	120	70	30	50	0	0
394	3	120	70	30	60	0	0
394	4	120	70	30	70	0	0
394	5	120	70	30	80	0	0
395	0	110	70	30	40	0	0
395	1	110	70	30	50	0	0
395	2	110	70	30	60	0	0
395	3	110	70	30	70	0	0
395	4	110	70	30	80	0	0
395	5	110	70	30	90	0	0
396	0	140	70	30	60	0	0
396	1	140	70	30	70	0	0
396	2	140	70	30	80	0	0
396	3	140	70	30	90	0	0
396	4	140	70	30	100	0	0
396	5	140	70	30	100	10	0
397	0	110	100	40	40	10	0
397	1	110	100	40	40	20	0
397	2	110	100	40	40	30	0
397	3	110	100	40	40	40	0
397	4	110	100	40	40	50	0
397	5	110	100	40	40	60	0
398	0	170	100	30	30	20	0
398	1	170	100	30	30	30	0
398	2	170	100	30	30	40	0
398	3	170	100	30	30	40	10
398	4	170	100	30	30	40	20
398	5	170	100	30	30	40	30
399	0	160	100	30	30	30	0
399	1	160	100	30	30	40	0
399	2	160	100	30	30	50	0
399	3	160	100	30	30	50	10
399	4	160	100	30	30	50	20
399	5	160	100	30	30	50	30
400	0	200	70	20	20	40	0
400	1	200	70	20	20	50	0
400	2	200	70	20	20	50	10
400	3	200	70	20	20	50	20
400	4	200	70	20	20	50	30
400	5	200	70	20	20	50	40
401	0	60	70	30	40	0	0
401	1	60	70	30	50	0	0
401	2	60	70	30	60	0	0
401	3	60	70	30	70	0	0
401	4	60	70	30	80	0	0
401	5	60	70	30	90	0	0
402	0	100	70	30	50	0	0
402	1	100	70	30	60	0	0
402	2	100	70	30	70	0	0
402	3	100	70	30	80	0	0
402	4	100	70	30	90	0	0
402	5	100	70	30	100	0	0
403	0	90	70	30	60	0	0
403	1	90	70	30	70	0	0
403	2	90	70	30	80	0	0
403	3	90	70	30	90	0	0
403	4	90	70	30	100	0	0
403	5	90	70	30	110	0	0
404	0	100	100	40	40	20	0
404	1	100	100	40	40	30	0
404	2	100	100	40	40	40	0
404	3	100	100	40	40	50	0
404	4	100	100	40	40	60	0
404	5	100	100	40	40	70	0
405	0	90	100	40	40	30	0
405	1	90	100	40	40	40	0
405	2	90	100	40	40	50	0
405	3	90	100	40	40	60	0
405	4	90	100	40	40	70	0
405	5	90	100	40	40	80	0
406	0	150	100	30	30	40	0
406	1	150	100	30	30	50	0
406	2	150	100	30	30	60	0
406	3	150	100	30	30	60	10
406	4	150	100	30	30	60	20
406	5	150	100	30	30	60	30
407	0	90	70	30	60	0	0
407	1	90	70	30	70	0	0
407	2	90	70	30	80	0	0
407	3	90	70	30	90	0	0
407	4	90	70	30	100	0	0
407	5	90	70	30	110	0	0
408	0	90	100	40	40	30	0
408	1	90	100	40	40	40	0
408	2	90	100	40	40	50	0
408	3	90	100	40	40	60	0
408	4	90	100	40	40	70	0
408	5	90	100	40	40	80	0
409	0	80	100	40	40	40	0
409	1	80	100	40	40	50	0
409	2	80	100	40	40	60	0
409	3	80	100	40	40	70	0
409	4	80	100	40	40	80	0
409	5	80	100	40	40	90	0
410	0	240	20	20	20	30	20
410	1	240	20	20	20	30	30
410	2	240	20	20	20	30	40
410	3	240	20	20	20	30	50
410	4	240	20	20	20	30	60
410	5	240	20	20	20	30	70
411	0	80	70	30	70	0	0
411	1	80	70	30	80	0	0
411	2	80	70	30	90	0	0
411	3	80	70	30	100	0	0
411	4	80	70	30	110	0	0
411	5	80	70	30	120	0	0
412	0	70	70	30	80	0	0
412	1	70	70	30	90	0	0
412	2	70	70	30	100	0	0
412	3	70	70	30	110	0	0
412	4	70	70	30	120	0	0
412	5	70	70	30	130	0	0
413	0	100	100	40	40	20	0
413	1	100	100	40	40	30	0
413	2	100	100	40	40	40	0
413	3	100	100	40	40	50	0
413	4	100	100	40	40	60	0
413	5	100	100	40	40	70	0
414	0	80	100	40	40	40	0
414	1	80	100	40	40	50	0
414	2	80	100	40	40	60	0
414	3	80	100	40	40	70	0
414	4	80	100	40	40	80	0
414	5	80	100	40	40	90	0
415	0	110	30	60	80	40	30
415	1	110	30	60	80	40	40
415	2	110	30	60	80	40	50
415	3	110	30	60	80	40	60
415	4	110	30	60	80	40	70
415	5	110	30	60	80	40	80
416	0	110	70	30	40	0	0
416	1	110	70	30	50	0	0
416	2	110	70	30	60	0	0
416	3	110	70	30	70	0	0
416	4	110	70	30	80	0	0
416	5	110	70	30	90	0	0
417	0	100	70	30	50	0	0
417	1	100	70	30	60	0	0
417	2	100	70	30	70	0	0
417	3	100	70	30	80	0	0
417	4	100	70	30	90	0	0
417	5	100	70	30	100	0	0
418	0	150	100	30	30	40	0
418	1	150	100	30	30	50	0
418	2	150	100	30	30	60	0
418	3	150	100	30	30	60	10
418	4	150	100	30	30	60	20
418	5	150	100	30	30	60	30
419	0	110	50	80	60	0	0
419	1	110	50	80	70	0	0
419	2	110	50	80	80	0	0
419	3	110	50	80	90	0	0
419	4	110	50	80	100	0	0
419	5	110	50	80	100	10	0
420	0	210	30	40	70	0	0
420	1	210	30	40	80	0	0
420	2	210	30	40	90	0	0
420	3	210	30	40	90	10	0
420	4	210	30	40	90	20	0
420	5	210	30	40	90	30	0
421	0	150	110	40	0	0	0
421	1	150	110	40	10	0	0
421	2	150	110	40	20	0	0
421	3	150	110	40	30	0	0
421	4	150	110	40	40	0	0
421	5	150	110	40	40	10	0
422	0	140	110	50	0	0	0
422	1	140	110	50	10	0	0
422	2	140	110	50	20	0	0
422	3	140	110	50	30	0	0
422	4	140	110	50	30	10	0
422	5	140	110	50	30	20	0
423	0	100	60	80	80	30	0
423	1	100	60	80	80	40	0
423	2	100	60	80	80	50	0
423	3	100	60	80	80	60	0
423	4	100	60	80	80	60	10
423	5	100	60	80	80	60	20
424	0	70	50	60	120	50	0
424	1	70	50	60	120	60	0
424	2	70	50	60	120	60	10
424	3	70	50	60	120	60	20
424	4	70	50	60	120	60	30
424	5	70	50	60	120	60	40
425	0	130	30	60	80	40	10
425	1	130	30	60	80	40	20
425	2	130	30	60	80	40	30
425	3	130	30	60	80	40	40
425	4	130	30	60	80	40	50
425	5	130	30	60	80	40	60
426	0	100	50	50	80	20	0
426	1	100	50	50	80	30	0
426	2	100	50	50	80	40	0
426	3	100	50	50	80	50	0
426	4	100	50	50	80	60	0
426	5	100	50	50	80	70	0
427	0	100	60	60	100	30	0
427	1	100	60	60	100	40	0
427	2	100	60	60	100	50	0
427	3	100	60	60	100	50	10
427	4	100	60	60	100	50	20
427	5	100	60	60	100	50	30
677	0	100	50	50	0	0	0
677	1	100	50	60	0	0	0
677	2	100	50	70	0	0	0
677	3	100	50	80	0	0	0
677	4	100	50	80	10	0	0
677	5	100	50	80	20	0	0
678	0	80	70	30	20	0	0
678	1	80	70	30	30	0	0
678	2	80	70	30	40	0	0
678	3	80	70	30	50	0	0
678	4	80	70	30	60	0	0
678	5	80	70	30	70	0	0
679	0	60	70	30	40	0	0
679	1	60	70	30	50	0	0
679	2	60	70	30	60	0	0
679	3	60	70	30	70	0	0
679	4	60	70	30	80	0	0
679	5	60	70	30	90	0	0
680	0	70	50	80	50	0	0
680	1	70	50	80	60	0	0
680	2	70	50	80	70	0	0
680	3	70	50	80	80	0	0
680	4	70	50	80	90	0	0
680	5	70	50	80	100	0	0
681	0	60	50	80	60	0	0
681	1	60	50	80	70	0	0
681	2	60	50	80	80	0	0
681	3	60	50	80	90	0	0
681	4	60	50	80	100	0	0
681	5	60	50	80	110	0	0
682	0	90	50	50	80	30	0
682	1	90	50	50	80	40	0
682	2	90	50	50	80	50	0
682	3	90	50	50	80	60	0
682	4	90	50	50	80	70	0
682	5	90	50	50	80	80	0
683	0	70	50	50	80	50	0
683	1	70	50	50	80	60	0
683	2	70	50	50	80	70	0
683	3	70	50	50	80	80	0
683	4	70	50	50	80	90	0
683	5	70	50	50	80	100	0
684	0	60	60	20	150	60	0
684	1	60	60	20	150	70	0
684	2	60	60	20	150	80	0
684	3	60	60	20	150	90	0
684	4	60	60	20	150	90	10
684	5	60	60	20	150	90	20
685	0	120	120	40	50	70	0
685	1	120	120	40	50	70	0
685	2	120	120	40	50	70	0
685	3	120	120	40	50	70	0
685	4	120	120	40	50	70	0
685	5	120	120	40	50	70	0
686	0	110	120	40	50	80	0
686	1	110	120	40	50	80	0
686	2	110	120	40	50	80	0
686	3	110	120	40	50	80	0
686	4	110	120	40	50	80	0
686	5	110	120	40	50	80	0
687	0	60	50	80	60	0	0
687	1	60	50	80	70	0	0
687	2	60	50	80	80	0	0
687	3	60	50	80	90	0	0
687	4	60	50	80	100	0	0
687	5	60	50	80	110	0	0
688	0	100	50	50	80	20	0
688	1	100	50	50	80	30	0
688	2	100	50	50	80	40	0
688	3	100	50	50	80	50	0
688	4	100	50	50	80	60	0
688	5	100	50	50	80	70	0
689	0	90	50	50	80	30	0
689	1	90	50	50	80	40	0
689	2	90	50	50	80	50	0
689	3	90	50	50	80	60	0
689	4	90	50	50	80	70	0
689	5	90	50	50	80	80	0
690	0	130	30	60	80	40	10
690	1	130	30	60	80	40	20
690	2	130	30	60	80	40	30
690	3	130	30	60	80	40	40
690	4	130	30	60	80	40	50
690	5	130	30	60	80	40	60
691	0	90	50	80	30	0	0
691	1	90	50	80	40	0	0
691	2	90	50	80	50	0	0
691	3	90	50	80	60	0	0
691	4	90	50	80	70	0	0
691	5	90	50	80	80	0	0
692	0	80	50	80	40	0	0
692	1	80	50	80	50	0	0
692	2	80	50	80	60	0	0
692	3	80	50	80	70	0	0
692	4	80	50	80	80	0	0
692	5	80	50	80	90	0	0
693	0	110	50	80	60	0	0
693	1	110	50	80	70	0	0
693	2	110	50	80	80	0	0
693	3	110	50	80	90	0	0
693	4	110	50	80	100	0	0
693	5	110	50	80	100	10	0
694	0	100	50	50	80	20	0
694	1	100	50	50	80	30	0
694	2	100	50	50	80	40	0
694	3	100	50	50	80	50	0
694	4	100	50	50	80	60	0
694	5	100	50	50	80	70	0
695	0	90	60	80	80	40	0
695	1	90	60	80	80	50	0
695	2	90	60	80	80	60	0
695	3	90	60	80	80	70	0
695	4	90	60	80	80	70	10
695	5	90	60	80	80	70	20
696	0	90	50	50	80	30	0
696	1	90	50	50	80	40	0
696	2	90	50	50	80	50	0
696	3	90	50	50	80	60	0
696	4	90	50	50	80	70	0
696	5	90	50	50	80	80	0
697	0	80	50	80	100	40	0
697	1	80	50	80	100	50	0
697	2	80	50	80	100	60	0
697	3	80	50	80	100	70	0
697	4	80	50	80	100	80	0
697	5	80	50	80	100	90	0
698	0	60	70	30	40	0	0
698	1	60	70	30	50	0	0
698	2	60	70	30	60	0	0
698	3	60	70	30	70	0	0
698	4	60	70	30	80	0	0
698	5	60	70	30	90	0	0
699	0	70	50	80	50	0	0
699	1	70	50	80	60	0	0
699	2	70	50	80	70	0	0
699	3	70	50	80	80	0	0
699	4	70	50	80	90	0	0
699	5	70	50	80	100	0	0
700	0	50	50	80	70	0	0
700	1	50	50	80	80	0	0
700	2	50	50	80	90	0	0
700	3	50	50	80	100	0	0
700	4	50	50	80	110	0	0
700	5	50	50	80	120	0	0
701	0	110	50	50	80	10	0
701	1	110	50	50	80	20	0
701	2	110	50	50	80	30	0
701	3	110	50	50	80	40	0
701	4	110	50	50	80	50	0
701	5	110	50	50	80	60	0
702	0	100	50	50	80	20	0
702	1	100	50	50	80	30	0
702	2	100	50	50	80	40	0
702	3	100	50	50	80	50	0
702	4	100	50	50	80	60	0
702	5	100	50	50	80	70	0
703	0	110	120	40	50	30	0
703	1	110	120	40	50	40	0
703	2	110	120	40	50	50	0
703	3	110	120	40	50	60	0
703	4	110	120	40	50	70	0
703	5	110	120	40	50	80	0
704	0	100	50	50	80	20	0
704	1	100	50	50	80	30	0
704	2	100	50	50	80	40	0
704	3	100	50	50	80	50	0
704	4	100	50	50	80	60	0
704	5	100	50	50	80	70	0
705	0	70	120	80	60	20	0
705	1	70	120	80	60	20	10
705	2	70	120	80	60	20	20
705	3	70	120	80	60	20	30
705	4	70	120	80	60	20	40
705	5	70	120	80	60	20	50
706	0	60	50	80	60	0	0
706	1	60	50	80	70	0	0
706	2	60	50	80	80	0	0
706	3	60	50	80	90	0	0
706	4	60	50	80	100	0	0
706	5	60	50	80	110	0	0
707	0	100	50	80	70	0	0
707	1	100	50	80	80	0	0
707	2	100	50	80	90	0	0
707	3	100	50	80	100	0	0
707	4	100	50	80	100	10	0
707	5	100	50	80	100	20	0
708	0	90	50	50	80	30	0
708	1	90	50	50	80	40	0
708	2	90	50	50	80	50	0
708	3	90	50	50	80	60	0
708	4	90	50	50	80	70	0
708	5	90	50	50	80	80	0
709	0	90	60	80	80	40	0
709	1	90	60	80	80	50	0
709	2	90	60	80	80	60	0
709	3	90	60	80	80	70	0
709	4	90	60	80	80	70	10
709	5	90	60	80	80	70	20
710	0	100	60	40	0	0	0
710	1	100	60	50	0	0	0
710	2	100	60	60	0	0	0
710	3	100	60	70	0	0	0
710	4	100	60	80	0	0	0
710	5	100	60	80	10	0	0
711	0	90	50	60	0	0	0
711	1	90	50	70	0	0	0
711	2	90	50	80	0	0	0
711	3	90	50	80	10	0	0
711	4	90	50	80	20	0	0
711	5	90	50	80	30	0	0
712	0	80	50	50	20	0	0
712	1	80	50	50	30	0	0
712	2	80	50	50	40	0	0
712	3	80	50	50	50	0	0
712	4	80	50	50	60	0	0
712	5	80	50	50	70	0	0
713	0	120	70	30	30	0	0
713	1	120	70	30	40	0	0
713	2	120	70	30	50	0	0
713	3	120	70	30	60	0	0
713	4	120	70	30	70	0	0
713	5	120	70	30	80	0	0
714	0	110	70	30	40	0	0
714	1	110	70	30	50	0	0
714	2	110	70	30	60	0	0
714	3	110	70	30	70	0	0
714	4	110	70	30	80	0	0
714	5	110	70	30	90	0	0
715	0	140	70	30	60	0	0
715	1	140	70	30	70	0	0
715	2	140	70	30	80	0	0
715	3	140	70	30	90	0	0
715	4	140	70	30	100	0	0
715	5	140	70	30	100	10	0
716	0	100	100	40	40	20	0
716	1	100	100	40	40	30	0
716	2	100	100	40	40	40	0
716	3	100	100	40	40	50	0
716	4	100	100	40	40	60	0
716	5	100	100	40	40	70	0
717	0	100	120	40	50	40	0
717	1	100	120	40	50	50	0
717	2	100	120	40	50	60	0
717	3	100	120	40	50	70	0
717	4	100	120	40	50	80	0
717	5	100	120	40	50	90	0
718	0	140	110	40	40	20	0
718	1	140	110	40	40	30	0
718	2	140	110	40	40	40	0
718	3	140	110	40	40	50	0
718	4	140	110	40	40	50	10
718	5	140	110	40	40	50	20
719	0	200	70	20	20	40	0
719	1	200	70	20	20	50	0
719	2	200	70	20	20	50	10
719	3	200	70	20	20	50	20
719	4	200	70	20	20	50	30
719	5	200	70	20	20	50	40
720	0	80	50	50	20	0	0
720	1	80	50	50	30	0	0
720	2	80	50	50	40	0	0
720	3	80	50	50	50	0	0
720	4	80	50	50	60	0	0
720	5	80	50	50	70	0	0
721	0	120	70	30	30	0	0
721	1	120	70	30	40	0	0
721	2	120	70	30	50	0	0
721	3	120	70	30	60	0	0
721	4	120	70	30	70	0	0
721	5	120	70	30	80	0	0
722	0	110	70	30	40	0	0
722	1	110	70	30	50	0	0
722	2	110	70	30	60	0	0
722	3	110	70	30	70	0	0
722	4	110	70	30	80	0	0
722	5	110	70	30	90	0	0
723	0	110	60	80	50	0	0
723	1	110	60	80	60	0	0
723	2	110	60	80	70	0	0
723	3	110	60	80	80	0	0
723	4	110	60	80	80	10	0
723	5	110	60	80	80	20	0
724	0	110	100	40	40	10	0
724	1	110	100	40	40	20	0
724	2	110	100	40	40	30	0
724	3	110	100	40	40	40	0
724	4	110	100	40	40	50	0
724	5	110	100	40	40	60	0
725	0	140	110	40	40	20	0
725	1	140	110	40	40	30	0
725	2	140	110	40	40	40	0
725	3	140	110	40	40	50	0
725	4	140	110	40	40	50	10
725	5	140	110	40	40	50	20
726	0	120	70	30	30	0	0
726	1	120	70	30	40	0	0
726	2	120	70	30	50	0	0
726	3	120	70	30	60	0	0
726	4	120	70	30	70	0	0
726	5	120	70	30	80	0	0
727	0	100	70	30	50	0	0
727	1	100	70	30	60	0	0
727	2	100	70	30	70	0	0
727	3	100	70	30	80	0	0
727	4	100	70	30	90	0	0
727	5	100	70	30	100	0	0
728	0	180	20	30	70	0	0
728	1	180	20	30	80	0	0
728	2	180	20	30	90	0	0
728	3	180	20	30	100	0	0
728	4	180	20	30	100	10	0
728	5	180	20	30	100	20	0
729	0	90	100	40	40	30	0
729	1	90	100	40	40	40	0
729	2	90	100	40	40	50	0
729	3	90	100	40	40	60	0
729	4	90	100	40	40	70	0
729	5	90	100	40	40	80	0
730	0	140	100	30	30	50	0
730	1	140	100	30	30	60	0
730	2	140	100	30	30	70	0
730	3	140	100	30	30	70	10
730	4	140	100	30	30	70	20
730	5	140	100	30	30	70	30
731	0	90	50	50	10	0	0
731	1	90	50	50	20	0	0
731	2	90	50	50	30	0	0
731	3	90	50	50	40	0	0
731	4	90	50	50	50	0	0
731	5	90	50	50	60	0	0
732	0	110	70	30	40	0	0
732	1	110	70	30	50	0	0
732	2	110	70	30	60	0	0
732	3	110	70	30	70	0	0
732	4	110	70	30	80	0	0
732	5	110	70	30	90	0	0
733	0	90	70	30	60	0	0
733	1	90	70	30	70	0	0
733	2	90	70	30	80	0	0
733	3	90	70	30	90	0	0
733	4	90	70	30	100	0	0
733	5	90	70	30	110	0	0
734	0	130	70	30	70	0	0
734	1	130	70	30	80	0	0
734	2	130	70	30	90	0	0
734	3	130	70	30	100	0	0
734	4	130	70	30	100	10	0
734	5	130	70	30	100	20	0
735	0	120	70	30	80	0	0
735	1	120	70	30	90	0	0
735	2	120	70	30	100	0	0
735	3	120	70	30	100	10	0
735	4	120	70	30	100	20	0
735	5	120	70	30	100	30	0
736	0	120	70	30	100	30	0
736	1	120	70	30	100	40	0
736	2	120	70	30	100	50	0
736	3	120	70	30	100	60	0
736	4	120	70	30	100	70	0
736	5	120	70	30	100	80	0
737	0	100	70	30	50	0	0
737	1	100	70	30	60	0	0
737	2	100	70	30	70	0	0
737	3	100	70	30	80	0	0
737	4	100	70	30	90	0	0
737	5	100	70	30	100	0	0
738	0	140	70	30	60	0	0
738	1	140	70	30	70	0	0
738	2	140	70	30	80	0	0
738	3	140	70	30	90	0	0
738	4	140	70	30	100	0	0
738	5	140	70	30	100	10	0
739	0	110	50	50	90	0	0
739	1	110	50	50	90	10	0
739	2	110	50	50	90	20	0
739	3	110	50	50	90	30	0
739	4	110	50	50	90	40	0
739	5	110	50	50	90	50	0
740	0	140	110	40	40	20	0
740	1	140	110	40	40	30	0
740	2	140	110	40	40	40	0
740	3	140	110	40	40	50	0
740	4	140	110	40	40	50	10
740	5	140	110	40	40	50	20
741	0	90	50	60	120	30	0
741	1	90	50	60	120	40	0
741	2	90	50	60	120	50	0
741	3	90	50	60	120	60	0
741	4	90	50	60	120	60	10
741	5	90	50	60	120	60	20
742	0	120	70	30	30	0	0
742	1	120	70	30	40	0	0
742	2	120	70	30	50	0	0
742	3	120	70	30	60	0	0
742	4	120	70	30	70	0	0
742	5	120	70	30	80	0	0
743	0	110	100	40	40	10	0
743	1	110	100	40	40	20	0
743	2	110	100	40	40	30	0
743	3	110	100	40	40	40	0
743	4	110	100	40	40	50	0
743	5	110	100	40	40	60	0
744	0	110	120	40	50	30	0
744	1	110	120	40	50	40	0
744	2	110	120	40	50	50	0
744	3	110	120	40	50	60	0
744	4	110	120	40	50	70	0
744	5	110	120	40	50	80	0
745	0	110	70	30	40	0	0
745	1	110	70	30	50	0	0
745	2	110	70	30	60	0	0
745	3	110	70	30	70	0	0
745	4	110	70	30	80	0	0
745	5	110	70	30	90	0	0
746	0	70	70	30	80	0	0
746	1	70	70	30	90	0	0
746	2	70	70	30	100	0	0
746	3	70	70	30	110	0	0
746	4	70	70	30	120	0	0
746	5	70	70	30	130	0	0
747	0	120	110	40	40	40	0
747	1	120	110	40	40	50	0
747	2	120	110	40	40	60	0
747	3	120	110	40	40	70	0
747	4	120	110	40	40	70	10
747	5	120	110	40	40	70	20
748	0	60	50	80	60	0	0
748	1	60	50	80	70	0	0
748	2	60	50	80	80	0	0
748	3	60	50	80	90	0	0
748	4	60	50	80	100	0	0
748	5	60	50	80	110	0	0
749	0	110	20	20	150	50	0
749	1	110	20	20	150	60	0
749	2	110	20	20	150	70	0
749	3	110	20	20	150	80	0
749	4	110	20	20	150	90	0
749	5	110	20	20	150	100	0
750	0	110	20	20	140	60	0
750	1	110	20	20	140	70	0
750	2	110	20	20	140	80	0
750	3	110	20	20	140	90	0
750	4	110	20	20	140	100	0
750	5	110	20	20	140	110	0
751	0	150	110	40	0	0	0
751	1	150	110	40	10	0	0
751	2	150	110	40	20	0	0
751	3	150	110	40	30	0	0
751	4	150	110	40	40	0	0
751	5	150	110	40	40	10	0
752	0	140	110	50	0	0	0
752	1	140	110	50	10	0	0
752	2	140	110	50	20	0	0
752	3	140	110	50	30	0	0
752	4	140	110	50	30	10	0
752	5	140	110	50	30	20	0
753	0	110	60	80	80	20	0
753	1	110	60	80	80	30	0
753	2	110	60	80	80	40	0
753	3	110	60	80	80	50	0
753	4	110	60	80	80	50	10
753	5	110	60	80	80	50	20
754	0	90	60	60	100	40	0
754	1	90	60	60	100	50	0
754	2	90	60	60	100	60	0
754	3	90	60	60	100	60	10
754	4	90	60	60	100	60	20
754	5	90	60	60	100	60	30
755	0	130	30	60	90	30	10
755	1	130	30	60	90	30	20
755	2	130	30	60	90	30	30
755	3	130	30	60	90	30	40
755	4	130	30	60	90	30	50
755	5	130	30	60	90	30	60
173	0	90	50	60	0	0	0
173	1	90	50	70	0	0	0
173	2	90	50	80	0	0	0
173	3	90	50	80	10	0	0
173	4	90	50	80	20	0	0
173	5	90	50	80	30	0	0
174	0	70	70	30	30	0	0
174	1	70	70	30	40	0	0
174	2	70	70	30	50	0	0
174	3	70	70	30	60	0	0
174	4	70	70	30	70	0	0
174	5	70	70	30	80	0	0
175	0	50	70	30	50	0	0
175	1	50	70	30	60	0	0
175	2	50	70	30	70	0	0
175	3	50	70	30	80	0	0
175	4	50	70	30	90	0	0
175	5	50	70	30	100	0	0
176	0	70	50	80	50	0	0
176	1	70	50	80	60	0	0
176	2	70	50	80	70	0	0
176	3	70	50	80	80	0	0
176	4	70	50	80	90	0	0
176	5	70	50	80	100	0	0
177	0	50	50	80	70	0	0
177	1	50	50	80	80	0	0
177	2	50	50	80	90	0	0
177	3	50	50	80	100	0	0
177	4	50	50	80	110	0	0
177	5	50	50	80	120	0	0
178	0	100	50	50	80	20	0
178	1	100	50	50	80	30	0
178	2	100	50	50	80	40	0
178	3	100	50	50	80	50	0
178	4	100	50	50	80	60	0
178	5	100	50	50	80	70	0
179	0	80	50	50	80	40	0
179	1	80	50	50	80	50	0
179	2	80	50	50	80	60	0
179	3	80	50	50	80	70	0
179	4	80	50	50	80	80	0
179	5	80	50	50	80	90	0
180	0	50	60	20	150	70	0
180	1	50	60	20	150	80	0
180	2	50	60	20	150	90	0
180	3	50	60	20	150	90	10
180	4	50	60	20	150	90	20
180	5	50	60	20	150	90	30
181	0	110	120	40	50	80	0
181	1	110	120	40	50	80	0
181	2	110	120	40	50	80	0
181	3	110	120	40	50	80	0
181	4	110	120	40	50	80	0
181	5	110	120	40	50	80	0
182	0	90	120	40	50	100	0
182	1	90	120	40	50	100	0
182	2	90	120	40	50	100	0
182	3	90	120	40	50	100	0
182	4	90	120	40	50	100	0
182	5	90	120	40	50	100	0
183	0	60	50	80	60	0	0
183	1	60	50	80	70	0	0
183	2	60	50	80	80	0	0
183	3	60	50	80	90	0	0
183	4	60	50	80	100	0	0
183	5	60	50	80	110	0	0
184	0	100	50	80	70	0	0
184	1	100	50	80	80	0	0
184	2	100	50	80	90	0	0
184	3	100	50	80	100	0	0
184	4	100	50	80	100	10	0
184	5	100	50	80	100	20	0
185	0	90	50	50	80	30	0
185	1	90	50	50	80	40	0
185	2	90	50	50	80	50	0
185	3	90	50	50	80	60	0
185	4	90	50	50	80	70	0
185	5	90	50	50	80	80	0
186	0	90	60	60	100	40	0
186	1	90	60	60	100	50	0
186	2	90	60	60	100	60	0
186	3	90	60	60	100	60	10
186	4	90	60	60	100	60	20
186	5	90	60	60	100	60	30
187	0	40	50	80	80	0	0
187	1	40	50	80	90	0	0
187	2	40	50	80	100	0	0
187	3	40	50	80	110	0	0
187	4	40	50	80	120	0	0
187	5	40	50	80	130	0	0
188	0	80	50	50	80	40	0
188	1	80	50	50	80	50	0
188	2	80	50	50	80	60	0
188	3	80	50	50	80	70	0
188	4	80	50	50	80	80	0
188	5	80	50	50	80	90	0
189	0	90	120	40	50	50	0
189	1	90	120	40	50	60	0
189	2	90	120	40	50	70	0
189	3	90	120	40	50	80	0
189	4	90	120	40	50	90	0
189	5	90	120	40	50	100	0
190	0	70	70	30	30	0	0
190	1	70	70	30	40	0	0
190	2	70	70	30	50	0	0
190	3	70	70	30	60	0	0
190	4	70	70	30	70	0	0
190	5	70	70	30	80	0	0
191	0	80	50	80	40	0	0
191	1	80	50	80	50	0	0
191	2	80	50	80	60	0	0
191	3	80	50	80	70	0	0
191	4	80	50	80	80	0	0
191	5	80	50	80	90	0	0
192	0	70	50	80	50	0	0
192	1	70	50	80	60	0	0
192	2	70	50	80	70	0	0
192	3	70	50	80	80	0	0
192	4	70	50	80	90	0	0
192	5	70	50	80	100	0	0
193	0	100	50	80	70	0	0
193	1	100	50	80	80	0	0
193	2	100	50	80	90	0	0
193	3	100	50	80	100	0	0
193	4	100	50	80	100	10	0
193	5	100	50	80	100	20	0
194	0	100	50	50	80	20	0
194	1	100	50	50	80	30	0
194	2	100	50	50	80	40	0
194	3	100	50	50	80	50	0
194	4	100	50	50	80	60	0
194	5	100	50	50	80	70	0
195	0	100	60	60	100	30	0
195	1	100	60	60	100	40	0
195	2	100	60	60	100	50	0
195	3	100	60	60	100	50	10
195	4	100	60	60	100	50	20
195	5	100	60	60	100	50	30
196	0	60	50	80	60	0	0
196	1	60	50	80	70	0	0
196	2	60	50	80	80	0	0
196	3	60	50	80	90	0	0
196	4	60	50	80	100	0	0
196	5	60	50	80	110	0	0
197	0	100	50	50	80	20	0
197	1	100	50	50	80	30	0
197	2	100	50	50	80	40	0
197	3	100	50	50	80	50	0
197	4	100	50	50	80	60	0
197	5	100	50	50	80	70	0
198	0	80	50	50	80	40	0
198	1	80	50	50	80	50	0
198	2	80	50	50	80	60	0
198	3	80	50	50	80	70	0
198	4	80	50	50	80	80	0
198	5	80	50	50	80	90	0
199	0	120	30	60	80	40	20
199	1	120	30	60	80	40	30
199	2	120	30	60	80	40	40
199	3	120	30	60	80	40	50
199	4	120	30	60	80	40	60
199	5	120	30	60	80	40	70
200	0	60	50	80	60	0	0
200	1	60	50	80	70	0	0
200	2	60	50	80	80	0	0
200	3	60	50	80	90	0	0
200	4	60	50	80	100	0	0
200	5	60	50	80	110	0	0
201	0	110	50	50	80	10	0
201	1	110	50	50	80	20	0
201	2	110	50	50	80	30	0
201	3	110	50	50	80	40	0
201	4	110	50	50	80	50	0
201	5	110	50	50	80	60	0
202	0	100	50	50	80	20	0
202	1	100	50	50	80	30	0
202	2	100	50	50	80	40	0
202	3	100	50	50	80	50	0
202	4	100	50	50	80	60	0
202	5	100	50	50	80	70	0
203	0	90	60	60	100	40	0
203	1	90	60	60	100	50	0
203	2	90	60	60	100	60	0
203	3	90	60	60	100	60	10
203	4	90	60	60	100	60	20
203	5	90	60	60	100	60	30
204	0	70	50	80	50	0	0
204	1	70	50	80	60	0	0
204	2	70	50	80	70	0	0
204	3	70	50	80	80	0	0
204	4	70	50	80	90	0	0
204	5	70	50	80	100	0	0
205	0	60	50	80	60	0	0
205	1	60	50	80	70	0	0
205	2	60	50	80	80	0	0
205	3	60	50	80	90	0	0
205	4	60	50	80	100	0	0
205	5	60	50	80	110	0	0
206	0	100	50	50	80	20	0
206	1	100	50	50	80	30	0
206	2	100	50	50	80	40	0
206	3	100	50	50	80	50	0
206	4	100	50	50	80	60	0
206	5	100	50	50	80	70	0
207	0	90	50	50	80	30	0
207	1	90	50	50	80	40	0
207	2	90	50	50	80	50	0
207	3	90	50	50	80	60	0
207	4	90	50	50	80	70	0
207	5	90	50	50	80	80	0
208	0	80	50	60	120	40	0
208	1	80	50	60	120	50	0
208	2	80	50	60	120	50	10
208	3	80	50	60	120	50	20
208	4	80	50	60	120	50	30
208	5	80	50	60	120	50	40
209	0	60	70	30	40	0	0
209	1	60	70	30	50	0	0
209	2	60	70	30	60	0	0
209	3	60	70	30	70	0	0
209	4	60	70	30	80	0	0
209	5	60	70	30	90	0	0
210	0	60	50	80	60	0	0
210	1	60	50	80	70	0	0
210	2	60	50	80	80	0	0
210	3	60	50	80	90	0	0
210	4	60	50	80	100	0	0
210	5	60	50	80	110	0	0
211	0	40	50	80	80	0	0
211	1	40	50	80	90	0	0
211	2	40	50	80	100	0	0
211	3	40	50	80	110	0	0
211	4	40	50	80	120	0	0
211	5	40	50	80	130	0	0
212	0	90	50	50	80	30	0
212	1	90	50	50	80	40	0
212	2	90	50	50	80	50	0
212	3	90	50	50	80	60	0
212	4	90	50	50	80	70	0
212	5	90	50	50	80	80	0
213	0	80	50	50	80	40	0
213	1	80	50	50	80	50	0
213	2	80	50	50	80	60	0
213	3	80	50	50	80	70	0
213	4	80	50	50	80	80	0
213	5	80	50	50	80	90	0
214	0	90	120	40	50	50	0
214	1	90	120	40	50	60	0
214	2	90	120	40	50	70	0
214	3	90	120	40	50	80	0
214	4	90	120	40	50	90	0
214	5	90	120	40	50	100	0
215	0	70	50	80	50	0	0
215	1	70	50	80	60	0	0
215	2	70	50	80	70	0	0
215	3	70	50	80	80	0	0
215	4	70	50	80	90	0	0
215	5	70	50	80	100	0	0
216	0	50	50	80	70	0	0
216	1	50	50	80	80	0	0
216	2	50	50	80	90	0	0
216	3	50	50	80	100	0	0
216	4	50	50	80	110	0	0
216	5	50	50	80	120	0	0
217	0	100	50	50	80	20	0
217	1	100	50	50	80	30	0
217	2	100	50	50	80	40	0
217	3	100	50	50	80	50	0
217	4	100	50	50	80	60	0
217	5	100	50	50	80	70	0
218	0	90	50	50	80	30	0
218	1	90	50	50	80	40	0
218	2	90	50	50	80	50	0
218	3	90	50	50	80	60	0
218	4	90	50	50	80	70	0
218	5	90	50	50	80	80	0
219	0	80	50	60	120	40	0
219	1	80	50	60	120	50	0
219	2	80	50	60	120	50	10
219	3	80	50	60	120	50	20
219	4	80	50	60	120	50	30
219	5	80	50	60	120	50	40
220	0	90	60	50	0	0	0
220	1	90	60	60	0	0	0
220	2	90	60	70	0	0	0
220	3	90	60	80	0	0	0
220	4	90	60	80	10	0	0
220	5	90	60	80	20	0	0
221	0	80	50	70	0	0	0
221	1	80	50	80	0	0	0
221	2	80	50	80	10	0	0
221	3	80	50	80	20	0	0
221	4	80	50	80	30	0	0
221	5	80	50	80	40	0	0
222	0	80	50	50	20	0	0
222	1	80	50	50	30	0	0
222	2	80	50	50	40	0	0
222	3	80	50	50	50	0	0
222	4	80	50	50	60	0	0
222	5	80	50	50	70	0	0
223	0	110	70	30	40	0	0
223	1	110	70	30	50	0	0
223	2	110	70	30	60	0	0
223	3	110	70	30	70	0	0
223	4	110	70	30	80	0	0
223	5	110	70	30	90	0	0
224	0	100	70	30	50	0	0
224	1	100	70	30	60	0	0
224	2	100	70	30	70	0	0
224	3	100	70	30	80	0	0
224	4	100	70	30	90	0	0
224	5	100	70	30	100	0	0
225	0	130	70	30	70	0	0
225	1	130	70	30	80	0	0
225	2	130	70	30	90	0	0
225	3	130	70	30	100	0	0
225	4	130	70	30	100	10	0
225	5	130	70	30	100	20	0
226	0	100	100	40	40	20	0
226	1	100	100	40	40	30	0
226	2	100	100	40	40	40	0
226	3	100	100	40	40	50	0
226	4	100	100	40	40	60	0
226	5	100	100	40	40	70	0
227	0	90	120	40	50	50	0
227	1	90	120	40	50	60	0
227	2	90	120	40	50	70	0
227	3	90	120	40	50	80	0
227	4	90	120	40	50	90	0
227	5	90	120	40	50	100	0
228	0	120	70	30	30	0	0
228	1	120	70	30	40	0	0
228	2	120	70	30	50	0	0
228	3	120	70	30	60	0	0
228	4	120	70	30	70	0	0
228	5	120	70	30	80	0	0
229	0	110	70	30	40	0	0
229	1	110	70	30	50	0	0
229	2	110	70	30	60	0	0
229	3	110	70	30	70	0	0
229	4	110	70	30	80	0	0
229	5	110	70	30	90	0	0
230	0	140	70	30	60	0	0
230	1	140	70	30	70	0	0
230	2	140	70	30	80	0	0
230	3	140	70	30	90	0	0
230	4	140	70	30	100	0	0
230	5	140	70	30	100	10	0
231	0	100	100	40	40	20	0
231	1	100	100	40	40	30	0
231	2	100	100	40	40	40	0
231	3	100	100	40	40	50	0
231	4	100	100	40	40	60	0
231	5	100	100	40	40	70	0
232	0	100	120	40	50	40	0
232	1	100	120	40	50	50	0
232	2	100	120	40	50	60	0
232	3	100	120	40	50	70	0
232	4	100	120	40	50	80	0
232	5	100	120	40	50	90	0
233	0	70	50	50	30	0	0
233	1	70	50	50	40	0	0
233	2	70	50	50	50	0	0
233	3	70	50	50	60	0	0
233	4	70	50	50	70	0	0
233	5	70	50	50	80	0	0
234	0	100	70	30	50	0	0
234	1	100	70	30	60	0	0
234	2	100	70	30	70	0	0
234	3	100	70	30	80	0	0
234	4	100	70	30	90	0	0
234	5	100	70	30	100	0	0
235	0	80	70	30	70	0	0
235	1	80	70	30	80	0	0
235	2	80	70	30	90	0	0
235	3	80	70	30	100	0	0
235	4	80	70	30	110	0	0
235	5	80	70	30	120	0	0
236	0	100	100	40	40	20	0
236	1	100	100	40	40	30	0
236	2	100	100	40	40	40	0
236	3	100	100	40	40	50	0
236	4	100	100	40	40	60	0
236	5	100	100	40	40	70	0
237	0	90	100	40	40	30	0
237	1	90	100	40	40	40	0
237	2	90	100	40	40	50	0
237	3	90	100	40	40	60	0
237	4	90	100	40	40	70	0
237	5	90	100	40	40	80	0
238	0	90	120	40	50	50	0
238	1	90	120	40	50	60	0
238	2	90	120	40	50	70	0
238	3	90	120	40	50	80	0
238	4	90	120	40	50	90	0
238	5	90	120	40	50	100	0
239	0	110	70	30	40	0	0
239	1	110	70	30	50	0	0
239	2	110	70	30	60	0	0
239	3	110	70	30	70	0	0
239	4	110	70	30	80	0	0
239	5	110	70	30	90	0	0
240	0	100	70	30	50	0	0
240	1	100	70	30	60	0	0
240	2	100	70	30	70	0	0
240	3	100	70	30	80	0	0
240	4	100	70	30	90	0	0
240	5	100	70	30	100	0	0
241	0	140	70	30	60	0	0
241	1	140	70	30	70	0	0
241	2	140	70	30	80	0	0
241	3	140	70	30	90	0	0
241	4	140	70	30	100	0	0
241	5	140	70	30	100	10	0
242	0	100	100	40	40	20	0
242	1	100	100	40	40	30	0
242	2	100	100	40	40	40	0
242	3	100	100	40	40	50	0
242	4	100	100	40	40	60	0
242	5	100	100	40	40	70	0
243	0	100	120	40	50	40	0
243	1	100	120	40	50	50	0
243	2	100	120	40	50	60	0
243	3	100	120	40	50	70	0
243	4	100	120	40	50	80	0
243	5	100	120	40	50	90	0
244	0	80	50	50	20	0	0
244	1	80	50	50	30	0	0
244	2	80	50	50	40	0	0
244	3	80	50	50	50	0	0
244	4	80	50	50	60	0	0
244	5	80	50	50	70	0	0
245	0	120	70	30	30	0	0
245	1	120	70	30	40	0	0
245	2	120	70	30	50	0	0
245	3	120	70	30	60	0	0
245	4	120	70	30	70	0	0
245	5	120	70	30	80	0	0
246	0	110	70	30	40	0	0
246	1	110	70	30	50	0	0
246	2	110	70	30	60	0	0
246	3	110	70	30	70	0	0
246	4	110	70	30	80	0	0
246	5	110	70	30	90	0	0
247	0	140	70	30	60	0	0
247	1	140	70	30	70	0	0
247	2	140	70	30	80	0	0
247	3	140	70	30	90	0	0
247	4	140	70	30	100	0	0
247	5	140	70	30	100	10	0
248	0	110	100	40	40	10	0
248	1	110	100	40	40	20	0
248	2	110	100	40	40	30	0
248	3	110	100	40	40	40	0
248	4	110	100	40	40	50	0
248	5	110	100	40	40	60	0
249	0	100	120	40	50	40	0
249	1	100	120	40	50	50	0
249	2	100	120	40	50	60	0
249	3	100	120	40	50	70	0
249	4	100	120	40	50	80	0
249	5	100	120	40	50	90	0
250	0	120	70	30	30	0	0
250	1	120	70	30	40	0	0
250	2	120	70	30	50	0	0
250	3	120	70	30	60	0	0
250	4	120	70	30	70	0	0
250	5	120	70	30	80	0	0
251	0	100	70	30	50	0	0
251	1	100	70	30	60	0	0
251	2	100	70	30	70	0	0
251	3	100	70	30	80	0	0
251	4	100	70	30	90	0	0
251	5	100	70	30	100	0	0
252	0	100	100	40	40	20	0
252	1	100	100	40	40	30	0
252	2	100	100	40	40	40	0
252	3	100	100	40	40	50	0
252	4	100	100	40	40	60	0
252	5	100	100	40	40	70	0
253	0	100	120	40	50	40	0
253	1	100	120	40	50	50	0
253	2	100	120	40	50	60	0
253	3	100	120	40	50	70	0
253	4	100	120	40	50	80	0
253	5	100	120	40	50	90	0
254	0	110	70	30	40	0	0
254	1	110	70	30	50	0	0
254	2	110	70	30	60	0	0
254	3	110	70	30	70	0	0
254	4	110	70	30	80	0	0
254	5	110	70	30	90	0	0
255	0	70	70	30	80	0	0
255	1	70	70	30	90	0	0
255	2	70	70	30	100	0	0
255	3	70	70	30	110	0	0
255	4	70	70	30	120	0	0
255	5	70	70	30	130	0	0
256	0	150	100	30	30	40	0
256	1	150	100	30	30	50	0
256	2	150	100	30	30	60	0
256	3	150	100	30	30	60	10
256	4	150	100	30	30	60	20
256	5	150	100	30	30	60	30
257	0	40	50	80	80	0	0
257	1	40	50	80	90	0	0
257	2	40	50	80	100	0	0
257	3	40	50	80	110	0	0
257	4	40	50	80	120	0	0
257	5	40	50	80	130	0	0
258	0	110	20	20	150	50	0
258	1	110	20	20	150	60	0
258	2	110	20	20	150	70	0
258	3	110	20	20	150	80	0
258	4	110	20	20	150	90	0
258	5	110	20	20	150	100	0
259	0	110	20	20	130	70	0
259	1	110	20	20	130	80	0
259	2	110	20	20	130	90	0
259	3	110	20	20	130	100	0
259	4	110	20	20	130	110	0
259	5	110	20	20	130	120	0
260	0	150	110	40	0	0	0
260	1	150	110	40	10	0	0
260	2	150	110	40	20	0	0
260	3	150	110	40	30	0	0
260	4	150	110	40	40	0	0
260	5	150	110	40	40	10	0
261	0	140	110	50	0	0	0
261	1	140	110	50	10	0	0
261	2	140	110	50	20	0	0
261	3	140	110	50	30	0	0
261	4	140	110	50	30	10	0
261	5	140	110	50	30	20	0
262	0	100	60	60	100	30	0
262	1	100	60	60	100	40	0
262	2	100	60	60	100	50	0
262	3	100	60	60	100	50	10
262	4	100	60	60	100	50	20
262	5	100	60	60	100	50	30
263	0	70	50	60	120	50	0
263	1	70	50	60	120	60	0
263	2	70	50	60	120	60	10
263	3	70	50	60	120	60	20
263	4	70	50	60	120	60	30
263	5	70	50	60	120	60	40
264	0	130	30	60	80	40	10
264	1	130	30	60	80	40	20
264	2	130	30	60	80	40	30
264	3	130	30	60	80	40	40
264	4	130	30	60	80	40	50
264	5	130	30	60	80	40	60
\.


--
-- Data for Name: weapons_slots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY weapons_slots (wep_id, slot_level) FROM stdin;
\.


--
-- Name: elements_pkey; Type: CONSTRAINT; Schema: public; Owner: trent
--

ALTER TABLE ONLY elements
    ADD CONSTRAINT elements_pkey PRIMARY KEY (ele_id);


--
-- Name: status_effects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY status_effects
    ADD CONSTRAINT status_effects_pkey PRIMARY KEY (status_id);


--
-- Name: weapon_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY weapon_types
    ADD CONSTRAINT weapon_types_pkey PRIMARY KEY (wep_type_id);


--
-- Name: weapons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY weapons
    ADD CONSTRAINT weapons_pkey PRIMARY KEY (wep_id);


--
-- Name: weapons_sharpness_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY weapons_sharpness
    ADD CONSTRAINT weapons_sharpness_pkey PRIMARY KEY (wep_id, handicraft_level);


--
-- Name: weapons_slots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY weapons_slots
    ADD CONSTRAINT weapons_slots_pkey PRIMARY KEY (wep_id);


--
-- Name: weapons_element_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY weapons
    ADD CONSTRAINT weapons_element_type_fkey FOREIGN KEY (element_type) REFERENCES elements(ele_id);


--
-- Name: weapons_sharpness_wep_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY weapons_sharpness
    ADD CONSTRAINT weapons_sharpness_wep_id_fkey FOREIGN KEY (wep_id) REFERENCES weapons(wep_id);


--
-- Name: weapons_slots_wep_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY weapons_slots
    ADD CONSTRAINT weapons_slots_wep_id_fkey FOREIGN KEY (wep_id) REFERENCES weapons(wep_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

