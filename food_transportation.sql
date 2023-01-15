create table class (
class_id INT primary key,
class_name varchar(50)
	);

create table subclass (
subclass_id INT primary key,
class_id int references class(class_id),
subclass_name varchar(70)
	);

create table cargo (
cargo_id INT primary key,
subclass_id int references subclass(subclass_id),
cargo_name varchar(30)
	);

create table company (
company_id INT primary key,
company_name varchar(50),
city varchar(30),
street varchar(25),
street_number varchar (5),
zip_code varchar (6),
telephone_number varchar(12)
	);

create table company_description (
description_id INT primary key,
offer text,
website varchar(30),
company_id int references company (company_id)
	);

create table transport (
transport_id INT primary key,
date_from timestamp,
date_to timestamp,
cargo_id int references cargo (cargo_id),
company_id int references company (company_id)
	);

create table vehicle_fleet (
vehicle_fleet_id INT primary key,
company_id int references company (company_id),
subclass_id int references subclass (subclass_id)
	);

INSERT INTO class (class_id, class_name) VALUES
(1,	'Drinking milk, cream and fermented milk drinks'),
(2,	'Butter and cheese'),
(3,	'Meat preparations'),
(4,	'Fish products'),
(5,	'Edible fats'),
(6,	'Fruit and vegetable preserves'),
(7,	'Flour, groats, pasta'),
(8,	'Grain concentrates'),
(9,	'Food concentrates'),
(10, 'Bread'),
(11, 'Sugar and natural honey'),
(12, 'Confectionery'),
(13, 'Stimulants'),
(14, 'Mineral waters, juices and soft drinks'),
(15, 'Alcoholic drinks');


INSERT INTO company (company_id, company_name, city, street, street_number, zip_code, telephone_number) VALUES
(1,	'MS Logistics',	'Siemianowice Œl¹skie',	'Jana Paw³a II',	'4',	'41-100',	'785 047 671'),
(2,	'4 Wheels Group',	'D¹browa Górnicza',	'Tysi¹clecia',	'21',  '41-303',	'533 799 319'),
(3,	'Stelma Import-Export',	'Kraków',	'Pó³³anki',	'33',	'30-740',	'509 095 477'),
(4,	'Flag International Spedition',	'Warszawa',	'Gabriela',	'13',	'01-347',	'22 666 25 02'),
(5,	'Hansped',	'Katowice',	'Lompy',	'7', '40-040',	'32 353 07 22'),
(6,	'Bik Transport-Logistyka',	'Warszawa',	'Górczewska',	'228',	'01-460',	'22 304 19 87'),
(7,	'WMW',	'Rybarzowice',	'¯ywiecka',	'980',	'43-378',	'33 817 62 62'),
(8,	'PHU Eltrans',	'WoŸniki',	'Spokojna',	'26',	'42-289',	'608 314 373'),
(9,	'Jar-Trans',	'Leszno',	'Sochaczewska',	'51',	'05-084',	'501 330 903'),
(10, 'Jkt', 'Legionowo', 'Leœna', '23', '05-120', '517 269 534');



INSERT INTO subclass (subclass_id, class_id, subclass_name) VALUES
(1,	1,	'Raw milk'),
(2,	1,	'Drinking milk'),
(3,	1,	'Cream'),
(4,	1,	'Fermented milk drinks'),
(5,	2,	'Butter'),
(6,	2,	'Cheese'),
(7,	3,	'Cold cuts'),
(8,	3,	'Canned food'),
(9,	3,	'Fresh meat'),
(10,	4,	'Fresh fish'),
(11,	4,	'Frozen fish'),
(12,	4,	'Salted fish'),
(13,	4,	'Smoked fish'),
(14,	4,	'Fish marinades'),
(15,	4,	'Canned fish'),
(16,	4,	'Fish preserves'),
(17,	5,	'Animal fats are rendered'),
(18,	5,	'Vegetable oils'),
(19,	5,	'Hydrogenated vegetable fats'),
(20,	5,	'Kitchen, bakery and confectionery fats'),
(21,	5,	'Margarines'),
(22,	6,	'Fresh fruit'),
(23,	6,	'Fresh vegetables'),
(24,	6,	'Fruit preserves'),
(25,	6,	'Vegetable preserves'),
(26,	7,	'Flour'),
(27,	7,	'Groats'),
(28,	7,	'Pasta'),
(29,	8,	'Concentrates obtained with the use of hydrothermal treatment'),
(30,	8,	'Expanded products'),
(31,	8,	'Extruded products'),
(32,	9,	'Dinner concentrates'),
(33,	9,	'Cake concentrates'),
(34,	9,	'Ice cream concentrates'),
(35,	9,	'Dessert concentrates'),
(36,	9,	'Spice concentrates for dishes'),
(37,	9,	'Beverage concentrates'),
(38,	9,	'Powdered milk products'),
(39,	9,	'Additions to cakes and dishes'),
(40,	10,	'Rye bread'),
(41,	10,	'Mixed bread'),
(42,	10,	'Wheat bread'),
(43,	11,	'Sugar'),
(44,	11,	'Natural honey'),
(45,	12,	'Chocolate'),
(46,	12,	'Chocolate products'),
(47,	12,	'Chocolate substitutes and cocoa coated products'),
(48,	12,	'Eastern products'),
(49,	12,	'Sweets'),
(50,	12,	'Chewing gum'),
(51,	13,	'Tea'),
(52,	13,	'Coffee'),
(53,	13,	'Cocoa'),
(54,	13,	'Tea, coffee and cocoa surrogates'),
(55,	14,	'Mineral waters'),
(56,	14,	'Alkohol free drinks'),
(57,	14,	'Juices and fruit and vegetable drinks'),
(58,	14,	'Functional drinks'),
(59,	15,	'Spirits'),
(60,	15,	'Vodka'),
(61,	15,	'Wine'),
(62,	15,	'Meads'),
(63,	15,	'Beer');

