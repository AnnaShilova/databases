﻿/*задание 6*/
  CREATE SEQUENCE seq_measure
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_caterer
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_deliver
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_employer
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_group
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_inprice
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_material
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_section
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_store
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_supply
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_surplus
  START WITH 1
  INCREMENT BY 1;

/*задание 7*/
  INSERT INTO T_MEASURE (ID_MEASURE, NAME)
  VALUES (seq_measure.NEXTVAL, 'ШТ');
INSERT INTO T_MEASURE (ID_MEASURE, NAME)
  VALUES (seq_measure.NEXTVAL, 'М');
INSERT INTO T_MEASURE (ID_MEASURE, NAME)
  VALUES (seq_measure.NEXTVAL, 'КГ');
INSERT INTO T_MEASURE (ID_MEASURE, NAME)
  VALUES (seq_measure.NEXTVAL, 'СМ');
INSERT INTO T_MEASURE (ID_MEASURE, NAME)
  VALUES (seq_measure.NEXTVAL, 'Т');

INSERT INTO T_CATERER (ID_CATERER, NAME, PHONE, FAX, LEGAL_ADDRESS, ACTUAL_ADDRESS, EMAIL)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 1', '89125555555', '70957777771', 'Попова 25','Попова 25','aaa@gmail.com');
INSERT INTO T_CATERER (ID_CATERER, NAME, PHONE, FAX, LEGAL_ADDRESS, ACTUAL_ADDRESS, EMAIL)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 2', '89192552553', '70957777772', 'Екатериненская 100','Екатериненская 100','bbb@gmail.com');
INSERT INTO T_CATERER (ID_CATERER, NAME, PHONE, FAX, LEGAL_ADDRESS, ACTUAL_ADDRESS, EMAIL)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 3', '89504478963', '70957777773', 'Ленина 60','Ленина 60','ccc@gmail.com');
INSERT INTO T_CATERER (ID_CATERER, NAME, PHONE, FAX, LEGAL_ADDRESS, ACTUAL_ADDRESS, EMAIL)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 4', '86814544565', '70957777774', 'Луначарског 105','Луначарског 105','ddd@gmail.com');
INSERT INTO T_CATERER (ID_CATERER, NAME, PHONE, FAX, LEGAL_ADDRESS, ACTUAL_ADDRESS, EMAIL)
  VALUES (seq_caterer.NEXTVAL, 'Поставщик 5', '89228527416', '70957777775', 'Калинина 5','Калинина 5','eee@gmail.com');

INSERT INTO T_GROUP (ID_GROUP, NAME)
  VALUES (seq_group.NEXTVAL, 'природные');
INSERT INTO T_GROUP (ID_GROUP, NAME)
  VALUES (seq_group.NEXTVAL, 'каменные');
INSERT INTO T_GROUP (ID_GROUP, NAME)
  VALUES (seq_group.NEXTVAL, 'керамические');
INSERT INTO T_GROUP (ID_GROUP, NAME)
  VALUES (seq_group.NEXTVAL, 'минеральные сплавы');
INSERT INTO T_GROUP (ID_GROUP, NAME)
  VALUES (seq_group.NEXTVAL, 'искусственные');

INSERT INTO T_MATERIAL (ID_MATERIAL, NAME, ID_MEASURE, ID_GROUP)
  VALUES (seq_material.NEXTVAL, 'стеклоблок', '1', '4');
INSERT INTO T_MATERIAL (ID_MATERIAL, NAME, ID_MEASURE, ID_GROUP)
  VALUES (seq_material.NEXTVAL, 'цемент', '3', '5');
INSERT INTO T_MATERIAL (ID_MATERIAL, NAME, ID_MEASURE, ID_GROUP)
  VALUES (seq_material.NEXTVAL, 'древесина', '3', '1');
INSERT INTO T_MATERIAL (ID_MATERIAL, NAME, ID_MEASURE, ID_GROUP)
  VALUES (seq_material.NEXTVAL, 'кирпич', '1', '5');
INSERT INTO T_MATERIAL (ID_MATERIAL, NAME, ID_MEASURE, ID_GROUP)
  VALUES (seq_material.NEXTVAL, 'гравий', '5', '2');

INSERT INTO T_STORE (ID_STORE, NAME)
  VALUES (seq_store.NEXTVAL, 'Магазин 1');
INSERT INTO T_STORE (ID_STORE, NAME)
  VALUES (seq_store.NEXTVAL, 'Магазин 2');
INSERT INTO T_STORE (ID_STORE, NAME)
  VALUES (seq_store.NEXTVAL, 'Магазин 3');
INSERT INTO T_STORE (ID_STORE, NAME)
  VALUES (seq_store.NEXTVAL, 'Магазин 4');
INSERT INTO T_STORE (ID_STORE, NAME)
  VALUES (seq_store.NEXTVAL, 'Магазин 5');

