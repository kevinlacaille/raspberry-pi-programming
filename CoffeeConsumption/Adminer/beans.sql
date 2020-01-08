-- Adminer 4.7.5 PostgreSQL dump

DROP TABLE IF EXISTS "beans";
DROP SEQUENCE IF EXISTS beans_id_seq;
CREATE SEQUENCE beans_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."beans" (
    "bag" text NOT NULL,
    "count_grams" integer NOT NULL,
    "country" text NOT NULL,
    "id" integer DEFAULT nextval('beans_id_seq') NOT NULL,
    "latitude" double precision,
    "longitude" double precision
) WITH (oids = false);

INSERT INTO "beans" ("bag", "count_grams", "country", "id", "latitude", "longitude") VALUES
('Lavazza Qualita Rossa',	500,	'Ethiopia',	6,	9.145,	40.4897),
('Lavazza Crema E Aroma',	1000,	'Uganda',	9,	1.3733,	32.2903),
('Lavazza Qualita Rossa',	500,	'Brazil',	5,	-14.235,	-51.9253),
('Lavazza Crema E Aroma',	1000,	'Brazil',	8,	-14.235,	-51.9253),
('Lavazza Crema E Aroma',	1000,	'Honduras',	7,	15.2,	-86.2419),
('Illy Classico',	250,	'Guatemala',	10,	15.7835,	-90.2308),
('Illy Classico',	250,	'Colombia',	12,	4.5709,	-74.2973),
('Illy Classico',	250,	'Ethiopia',	13,	9.145,	40.4897),
('Illy Classico',	250,	'India',	14,	20.5937,	78.9629),
('Illy Classico',	250,	'Costa Rica',	15,	9.7489,	-83.7534),
('Kicking Horse Cliff Hanger Espresso',	454,	'Honduras',	16,	15.2,	-86.2419),
('Kicking Horse Cliff Hanger Espresso',	454,	'Colombia',	17,	4.5709,	-74.2973),
('Kicking Horse Cliff Hanger Espresso',	454,	'Indonesia',	18,	-0.7893,	113.9213),
('Kicking Horse Cliff Hanger Espresso',	454,	'Ethiopia',	19,	9.145,	40.4897),
('Lavazza Creme E Gusto',	750,	'Uganda',	4,	1.3733,	32.2903),
('Lavazza Creme E Gusto',	750,	'Brazil',	2,	-14.235,	-51.9253),
('Lavazza Creme E Gusto',	750,	'Indonesia',	3,	-0.7893,	113.9213),
('Illy Classico',	250,	'Brazil',	11,	-14.235,	-51.9253),
('Lavazza Qualita Rossa',	500,	'Ethiopia',	20,	9.145,	40.4897),
('Lavazza Qualita Rossa',	500,	'Brazil',	21,	-14.235,	-51.9253),
('Kicking Horse Grizzly Claw',	454,	'Colombia',	22,	4.5709,	-74.2973),
('Kicking Horse Grizzly Claw',	454,	'Honduras',	23,	15.2,	-86.2419),
('Kicking Horse Grizzly Claw',	454,	'Indonesia',	24,	-0.7893,	113.9213),
('Kicking Horse Grizzly Claw',	454,	'Ethiopia',	25,	9.145,	40.4897);

-- 2020-01-08 19:10:37.187443+00
