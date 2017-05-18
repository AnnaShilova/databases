﻿/*задание 48*/
CREATE VIEW v_caterer
  (id_caterer, caterer_name, contact_surname, contact_name)
AS
  SELECT T_CATERER.ID_CATERER, T_CATERER.NAME, T_CONTACT.SURNAME, T_CONTACT.NAME 
    FROM T_CATERER JOIN T_CONTACT
    ON T_CATERER.ID_CATERER = T_CONTACT.ID_CATERER;

SELECT * FROM V_CATERER;

INSERT INTO V_CATERER
  (ID_CATERER, CATERER_NAME, CONTACT_SURNAME, CONTACT_NAME)
  VALUES
  (SEQ_CATERER.NEXTVAL, 'поставщик 4', 'Петров', 'Петр');

DELETE FROM V_CATERER
  WHERE ID_CATERER = 3;

UPDATE V_CATERER SET CONTACT_NAME = 'Антон'
    WHERE ID_CATERER = 1;

/*задание 49*/
CREATE OR REPLACE VIEW v_surplus
  (material, store, volume)
AS
  SELECT T_MATERIAL.NAME, T_STORE.NAME, SUM(T_SURPLUS.VOLUME)
    FROM T_MATERIAL JOIN T_SURPLUS  
      ON T_MATERIAL.ID_MATERIAL = T_SURPLUS.ID_MATERIAL
    JOIN T_STORE 
      ON T_SURPLUS.ID_STORE = T_STORE.ID_STORE
  GROUP BY T_MATERIAL.NAME, T_STORE.NAME;

/*задание 50*/
CREATE VIEW v_supply
  (name_caterer, material, measure, supply_date, price, volume, sum)
AS
  SELECT T_CATERER.NAME, T_MATERIAL.NAME, T_MEASURE.NAME, T_SUPPLY.SUPPLY_DATE, T_INPRICE.PRICE, T_SUPPLY.VOLUME, T_SUPPLY.VOLUME * T_INPRICE.PRICE
  FROM T_SUPPLY JOIN T_CATERER 
    ON T_SUPPLY.ID_CATERER = T_CATERER.ID_CATERER
  JOIN T_MATERIAL 
    ON T_SUPPLY.ID_MATERIAL = T_MATERIAL.ID_MATERIAL
  JOIN T_MEASURE 
    ON T_MATERIAL.ID_MEASURE = T_MEASURE.ID_MEASURE
  JOIN T_INPRICE 
    ON T_MATERIAL.ID_MATERIAL = T_INPRICE.ID_MATERIAL;

/*задание 51*/
CREATE VIEW v_store
  (store, material, measure, sum)
AS
  SELECT T_STORE.NAME, T_MATERIAL.NAME, T_MEASURE.NAME, sum(T_DELIVER.VOLUME)
    FROM T_DELIVER JOIN T_STORE 
    ON T_DELIVER.ID_STORE = T_STORE.ID_STORE    
    JOIN T_MATERIAL 
    ON T_DELIVER.ID_MATERIAL = T_MATERIAL.ID_MATERIAL
    JOIN T_MEASURE 
    ON T_MATERIAL.ID_MEASURE = T_MEASURE.ID_MEASURE
    WHERE DELIVER_DATE BETWEEN '01.01.2017' AND  '31.12.2017'
GROUP BY T_STORE.NAME, T_MATERIAL.NAME, T_MEASURE.NAME;

/*задание 52*/
CREATE OR REPLACE VIEW v_supply_price
  (id, material, volume, store, price, sum)
AS
  SELECT T_SUPPLY.ID_SUPPLY, T_MATERIAL.NAME, T_SUPPLY.VOLUME, T_STORE.NAME, T_SUPPLY.PRICE, T_SUPPLY.VOLUME * T_SUPPLY.PRICE
  FROM T_SUPPLY JOIN T_MATERIAL 
    ON T_SUPPLY.ID_MATERIAL = T_MATERIAL.ID_MATERIAL
  JOIN T_STORE 
    ON T_SUPPLY.ID_STORE = T_STORE.ID_STORE
  ORDER BY T_SUPPLY.ID_SUPPLY;

CREATE OR REPLACE VIEW v_inprice
  (id, material, volume, store, price, sum)
AS
  SELECT T_SUPPLY.ID_SUPPLY, T_MATERIAL.NAME, T_SUPPLY.VOLUME, T_STORE.NAME, T_INPRICE.PRICE, T_SUPPLY.VOLUME * T_INPRICE.PRICE
  FROM T_SUPPLY JOIN T_MATERIAL 
    ON T_SUPPLY.ID_MATERIAL = T_MATERIAL.ID_MATERIAL
  JOIN T_INPRICE 
    ON T_MATERIAL.ID_MATERIAL = T_INPRICE.ID_MATERIAL
  JOIN T_STORE 
    ON T_SUPPLY.ID_STORE = T_STORE.ID_STORE
  ORDER BY T_SUPPLY.ID_SUPPLY;

CREATE VIEW v_comparison
  (material, volume, store, supply_price, inprice, difference)
AS
  SELECT T_MATERIAL.NAME, T_SUPPLY.VOLUME, T_STORE.NAME, V_SUPPLY_PRICE.SUM, V_INPRICE.SUM, ABS(V_SUPPLY_PRICE.SUM - V_INPRICE.SUM)
  FROM T_SUPPLY JOIN T_MATERIAL 
    ON T_SUPPLY.ID_MATERIAL = T_MATERIAL.ID_MATERIAL
  JOIN T_STORE 
    ON T_SUPPLY.ID_STORE = T_STORE.ID_STORE
  JOIN V_SUPPLY_PRICE 
    ON T_SUPPLY.ID_SUPPLY = V_SUPPLY_PRICE.ID
  JOIN V_INPRICE 
    ON T_SUPPLY.ID_SUPPLY = V_INPRICE.ID;

