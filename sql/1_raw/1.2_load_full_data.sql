INSERT INTO UMME_sites_messenia(site_no, site,
  location_desc,
  physical_desc)
  VALUES
(1, 'Chóra: Áno Englianós (Palace of Nestor)',
 '3 km SW along main highway (Pylos)',
 'Low hill on long high ridge oriented NE–SW'
),
(2, 'Písáki: Chórou and Mavroudhiá',
 '500 m N–NE of Chóra; 3 km S of main site',
 'Low hill'
),
(3, 'Kórifasion: Pórtes',
 '700 m W–SW; bisected by main highway',
 'Low mound'
),
(4, 'Kórifasion: Belferbéri',
 '1 km S',
 'Low hill forming N extension of long ridge'
),
(5, 'Kórifasion: Charatsári',
 '800 m S–SW',
 'Very low mound'
),
(6, 'Petrochóri: Profitis Ilias',
 '1½ km S; NW of Voïdhokilia Bay',
 'Flat top of low rocky headland'
),
(7, 'Petrochóri: Osmánaga',
 '1½ km S–SE; N section of lagoon bed',
 'Flat area'
),
(8, 'Petrochóri: Voïdhokiliá',
 '1¼ km S; S end of headland N of bay entrance',
 'Low promontory'
),
(9, 'Petrochóri: Paliókastro',
 '2 km S–SW',
 'Low narrow flat N end of headland'
),
(10, 'Petrochóri: Cave of Nestor',
 '2½ km S–SW',
 'Large cave in steep N face of acropolis'
);
 
SELECT * FROM UMME_sites_messenia;




INSERT INTO UMME_archaeological_data(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc) VALUES 
(1, 'Chóra: Áno Englianós (Palace of Nestor)',
 'AJA 1939, 1952ff.; AJA 1961, 237–38; 1969, 147–48; Blegen & Rawson 1966; Lang 1968',
 'HAB–CEM; palace ruins on acropolis; chamber and tholos tomb cemeteries around site',
 'EH? MH LHI–II–IIIA–IIIB G (medium)',
 '≥325 m NE–SW × 200 m; acropolis 170 × 90 m (min. 6.5 ha)'
),
(2, 'Písáki: Chórou and Mavroudhiá',
 'AJA 1961, 238–39; Blegen & Rawson 1966, 17–19',
 'CEM; probable tholos tombs; chamber tomb and small PG tholos',
 'EH? LHIIIB–IIIC PG (sparse)',
 NULL
),
(3, 'Kórifasion: Pórtes',
 'AJA 1939, 559; AJA 1961, 242',
 'HAB; heavy blocks under surface; stone, obsidian, flint artifacts',
 'MH? LHIIIA–IIIB C; H (medium)',
 '120 m E–W × 80 (1 ha)'
),
(4, 'Kórifasion: Belferbéri',
 'Praktika 1909, 289; Praktika 1960, 197; AJA 1939, 559; AJA 1961, 242',
 'HAB; probable graves to S and E',
 'LHIIIA?–IIIB (medium)',
 '200 m N–S × 150 (3 ha)'
);

INSERT INTO UMME_archaeological_data VALUES
(5, 'Kórifasion: Charatsári',
 'Praktika 1925–26, 140–41; AJA 1939, 557; AJA 1961, 242; Hesperia 1954, 158–62',
 'CEM; tholos tomb cut into level ground with steep dromos',
 'Late MH LHI',
 NULL
),
(6, 'Petrochóri: Profitis Ilias',
 'AJA 1961, 243–44',
 'HAB; possible EH cemetery; chert, obsidian, bone, house foundations?',
 'N?; EH; MH? (medium)',
 '100 m E–W × 60 (0.6 ha)'
),
(7, 'Petrochóri: Osmánaga',
 'AJA 1964, 232–33; AJA 1969, 149–50; Pritchett 1965, 6–11',
 'HAB; bone, roof tiles, foreign stones in drainage spoil banks',
 'EH; MH? LHIIIB PG (medium)',
 '≥1,750 m E–W × 600 m'
),
(8, 'Petrochóri: Voïdhokiliá',
 'Ergon 1956, 90–93; AJA 1961, 243',
 'CEM; tholos tomb',
 'LHIIIB',
 NULL
),
(9, 'Petrochóri: Paliókastro',
 'Ergon 1958, 148–50; AJA 1961, 243',
 'HAB–CEM; LH–C–H town; PG graves; H cemetery; R building',
 'LHIIIA–IIIB PG C; H; R',
 '200 m N–S × 70 (1.4 ha)'
),
(10, 'Petrochóri: Cave of Nestor',
 'AJA 1961, 243; AJA 1964, 32',
 'HAB occupation (at least in N sector)',
 'N; EH; MH LHIII C',
 NULL
);

INSERT INTO UMME_archaeological_data VALUES
(11, 'Chóra: Ágios Ioánnis',
 'Praktika 1954, 305–8; AJA 1969, 147',
 'CEM; 5 chamber tombs identified; 2 excavated; large R bath',
 'LHIIIB–IIIC? R',
 NULL
);
INSERT INTO UMME_archaeological_data VALUES
(12, 'Metaxáda: Kalóspana',
 'AJA 1969, 147',
 'HAB; CEM? Habitation on upper S and SE terraces; chance finds (stone tools, bronze fragments, beads, bones)',
 'MH? LHIII (earlier) LH? (medium)',
 '200 m NW–SE × 150 (3 ha)'
);

INSERT INTO UMME_archaeological_data VALUES
(13, 'Metamórfosis: Ayía Sotíra',
 'AJA 1969, 152',
 'HAB?',
 'LH? (very sparse)',
 'Unclear; large M site'
);

INSERT INTO UMME_archaeological_data VALUES
(14, 'Vlachopoúlo: Stanatá Ráchi',
 'AJA 1969, 152',
 'HAB on and near top',
 'MH LH (sparse)',
 '110 m NNW–SSE × 60 (0.6 ha)'
);

INSERT INTO UMME_archaeological_data VALUES
(15, 'Vlachopoúlo: Agriliá',
 'Praktika 1964, 89–92; Ergon 1964, 84–85; BCH 1965, 734; AJA 1969, 152',
 'HAB–CEM; habitation on top and S slopes; tholos ca. 700 m W of site looking toward Vlachopoúlo; second probable',
 'MH? LHIIIA–IIIB (sparse)',
 '120 m NNE–SSW × 80 (1 ha)'
);

INSERT INTO UMME_archaeological_data VALUES
(16, 'Chatzi: Barbéri',
 'Deltion 1967, 207; AJA 1969, 151–52',
 'HAB; top and SSE terraces',
 'MH? LHIIIB (medium)',
 '150 m NW–SE × 120 (1.8 ha)'
);

INSERT INTO UMME_archaeological_data VALUES
(17, 'Mesopótamos: Velovoúni',
 'AJA 1961, 245; Deltion 1967, 207',
 'HAB–CEM; top and upper S slope; foreign stones; tholos or burial mound ca. 700 m N–NW; S side of highway',
 'MH? LHIIIB (sparse)',
 '150 m E–W × 70 (0.9 ha)'
);

INSERT INTO UMME_archaeological_data VALUES
(18, 'Mesopótamos: Chília Choría',
 'Ergon 1966, 105; AJA 1961, 245',
 'HAB–CEM; burial mound on N side of highway dated R by Marinatos',
 'MH? LH?–IIIB R (medium)',
 '100 m N–S × 50 (0.5 ha)'
);

INSERT INTO UMME_archaeological_data VALUES
(19, 'Soulinári: Tourlíthia',
 'Ergon 1966, 107–10; Praktika 1966, 129–32; AJA 1969, 151',
 'CEM; small tholos; bronze razor and knife',
 'LHIIIB–IIIA',
 NULL
);

INSERT INTO UMME_archaeological_data VALUES
(20, 'Miliá: Ágios Ilías',
 'AJA 1961, 246',
 'CEM; multiple burials ca. 20 m diam. and 4.5 m high; frags. of pithoi and stone slabs',
 'MH?',
 NULL
);

INSERT INTO umme_sites_messenia VALUES
(11, 'Chóra: Ágios Ioánnis',
 'Contiguous to SW; just W of church of Ágios Ioánnis',
 'Low hill-top'
);

INSERT INTO umme_sites_messenia VALUES
(12, 'Metaxáda: Kalóspana',
 '1 km SW; 300 m W of ridge',
 'High spur extending from Englianós into SW'
);

INSERT INTO umme_sites_messenia VALUES
(13, 'Metamórfosis: Ayía Sotíra',
 '500 m N; chapel in area NW of road',
 'Uncertain / near chapel'
);

INSERT INTO umme_sites_messenia VALUES
(14, 'Vlachopoúlo: Stanatá Ráchi',
 '2 km N–NW; immed. E of road',
 'High hill'
);

INSERT INTO umme_sites_messenia VALUES
(15, 'Vlachopoúlo: Agriliá',
 '2½ km E–NE',
 'High hill'
);

INSERT INTO umme_sites_messenia VALUES
(16, 'Chatzi: Barbéri',
 '1 km W–NW; immed. W of road',
 'Low hill'
);

INSERT INTO umme_sites_messenia VALUES
(17, 'Mesopótamos: Velovoúni',
 'Contiguous to NW',
 'Low hill'
);

INSERT INTO umme_sites_messenia VALUES
(18, 'Mesopótamos: Chília Choría',
 '2 km W–NW; ca. 250 m N of highway; adjacent to modern village',
 'Flat terrain near highway'
);

INSERT INTO umme_sites_messenia VALUES
(19, 'Soulinári: Tourlíthia',
 '2½ km NW',
 'Small distinct mound'
);

INSERT INTO umme_sites_messenia VALUES
(20, 'Miliá: Ágios Ilías',
 '1 km NW; near road',
 'Large mound (partly artificial)'
);

INSERT INTO umme_sites_messenia (site_no, site, location_desc, physical_desc) VALUES
(21, 'Romirí: Ávisos', '1½ km NW', 'Medium spur'),
(22, 'Chandhrinoú: Kissós', '1 km E–NE', 'Artificial mound'),
(23, 'Chandhrinoú: Platánia', 'Within village beside spring', 'Very low mound (now almost effaced)'),
(24, 'Káto Kremmidhiá: Fourzóvrisi', '900 m E–SE', 'See category F'),
(25, 'Koukounára: Kataráchi (possibly the a-pu2 of the Pylos tablets)', '800 m NE', 'Low hill in deep gorge of Potami; foot of Potami tou Arapi'),
(26, 'Stenosía: Londaríti', '800 m SE; on S side of gorge', 'Dissected plateau country'),
(27, 'Chandhrinoú: Koubé', '1½ km W; 100 m NW of highway', 'Relatively flat area sloping to W'),
(28, 'Kinigoú: Avarínitsa', '3½ km N; ca. 200 m W of road', 'Medium spur; site of small, recently abandoned village'),
(29, 'Píla: Elítsa', '300 m S; across deep gully', 'Medium ridge'),
(30, 'Píla: Kokkinó-rachi', '800 m N; overlooking Arapi ravine to N', 'Low ridge'),
(31, 'Píla: Vígles', '1 km W–NW', 'E end of medium ridge');


INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(21, 'Romirí: Ávisos',
 'AJA 1964, 233–34',
 'HAB',
 'MH? LHIII (medium)',
 '80 m E–W × 50 (min.) (0.4 ha)'
),
(22, 'Chandhrinoú: Kissós',
 'Ergon 1966, 105–7; Praktika 1966, 121–28; AJA 1969, 151',
 'CEM. Multiple burials in slab-lined cists and pithoi; scanty and poor contents (bronze knife)',
 'LHIIIA–IIIB',
 NULL
),
(23, 'Chandhrinoú: Platánia',
 'AJA 1961, 245; Deltion 1964, 145; Deltion 1968, 156; AJA 1969, 151; Deltion 1969, 145',
 'HAB–CEM. Cache of 30 N celts found ca. 700 m NW at spot called Kotronakia; small tholos at spot called Yenitsari had LH pottery scattered around but none inside; small circular mound (within village?) containing bones said to have been destroyed',
 'N LHIIIB LH C',
 '80 m E–W × 50 (min.) (0.4 ha)'
),
(24, 'Káto Kremmidhiá: Fourzóvrisi',
 'JHS Arch Reports 1960–61, 11; AJA 1964, 233',
 'HAB? CEM. Habitation site prob. on one or more knolls surrounding springs; artificial mound (18 m diam.; 4 m high) ca. 400 m to W; another ca. 150 m S; C tombs?',
 'LH C (sparse)',
 'Unclear'
),
(25, 'Koukounára: Kataráchi (possibly the a-pu2 of the Pylos tablets)',
 'Praktika 1954, 311; Praktika 1960, 195–57; Praktika 1961, 174–76; Praktika 1963, 114–18; Ergon 1958, 150–52; Ergon 1959, 117–25; Ergon 1960, 145–46; Ergon 1961, 169–71; Ergon 1965, 81–85; AJA 1961, 244; AJA 1969, 150',
 'HAB–CEM. Apsidal megaron; 7 tholoi excavated in neighborhood; others known; tombs built LHI–IIB',
 'MH LHI–IIA–IIB G; H (sparse)',
 '120 m N–S × 70 (min.) (0.8 ha)'
),
(26, 'Stenosía: Londaríti',
 'Praktika 1961, 174–76; Praktika 1962, 90; Ergon 1961, 171; AJA 1969, 150 (see also #35)',
 'HAB–CEM. Large building with bathtubs, etc.; multiple burial mound (3.6 m diam.); 3 tholoi',
 'LHI–II–IIIA–IIIB–IIIC',
 NULL
),
(27, 'Chandhrinoú: Koubé',
 'AJA 1961, 245',
 'HAB–CEM. Low artificial burial mound ca. 40 m NW; higher one ca. 150 m SE (across highway)',
 'LHIIIB (sparse)',
 '130 m E–W × 80 (1 ha)'
),
(28, 'Kinigoú: Avarínitsa',
 'AJA 1964, 233; AJA 1969, 150–51',
 'HAB, CEM? Artificial mound ca. 500 m E of road',
 'LH R? (sparse)',
 '100 m NW–SE × 50 (0.5 ha)'
),
(29, 'Píla: Elítsa',
 'AJA 1969, 149',
 'HAB. Foreign stones',
 'LH (sparse)',
 '100 m E–W × 50 (0.5 ha)'
),
(30, 'Píla: Kokkinó-rachi',
 'AJA 1969, 149',
 'HAB',
 'MH? LH (sparse)',
 '80 m NW–SE × 40 (0.3 ha)'
),
(31, 'Píla: Vígles',
 'AJA 1969, 149',
 'HAB–CEM. Habitation on summit and W slope; multiple burial mound (MH?) ca. 120 m W–NW',
 'EH?; MH? LHIIIB (medium)',
 '200 m E–W × 125 (min.) (2.5 ha)'
);

INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(32, 'Yialová: Palióchori',
 '500 m NE; end of high ridge between two fertile valleys',
 'High ridge'
),
(33, 'Schinolákka: Kokkiná',
 'Contiguous to NE',
 'Low ridge'
),
(34, 'Pýlos: Vígla',
 '1½ km E–NE; between highway and Navarino Bay; ca. 700 m SW of road junction',
 'Low mound (partially fallen over cliff)'
),
(35, 'Pýlos: Ágios Nektários',
 '1¼ km S–SE; immed. S of sharp loop in Pylos–Methoni highway',
 'Low hill'
),
(36, 'Iklaina: Trágana',
 '1½ km W–NW; W end of low spur',
 'Low spur'
),
(37, 'Iklaina: Goúvnes',
 '2 km W–NW',
 'Eroded slope'
),
(38, 'Plátanos: Kritárhies',
 '500 m W–SW; S side of Plátanos–Korifasion road; second mound at Alózia ca. 1200 m W–SW',
 'Low hill'
),
(39, 'Plátanos: Lambropoúli',
 '1 km W',
 'Flank of low hill in ravine'
),
(40, 'Plátanos: Planígia',
 '1 km E; chapel at E end',
 'Low hill'
),
(41, 'Plátanos: Merzéni',
 '800 m SE',
 'Low mound on SW slope'
);

INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(32, 'Yialová: Palióchori',
 'AJA 1961, 242',
 'HAB, CEM? Two possible burial mounds 500 m E and on parallel ridge to N; habitation on summit and upper W slope',
 'LHIIIB (heavy)',
 '150 m N–S × 120 (min.); sparse pottery over additional 300 m (1.8 ha)'
),
(33, 'Schinolákka: Kokkiná',
 'AJA 1961, 244',
 'HAB. Pithoi, gems, bronze tweezers (prob. from cemetery) reported 200 m S',
 'MH? LHIIIB (medium)',
 '225 m N–S × 100 (1.3 ha)'
),
(34, 'Pýlos: Vígla',
 'AJA 1939, 559; AJA 1961, 244',
 'HAB–CEM. Two tholoi tombs just N of Midhén; 2 N celts found beside highway ca. halfway between Vígla and Pylos',
 'LHIIIB–LHIIIC (medium)',
 '50 × 50 m (0.3 ha)'
),
(35, 'Pýlos: Ágios Nektários',
 'AJA 1969, 154',
 'HAB. Possibly ancient wall',
 'LH H? (sparse)',
 '120 m WNW–SSE × 60 (0.7 ha)'
),
(36, 'Iklaina: Trágana',
 'Ergon 1954, 42; Praktika 1954, 308–11; AJA 1961, 241',
 'HAB. Foundations of substantial bldg. above ground stone pebble floors; fresco frags.; LHIIIA–B dumping',
 'MH LHIIIA–IIIB (heavy)',
 '200 m N–S × 150 (3 ha)'
),
(37, 'Iklaina: Goúvnes',
 'AJA 1961, 241',
 'HAB',
 'LH? (very sparse)',
 NULL
),
(38, 'Plátanos: Kritárhies',
 'AJA 1961, 242',
 'CEM. Probable MH multiple burial mounds; bones, pottery, frags. of pithoi',
 'MH?',
 NULL
),
(39, 'Plátanos: Lambropoúli',
 'AJA 1964, 232',
 'HAB',
 'LH (sparse)',
 '(small)'
),
(40, 'Plátanos: Planígia',
 'AJA 1961, 241',
 'HAB. CEM? Possible grave(s) of LHIIIA? on slope where slab exposed and local reports of antiquities',
 'MH? LHIIIA?',
 '200 m E–W × 70 (1.4 ha)'
),
(41, 'Plátanos: Merzéni',
 'AJA 1964, 232',
 'HAB',
 'MH? LHIIIA (heavy)',
 '150 m E–W × 120 (1.8 ha)'
);

INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(42, 'Papoulía: Áyios Ioánnis',
 '1 km W; on N side of Platanos–Papoulia road',
 'Artificial mound'
),
(43, 'Papoulía',
 'Within village and contiguous to W',
 'On low hill'
),
(44, 'Mirsinochóri: Roútsi',
 '1½ km NE',
 'Medium plateau'
),
(45, 'Mirsinochóri: Váles',
 '2 km W; on top of high ridge opposite (E of) palace (across deep ravine)',
 'High ridge'
),
(46, 'Chóra: Koukóyera',
 '2 km S',
 'Top of high ridge; immed. N of ravine'
),
(47, 'Gargaliáni: Órdhines',
 '4½ km NW; S side of ravine overlooking sea',
 'Medium hill'
),
(48, 'Válta: Áyios Pandeleímonas',
 'Contiguous to SW',
 'High hill with church at S edge; village behind'
),
(49, 'Válta: Kastráki',
 '500 m SW; immed. S of bridge on Válta–Gargaliáni road',
 'Medium ridge oriented NE–SW'
),
(50, 'Válta: Ayía Paraskeví',
 '2½ km NW',
 'Low spur with house on summit; chapel ca. 200 m E–NE'
),
(51, 'Filiatrá: Kastráki',
 '5½ km SE',
 'Medium spur; immed. W of bridge over Evangelistra River'
);

INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(42, 'Papoulía: Áyios Ioánnis',
 'Ergon 1954, 42–43, Fig. 55; AJA 1961, 240; Deltion 1967, 207',
 'CEM. Multiple burial mound; empty chamber in center of stone core; burials in pithoi facing outward around edge',
 'MH LHIIIC',
 NULL
),
(43, 'Papoulía',
 'Praktika 1954, 311–16; AJA 1961, 240; AJA 1964, 239',
 'CEM. HAB? 4 small, badly destroyed tholoi; traces of habitation site reported',
 'LHIII A (sparse)',
 NULL
),
(44, 'Mirsinochóri: Roútsi',
 'Ergon 1956, 91–96; AJA 1961, 240 and bibliography cited there',
 'CEM. 2 excavated tholoi; 1 relatively undisturbed; rich contents; 3 additional artificial mounds to N and W',
 'LHII–IIIA H',
 NULL
),
(45, 'Mirsinochóri: Váles',
 'Deltion 1964, 150–51; AJA 1969, 148–49',
 'HAB. Test excavation revealed only surface sherds',
 'LH',
 NULL
),
(46, 'Chóra: Koukóyera',
 'AJA 1961, 240',
 'CEM. Artificial mound ca. 25 m in diam. and 7 m high; probable tholos tomb',
 'LH',
 NULL
),
(47, 'Gargaliáni: Órdhines',
 'AJA 1961, 236',
 'HAB',
 'EH; MH? LHIII (sparse)',
 '200 m N–S × 100 (2 ha)'
),
(48, 'Válta: Áyios Pandeleímonas',
 'AJA 1969, 145',
 'HAB–CEM. LH tomb apparently destroyed ca. 200 m S; frag. of N celt',
 'N? LH C?; H (sparse)',
 '150 m NW–SE × 120 (1.8 ha)'
),
(49, 'Válta: Kastráki',
 'AJA 1969, 145–46',
 'HAB–CEM. Probably two knolls are MH multiple burial mounds; probable tholos immed. N of road; foreign stones',
 'MH LHIII (medium)',
 '120 m NE–SW × 70 (min.) (0.8 ha)'
),
(50, 'Válta: Ayía Paraskeví',
 'AJA 1969, 136',
 'HAB',
 'MH LHIII (sparse)',
 '120 m ENE–WSW × 100 (1.2 ha)'
),
(51, 'Filiatrá: Kastráki',
 'AJA 1969, 135–36',
 'HAB–CEM. Artificial mound ca. 150 m NE with rifled slab graves (probably H or R)',
 'LH H?; R? (sparse)',
 '150 m NW–SE × 120; top and NE slopes (1.8 ha)'
);

INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(52, 'Koroniéïka', 'Contiguous to E', 'Flat E edge of medium limestone spur'),
(53, 'Filiatrá: Áyios Christóforos', '3 km SE; on both sides of road at W edge of escarpment and just above chapel', 'Low knoll on S side of road; terraced slope to N'),
(54, 'Filiatrá: Áyios Ioánnis', '1½ km N–NW; cut thru by Filiatrá–Kyparissia highway at sharp loop', 'NW edge of low escarpment above coastal plain; chapel on E side of highway'),
(55, 'Filiatrá: Stómio', '3 km N–NW; at mouth of Filiatra River', 'Very low mound on cliff at S side of river overlooking sea'),
(56, 'Chalazóní: Palióchori', '400 m SW', 'Low hill'),
(57, 'Farakládha: Dhési', '1½ km E–SE; on N side of deep ravine', 'Level plateau'),
(58, 'Armenioí: Mána', '1 km S–SE', 'Sloping ground above spring'),
(59, 'Spiliá: Príndzipa', '800 m N–NW; just NE of sideroad from Kyparissia highway', 'Low rise'),
(60, 'Kyparissía: Kástro (Lyk. pa-ri-so of Pylos tablets?; Homeric Kyparisseis?; Arkadhiá)', 'E edge of town', 'Top and foot of high hill forming NW spur of Ayia Varvara Mts.');


INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(52, 'Koroniéïka',
 'AJA 1969, 135',
 'HAB',
 'LH (sparse)',
 '75 m N–S × 50 (0.4 ha)'
),
(53, 'Filiatrá: Áyios Christóforos',
 'AJA 1969, 135',
 'HAB',
 'MH LHIIIA?–IIIB (heavy)',
 '300 m N–S × 150 (4.5 ha)'
),
(54, 'Filiatrá: Áyios Ioánnis',
 'AJA 1969, 135',
 'HAB. Blade of obsidian',
 'MH? LH (medium)',
 '210 m NNW–SSE × 130 (2.7 ha)'
),
(55, 'Filiatrá: Stómio',
 'AJA 1969, 133–34',
 'HAB. Many foreign stones',
 'LH (sparse)',
 '125 m diam. (1.2 ha)'
),
(56, 'Chalazóní: Palióchori',
 'AJA 1969, 135',
 'HAB. Several chips of obsidian',
 'LH (very sparse)',
 '80 m E–W × 50; on W slopes (0.4 ha)'
),
(57, 'Farakládha: Dhési',
 'AJA 1969, 134–35',
 'HAB? Possible Paleolithic scraper found on opposite (S) side of ravine; good caves in N face of ravine',
 'LH? (extremely sparse)',
 NULL
),
(58, 'Armenioí: Mána',
 'AJA 1969, 133',
 'HAB',
 'LHIII (sparse)',
 'Small'
),
(59, 'Spiliá: Príndzipa',
 'AJA 1969, 134',
 'HAB',
 'LH? C?; H',
 '70 m NE–SW × 30 (0.2 ha)'
),
(60, 'Kyparissía: Kástro (Lyk. pa-ri-so of Pylos tablets?; Homeric Kyparisseis?; Arkadhiá)',
 'Praktika 1911, 247–52; Klio 1923, 14; Buhl Lund 1928/29, 34–35, 141; 1929/30, 1–5; Roebuck 1941, 24–25; AJA 1961, 232; AJA 1969, 133; Deltion 1961–62, 96–98; 1967, 206; 1968, 156–58',
 'HAB. Obsidian and flint artifacts; A head; C wall foundations on acropolis; H and R bldgs.; R agora (?); architectur. frags., inscriptions; H and R grave contents; reservoir (?) in lower town; ancient harbor works (?)',
 'MH LH?–III C; H; R; M (medium)',
 '150 m N–S × 65 (acropolis); unknown for lower town (1 ha plus)'
);

INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(61, 'Kyparissía: Rízes',
 'About half-way (avg 6 km) along side road between Kyparissía and Peristería (±200 m)',
 'Low hill in open field'
),
(62, 'Vrízes: Palió-trígas',
 '800 m W–SW; on S side of road leading N from Kyparissía',
 'Medium spur projecting N'
),
(63, 'Flesídha: Misoráchi',
 '700 m N–NE; 1 km W of Palió Loútro',
 'Low isolated ridge'
),
(64, 'Palioneró: Áyios Konstantínos',
 'Contiguous to SW',
 'High spur projecting W; directly above chapel on side road to Mesochóri from Pylos–Methóni highway'
),
(65, 'Mesochóri: Koutsovéri',
 '300 m S; immed. N of road to Pidhassos',
 'Low hill'
),
(66, 'Mesochóri: Gdhití Ráchi',
 '1 km SE; on edge of deep gully',
 'Low artificial mound; 15 m diam.; 2 m high'
),
(67, 'Káto Ambelókipi: Astropakalámeno',
 'Contiguous to NW',
 'High spur above village'
),
(68, 'Exochikón: Áyios Nikólaos',
 '1.5 km W–SW; 250 m W of Kalpínia–Lachnáda road',
 'High ridge'
),
(69, 'Finikoús: Ayianálipsi (ka-ra-do-ro of Pylos tablets?)',
 '200 m S–SW; chapel hill partly eroded by sea',
 'Medium hill'
),
(70, 'Methóni: Nisakoúli',
 '2 km S–SE; side of bay; ca. 350 m N of cliff on mainland',
 'Round heavily eroded islet (ca. 60 m diam.) of medium height'
);

INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(61, 'Kyparissía: Rízes',
 'Praktika 1965, 111',
 'CEM. Pithos burial',
 '"PG or rather SM"',
 NULL
),
(62, 'Vrízes: Palió-trígas',
 'AJA 1969, 133',
 'HAB',
 'MH? LH? (sparse)',
 '100 m E–W × 90 (mainly W slope) (0.9 ha)'
),
(63, 'Flesídha: Misoráchi',
 'AJA 1969, 145',
 'HAB',
 'LH (medium)',
 '150 m WSW–ENE × 80 (W end of ridge) (1.2 ha)'
),
(64, 'Palioneró: Áyios Konstantínos',
 'AJA 1969, 153',
 'HAB',
 'MH LH (sparse)',
 '60 m E–W × 50 (0.3 ha)'
),
(65, 'Mesochóri: Koutsovéri',
 'AJA 1969, 152–53',
 'HAB',
 'LH (sparse) M (heavy)',
 '100 m × 100 (top and upper S slopes) (1 ha)'
),
(66, 'Mesochóri: Gdhití Ráchi',
 'AJA 1961, 247; AJA 1969, 152',
 'CEM? Multiple burials?',
 'MH (sparse)',
 NULL
),
(67, 'Káto Ambelókipi: Astropakalámeno',
 'AJA 1969, 153',
 'HAB',
 'LH (sparse)',
 '150 m E–W × 50; mainly SW slopes (0.8 ha)'
),
(68, 'Exochikón: Áyios Nikólaos',
 'Deltion 1965, 208; AJA 1969, 154',
 'HAB–CEM. Destroyed tholos ca. 7–8 m diam. on lower Mistolofakia ridge',
 'MH LHIIIB N summit and E–NE slopes (medium)',
 '100 m N–S × 80 (0.8 ha)'
),
(69, 'Finikoús: Ayianálipsi (ka-ra-do-ro of Pylos tablets?)',
 'Valmin 1930, 155–57; BCH 1959, 641; AJA 1961, 247; Deltion 1967, 207',
 'HAB. CEM? Chert; walls exposed in cliff above sea; foreign stones; possible burial mound 500 m NE; late G tomb; probable ruined tholos 1 km E on coast; R habitation 500 m W',
 'EH; MH LHII?–III?–IIIA?–IIIB G C; H; R (medium)',
 '180 m N–S × 140 (2.5 ha)'
),
(70, 'Methóni: Nisakoúli',
 'AJA 1969, 10–14; AJA 1969, 135–?; Deltion 1969, 145',
 'HAB. MH building and altar (?)',
 'MH LH R?; M? (heavy but much worn)',
 '60 m × 60 (min.) (0.4 ha)'
);

INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(71, 'Rizómilo: Nichória (re-u-ko-to-ro of Pylos tablets?)',
 '300 m SW',
 'High ridge oriented NW–SE'
),
(72, 'Nerómilos: Víglista',
 '1 km W–SW; at lower end of artificial mound shadowed on E side by Kalamata–Pylos highway',
 'Low artificial mound'
),
(73, 'Péra: Kárkano',
 '1 km N–NE; large basin and channel for water from spring at E foot',
 'High hill'
),
(74, 'Kalóchorí: Áyios Ilías',
 '1½ km N; immed. N of Kalóchorí–Péra road',
 'High spur projecting N over deep gorge'
),
(75, 'Mathía: Piráki',
 '400 m N–NE; on N side of road to coast',
 'Medium hill above coastal plain'
),
(76, 'Víglia: Áyios Ilías',
 '300 m W',
 'High ridge; chapel on E end'
),
(77, 'Longá: Palió-kastro',
 '1 km S–SW',
 'High steep hill between ravines; cave on S side'
),
(78, 'Longá: Káfrio',
 '1 km S–SW',
 'High spur projecting E over coastal plain'
);

INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(71, 'Rizómilo: Nichória (re-u-ko-to-ro of Pylos tablets?)',
 'Deltion 1960, 108; Deltion 1961, 92–96; AJA 1968, 156–59; AJA 1964, 248–49; AJA 1969, 146; BCH 1961, 697; 1962, 725; AJA 1968, 205–9; Loy (1970) 125–36',
 'HAB–CEM. Bronze Age habitation proved over major portion (80%) of hilltop; considerable PG and G habitation; several M bldgs.; at NW and SE ends, 6 tholoi excavated and others probable below NW end; PG cemetery 500 m N; chamber tombs 200 m N, and 500 m SE; CR remains in vicinity',
 'Few EH sherds; some MH habitation; LHIII–IIIC SM; PG; G; C; H; R; M (medium to sparse on surface)',
 'Ridge top ca. 500 m NW–SE × avg. 60; built area in LH ca. 4 ha'
),
(72, 'Nerómilos: Víglista',
 'AJA 1961, 246',
 'CEM. Almost certain tholos (no pottery visible) ca. 33 m diam. and 5 m high',
 'LH',
 NULL
),
(73, 'Péra: Kárkano',
 'AJA 1969, 155',
 'HAB',
 'MH? LH (sparse)',
 '150 m NE–SW × 120 (S and SE slopes) (1.8 ha)'
),
(74, 'Kalóchorí: Áyios Ilías',
 'AJA 1964, 233',
 'HAB. Remains of fortifications on E flank',
 'MH LHIIIA (medium)',
 '120 m N–S × 90 (top and E slope) (1.1 ha)'
),
(75, 'Mathía: Piráki',
 'AJA 1964, 234',
 'HAB?',
 'MH? LH?',
 '50 m × 50 (0.3 ha)'
),
(76, 'Víglia: Áyios Ilías',
 'AJA 1969, 155–56',
 'HAB',
 'LHIIIB (medium)',
 '200 m E–W × 80 (E top and slopes) (1.6 ha)'
),
(77, 'Longá: Palió-kastro',
 'AJA 1964, 234',
 'HAB. Obsidian, chert',
 'N? MH (sparse)',
 'Unclear'
),
(78, 'Longá: Káfrio',
 'JHS Arch Reports 1960–61, 11; AJA 1961, 248',
 'HAB–CEM? Probable tholos chamber of Áyios Ilías 500 m N; H and R bldgs. with mosaics reported in lower ground toward village',
 'LHIIIB–PG; G?; C; H; R (medium)',
 '180 m E–W × 100 (mainly N and E slopes) (1.8 ha)'
);

INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(79, 'Faláthi: Panorí(a)',
 '200 m NW; at sharp bend in road just above (E of) spring of Ayía Pelagía',
 'Low ridge'
),
(80, 'Charokopió: Demotic School',
 '300 m NW; immed. S of school bldg.',
 'Top of low hill'
),
(81, 'Áyios Isídhoros: Liofáklia',
 '1½ km S',
 'S edge of low ridge; on edge of fertile country to S'
),
(82, 'Chrisokellariá: Áyios Athanásios',
 '100 m NW; on and above school bldg.',
 'Medium hill'
),
(83, 'Velíka: Skondhákis',
 '½ km SE; on E bank hill (10 m alt.) of Velíka River at mouth',
 'Very low hill'
),
(84, 'Velíka: Kákora Trópa',
 '1½ km N; on E bank of Velíka River where it emerges from narrow ravine',
 'Medium scarped cave'
),
(85, 'Dára: Víglista',
 '600 m SE; 100 m W of Rizómilo–Dára road',
 'Medium hill'
),
(86, 'Stréfi: Garbalovoúni (or Galara voúni)',
 '1 km NNW; 100 m E of Stréfi–Dhidhaes track',
 'Low hill; artificial mound near SE edge'
),
(87, 'Maryéli: Koutsovéri',
 '500 m N–NW',
 'High hill in sheltered valley'
),
(88, 'Flesídha: Kouféro',
 '1 km E–NE; large cave (40 m × 9 m) ca. 100 m above stream; facing NW to Palió Loútro across gorge',
 'Large cave'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(79, 'Faláthi: Panorí(a)',
 'AJA 1969, 155',
 'HAB',
 'LH (sparse); much recent material',
 '100 m N–S × 60 (0.6 ha)'
),
(80, 'Charokopió: Demotic School',
 'Ergon 1958, 154; AJA 1961, 247; AJA 1964, 233',
 'HAB–CEM. Tholos 120 m N (illicit digs; partially destroyed); probable tholos 1 km N (outside of Prátidhass?); bath and funerary stelae (Kandriglo) to W',
 'LHIIIB C; H; R (sparse)',
 'ca. 150 m E–W × 100 (min.) (1.5 ha)'
),
(81, 'Áyios Isídhoros: Liofáklia',
 'AJA 1969, 154–55',
 'HAB? Foreign stones',
 'LH? (sparse)',
 '100 m × 100 (1 ha max.)'
),
(82, 'Chrisokellariá: Áyios Athanásios',
 'AJA 1969, 155',
 'HAB',
 'LH C?; H? (medium)',
 '150 m N–S × 100 (top and S–SW terraces) (1.5 ha)'
),
(83, 'Velíka: Skondhákis',
 'AJA 1964, 234',
 'HAB',
 'MH LHIIIC C?; H? (sparse)',
 '125 m N–S × 70 (0.8 ha)'
),
(84, 'Velíka: Kákora Trópa',
 'AJA 1964, 234',
 'HAB. Animal bones',
 'N LHIIIC',
 NULL
),
(85, 'Dára: Víglista',
 'AJA 1964, 234–35',
 'HAB. Frags. of obsidian',
 'MH LH (medium)',
 '150 m E–W × 100 (1.5 ha)'
),
(86, 'Stréfi: Garbalovoúni (or Galara voúni)',
 'Deltion 1965, 207; AJA 1969, 156',
 'HAB–CEM. Collapsed tholos ca. 8 m diam. at SE edge of hill; marble statue base of R times (chance find in near village)',
 'LHIIIA–IIIB R (medium)',
 '100 m NW–SE × 100 (toward NW end of hill and 100 m from tholos) (1.5 ha)'
),
(87, 'Maryéli: Koutsovéri',
 'AJA 1961, 235; AJA 1969, 143',
 'HAB. Tremendous stone piles (some probably foreign); H lamps reported from spot called Farma Ráchi',
 'MH LH? (medium)',
 '150 m × 150 (rounded top) (max. 2.2 ha)'
),
(88, 'Flesídha: Kouféro',
 'AJA 1961, 235–36; AJA 1969, 145',
 'HAB. Frags. of worked chert',
 'N? LHII?–IIIA–IIIB (sparse)',
 NULL
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(89, 'Chalvátsou: Kástro',
 'AJA 1961, 235',
 'HAB',
 'MH? LH? M (sparse prehistoric)',
 '300 m N–S × 150 (prehistoric on SW terraces; M on top and slopes) (4.5 ha)'
),
(90, 'Dhraína: Koutsovéri',
 'AJA 1969, 144',
 'HAB. Frags. of worked obsidian and chert',
 'MH LHIII (and earlier?) (medium)',
 '120 m NW × 80 (flat top and upper S slopes) (1.0 ha)'
),
(91, 'Manganiakó: Paliámbela',
 'AJA 1969, 144–45',
 'HAB. Foundations of ancient bldgs. in several spots',
 'LHIII (heavy)',
 '200 m NE–SW × 130 (top and upper E slopes) (2.6 ha)'
),
(92, 'Trikórfo: Kakó Kataráchi',
 'AJA 1969, 157',
 'HAB. Foreign stones',
 'LHIII (and earlier?) C (medium)',
 '150 m NE–SW × 120 (top and SE terraces) (1.8 ha)'
),
(93, 'Lámbaina: Tourkokófivouro',
 'AJA 1964, 235–36; AJA 1969, 157–58; Deltion 1964, 153–54',
 'HAB? CEM. Slab grave',
 'EH LH G',
 NULL
),
(94, 'Aristodhímion: Paliámbeles',
 'AJA 1964, 235; Loy (1970) 116–25',
 'HAB. Burial mound called Tourkoskotómeno ca. 200 m SE; M architectural frags. in area to S',
 'LHIIIB M (heavy)',
 '90 m E–W × 30 (min.) (0.3 ha)'
),
(95, 'Aristodhímion: Glikórizi',
 'see #123',
 'HAB. CEM? Probable cemetery in vicinity of modern cemetery ca. 100 m NE of village',
 'EH (bricks in ruined bldg. on mound made of local clay and full of sherds)',
 '120 m E–W × 70 (max.) (0.8 ha)'
),
(96, 'Éva: Nekrotafion',
 'AJA 1964, 236',
 'HAB. Roof tiles',
 'MH LHIII C (sparse)',
 '150 m E–W × 100 (1.5 ha)'
),
(97, 'Áris: Mesovoúni',
 'AJA 1969, 158',
 'HAB',
 'MH? LHII?–IIIA–IIIB (sparse)',
 '200 m E–W × 80 (center and E) (1.6 ha)'
),
(98, 'Vournázi: Baroutsospiliá',
 'AJA 1969, 158',
 'HAB. Obsidian',
 'N C',
 NULL
);

INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(89, 'Chalvátsou: Kástro',
 '2 km S–SE; immed. E of Aristomenis–Chalvatsou road',
 'High hill'
),
(90, 'Dhraína: Koutsovéri',
 '1 km N–NW; immed. W of Draina–Koromileá road',
 'Medium spur projecting W over valley'
),
(91, 'Manganiakó: Paliámbela',
 '400 m NE',
 'Three low knolls'
),
(92, 'Trikórfo: Kakó Kataráchi',
 '2 km S–SW; immed. S of water channel',
 'Low hill'
),
(93, 'Lámbaina: Tourkokófivouro',
 '1 km E–SE; immed. NE of tile factory on E side of highway',
 'Low rolling ground'
),
(94, 'Aristodhímion: Paliámbeles',
 '500 m SE; immed. above (W of) road to Plati',
 'Low terrace sloping S–SE over alluvium'
),
(95, 'Aristodhímion: Glikórizi',
 '700 m S–SE; immed. below (E of) road to Plati',
 'Low mound'
),
(96, 'Éva: Nekrotafion',
 '300 m E–SE; 100 m SE of modern cemetery',
 'Medium spur projecting E over valley'
),
(97, 'Áris: Mesovoúni',
 '1.8 km SE; 800 m E of Pamisos River and immed. E of intersection of road and rail',
 'Low hill'
),
(98, 'Vournázi: Baroutsospiliá',
 'ca. 3 km N of Andhrousa at point where Liyidhi gorge widens',
 'Cave in NE face of cliff; some rock falls; present dimensions 200 m wide × 6 m high × 10 m deep'
);

INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(99, 'Karteróli: Áyios Konstantínos',
 '500 m E–NE; immed. W of main intersection of Karteróli–Koritissa road with main highway',
 'Several low hills intersected by roads'
),
(100, 'Mavromáti: Panayiá',
 '500 m NW; immed. E of highway leading N from Messíni',
 'Low ridge'
),
(101, 'Messíni: Méxa',
 '4 km S–SW; 400 m N of old custom-house (Bouka) on W side of road to sea',
 'Low hill'
),
(102, 'Mádhena: Áyios Konstantínos',
 'Contiguous to S',
 'Sea terrace; carry F'
),
(103, 'Áyios Flóros: Kamária',
 '600 m N–NW; 200 m W of Kalamáta–Megaloú highway',
 'Low hill with chapel of Panayiá'
),
(104, 'Tsoukaleíka',
 '1½ km NE of village',
 'Very high isolated hill'
),
(105, 'Áyios Flóros',
 'Contiguous to E',
 'Medium knoll'
),
(106, 'Pláti: Petroýni',
 '1 km W–SW; immed. E of bridge over Lykodími river',
 'Low hill'
),
(107, 'Pidíma: Áyios Ioánnis',
 '700 m S; on W side of road SW of chapel of Áyios Ioánnis',
 'Low terrace with main spring; barely above level of present marsh'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(99, 'Karteróli: Áyios Konstantínos',
 'Valmin 1930, 64; BSA 1957, 246; AJA 1966, 124; AJA 1961, 249–50',
 'HAB–CEM. Extensive cemetery of chamber tombs (9 certainly and 4 probable) on slopes of hills, especially that with chapel of Áyios Konstantínos; habitation probable on Rachi Panayiá NE of intersection',
 'LHIIIA–IIIB',
 'Unclear'
),
(100, 'Mavromáti: Panayiá',
 'AJA 1969, 158',
 'HAB',
 'EH LH (medium)',
 '90 m E–W × 50 (0.5 ha)'
),
(101, 'Messíni: Méxa',
 'AJA 1964, 234',
 'HAB',
 'EH? (sparse)',
 '70 m E–W × 40 (0.3 ha)'
),
(102, 'Mádhena: Áyios Konstantínos',
 'Deltion 1965, 207; AJA 1969, 156',
 'HAB–CEM. Destroyed chamber tomb along track S of village; habitation site probably along E bank',
 'LHIIIC R (sparse)',
 '150 m N–S × 100 (max.) (1.5 ha)'
),
(103, 'Áyios Flóros: Kamária',
 'AJA 1969, 159',
 'HAB. Chert fragments',
 'LHIIIB H? (medium)',
 '150 m N–S × 100 (max.) (1.5 ha)'
),
(104, 'Tsoukaleíka',
 'AJA 1961, 255; AJA 1969, 159–60; Valmin 1930, 71–74; Roebuck 1941, 4, 13; Deltion 1965, 207; AJA 1964, 236–37',
 'CEM? Grave group said to come from vicinity',
 'PG',
 NULL
),
(105, 'Áyios Flóros',
 'AJA 1964, 236–37',
 'HAB',
 'MH? LH? (sparse)',
 '150 m E–W × 80 (1.2 ha)'
),
(106, 'Pláti: Petroýni',
 'AJA 1961, 255; AJA 1964, 236',
 'HAB',
 'LHIII (sparse)',
 'Unclear'
),
(107, 'Pidíma: Áyios Ioánnis',
 'Valmin 1930, 53; AJA 1964, 236',
 'HAB. Frags. of obsidian',
 'LHII–III? A? C (heavy on E side of road); M (on closed section of site high above reservoir)',
 '250 m E–W × 160 (4 ha)'
);
INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(108, 'Aïthaía: Elliniká',
 '800 m N–NE',
 'High ridge; exceeds 1 km N–S and parallel to high-way'
),
(109, 'Artemisía: Vólimnos',
 '5 km W–NW (guide needed); chapel of Panayía',
 'High terraces below chapel'
),
(110, 'Thouría: Áyios Athanásios',
 '800 m E; 200 m NE of chapel of Áyios Athanásios',
 'Low knoll (barn on summit)'
),
(111, 'Perivolákia: Sóla (ancient Kalamai?)',
 '300 m N',
 'Medium hill'
),
(112, 'Kalamáta: Toúrles',
 'Contiguous to NE; 500 m to E–NE of Kastro and immed. N of Sparta road',
 'Medium hill'
),
(113, 'Kalamáta: Kástro (Homeric Pherai)',
 'Within city (NE sector)',
 'Medium hill; fine flat-topped acropolis heavily built over in later periods'
),
(114, 'Vérga: Kastráki',
 'Contiguous to NW',
 'Medium ridge across gully from village (whole area high above gulf)'
),
(115, 'Mikrá Mandinía: Áyios Yeóryios',
 '500 m NW',
 'Medium hill with chapel of Áyios Yeóryios'
),
(116, 'Pigádhia: Kok-kinochómata',
 'ca. 4.5 km W',
 'Collapsed cave'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(108, 'Aïthaía: Elliniká',
 'Buhl Lund 1928/29, 1–31; Valmin 1930, 56–62; Roebuck 1941, 30–31; Frazer III 424–25; Hope Simpson 1957, 234–35; 1966, 121–24; AJA 1961, 250–51; 1964, 239; 1969, 158–59; Deltion 1965, 207',
 'HAB–CEM. LH habitation on S top and SW slopes; EH on SW terrace; C on N top; 26 LH chamber tombs on E slopes at center; tholos ca. 600 m to SW; 2 possible tholos tombs across Xeropotamos gorge to E; well-preserved fortification and terrace walls (probably early H); inscriptions, cistern, temple',
 'EH; MH LHIIIA–IIIB–IIIC? PG; G?; A? C; H; R (medium)',
 '400 m N–S × 150 (LH) (6 ha); 90 m N–S × 70 (EH)'
),
(109, 'Artemisía: Vólimnos',
 'BCH 1959, 641; AJA 1961, 255; Hope Simpson 1966, 121',
 'HAB. Bronze harpy from C vase',
 'LH?; SM? PG; G; A C; H (heavy)',
 '200 m N–S × 100 (max.) (2 ha)'
),
(110, 'Thouría: Áyios Athanásios',
 'AJA 1969, 160',
 'HAB. CEM? Frags. of obsidian; probable cemetery 500 m SW near concrete cistern',
 'MH? LH?',
 '100 m N–S × 60 (0.6 ha)'
),
(111, 'Perivolákia: Sóla (ancient Kalamai?)',
 'AM 1894, 360–63; Arch Eph 1911, 117; Roebuck 1941, 122–24; BSA 1966, 119; Hope Simpson 1966, 118–19; AJA 1969, 160',
 'HAB. On SW slope at spot called Marmara squared blocks and inscriptions',
 'LHIII H?; R (sparse)',
 '100 m NNE–SSW × 80 (0.8 ha)'
),
(112, 'Kalamáta: Toúrles',
 'AJA 1961, 251; AJA 1964, 237; AJA 1969, 160',
 'HAB. House foundations',
 'EH? LHIII C (medium)',
 '200 m NE–SW × 100 (summit and SE terraces) (2 ha)'
),
(113, 'Kalamáta: Kástro (Homeric Pherai)',
 'Arch Eph 1911, 107–18; Valmin 1930, 45–55; BCH 1959, 632–36; AJA 1961, 251; AJA 1964, 237; Deltion 1961–62, 96; 1968, 156',
 'HAB–CEM. Archaic inscriptions in Nedhon gorge; traces of ancient walls in Kastro; heavy foundations of H bldgs. excavated under plateia S of Kastro; section of city walls (4th c. B.C.?) N of Kastro; late R grave; lamps, terracotta statuettes, vases, reliefs of A through R (mainly from graves?)',
 'LHIIIA–IIIB G; A C; H; R; M (sparse)',
 NULL
),
(114, 'Vérga: Kastráki',
 'AJA 1969, 160',
 'HAB',
 'LH (heavy)',
 '100 m × 100 (W terraces) (1 ha)'
),
(115, 'Mikrá Mandinía: Áyios Yeóryios',
 'AJA 1961, 255; AJA 1969, 160–61',
 'HAB? C roof tiles around chapel and on W facing terraces to N and E',
 'LH? C (sparse)',
 '120 m E–W × 80 (0.7 ha)'
),
(116, 'Pigádhia: Kok-kinochómata',
 'Hope Simpson 1957, 240; AJA 1961, 251',
 'HAB? CEM? Human bones',
 'N?; EH? MH? LHII–IIIA–IIIB–IIIC SM? PG?',
 NULL
);
INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(117, 'Kámbos: Zarnáta',
 '600 m W; highway to Kardhamíli winds around it',
 'High hill'
),
(118, 'Kardhamíli: Kástro (Homeric and later?; Kardamyle)',
 '800 m NE',
 'High flat-topped acropolis'
),
(119, 'Stoúpa: Lévtro',
 '400 m E–SE',
 'Medium flat-topped acropolis'
),
(120, 'Áyios Dhimítrios: Vígla',
 'Contiguous to S',
 'Easy terraces sloping down into low cliffs above sea'
),
(121, 'Koutifári: Svína (ancient Thalamai)',
 'Contiguous to E',
 'Terraces above village'
),
(122, 'Kalamáta: Akovítika',
 'ca. 4 km WNW; on E bank of Pámisos and ca. 800 m from coast',
 'Flat marshy delta; very little above present sea level'
),
(123, 'Mírou: Peristeriá',
 '1 km N',
 'High spur overlooking Kyparissia River to N'
),
(124, 'Mouriátadha: Ellinikó (Lolling''s candidate for Homeric Dorion)',
 '1 km E',
 'Medium spur'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(117, 'Kámbos: Zarnáta',
 'Arch Eph 1891, 189–91; Roebuck 1941, 31; BSA 1957, 236–39; 1958, 239; 1966, 114; AJA 1961, 251; Deltion 1967, 206–7',
 'HAB? CEM. Tholos tomb 8.50 m diam. excavated on E slope below highway; H walls on acropolis above highway; wall inscriptions; R head; caves at spot called Koutálas ca. 3½ km SW said to have N pottery',
 'N? LHII–IIIA–IIIB C; H; R; M',
 'Location of LH habitation unclear but presumably centered on acropolis'
),
(118, 'Kardhamíli: Kástro (Homeric and later?; Kardamyle)',
 'Buhl Lund 1928/29, 42–44; Valmin 1930, 198; Roebuck 1941, 31; Hope Simpson 1957, 234–46; 1966, 114; BCH 1959, 639; AJA 1961, 251; Deltion 1965, 208; 1967, 206',
 'HAB–CEM. Rock-cut tombs; walls (C or earlier), stairs, roof tiles; A or C architectural fragments; coins, lamps, statuettes',
 'N? EH?; MH? LH? SM; A C; H; R; M',
 '300 m E–W × 200 (max.) (6 ha)'
),
(119, 'Stoúpa: Lévtro',
 'Valmin 1930, 203; Hope Simpson 1957, 232; BSA 1957, 234; BCH 1959, 640; Deltion 1960, 108; AJA 1961, 251',
 'HAB–CEM. At N foot chamber tomb apparently destroyed; antiquities of C and later toward sea and village; numerous R mosaics in vicinity',
 'MH? LH C; H; R; M',
 '250 m E–W × 200 (max. on summit) (5 ha)'
),
(120, 'Áyios Dhimítrios: Vígla',
 'AJA 1961, 251; AJA 1964, 237; Hope Simpson 1966, 113',
 'HAB',
 'LHIII (sparse)',
 '200 m N–S × 100 (2 ha)'
),
(121, 'Koutifári: Svína (ancient Thalamai)',
 'BSA 1904–5, 124–36; Hope Simpson 1957, 232–33; BCH 1959, 641; Deltion 1960, 107–8',
 'HAB. C walls; head of terracotta statuette (7th c. B.C.?); A marble head; handle of bronze vase; silver earrings',
 'LH A? PG? G?; A C; H; R',
 'Unclear'
),
(122, 'Kalamáta: Akovítika',
 'BCH 1959, 639–40; AJA 1969, 352–57; AM 1968, 175–85',
 'HAB. Well-preserved foundations of two major and several minor EH bldgs.; only 200 m SE foundations of large rectangular bldg. with peristyle, probably shrine of Poseidon; destroyed end of 7th c. B.C. and rebuilt; bronze workshop; Doric capital; G horse; A statuettes; C bronze statuettes',
 'EH G; A C; H; R (EH pot.; very small finds and very sparse)',
 'Unclear; this discovery proves coastline has changed little since 3rd millennium B.C.'
),
(123, 'Mírou: Peristeriá',
 'JHS Arch Reports 1960, 5; Ergon 1964, 85–90; 1965, 84–92; Praktika 1965, 109–20; BCH 1965, 734; Deltion 1966, 166–68; AJA 1969, 133',
 'HAB–CEM. 2 tholos tombs apparently (within) settlement; rich burial(s) associated; MH tumulus with pithos burials 500 m W',
 'MH LHI–II–IIIA–IIIB C; H; R',
 NULL
),
(124, 'Mouriátadha: Ellinikó (Lolling''s candidate for Homeric Dorion)',
 'Praktika 1960, 201–52; Ergon 1960, 149–52; Deltion 1960, 116–17; AJA 1969, 133; Lolling 1889, 99, in Müller''s Handbook, Vol. III',
 'HAB–CEM. Ruined fortification wall in Cyclopean style; large bldg. on crest may be megaron; "temple" on S slope; tholos 200 m E',
 'LHIIIB–IIIC',
 NULL
);
INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(126, 'Sellás: Nekrotafíon',
 '500 m SW; end of cemetery spur along road above village',
 'W end of high spur'
),
(127, 'Konchilión: Kástro',
 '300 m W–SW',
 'High hill'
),
(128, 'Neochóri: Koumoústa',
 '700 m SW; 200 m S of Neochóri–Zeropótamos road',
 'Low slopes of immed. above (S) of stream'
),
(129, 'Stenikláros: Káto Ráchi',
 '1½ km SE; on S side of Stenikláros–Magoula road; 200 m E of ruined chapel',
 'Low hill at E end of hills'
),
(130, 'Meligalás: Áyios Ilías',
 '—',
 'Highest point of medium isolated hill'
),
(131, 'Kastaró: Áyios Ilías',
 '1½ km W–SW; N junction of Kastaró side road with Kalamata–Meligalás highway; chapel on summit',
 'Medium isolated hill'
),
(132, 'Siférna: Paliochóri',
 '400 m N',
 'Low hill'
),
(133, 'Loutró: Karastádhes',
 '800 m E; immed. E of Xerias',
 'Very low mound?'
),
(134, 'Kalívia: Páno Chorió',
 '300 m',
 'High hill'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(126, 'Sellás: Nekrotafíon',
 'AJA 1969, 133',
 'HAB',
 'MH? LH? (medium)',
 '150 m E–W × 80 (top and upper S terraces) (1.0 ha)'
),
(127, 'Konchilión: Kástro',
 'AJA 1969, 141–42',
 'HAB. Thick wall (probably ancient) enclosing a cave in higher E part; recent (Turkish?) fort at NE end; traces of bldg. (probably ancient) in SW part of enclosure',
 'LHIII (medium)',
 '150 m NNE–SSW × 70 (1.5 ha)'
),
(128, 'Neochóri: Koumoústa',
 'AJA 1969, 142',
 'HAB',
 'LHIII (sparse)',
 '150 m E–W × 100 (1.5 ha)'
),
(129, 'Stenikláros: Káto Ráchi',
 'AJA 1969, 144',
 'HAB',
 'LH (medium)',
 '100 m × 100 (max.) on hilltop (1 ha)'
),
(130, 'Meligalás: Áyios Ilías',
 'AJA 1969, 143–44',
 'HAB. Wall foundations (probably ancient)',
 'MH? LHIII (and earlier?) (medium)',
 '80 m E–W × 50 (min.) top(?) and SW slope (0.4 ha)'
),
(131, 'Kastaró: Áyios Ilías',
 'AJA 1964, 232',
 'HAB',
 'MH? LH (sparse)',
 NULL
),
(132, 'Siférna: Paliochóri',
 'AJA 1964, 231–32; AJA 1969, 143',
 'HAB. Terrace walls on W could be ancient',
 'MH? LHIII (sparse)',
 '50 m × 50 (0.3 ha)'
),
(133, 'Loutró: Karastádhes',
 'AJA 1961, 235; Valmin 1930, 39; RE Suppl. VI, 607',
 'CEM. HAB? Slab-lined cist tomb',
 'EH?; MH? LH?',
 NULL
),
(134, 'Kalívia: Páno Chorió',
 'Deltion 1967, 206; AJA 1969, 144',
 'HAB–CEM. 100 m S of village destroyed chamber (?) tomb from which LHIII pithoi, rare alabastron, electrum beads, gold leaf; possible tholos 200 m SW (chapel of Áyios Ilías); R and Venetian coins said to come from acropolis',
 'LHIII (and earlier?) R?; M? (heavy)',
 '180 m N–S × 120 (top and upper W terraces) (2.2 ha)'
);
INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(135, 'Loutró: Kók-kala (C Kálo; ?Amphéïa?)',
 'ca. 5 km E',
 'High hill'
),
(136, 'Polichní: Áyios Taxíarchos (classical Andania?)',
 '400 m N',
 'High hill; ruins of M convent on summit'
),
(137, 'Parapoúngi: Áyios Yeóryios',
 '400 m NE; N of railroad and S of chapel of Áyios Yeóryios; 800 m W–SW',
 'E terraces of high spur (225 m above plain)'
),
(138, 'Dhíavolitsi: Lóutses',
 '—',
 'Low hill'
),
(139, 'Agriloússa: Áyios Nikólaos',
 'Contiguous to N',
 'High hill; chapel of Áyios Nikólaos on summit'
),
(140, 'Káto Mélpia: Krébéni',
 '400 m N; high chapel of Áyios Dhimítrios at E edge',
 'High steep terraces facing SW toward plain and below edge of plateau'
),
(141, 'Mándhra: Chazná',
 '200 m W–SW',
 'Low ridge'
),
(142, 'Miliá: Profítis Ilías',
 '700 m N–NE; chapel of Áyios Ilías on summit',
 'High spur projecting E'
),
(143, 'Kástró: Kástro tou Miliá (M Château-neuf?)',
 '200 m N',
 'High hill'
),
(144, 'Vasilikó: Xerovrísi',
 '1½ km S–SE; immed. N of railroad',
 'Rolling country sloping S'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(135, 'Loutró: Kók-kala (C Kálo; ?Amphéïa?)',
 'Valmin 1930, 74; 79; AJA 1961, 235',
 'HAB? Valmin reports prehistoric walls; G(?) sherds; N celts, obsidian',
 'N?; EH? LH? G?',
 NULL
),
(136, 'Polichní: Áyios Taxíarchos (classical Andania?)',
 'Buhl Lund 1928/29, 34; Valmin 1930, 92, 93, 97; AJA 1961, 234',
 'HAB. C sherds in Kalamata museum said to come from here; N inscriptions',
 'MH? LHII–IIIC C (medium)',
 '250 m NNW–SSE × 100 (2.5 ha)'
),
(137, 'Parapoúngi: Áyios Yeóryios',
 'AJA 1964, 231; Loy 1970, 106–15',
 'HAB. Obsidian',
 'MH LHIII (medium)',
 '100 m N–S × 60 (0.6 ha)'
),
(138, 'Dhíavolitsi: Lóutses',
 'Deltion 1964, 154; AJA 1964, 231; AJA 1969, 143',
 'HAB–CEM. Chamber tomb destroyed by construction near railroad station 800 m E–NE',
 'MH? LHIIIB (medium)',
 'Unclear'
),
(139, 'Agriloússa: Áyios Nikólaos',
 'AJA 1964, 231',
 'HAB. Foreign stones, column',
 'MH LHIIIB (medium)',
 '190 m N–S × 40 (top?; probably all upper S and E slopes) (0.8 ha min.)'
),
(140, 'Káto Mélpia: Krébéni',
 'AJA 1964, 234–35',
 'HAB. C H ruins including terrace walls, stair blocks, jambs and threshold blocks, doorways; Frankish fort above (N)',
 'MH? LHIIIA?–IIIB–IIIC C?; H (heavy, mainly C)',
 '200 m E–W × 300 (prehistoric probably much less; 6 ha max.)'
),
(141, 'Mándhra: Chazná',
 'RE Suppl. VI, 607; AJA 1961, 234; AJA 1969, 142',
 'HAB–CEM. Ruined tholos (3 m diam.) 20 m SW of Áyios Yeóryios',
 'EH?; MH? LH (sparse)',
 '200 m E–W × 50 (min.); pottery found on N slopes only, but top may have been inhabited (0.5 ha)'
),
(142, 'Miliá: Profítis Ilías',
 'AJA 1969, 142',
 'HAB',
 'LH (sparse)',
 '100 m E–W × 80 (max.) (0.8 ha)'
),
(143, 'Kástró: Kástro tou Miliá (M Château-neuf?)',
 'AJA 1969, 142',
 'HAB. Frankish fort',
 'MH? LH M (prehistoric sparse)',
 '100 m × 100 (min.) (1 ha)'
),
(144, 'Vasilikó: Xerovrísi',
 'Valmin 1926–27, 88; 1927–28, 171–224; AJA 1961, 234',
 'CEM. One tholos with side chamber excavated; possible tholoi reported 150 m SE and 250 m SW',
 'LH–II',
 NULL
);
INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(145, 'Vasilikó: Veïzí',
 '800 m S',
 'Low ridge'
),
(146, 'Vasilikó: Máthi (Homeric Dorion?)',
 '1¼ km W–NW',
 'High hill at N end of ridge projecting into Solyma Valley'
),
(147, 'Máthi: Goúvnes',
 '2½ km N–NE; only 100 m W of road',
 'Low hill'
),
(148, 'Kókla: Ráchi Cháni',
 'Contiguous to N (low hill dissected by cut for new highway)',
 'Low hill'
),
(149, 'Aetós: Palió-kastro',
 '1 km E; immed. E of Aetós–Dhourovouni track',
 'High hill crowned with M fort'
),
(150, 'Aetós: Áyios Dhimítrios (A)',
 'Within village',
 'High terraces S and W of church of Áyios Dhimítrios'
),
(151, 'Aetós: Áyios Dhimítrios (B)',
 '1 km NW',
 'High ridge toward N end of medium N–S ridge'
),
(152, 'Aetós: Mourloú',
 '4 km N–NE; 700 m S of main highway on W side of Aetós road',
 'Low hill'
),
(153, 'Káto Kopanáki: Chalkiá',
 '1 km SW; marked by water tower',
 'Medium ridge'
);

INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(145, 'Vasilikó: Veïzí',
 'AJA 1969, 141',
 'HAB. Worked flint',
 'MH? LH?',
 NULL
),
(146, 'Vasilikó: Máthi (Homeric Dorion?)',
 'Buhl Lund 1926–27, 171–224; 1927–28, 171–224; 1933–34, 91–?; 1934–35, 1–?; Valmin 1938, passim; 1953, 29–46; AJA 1961, 233–34; AJA 1969, 141',
 'HAB–CEM. Upper area fortified in MH; habitation site inside fortifications completely excavated; two tholoi at S–SW (one collapsed)',
 'N?; EH?; MH LHII–IIIB (tholoi 2 may be LHIIIC)',
 '140 m N–S × 80 (1.1 ha)'
),
(147, 'Máthi: Goúvnes',
 'AJA 1953, 29–46; II 1955, 66–74; AJA 1960, 119–22; AJA 1969, 141',
 'HAB. Small area excavated showed closely spaced houses, some 2 storeys',
 'LHIIIB G?',
 '200 m N–S × 150 (max.) (3 ha)'
),
(148, 'Kókla: Ráchi Cháni',
 'Deltion 1964, 154–55; AJA 1969, 141',
 'HAB–CEM. Large cemetery of simple cist graves from H and R times',
 'EH; MH LH H; R (medium)',
 '100 m × 100 (min. in LH) (1 ha)'
),
(149, 'Aetós: Palió-kastro',
 'AJA 1969, 140',
 'HAB. Venetian coin',
 'MH LH M (heavy) (N terraces)',
 '100 m NW–SE × 80 (upper N and E terraces) (0.8 ha)'
),
(150, 'Aetós: Áyios Dhimítrios (A)',
 'Buhl Lund 1925–26, 57; Valmin 1930, 104, 117; AJA 1961, 233; Deltion 1964, 155',
 'HAB? Terrace wall 60 m S of church could be prehistoric; C H architectural frags.; R bldg.',
 'LH? C; H; R',
 NULL
),
(151, 'Aetós: Áyios Dhimítrios (B)',
 'AJA 1969, 140',
 'HAB',
 'MH? LH',
 '80 m NNW–SSE × 50 (0.4 ha)'
),
(152, 'Aetós: Mourloú',
 'AJA 1969, 140',
 'HAB. Frags. of chert',
 'MH LHIIIA?–IIIB',
 '120 m ENE–WSW × 100 (1.5 ha)'
),
(153, 'Káto Kopanáki: Chalkiá',
 'AJA 1969, 140',
 'HAB. Tiles',
 'LH R',
 '70 m NW–SE × 40 (upper NE slopes) (0.3 ha)'
);
INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(154, 'Artíki: Ráchi Gortsí(a)',
 '300 m W–NW',
 'Medium hill up on S flank of Kyparissía Valley'
),
(155, 'Dhróïon: Kóndhra',
 '2½ km N–NE; immed. N of Dhróïon–Psari road above chapel of Áyios Konstantínos',
 'High hill'
),
(156, 'Chrisochóri: Panayía',
 '1 km NE; chapel of Panayía; area called Klisakoú',
 'High terraces descending to SW'
),
(157, 'Áno Kopanáki: Stíli',
 '1 km E–NE',
 'Medium hill; few modern houses on summit'
),
(158, 'Áno Kopanáki: Akórthi',
 '1½ km W; between main highway and rail road',
 'Medium plateau'
),
(159, 'Káto Kopanáki: Paradámi',
 '2 km W; immed. N of main highway just W of junction of sideroad from Artíki',
 'High hill sloping to road'
),
(160, 'Kamarí: Goúva',
 '1½ km S',
 'High N–S ridge on skyline ca. 1 km W of Kopanáki–Kamarí road'
),
(161, 'Kamarí: Mesovoúni',
 '300 m E–NE',
 'Medium hill'
),
(162, 'Áno Kopanáki: Báfano',
 '2 km N; immed. W of Kopanáki–Kafalovrisi road',
 'Low spur toward S end of high ridge'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(154, 'Artíki: Ráchi Gortsí(a)',
 'AJA 1969, 136–37',
 'HAB',
 'MH? LH',
 '90 m × 90 (max.) (0.8 ha)'
),
(155, 'Dhróïon: Kóndhra',
 'AJA 1969, 139–40',
 'HAB. Possible ancient fortifications',
 'MH? LHII (medium)',
 '160 m NE–SW × 110 on summit; may have included E and SE slopes (1.8 ha)'
),
(156, 'Chrisochóri: Panayía',
 'Valmin 1930, 103–4; AJA 1961, 233',
 'HAB?',
 'LH? H? (sparse)',
 'Unclear'
),
(157, 'Áno Kopanáki: Stíli',
 'Buhl Lund 1927–28, 31; Valmin 1930, 79–81, 101–3; Roebuck 1941, 339; AJA 1961, 233',
 'HAB. CEM? Valmin records tholos on S slope; fine M fortifications on N edge of summit; LHII terracotta figurine',
 'MH? LHII? C; H; R? (medium)',
 '75 m × 75 on summit; probably S slopes inhabited (0.4 ha)'
),
(158, 'Áno Kopanáki: Akórthi',
 'Buhl Lund 1927–28, 31–34; Valmin 1930, 79–81; AJA 1961, 233',
 'CEM. 3 tholoi? (2 excavated) within 75 m radius',
 'LHII–III C',
 NULL
),
(159, 'Káto Kopanáki: Paradámi',
 'AJA 1969, 136',
 'HAB? R or M roof tiles',
 'LH? R? M (sparse)',
 'Unclear'
),
(160, 'Kamarí: Goúva',
 'AJA 1969, 137–38',
 'HAB–CEM. Illicitly excavated tholos contiguous to S; foreign stones; ruined M? chapel',
 'LHIII M (medium)',
 '120 m N–S × 100; mainly upper slopes (1.2 ha)'
),
(161, 'Kamarí: Mesovoúni',
 'AJA 1969, 136',
 'HAB',
 'MH LHIIIA–IIIB? (heavy)',
 '130 m NNE–SSW × 70 (min.); probably upper S slopes as well as summit (1.6 ha)'
),
(162, 'Áno Kopanáki: Báfano',
 'AJA 1969, 139',
 'HAB',
 'LH (medium)',
 '105 m N–S × 70; terraces descending to E (0.9 ha)'
);
INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(163, 'Glikórizi: Áyios Ilías',
 '1½ km W–SW; 1½ km E–SE of lower Kakkáva',
 'High hill; S end of ridge'
),
(164, 'Kefalóvrisi: Tsoukedhá',
 '1½ km W–NW; 300 m NW of track to Ávion',
 'Medium hill'
),
(165, 'Sidhirókastro: Sfakoúlia',
 '1½ km N–NE; 700 m SW of northernmost point on iron valley',
 'Medium spur trending N–S'
),
(166, 'Vandúlia: Kastrí',
 '600 m NW; above S end of Vandúlia–Ayía Ianni road',
 'Low hill at ridge end'
),
(167, 'Fónissa: Áspra Lithária',
 '800 m SW; high spur projecting S; 2½ km N of Naváli',
 'High spur'
),
(168, 'Tholós: Áyios Dhimítrios',
 '500 m NE; 200 m E of chapel of Áyios Dhimítrios; S of Tholós–Leperó road',
 'Low knoll mound'
),
(169, 'Leperó: Áyios Dhimítrios',
 'Contiguous; high spur S of Áyios Dhimítrios valley; at NE end',
 'High spur'
),
(170, 'Yannitsochóri: Áyios Yeóryios',
 'Contiguous; low mound of church of Áyios Yeóryios on N side of Nédha River',
 'Low mound'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(163, 'Glikórizi: Áyios Ilías',
 'Deltion 1968, 160; AJA 1969, 139',
 'HAB. Foundations (some possibly ancient) on summit (chapel of Áyios Ilías); N axe reported from nearby Lópetra',
 'N? LHIIIB (medium)',
 '180 m NE–SW × 120 (S and SE part of summit and upper SE terraces) (2.2 ha)'
),
(164, 'Kefalóvrisi: Tsoukedhá',
 'AJA 1969, 131',
 'HAB. Frags. of obsidian',
 'MH? LH (sparse)',
 '120 m E–W × 80 (min.); mainly on S and ENE slopes (1 ha)'
),
(165, 'Sidhirókastro: Sfakoúlia',
 'Valmin 1930, 82; AJA 1969, 131',
 'HAB. Valmin’s report of C sherds, statuettes, bronze axe seems to refer to different site',
 'MH LHIIIB (medium)',
 '250 m NNW–SSE × 100 (summit and upper W and S terraces) (2.5 ha)'
),
(166, 'Vandúlia: Kastrí',
 'AJA 1969, 131',
 'HAB. Foreign stones; frags. of obsidian; possible slab grave toward W edge',
 'MH? LHIII (and earlier?) (sparse)',
 '100 m × 100 (summit and upper SE slopes) (1 ha)'
),
(167, 'Fónissa: Áspra Lithária',
 'AJA 1969, 130–31',
 'HAB. Foreign stones',
 'MH LH (medium)',
 '100 m × 100 (mainly W slopes) (0.6 ha)'
),
(168, 'Tholós: Áyios Dhimítrios',
 'AJA 1969, 130',
 'HAB. Roof tiles',
 'LHIII C (sparse)',
 '50 m × 60 (later settlement larger) (0.4 ha)'
),
(169, 'Leperó: Áyios Dhimítrios',
 'Sperling 1942, 86; Meyer 1957, 63; AJA 1961, 231–32; Frazer III, 474',
 'HAB. C–H architectural blocks; house foundations; water system; fortifications? temple?',
 'N? EH; MH LHIIIA–IIIB C; H; R (heavy)',
 '150 m N–S × 100 (acropolis only; settlement much larger) (1.5 ha)'
),
(170, 'Yannitsochóri: Áyios Yeóryios',
 'AJA 1969, 130',
 'HAB. Several frags. of obsidian',
 'MH? LH (sparse)',
 '60 m × 60 (0.4 ha)'
);

INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(171, 'Kakavátos: Néstora (no longer tenable as Pylos of LH IIIB period)',
 '1½ km E–NE',
 'Medium spur above coastal plain'
),
(172, 'Zacháro: Kaiména Alónia',
 '400 m NW',
 'Medium ridge'
),
(173, 'Káto Samikón: Klidí (probably Homeric Arene and Tomb of Iardanos)',
 '1½ km S–SW; immed. W of coastal highway',
 'Low ridge; cut through by railroad; mound below N end'
),
(174, 'Epitálion: Áyios Yeóryios (prob. classical Thryon; classical Epitálion)',
 '1½ km NW; between highway and railroad; N side of road to Epitálion',
 'Cluster of 4 medium hills (chapel of N Áyios Yeóryios on SW summit)'
),
(175, 'Áyios Andhréas: Pondikó-kastro (C Pheia; P is M name for acropolis)',
 'Contiguous to E; 300 m from coast',
 'N end of medium ridge'
),
(176, 'Skafidhá: Anemómilo',
 '700 m SW',
 'Low ridge'
),
(177, 'Áyios Ioánnis: Sodhiotissa',
 '1 km W; 150 m N of monastery of Panayía Sodhiotissa',
 'Low ridge'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(171, 'Kakavátos: Néstora (no longer tenable as Pylos of LH IIIB period)',
 'Dörpfeld 1907 I–XVI; 1908, 295–317; 1913, 97–139; Müller 1909, 269–328; McDonald 1942, 538–45; Sperling 1942, 81–82; Meyer, Museum Helveticum 1951, 119–36; Meyer 1957, 61f., 78f.; AJA 1961, 230–31; AJA 1969, 130; AJA 1964, 231',
 'HAB–CEM. Large rough blocks from fortifications on acropolis; foreign stones of buildings in lower town to NW; 3 LHII–II tholoi excavated ca. 400 m NE of acropolis; C settlement closer to sea',
 'MH LHII–IIIA?–IIIB C; H; R (medium)',
 '200 m E–W × 90 (small acropolis; lower town on NW slopes) (1.8 ha)'
),
(172, 'Zacháro: Kaiména Alónia',
 'AJA 1969, 130; AJA 1964, 231',
 'HAB',
 'LHIIIB (sparse)',
 'Unclear (small)'
),
(173, 'Káto Samikón: Klidí (probably Homeric Arene and Tomb of Iardanos)',
 'Dörpfeld 1908, 320–22; 1913, 111–14; Sperling 1942, 82, 87; Meyer 1957, 75–76; Deltion 1965, 6; 40, 185–86; AJA 1961, 230; AJA 1969, 130',
 'HAB–CEM. Tumulus 50 m diam. with multiple burials; large rough blocks on acropolis',
 'EH; MH LHII–IIIA–IIIB (medium)',
 '300 m NW–SE × 50 (max.) (1.5 ha)'
),
(174, 'Epitálion: Áyios Yeóryios (prob. classical Thryon; classical Epitálion)',
 'Meyer 1957, 49, 50, 60; AJA 1961, 227–28; AJA 1969, 129; Deltion 1966, 171–72; 1967, 210–11; 1968, 165–71, Fig. 1; AJA 1968, 201–4; Arch Eph 1969, 16–17; AMCM 178',
 'HAB–CEM. Cemeteries on E slope of Tou Varkou to Vouno and S slope of Áyios Yeóryios; settlements probably connected with both; LH and H houses; late C wall; male figurine showing Minoan influence; R dye-works; R milestone',
 'MH LHII–IIIA–IIIB–IIIC C; H; R (medium)',
 '200 m NW–SE × 150 (3 ha)'
),
(175, 'Áyios Andhréas: Pondikó-kastro (C Pheia; P is M name for acropolis)',
 'Sperling 1942, 82; Arch Eph 1957, 31–43; Deltion 1960, 126; 1968, 162; AJA 1961, 224',
 'HAB. Early Cycladic figurines; large C H R site between acropolis and coast; architectural pieces, amphorae, etc.',
 'N; EH; MH LHII–IIIA–IIIB SM; PG; G; A C; H; R; M (heavy)',
 '215 m N–S × 75 (min.) (1.6 ha)'
),
(176, 'Skafidhá: Anemómilo',
 'Sperling 1942, 85; AJA 1961, 225; Deltion 1968, 162; 1969, 148',
 'HAB. House foundations; numerous frags. of obsidian; H statue and R tomb from spot called Lavrion',
 'EH LH? H; R (sparse)',
 '100 m E–W × 50 (SW slopes) (0.5 ha)'
),
(177, 'Áyios Ioánnis: Sodhiotissa',
 'AJA 1961, 225',
 'HAB. Worked chert',
 'EH? LH (sparse)',
 '50 m × 50 (S slope) (0.25 ha)'
);
INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(178, 'Varvásaina: Vromonéri',
 '1 km W–NW; 500 m N of Pirgos–Olympia highway',
 'High ridge'
),
(179, 'Salmoní: Paliópirgo',
 '700 m S; immed. N of railroad',
 'Medium ridge'
),
(180, 'Stréfi',
 '200 m N–NW',
 'Low mound'
),
(181, 'Salmoní: Vamváki',
 '1 km W',
 '—'
),
(182, 'Makrisía: Kaniá',
 '2 km W; immed. N of cemetery',
 'Medium spur'
),
(183, 'Makrisía: Áyios Ménas',
 '500 m W of church; convent on SE slope',
 'High hill'
),
(184, 'Makrisía: Yerakovoúni',
 '2 km NE; 400 m S of track from Makrisía to river ferry',
 'High hill'
),
(185, 'Babés: Amoká-rácho',
 '1½ km W',
 'High hill'
),
(186, 'Olympía: Áltis (classical sanctuary)',
 '900 m S–SE',
 'Flat ground near confluence of Kládheos and Alpheiós rivers'
),
(187, 'Flóka',
 'Near Alpheiós; ca. 2 m SW',
 '—'
),
(188, 'Olympía: Dhróva',
 '700 m SW (within partially abandoned village of Dhróva)',
 'S end of high ridge overlooking confluence of Alpheiós and Kládheos rivers'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(178, 'Varvásaina: Vromonéri',
 'AJA 1961, 225–26; Deltion 1967, 209; AJA 1968, 161; AJA 1969, 148',
 'HAB. H pottery at spot called Marathia',
 'MH? LH H (medium)',
 '200 m N–S × 50 (1 ha)'
),
(179, 'Salmoní: Paliópirgo',
 'Deltion 1960, 126; 1968, 171; AJA 1961, 226; AJA 1969, 148',
 'HAB. CEM? 2 pithos burials reported from vicinity; C or H roof tiles; cut blocks',
 'MH? LH? C; H',
 'Unclear'
),
(180, 'Stréfi',
 'Deltion 1961–62, 107; AJA 1969, 148',
 'CEM. 2 chamber tombs; EH pottery and 4 LH tombs (near new railroad bridge)',
 'EH LHIIIB PG',
 '—'
),
(181, 'Salmoní: Vamváki',
 'Deltion 1960, 126; AJA 1969, 148',
 'HAB',
 '—',
 '—'
),
(182, 'Makrisía: Kaniá',
 'AJA 1969, 148',
 'HAB–CEM. 2 LHIII A–B chamber tombs (plus at least 2 un-opened)',
 'EH? MH LHIIIA–IIIB',
 '—'
),
(183, 'Makrisía: Áyios Ménas',
 'Meyer 1957, 47–48; AJA 1969, 148',
 'HAB–CEM. LHIIIC grave with destroyed tumulus; worked flint and chert; clay and stone “whorls”; bronze knives and brooch; LHIIIA imports',
 'MH LHIIIB (medium)',
 '100 m E–W × 80 (0.8 ha)'
),
(184, 'Makrisía: Yerakovoúni',
 'Meyer 1957, 47; AJA 1961, 229',
 'HAB–CEM. LHIII burial mound (cf. #302); LHII vases, sherds, and roof tiles at Ráza (not far E of Skávas spring)',
 'MH? LHII–IIIA (sparse)',
 '80 m N–S × 50 (higher areas to NW; pottery also scattered to S) (0.7 ha)'
),
(185, 'Babés: Amoká-rácho',
 'Praktika 1956, 186; BCH 1958, 570; Deltion 1966, 171; AJA 1969, 148; AJA 1970, 49; AM 1969, 195',
 'CEM? Mycenaean dagger; small LHIIIA–B tholos; Early Archaic statue; Lernaean type urn on S slopes; figurines; LH pithos burial',
 'N?; LHIIIA–B C; A; H; R',
 '—'
),
(186, 'Olympía: Áltis (classical sanctuary)',
 'AM 1906, 205–18; 1908, 185–92; 1962, 371; AJA 1961, 228; Deltion 1967, 209; AJA 1969, 148',
 'HAB–CEM. MH apsidal houses; EH pithos burials; LH terracotta statuettes; bronze statuette of adorant type; EH–LH pottery in Kládheos stream area',
 'EH MH LH C; H; R; M',
 '—'
),
(187, 'Flóka',
 'Deltion 1963, 103; 1968, 171; AJA 1969, 148; AAA 1969, 248–55',
 'CEM. Destroyed LHIIIB tomb; female terracotta figurine showing Minoan influence; nearby Panouklí LH graves',
 'LHIIIB C; H',
 '—'
),
(188, 'Olympía: Dhróva',
 'BCH 1959, 655; AJA 1961, 226',
 'HAB. Abundant obsidian',
 'LHIIIB (heavy)',
 '150 m E–W × 100 (1.5 ha)'
);
INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(189, 'Plátanos: Tómb-rína',
 'SE edge of Rína',
 '—'
),
(190, 'Máyira',
 'S of village',
 '—'
),
(191, 'Ladzói: Eítia',
 '1 km N; 500 m W of ruined chapel of Áyios Ioánnis',
 'Medium hill'
),
(192, 'Olympía: New Museum',
 '500 m E–SE; slope and valley floor at foot of hill of Kronos',
 'Slope and valley floor'
),
(193, 'Olympía: railroad station',
 'N outskirts',
 'N bank of Kládheos River'
),
(194, 'Míraka: Oinomáos (ancient Pisa?)',
 '800 m SW; high conical hill',
 'High conical hill'
),
(195, 'Míraka: Rína (or Lakkoúla)',
 '—',
 'Area “around Míraka”'
),
(196, 'Kládheos: Stravokéfalo',
 '“Near Kládheos”; on right bank of Kládheos River',
 '—'
),
(197, 'Kládheos: Trípes',
 '2 km N on right bank of Kládheos River',
 '—'
),
(198, 'Kavkásia: Fengariákia (or Marmariskoi or Mathía Lákka)',
 'On border between land of Kafkania and Kládheos',
 '—'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(189, 'Plátanos: Tómb-rína',
 'Deltion 1960, 126; AJA 1964, 177; AJA 1967, 209; AJA 1969, 128',
 'CEM. 3 pillaged LHIIIB–C chamber tombs; necklaces of gold and glass paste; late A vases; grave; numerous H and R tombs nearby at place called Kamári',
 'LHIIIB–IIIC A; H; R',
 NULL
),
(190, 'Máyira',
 'Deltion 1966, 170; Deltion 1969, 149; AJA 1969, 128; AAA 1969, 248–56',
 'CEM. MH burial tumulus; late Mycenaean remains at place called Koiúpia; low mound containing H cist grave; R? pithos burials; H and R pottery at spot called Souveli or Vamvákia 200 m S',
 'MH LHIIIB–IIIC; C; H; R?',
 NULL
),
(191, 'Ladzói: Eítia',
 'AJA 1961, 226',
 'HAB. Bronze double axe; worked chert; foreign stones; roof tiles',
 'LHIIIB (earlier?); C; H (medium)',
 '100 m NE–SW × 60 (0.6 ha)'
),
(192, 'Olympía: New Museum',
 'Deltion 1960, 125; 1961–62, 105; 1964, 177; 1965, 197; AJA 1969, 129; AJA 1969, 248–49; AMCM 178',
 'HAB–CEM. Jewelry and metal objects; house walls; pad paved hearth (?); in excavation for museum basement, 13 LHIIIB chamber tombs in slope above; more ruined Mycenaean tombs; remains of Mycenaean and pre-Mycenaean occupation at summit of Hill of Kronos',
 'EH; MH LHIIIB',
 NULL
),
(193, 'Olympía: railroad station',
 'Deltion 1960, 126; Deltion 1963, 103; AJA 1969, 129',
 'CEM?',
 'MH LH; G; A C; H; R',
 NULL
),
(194, 'Míraka: Oinomáos (ancient Pisa?)',
 'AM 1908, 318–20; 1913, 37, 41; Olynthus II, 273–79; Bülow 1934; Sperling 1942, 24; AJA 1961, 226; AJA 1969, 128',
 'HAB–CEM. R cemetery of Frankish 500 m E and beside highway',
 'MH LH?; R',
 '80 m E–W × 60 (0.5 ha)'
),
(195, 'Míraka: Rína (or Lakkoúla)',
 'Deltion 1964, 177; AJA 1969, 128',
 'CEM? LHI sword and spearhead; LHIIIB alabastron; C sculpture; late R stele',
 'LHI–IIIA–IIIB C; R',
 NULL
),
(196, 'Kládheos: Stravokéfalo',
 'Deltion 1963, 103; AJA 1969, 129; AMCM 178',
 'CEM. 7 chamber tombs of large Mycenaean cemetery uncovered; partial destruction during road construction; necklaces of glass paste; diadems (one found intact on cranium); terracotta figurines; metal artifacts; vases of LHIIIA–B',
 'LHIIIA–B C; H; R',
 NULL
),
(197, 'Kládheos: Trípes',
 'Deltion 1964, 177; AJA 1969, 129',
 'CEM. 10 chamber tombs of Mycenaean cemetery; objects of bronze, gold, ivory; many LHIIIA–C vases',
 'LHIIIA–IIIC',
 NULL
),
(198, 'Kavkásia: Fengariákia (or Marmariskoi or Mathía Lákka)',
 'Deltion 1960, 126; Deltion 1964, 178; AJA 1969, 129',
 'CEM. Cist graves covered with stone slabs; faience beads',
 'LH C; H; R',
 NULL
);
INSERT INTO umme_sites_messenia
(site_no, site, location_desc, physical_desc)
VALUES
(199, 'Kavkaniá: Agrilítses',
 'Contiguous to S',
 '—'
),
(200, 'Áspra Spítia: Toúmba',
 'ca. 3 km SE; overlooking end of colline ridge of Erymanthos and Alpheios rivers',
 'Medium hill at S end of ridge'
),
(201, 'Trípes: Palió-kastro',
 'Above village',
 'High hill'
),
(202, 'Dhásela: Koutsochéra',
 '2½ km N–NW; 300 m N of chapel of Áyios Athanásios',
 'Low hill'
),
(203, 'Tripití: Kástro (ancient Sylon; gion?; in Mysa ca. 2 km N–NW)',
 '1 km W–SW',
 'Medium hill'
);
INSERT INTO UMME_archaeological_data
(site_no, site, bibliography, archaeological_desc, pottery_analysis, extent_desc)
VALUES
(199, 'Kavkaniá: Agrilítses',
 'Deltion 1967, 209; AJA 1969, 129',
 'HAB? Large quantities of pottery sherds',
 'MH LH',
 NULL
),
(200, 'Áspra Spítia: Toúmba',
 'Sperling 1942, 86; AJA 1961, 227',
 'HAB. Roof tiles',
 'EH? MH? LH? C; H (sparse; for prehistoric)',
 '200 m E–W × 150 (max.) (3 ha)'
),
(201, 'Trípes: Palió-kastro',
 'Meyer 1957, 106; BCH 1956, 522–46; AJA 1961, 227',
 'HAB–CEM. Chamber tombs',
 'LH C',
 NULL
),
(202, 'Dhásela: Koutsochéra',
 'Ergon 1954, 87–88; BCH 1957, 274–79; BSA 1957, 75; AJA 1961, 229–30',
 'HAB–CEM. 3 chamber tombs on lower S slope; 2 possible tholoi on crest; roof tiles; foundations of houses and fortifications (probably classical)',
 'LHIIIA–IIIB–IIIC SM? C',
 '130 m E–W × 100 (S and upper N slopes) (1.3 ha)'
),
(203, 'Tripití: Kástro (ancient Sylon; gion?; in Mysa ca. 2 km N–NW)',
 'Sperling 1942, 81; Meyer 1957, 40, 41; Praktika 1955, 244; AJA 1961, 230',
 'HAB. Abundant later blocks, column drums, roof tiles; silver and bronze coins; metal and terracotta objects',
 'MH? LH? C; H; R (mixed surface over several hills)',
 '150 m E–W × 50 (mainly larger C area over several hills) (0.8 ha)'
);
-- Εμφάνιση των δημιουργημένων πινάκων 
select * from umme_sites_messenia;
select * from UMME_archaeological_data;

-- Δημιουργία αντιγράφων για τους πίνακες 
CREATE TABLE raw_arch_data LIKE UMME_archaeological_data;
INSERT INTO raw_arch_data SELECT * FROM UMME_archaeological_data;

CREATE TABLE raw_sites LIKE umme_sites_messenia;
INSERT INTO raw_sites  SELECT * FROM umme_sites_messenia;


SELECT site,COUNT(*) 
FROM UMME_archaeological_data
GROUP BY site
HAVING COUNT(*) > 1;

SELECT site_no,COUNT(*) 
FROM umme_sites_messenia
GROUP BY site_no
HAVING COUNT(*) > 1;

SELECT dat.site_no FROM umme_sites_messenia AS sit
LEFT JOIN UMME_archaeological_data AS dat
ON sit.site_no  = dat.site_no
WHERE sit.site_no IS NULL;


SELECT sit.site_no FROM UMME_archaeological_data AS dat
LEFT JOIN umme_sites_messenia AS sit
ON dat.site_no = sit.site_no
WHERE dat.site_no IS NULL;