INSERT INTO T_EMPLOYER (ID_EMPLOYER, SURNAME, NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Юхнин', 'Максим','Вячеславович');
INSERT INTO T_EMPLOYER (ID_EMPLOYER, SURNAME, NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Ожгибесов', 'Николай','Николаевич');
INSERT INTO T_EMPLOYER (ID_EMPLOYER, SURNAME, NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Шипков', 'Илья','Владимирович');
INSERT INTO T_EMPLOYER (ID_EMPLOYER, SURNAME, NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Михеев', 'Михаил',' ’Михайлович');
INSERT INTO T_EMPLOYER (ID_EMPLOYER, SURNAME, NAME, FATHER_NAME)
  VALUES (seq_employer.NEXTVAL, 'Лымарь', 'Степан', 'Евгеньевич');

INSERT INTO T_INPRICE (id_material, price_date, price)
VALUES (1, '01.01.2017', 100); 
INSERT INTO T_INPRICE (id_material, price_date, price)
VALUES (2, '02.02.2017', 100); 
INSERT INTO T_INPRICE (id_material, price_date, price)
VALUES (3, '03.03.2017', 200); 
INSERT INTO T_INPRICE (id_material, price_date, price)
VALUES (4, '04.04.2017', 300); 
INSERT INTO T_INPRICE (id_material, price_date, price)
VALUES (5, '05.01.2017', 400);

INSERT INTO T_SECTION (ID_SECTION, NAME, ID_EMPLOYER)
  VALUES (SEQ_SECTION.NEXTVAL, 'Цех 1', '1');
INSERT INTO T_SECTION (ID_SECTION, NAME, ID_EMPLOYER)
  VALUES (SEQ_SECTION.NEXTVAL, 'Цех 2', '2');
INSERT INTO T_SECTION (ID_SECTION, NAME, ID_EMPLOYER)
  VALUES (SEQ_SECTION.NEXTVAL, 'Цех 3', '3');
INSERT INTO T_SECTION (ID_SECTION, NAME, ID_EMPLOYER)
  VALUES (SEQ_SECTION.NEXTVAL, 'Цех 4', '4');
  INSERT INTO T_SECTION (ID_SECTION, NAME, ID_EMPLOYER)
  VALUES (SEQ_SECTION.NEXTVAL, 'Цех 5', '5');

INSERT INTO T_SURPLUS (ID_MATERIAL, ID_STORE, VOLUME)
  VALUES (1, 1, 10);
INSERT INTO T_SURPLUS (ID_MATERIAL, ID_STORE, VOLUME)
  VALUES (2, 2, 20);
INSERT INTO T_SURPLUS (ID_MATERIAL, ID_STORE, VOLUME)
  VALUES (3, 3, 30);
INSERT INTO T_SURPLUS (ID_MATERIAL, ID_STORE, VOLUME)
  VALUES (4, 4, 40);
INSERT INTO T_SURPLUS (ID_MATERIAL, ID_STORE, VOLUME)
  VALUES (5, 5, 50);

INSERT INTO T_SUPPLY (ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES (SEQ_SUPPLY.NEXTVAL, 1, 2, 3,'01.06.2016', 40);
INSERT INTO T_SUPPLY (ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES (SEQ_SUPPLY.NEXTVAL, 5, 1, 2, '01.07.2016', 30);
INSERT INTO T_SUPPLY (ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES (SEQ_SUPPLY.NEXTVAL, 4, 5, 1, '01.08.2016', 20);
INSERT INTO T_SUPPLY (ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES (SEQ_SUPPLY.NEXTVAL, 3, 4, 5, '01.09.2016', 10);
INSERT INTO T_SUPPLY (ID_SUPPLY, ID_CATERER, ID_MATERIAL, ID_STORE, SUPPLY_DATE, VOLUME)
  VALUES (SEQ_SUPPLY.NEXTVAL, 2, 3, 4, '01.10.2016', 50);

INSERT INTO T_DELIVER (ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES (SEQ_DELIVER.NEXTVAL, 1, 2, 3, '01.01.2017');
INSERT INTO T_DELIVER (ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES (SEQ_DELIVER.NEXTVAL, 3, 4, 5, '02.02.2017');
INSERT INTO T_DELIVER (ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES (SEQ_DELIVER.NEXTVAL, 3, 2, 1, '03.03.2017');
INSERT INTO T_DELIVER (ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES (SEQ_DELIVER.NEXTVAL, 2, 3, 4, '04.04.2017');
INSERT INTO T_DELIVER (ID_DELIVER, ID_SECTION, ID_MATERIAL, ID_STORE, DELIVER_DATE)
  VALUES (SEQ_DELIVER.NEXTVAL, 5, 1, 2, '05.05.2017');

/*задание 8*/
DELETE FROM T_INPRICE
  WHERE PRICE_DATE < '31.12.2000';

/*задание 9*/
ALTER TABLE T_MATERIAL
  DROP CONSTRAINT fk_Material_Measure;
ALTER TABLE T_MATERIAL
  ADD CONSTRAINT fk_Material_Measure 
  FOREIGN KEY (ID_MEASURE) REFERENCES T_MEASURE(ID_MEASURE) ON DELETE SET NULL;
ALTER TABLE T_MATERIAL
  MODIFY (ID_MEASURE INT NULL);
DELETE FROM T_MEASURE
  WHERE NAME LIKE '_';

/*задание 10*/
UPDATE T_SURPLUS 
  SET VOLUME = 0 WHERE ID_STORE LIKE 3;

/*задание 11*/
UPDATE T_EMPLOYER SET 
  BIRTHDATE = '11.09.1988',
  MARRIAGE = 'NOTMARRIED' 
  WHERE ID_EMPLOYER LIKE 1;

/*задание 12*/
UPDATE T_CATERER SET 
  PHONE = 89785848369
  WHERE ID_CATERER LIKE 4;

/*задание 13*/
UPDATE T_INPRICE 
  SET PRICE = 0.85 * PRICE
     WHERE PRICE_DATE >= '01.01.2017' AND PRICE_DATE <= '31.12.2017'
