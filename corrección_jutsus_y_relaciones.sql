-- 1. APAGO LAS REGLAS TEMPORALMENTE Y LIMPIO AMBAS TABLAS
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE ninja_jutsu;
TRUNCATE TABLE jutsus;
SET FOREIGN_KEY_CHECKS = 1;

-- 2. CARGO EL CATÁLOGO DE 92 JUTSUS (ELIMINANDO LOS REPETIDOS)
INSERT INTO jutsus (nombre, tipo) 
VALUES
('Rasengan', 'Ninjutsu'),
('Rasen Shuriken', 'Ninjutsu'),
('Kage Bunshin no Jutsu', 'Ninjutsu'),
('Sage Mode', 'Senjutsu'),
('Bijuu Dama', 'Ninjutsu'),
('Chidori', 'Ninjutsu'),
('Amaterasu', 'Dojutsu'),
('Susanoo', 'Dojutsu'),
('Kirin', 'Ninjutsu'),
('Amenotejikara', 'Dojutsu'),
('Byakugo no Jutsu', 'Fūinjutsu'),
('Shosen Jutsu', 'Ninjutsu médico'),
('Katsuyu Kuchiyose', 'Kuchiyose/Ninjutsu'),
('Cherry Blossom Impact', 'Taijutsu'),
('Raikiri', 'Ninjutsu'),
('Kamui', 'Dojutsu'),
('Doton: Doryuheki', 'Ninjutsu'),
('Purple Lightning', 'Ninjutsu'),
('Shinsu Senju', 'Ninjutsu'),
('Mokuryu no Jutsu', 'Ninjutsu'),
('Jukai Kotan', 'Ninjutsu'),
('Kajukai Korin', 'Ninjutsu'),
('Hiraishin no Jutsu', 'Ninjutsu espacial'),
('Edo Tensei', 'Kinjutsu'),
('Suiton: Suidanha', 'Ninjutsu'),
('Gojokibaku Fuda', 'Ninjutsu'),
('Katon: Haisekisho', 'Ninjutsu'),
('Futon: Dust Cloud Technique', 'Ninjutsu'),
('Thousand-Armed Murder', 'Ninjutsu'),
('Wind Release Enhancement', 'Ninjutsu'),
('Tsukuyomi', 'Genjutsu/Dojutsu'),
('Izanami', 'Genjutsu'),
('Yasaka Magatama', 'Ninjutsu'),
('Shiki Fujin', 'Fūinjutsu'),
('Flying Thunder God Slash', 'Kenjutsu'),
('Enma Kuchiyose', 'Kuchiyose/Ninjutsu'),
('Elemental Ninjutsu Mastery', 'Ninjutsu'),
('Adamantine Staff', 'Bukijutsu'),
('Shintenshin no Jutsu', 'Hiden/Ninjutsu'),
('Mind Body Disturbance Technique', 'Hiden/Ninjutsu'),
('Mind Transmission', 'Hiden/Ninjutsu'),
('Kagemane no Jutsu', 'Hiden/Ninjutsu'),
('Kage Nui', 'Hiden/Ninjutsu'),
('Shadow Strangle Technique', 'Hiden/Ninjutsu'),
('Kageyose', 'Hiden/Ninjutsu'),
('Shadow Sewing', 'Hiden/Ninjutsu'),
('Baika no Jutsu', 'Hiden/Ninjutsu'),
('Nikudan Sensha', 'Taijutsu'),
('Butterfly Mode', 'Hiden'),
('Cho Harite', 'Taijutsu'),
('Bubun Baika no Jutsu', 'Hiden/Ninjutsu'),
('Byakugan', 'Dojutsu'),
('Hakke Rokujuyon Sho', 'Taijutsu'),
('Kaiten', 'Taijutsu'),
('Juken', 'Taijutsu'),
('Hakke Kuhekisho', 'Taijutsu'),
('Twin Lion Fists', 'Taijutsu'),
('Hakke Kusho', 'Taijutsu'),
('Protective Eight Trigrams', 'Taijutsu'),
('Gatsuuga', 'Taijutsu'),
('Garoga', 'Taijutsu'),
('Beast Clone', 'Ninjutsu'),
('Fang Over Fang', 'Taijutsu'),
('Three-Headed Wolf Transformation', 'Ninjutsu'),
('Kikaichu no Jutsu', 'Hiden/Ninjutsu'),
('Insect Sphere', 'Hiden/Ninjutsu'),
('Parasite Giant Bugs', 'Hiden/Ninjutsu'),
('Insect Clone Technique', 'Hiden/Ninjutsu'),
('Beetle Wall', 'Hiden/Ninjutsu'),
('Frog Song Genjutsu', 'Genjutsu'),
('Yomi Numa', 'Ninjutsu'),
('Kuchiyose: Gamabunta', 'Kuchiyose/Ninjutsu'),
('Regeneración Mitótica', 'Ninjutsu médico'),
('Super fuerza', 'Taijutsu'),
('Sabaku Kyuu', 'Ninjutsu'),
('Sabaku Sousou', 'Ninjutsu'),
('Shield of Sand', 'Ninjutsu'),
('Sand Tsunami', 'Ninjutsu'),
('Desert Imperial Funeral', 'Ninjutsu'),
('Susanoo Perfecto', 'Dojutsu'),
('Limbo', 'Dojutsu'),
('Tengai Shinsei', 'Ninjutsu'),
('Infinite Tsukuyomi', 'Genjutsu'),
('Chibaku Tensei', 'Ninjutsu'),
('Izanagi', 'Genjutsu'),
('Gudodama', 'Ninjutsu'),
('Mokuton', 'Ninjutsu'),
('Six Paths Techniques', 'Ninjutsu'),
('Kusanagi no Tsurugi', 'Kenjutsu'),
('Fushi Tensei', 'Kinjutsu'),
('Kuchiyose: Manda', 'Kuchiyose/Ninjutsu'),
('Juinjutsu (Curse Mark)', 'Fūinjutsu');

