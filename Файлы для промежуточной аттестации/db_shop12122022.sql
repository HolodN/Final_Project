--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-12-12 04:30:00

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

DROP DATABASE db_shop;
--
-- TOC entry 3366 (class 1262 OID 16718)
-- Name: db_shop; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db_shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';


ALTER DATABASE db_shop OWNER TO postgres;

\connect db_shop

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
-- TOC entry 3350 (class 0 OID 16720)
-- Dependencies: 210
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category (id, name) VALUES (1, 'Видеокарты');
INSERT INTO public.category (id, name) VALUES (2, 'Процессоры');
INSERT INTO public.category (id, name) VALUES (3, 'Материнские платы');
INSERT INTO public.category (id, name) VALUES (4, 'Оперативная память');


--
-- TOC entry 3352 (class 0 OID 16726)
-- Dependencies: 212
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.image (id, file_name, product_id) VALUES (76, 'af90c1f9-27cf-48a5-b1cb-1277904b5f29.1.png', 16);
INSERT INTO public.image (id, file_name, product_id) VALUES (77, '52c05637-2e15-452d-bd29-2f14c233e83b.2.png', 16);
INSERT INTO public.image (id, file_name, product_id) VALUES (78, 'beb0e588-b9db-4262-ac82-ab86fadafd20.3.png', 16);
INSERT INTO public.image (id, file_name, product_id) VALUES (79, 'c80d73c5-ab37-4465-aed6-8fa9b27d7ba3.4.png', 16);
INSERT INTO public.image (id, file_name, product_id) VALUES (80, '673c8be7-29b1-4711-bde3-4283287094ac.5.png', 16);
INSERT INTO public.image (id, file_name, product_id) VALUES (81, 'fca5fd64-3b69-4070-87a9-7ecf0d3af036.1.png', 17);
INSERT INTO public.image (id, file_name, product_id) VALUES (82, '55858954-3d17-43ec-8da9-55b1ff2073f9.2.png', 17);
INSERT INTO public.image (id, file_name, product_id) VALUES (83, '70876fe3-a733-4779-8cc2-6cd8706b3693.3.png', 17);
INSERT INTO public.image (id, file_name, product_id) VALUES (84, 'b0a005fa-9a3c-478f-beb7-2374344bc9fe.4.png', 17);
INSERT INTO public.image (id, file_name, product_id) VALUES (85, '35fd9114-374d-4f4e-b190-d55176b6d6b4.5.png', 17);
INSERT INTO public.image (id, file_name, product_id) VALUES (86, '5cacedb9-d520-46ac-965c-daa340f56fe1.1.png', 18);
INSERT INTO public.image (id, file_name, product_id) VALUES (87, 'c2a26973-08a1-4181-9a27-d76d1a27699a.2.png', 18);
INSERT INTO public.image (id, file_name, product_id) VALUES (88, 'bd1f4b42-66f2-4429-8977-b267dd5a57b0.3.png', 18);
INSERT INTO public.image (id, file_name, product_id) VALUES (89, 'dc987f53-bc2e-4ce5-b283-29868c511928.4.png', 18);
INSERT INTO public.image (id, file_name, product_id) VALUES (90, '6985c9f8-56c2-4011-a992-b249fa2ecc92.5.png', 18);
INSERT INTO public.image (id, file_name, product_id) VALUES (91, '1c9703dd-adcf-4c8b-82fe-3a62d2cc9a8c.1.png', 19);
INSERT INTO public.image (id, file_name, product_id) VALUES (92, '6a69ad6d-ccc5-4a51-adf0-ed9d9f72d145.2.png', 19);
INSERT INTO public.image (id, file_name, product_id) VALUES (93, '81d16f94-b50b-45ee-b73b-a02d9199ad63.3.png', 19);
INSERT INTO public.image (id, file_name, product_id) VALUES (94, '0303c460-f846-4bdc-b5bd-6493aa3140cb.4.png', 19);
INSERT INTO public.image (id, file_name, product_id) VALUES (95, '129b824c-79c8-47e8-94ee-76485dfdfc5d.5.png', 19);
INSERT INTO public.image (id, file_name, product_id) VALUES (96, '045dd65b-8ce3-4697-8db4-1bf3677f777f.1.png', 20);
INSERT INTO public.image (id, file_name, product_id) VALUES (97, 'ea149ab2-cf17-49ac-ad34-14da200bcd2b.2.png', 20);
INSERT INTO public.image (id, file_name, product_id) VALUES (98, 'bca01957-8e2a-4c39-b8fb-d2a8be319ae8.3.png', 20);
INSERT INTO public.image (id, file_name, product_id) VALUES (99, 'ea873825-b53d-4190-8d45-e218a6f1ebf0.4.png', 20);
INSERT INTO public.image (id, file_name, product_id) VALUES (100, '03ae5331-4932-41c3-bcc3-847dbfc22cb0.5.png', 20);
INSERT INTO public.image (id, file_name, product_id) VALUES (101, 'c46ae6d6-3af7-4f71-993f-6e513ae14da1.1.png', 21);
INSERT INTO public.image (id, file_name, product_id) VALUES (102, '4212a4f2-36e8-4063-8114-380729ab6a8c.2.png', 21);
INSERT INTO public.image (id, file_name, product_id) VALUES (103, 'd0b253b7-c9b4-4181-b9a2-398f1946b693.3.png', 21);
INSERT INTO public.image (id, file_name, product_id) VALUES (104, '0371660a-6c45-4af6-b491-685a33979b00.4.png', 21);
INSERT INTO public.image (id, file_name, product_id) VALUES (105, '93e72b2a-9ae0-430e-af62-f31bd3d85fcc.5.png', 21);
INSERT INTO public.image (id, file_name, product_id) VALUES (106, '70723716-7866-47f2-adf2-9dd99836ddf4.1.jpg', 22);
INSERT INTO public.image (id, file_name, product_id) VALUES (107, 'b998d143-9d56-4a19-a62e-bb31a4d17f9e.2.jpg', 22);
INSERT INTO public.image (id, file_name, product_id) VALUES (108, '347edd9c-7927-4811-9f55-a1677bb95b57.', 22);
INSERT INTO public.image (id, file_name, product_id) VALUES (109, 'f1d6cfe4-0cde-44ab-b30c-3e1d0b40be29.', 22);
INSERT INTO public.image (id, file_name, product_id) VALUES (110, '1fd1f9c8-ae81-4c68-9e74-f7db2ad3ea4e.', 22);
INSERT INTO public.image (id, file_name, product_id) VALUES (111, 'f2fb0ae2-bdd9-47be-a6e8-93c54c51c929.1.jpg', 23);
INSERT INTO public.image (id, file_name, product_id) VALUES (112, '46035287-945e-4d99-92b2-dcfe581e8e34.2.jpg', 23);
INSERT INTO public.image (id, file_name, product_id) VALUES (113, '50dffb25-2b01-4744-8b15-d9e7f1f8e533.', 23);
INSERT INTO public.image (id, file_name, product_id) VALUES (114, '66dd1f32-b304-42dc-9f58-7b12ee0d4a52.', 23);
INSERT INTO public.image (id, file_name, product_id) VALUES (115, '08b5f514-3ac3-4cfe-af1a-141066ead170.', 23);
INSERT INTO public.image (id, file_name, product_id) VALUES (116, '64d2a20f-68a7-4d8a-a128-f11b997132c3.1.jpg', 24);
INSERT INTO public.image (id, file_name, product_id) VALUES (117, '9b65ca91-521d-42ba-8d97-8c578c2cf689.2.jpg', 24);
INSERT INTO public.image (id, file_name, product_id) VALUES (118, 'dc18d52f-eb87-4563-8387-017abe113a88.', 24);
INSERT INTO public.image (id, file_name, product_id) VALUES (119, '19f786a8-6ae2-4bdb-ba4d-65e2d59a4c39.', 24);
INSERT INTO public.image (id, file_name, product_id) VALUES (120, 'e43ac056-55be-4db4-8b90-c2aa826a4cdc.', 24);
INSERT INTO public.image (id, file_name, product_id) VALUES (121, 'dbc5810d-46a7-4e42-80a3-c2c4cc17d50c.1.png', 25);
INSERT INTO public.image (id, file_name, product_id) VALUES (122, '6a321412-f38d-4cdd-97cf-760132d583be.2.png', 25);
INSERT INTO public.image (id, file_name, product_id) VALUES (123, 'b8115116-eeb2-45ad-952b-44f2175f6ea1.3.png', 25);
INSERT INTO public.image (id, file_name, product_id) VALUES (124, '2d3d08e0-5c2d-4b6f-86f9-53cdb9dc19d5.4.png', 25);
INSERT INTO public.image (id, file_name, product_id) VALUES (125, '26377800-9f36-424b-8d3f-ed8f07c01aed.5.png', 25);
INSERT INTO public.image (id, file_name, product_id) VALUES (126, '95931066-2362-4fca-992c-d3cabff88865.1.png', 26);
INSERT INTO public.image (id, file_name, product_id) VALUES (127, 'a1c9d992-3971-4f15-b7bc-be34ee69ab89.2.png', 26);
INSERT INTO public.image (id, file_name, product_id) VALUES (128, 'fbf068fa-7be9-4633-9988-cf9b55283c4d.', 26);
INSERT INTO public.image (id, file_name, product_id) VALUES (129, '84ef19de-15fb-4851-9469-ca12378c4236.', 26);
INSERT INTO public.image (id, file_name, product_id) VALUES (130, '38b841bd-f518-4860-a697-637f1aac55be.', 26);
INSERT INTO public.image (id, file_name, product_id) VALUES (131, '4a29a55d-51c7-40a8-a38d-3ca8594edb01.1.png', 27);
INSERT INTO public.image (id, file_name, product_id) VALUES (132, '4976a35b-4f98-4c03-9b65-2b351284713a.2.png', 27);
INSERT INTO public.image (id, file_name, product_id) VALUES (133, '65dc0eb1-4757-4c96-9ca8-e1a1d07aa6d7.3.png', 27);
INSERT INTO public.image (id, file_name, product_id) VALUES (134, 'cc78319f-4988-42fe-bb02-afddbac2ad01.', 27);
INSERT INTO public.image (id, file_name, product_id) VALUES (135, '9aa7fd2c-6fda-4ad1-8136-2cf25e1212a0.', 27);