INSERT INTO cargo (cargo_id, cargo_name, subclass_id) VALUES
(1, 'sour cream', 3),
(2, 'buckwheat', 27),
(3, 'pasta', 28),
(4, 'brown sugar', 43),
(5, 'coffee', 52),
(6, 'tea', 51),
(7, 'cocoa', 53),
(8, 'apple juice', 57),
(9, 'cane sugar', 43),
(10, 'orange juice', 57),
(11, 'basil', 36),
(12, 'oregano', 36),
(13, 'white sausage', 7),
(14, 'sausage', 7),
(15, 'linseed oil', 18),
(16, 'rapeseed oil', 18),
(17, 'sunflower oil', 18),
(18, 'barley flour', 26),
(19, 'corn flour', 26),
(20, 'rice flour', 26),
(21, 'millet flour', 26),
(22, 'triticale flour', 26),
(23, 'mackerel paste', 15),
(24, 'salmon paste', 15),
(25, 'tuna in oil', 15),
(26, 'strawberry jam', 24),
(27, 'apple jam', 24),
(28, 'peach jam', 24),
(29, 'rosehip jam', 24),
(30, 'rowan jam', 24),
(31, 'white cheese', 6),
(32, 'cheese', 6),
(33, 'cream cheese', 6),
(34, 'blue cheese', 6),
(35, 'oat milk', 2),
(36, 'rice milk', 2),
(37, 'soy milk', 2),
(38, 'almond milk', 2),
(39, 'cow milk', 2),
(40, 'goat milk', 2),
(41, 'millet', 10),
(42, 'barley', 10),
(43, 'corn grits', 10),
(44, 'crucian', 10),
(45, 'pike', 10),
(46, 'carp', 10),
(47, 'pike perch', 10),
(48, 'perch', 10),
(49, 'banana', 22),
(50, 'apple', 22),
(51, 'cherry', 22),
(52, 'strawberry', 22),
(53, 'orange', 22),
(54, 'mandarin', 22),
(55, 'tomato', 23),
(56, 'pepper', 23),
(57, 'cucumber', 23),
(58, 'radish', 23),
(59, 'celery', 23);

INSERT INTO transport (transport_id, date_from, date_to, cargo_id, company_id) VALUES
(1, '2020-06-22 19:10', '2020-06-25 15:10', 5, 3),
(2, '2021-02-03 05:30', '2021-02-12 14:30', 11, 5),
(3, '2021-01-22 10:15', '2021-01-25 14:22', 4, 2),
(4, '2020-12-05 04:34', '2020-12-10 19:27', 53, 9),
(5, '2021-04-01 10:00', '2021-04-04 12:30', 49, 1);

INSERT INTO vehicle_fleet (vehicle_fleet_id, company_id, subclass_id) VALUES
(1, 1,	3),
(2, 2,	51),
(3, 3,	60),
(4, 4,  34),
(5, 5,	12),
(6, 6,	18),
(7, 7,	21),
(8, 8,	21),
(9, 9,	19),
(10, 10, 12);

INSERT INTO company_description (description_id, offer, website, company_id) VALUES
(1, 'Oferujemy samochody ch³odnie o ³adownoœci nawet do 24 ton. Samochody przeznaczone s¹ do transportu towarów o kontrolowanej temperaturze od -25 do +25 stopni Celsjusza.', 'https://mslogistics.pl', 1),
(2, 'Zajmujemy siê importem, exportem i sprzeda¿¹ owoców, warzyw i art. spo¿ywczych. Zapewniamy profesjonaln¹ obs³ugê, konkurencyjne ceny i najwy¿sz¹ jakoœæ produktów.', 'https://36820-pl.all.biz/', 3);
	
CREATE VIEW cargoesCarriedByCompanies AS 
SELECT c.company_name, ci.cargo_name FROM company as c
INNER JOIN transport as t on c.company_id=t.company_id
INNER JOIN cargo as ci on ci.cargo_id=t.cargo_id
ORDER BY c.company_name

CREATE VIEW companiesWithWebsite AS
SELECT c.company_name, cd.website FROM company as c
INNER JOIN company_description as cd ON c.company_id=cd.company_id
WHERE website Is Not null

CREATE VIEW sum_of_transport AS
SELECT cargo.cargo_name, Count(transport.transport_id) AS sum_of_transport
FROM cargo 
INNER JOIN transport ON cargo.cargo_id = transport.cargo_id
GROUP BY cargo.cargo_name
ORDER BY Count(transport.transport_id) DESC;

CREATE VIEW transportNumberOfDays AS
SELECT transport.company_id, company.company_name, transport.date_from, transport.date_to, (date_to-date_from) as number_of_days
FROM company INNER JOIN transport ON company.company_id = transport.company_id
ORDER BY (date_to-date_from) DESC;