-- 3. CARGO LAS 108 CONEXIONES EN LA TABLA PUENTE
INSERT INTO ninja_jutsu (id_ninja, id_jutsu) VALUES
-- Naruto (ID 1)
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
-- Sasuke (ID 2)
(2, 6), (2, 7), (2, 8), (2, 9), (2, 10),
-- Sakura (ID 3)
(3, 11), (3, 12), (3, 13), (3, 14),
-- Obito (ID 4)
(4, 16), (4, 85), (4, 86), (4, 87), (4, 88),
-- Itachi (ID 5)
(5, 31), (5, 7), (5, 8), (5, 32), (5, 33),
-- Madara (ID 6)
(6, 80), (6, 81), (6, 82), (6, 83), (6, 84),
-- Kakashi (ID 7)
(7, 15), (7, 16), (7, 6), (7, 17), (7, 18),
-- Hashirama (ID 8)
(8, 19), (8, 20), (8, 21), (8, 22), (8, 4),
-- Tobirama (ID 9)
(9, 23), (9, 24), (9, 25), (9, 3), (9, 26),
-- Asuma (ID 10)
(10, 27), (10, 28), (10, 29), (10, 30),
-- Hiruzen (ID 11)
(11, 34), (11, 36), (11, 37), (11, 38),
-- Minato (ID 12)
(12, 23), (12, 1), (12, 34), (12, 35),
-- Kiba (ID 13)
(13, 60), (13, 61), (13, 62), (13, 63), (13, 64),
-- Neji (ID 14)
(14, 52), (14, 53), (14, 54), (14, 55), (14, 56),
-- Hinata (ID 15)
(15, 52), (15, 57), (15, 58), (15, 55), (15, 59),
-- Shikamaru (ID 16)
(16, 42), (16, 43), (16, 44), (16, 45), (16, 46),
-- Choji (ID 17)
(17, 47), (17, 48), (17, 49), (17, 50), (17, 51),
-- Ino (ID 18)
(18, 39), (18, 40), (18, 41),
-- Shino (ID 19)
(19, 65), (19, 66), (19, 67), (19, 68), (19, 69),
-- Jiraiya (ID 20)
(20, 4), (20, 1), (20, 70), (20, 71), (20, 72),
-- Tsunade (ID 21)
(21, 11), (21, 73), (21, 74), (21, 13),
-- Orochimaru (ID 22)
(22, 24), (22, 89), (22, 90), (22, 91), (22, 92),
-- Gaara (ID 23)
(23, 75), (23, 76), (23, 77), (23, 78), (23, 79);