--
-- TOC entry 3354 (class 0 OID 16732)
-- Dependencies: 214
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, count, date_time, number, price, status, person_id, product_id, num) VALUES (4, 1, '2022-12-11 15:42:14.999667', 'd6c0ba7e-497a-44ac-9925-fce0d84ed2c8', 12990, 2, 1, 16, NULL);
INSERT INTO public.orders (id, count, date_time, number, price, status, person_id, product_id, num) VALUES (9, 1, '2022-12-12 04:12:31.123107', '50f42162-54ec-4b58-9d3b-4837de98b6a7', 19232, 1, 1, 25, NULL);
INSERT INTO public.orders (id, count, date_time, number, price, status, person_id, product_id, num) VALUES (10, 1, '2022-12-12 04:12:37.979793', '6c06d058-1808-4a01-a128-82b44d62842c', 21666, 2, 1, 27, NULL);
INSERT INTO public.orders (id, count, date_time, number, price, status, person_id, product_id, num) VALUES (5, 1, '2022-12-11 15:57:55.835643', '1981ea5c-06a0-4b4d-acfe-1f56692a70a0', 72594, 3, 1, 21, NULL);
INSERT INTO public.orders (id, count, date_time, number, price, status, person_id, product_id, num) VALUES (7, 1, '2022-12-12 04:12:01.180525', 'c316c506-65a9-4237-8285-9c22cc8e978d', 178358, 3, 1, 19, NULL);
INSERT INTO public.orders (id, count, date_time, number, price, status, person_id, product_id, num) VALUES (11, 1, '2022-12-12 04:13:35.026758', '6627e326-b32a-4ca0-a95a-6a63e0058b0a', 9315, 0, 1, 23, NULL);
INSERT INTO public.orders (id, count, date_time, number, price, status, person_id, product_id, num) VALUES (8, 1, '2022-12-12 04:12:17.625167', '525d80b5-3394-42ce-994a-4e4fa8a6efdc', 8835, 4, 1, 22, NULL);
INSERT INTO public.orders (id, count, date_time, number, price, status, person_id, product_id, num) VALUES (6, 1, '2022-12-12 04:12:01.165956', 'c316c506-65a9-4237-8285-9c22cc8e978d', 6305, 3, 1, 18, NULL);


--
-- TOC entry 3356 (class 0 OID 16738)
-- Dependencies: 216
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person (id, login, password, role) VALUES (1, 'user_test', '$2a$10$B/1.AMjR41hWoFL.xpehsOqEKS./nnefwYGfUEeUvt/Kdpq9cixj6', 'ROLE_USER');
INSERT INTO public.person (id, login, password, role) VALUES (2, 'admin', '$2a$10$eI4uE8oP5O4P61EtgB3cGeslKyrMeVFQqmRyfn7Z.rSxGzdviLzna', 'ROLE_ADMIN');
INSERT INTO public.person (id, login, password, role) VALUES (3, 'new_user', '$2a$10$hnsJUbsOC27M1NPq.RY.FuKdUBxrmznaG0bMkhUd545asN9NmzxkC', 'ROLE_USER');


--
-- TOC entry 3358 (class 0 OID 16746)
-- Dependencies: 218
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (16, '2022-12-10 22:48:43.79169', 'Продукты серии MAG нацелены на пользователей, в особенности на начинающих геймеров, которые предпочитают удобные в обращении и надежные решения. Тщательно протестированные, они просто стабильно делают то, для чего предназначены.По мере того как процессоры становятся все более сложными и включают в себя все больше ядер, растут требования к системам их питания и охлаждения. Инновационные инженерные решения, применяемые на материнских платах MSI, такие как радиатор системы питания, позволят полностью реализовать весь скоростной потенциал самых мощных процессоров.', 12990, 'Современные устройства', 'Материнская плата MSI MAG B660M BAZOOKA', 'Ростов-на-Дону', 3);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (17, '2022-12-10 22:50:45.597114', 'С материнской платой ASUS PRIME H510M-A вам не придется переживать о корректности работы вашего персонального компьютера. Надежность материнской платы подтверждает гарантия от производителя на 36 месяцев. Чипсет Intel H510 и двухканальный режим работы оперативной памяти поддерживают высокую пропускную способность материнской платы. Слоты расширения PCI-E x1 и PCI-E 4.0 x16 дают возможность подключить платы расширения различного назначения.На задней панели материнской платы ASUS PRIME H510M-A имеются разъемы HDMI, D-Sub (VGA), Display Port, USB 2.0, USB 3.0, а также PS/2 для подключения клавиатуры и мыши. Для работы с накопителями информации имеются дисковые контроллеры SATA3 и М.2.', 8589, 'ЗЕОН', 'Материнская плата Asus Prime H510M-A', 'Ростов-на-Дону', 3);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (18, '2022-12-10 22:58:36.0844', 'Материнская плата GIGABYTE H610M S2H – модель от одного из признанных лидеров мирового рынка производства системных плат. Форм-фактор устройства – Micro-ATX. Плата совместима с компактными корпусами. Модель рассчитана на монтаж процессоров LGA 1700. Совместимая память – DDR4. В качестве системного диска оптимально использовать твердотельный накопитель M.2. Естественно, что возможна эксплуатация и SATA-устройств. Портов SATA – 4.', 6305, 'ВАЙЛДБЕРРИЗ', 'Материнская плата Gigabyte H610M S2H DDR4 1.2', 'Ростов-на-Дону', 3);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (19, '2022-12-11 02:30:31.531445', 'Видеокарта ASRock AMD Radeon RX 6900 XT OC Formula на базе архитектуры AMD RDNA 2, оснащенная 80 мощными улучшенными вычислительными блоками, кэш-памятью AMD Infinity Cache объемом 128 МБ и выделенной памятью GDDR6 объемом до 16 ГБ, разработана для обеспечения сверхвысокой частоты кадров и игрового процесса с разрешением 4K на серьезном уровне.', 178358, 'ВАЙЛДБЕРРИЗ', 'Видеокарта Asrock Radeon RX 6900 XT OC Formula 16G/Radeon/16 Gb/GDDR6/256bit/RTL [RX6900XT-OCF-16G]', 'Ростов-на-Дону', 1);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (20, '2022-12-11 02:35:24.856104', 'Palit GeForce RTX 3080 Ti GamingPro обеспечивает потрясающую графику, невероятно высокую частоту кадров и ускорение искусственного интеллекта для игр и творческих приложений. Использование высококачественных алюминиевых пластин для охлаждения компонентов и усовершенстваных вентиляторов TurboFan 3.0 обеспечивает потрясающую эффективность охлаждения. Сочетая черный и серебристо-серый дизайн с ARGB подсветкой, видеокарта позволяет настраивать световые эффекты в соответствии с собственными предпочтениями пользователей.', 116945, 'ВАЙЛДБЕРРИЗ', 'Видеокарта Palit GeForce RTX 3080 Ti GamingPro/12Gb [NED308T019KB-132AA]', 'Ростов-на-Дону', 1);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (21, '2022-12-11 02:38:31.992956', 'Самое свежее воплощение культовой серии Gaming от MSI - это все то же сочетание высокой скорости, эффективного охлаждения и безупречной эстетики, которое давно полюбилось увлеченным геймерам. Такая видеокарта позволит запускать производительные игры, оставаясь холодной и тихой - именно так, как вам хочется.
', 72594, 'ВАЙЛДБЕРРИЗ', 'Видеокарта MSI GeForce RTX 3070 GAMING Z TRIO LHR /8Gb[RTX 3070 GAMING Z TRIO 8G LHR]', 'Ростов-на-Дону', 1);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (22, '2022-12-11 03:00:03.859927', 'ид поставки OEM (без упаковки)! Новый процессор Intel Core i3-10105 10-го поколения, с кодовым названием микроархитектуры Comet Lake. Предназначен для настольной платформы Intel LGA 1200. Принадлежит к семейству высокопроизводительных процессоров Core i3.Intel Core i3-10105 производится по стандарту 14-нм техпроцесса, имеет 4 ядра, которые работают в 8 потоков со штатной тактовой частотой 3.7 ГГц, 4.4 ГГц в режиме Turbo Boost. Объем кэш-памяти 3 уровня равен 6 МБ. Имеет 2-х канальный контроллер памяти DDR4.', 8835, 'Смарт Технолоджи', 'Процессор Intel Core i3-10105 LGA1200, OEM', 'Ростов-на-Дону', 2);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (23, '2022-12-11 03:02:27.97774', '4-ядерный процессор AMD Ryzen 3 3200G OEM поставляется без системы охлаждения, поэтому выбрать кулер вы сможете самостоятельно. Базовая частота процессора, базирующегося на архитектуре Zen+, равна 3600 МГц. В турборежиме частота на 400 МГц выше – 4000 МГц. Модель подойдет для использования в составе игровой системы или производительного универсального компьютера. Общий объем кэш-памяти второго и третьего уровней равен 6 МБ. Кэш L3 вдвое объемнее своего «собрата». Процессор монтируется в сокет AM4. Процессор AMD Ryzen 3 3200G OEM имеет интегрированное графическое ядро Radeon Vega 8, максимальная частота которого составляет 1250 МГц. Вы сможете задействовать до 128 ГБ памяти. Максимально допустимая частота памяти равна 2933 МГц. Показатель TDP процессора, непосредственно влияющий на параметры используемого кулера, равен 65 Вт. Максимальная температура процессора составляет 95 °C.', 9315, 'ВАЙЛДБЕРРИЗ', 'Процессор Ryzen 3 3200G YD3200C5M4MFH', 'Ростов-на-Дону', 2);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (24, '2022-12-11 03:03:39.07235', 'Intel Pentium Gold Dual-Core Processor G6400 [BX80701G6400]/ 4,0 Ghz 4M / Comet Lake Box / Модель Intel Pentium Gold G6400 / Сокет LGA 1200 / Код производителя [BX80701G6400] / Год релиза 2020 / Система охлаждения в комплекте есть / Термоинтерфейс в комплекте нанесен на основание радиатора / Общее количество ядер 2 / Максимальное число потоков 4 / Количество производительных ядер 2 / Объем кэша L2 0.5 МБ / Объем кэша L3 4 МБ / Техпроцесс 14 нм / Ядро Intel Comet Lake-S / Базовая частота процессора 4 ГГц / Тип памяти DDR4 / Максимально поддерживаемый объем памяти 128 ГБ / Количество каналов 2 / Максимальная частота оперативной памяти 2666 МГц / Тепловыделение (TDP) 58 Вт / Базовое тепловыделение 58 Вт / Максимальная температура процессора 100 °C / Интегрированное графическое ядро есть / Модель графического процессора Intel UHD Graphics 610 / Максимальная частота графического ядра 1050 МГц / Исполнительные блоки 12 / Потоковые процессоры (Shading Units) 96 / Встроенный контроллер PCI Express PCI-E 3.0 / Число линий PCI Express 16 шт', 4599, 'ВАЙЛДБЕРРИЗ', 'Intel Pentium Gold G6400 [BX80701G6400]', 'Ростов-на-Дону', 2);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (25, '2022-12-11 03:42:34.40964', 'A-Data представляет DDR5 память из линейки XPG Lancer с пропускной способностью 5200 МТ/с. Свежая память из семейства XPG Lancer получила фирменный чёрный радиатор и предназначена как для требовательных игроков, так и для энтузиастов и любителей разгона.DDR5, 16 ГБx2 шт, 5200 МГц, PC41600', 19232, 'ВАЙЛДБЕРРИЗ', 'Модуль памяти ADATA DDR5 32GB (2шт по 16GB) DIMM [AX5U5200C3816G-DCLARBK]', 'Ростов-на-Дону', 4);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (26, '2022-12-11 03:45:58.139814', 'Модули памяти Kingston FURY Beast DDR5 обеспечивают новейшие технологии для игровых платформ нового поколения. Память DDR5, отличающаяся более высокой скоростью, емкостью и надежностью, поставляется с набором расширенных функций, таких как накристальная функция обнаружения и исправления ошибок (ODECC) для повышения стабильности на экстремальных скоростях, два 32-битных подканала для повышения эффективности и встроенная в модуль интегральная микросхема управления питанием для подачи энергии туда, где это больше всего необходимо.', 30067, 'ВАЙЛДБЕРРИЗ
', 'Модули памяти Kingston Kingston FURY Beast BlackKF548C38BBK2-32|DIMM/DDR5/16Gb KIT2/4800MHz/PC38400', 'Ростов-на-Дону', 4);
INSERT INTO public.product (id, date_time_of_created, description, price, seller, title, warehouse, category_id) VALUES (27, '2022-12-11 03:46:58.139814', 'Модуль памяти KINGSTON KF436C18RBAK2/64 | DIMM / DDR4 / 64 GB / 3600 МГц / PC28800. Компания Kingston с гордостью представляет Kingston FURY - бренд высокопроизводительных продуктов для геймеров и энтузиастов. Опыт Kingston в разработке и производстве памяти и хранилищ файлов (воплощением которого стали продукты HyperX DRAM, флэш-память и твердотельные накопители) помогает компании в течение двух десятилетий оставаться ключевым выбором энтузиастов и геймеров. Kingston FURY Renegade - это поколение высокопроизводительных устройств памяти и решений для хранения данных, предназначенных для энтузиастов, геймеров и создателей контента. Kingston FURY продолжает традицию производства самой производительной и надёжной памяти DRAM на рынке.', 21666, 'ВАЙЛДБЕРРИЗ', 'Модули памяти Kingston KF436C18RBAK2/64 2x32 Гб', 'Ростов-на-Дону', 4);


--
-- TOC entry 3360 (class 0 OID 16755)
-- Dependencies: 220
-- Data for Name: product_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 209
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 1, false);


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 211
-- Name: image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.image_id_seq', 135, true);


--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 213
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 11, true);


--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 215
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_id_seq', 3, true);


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 219
-- Name: product_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_cart_id_seq', 11, true);


--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 217
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 27, true);


-- Completed on 2022-12-12 04:30:00

--
-- PostgreSQL database dump complete
--

