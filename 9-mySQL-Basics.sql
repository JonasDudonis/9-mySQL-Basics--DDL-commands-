CREATE DATABASE Z1; -- CTRL + ENTER SUKURS DUOMBAZE. Arba spausti 'zaibo ikona'.
USE Z1; -- pa'selectina Z1 duombaze. Kitu atveju reiktu su pele paklikint du kartus ant duombazes kad uzsizymetu.
CREATE TABLE employees (id int); -- sukuria lentele pavadinimu 'employees'. Kad sukurtu lentele, reikia bent vieno kintamojo.

-- CREATE DATABASE SET SET utf8mb4 COLLATE utf8mb4_lithuanian_ci  DEFAULT ENCRYPTION='N'; -- optional parametrai, bet su jais nekursime. Kursime duombazes paprastai

CREATE TABLE MyGuests (
id INT AUTO_INCREMENT PRIMARY KEY, -- 'primary key' yra kazkoks identifikuojantis numeris, jeigu duombazeje butu vienodu vardu asmenys, pvz jo asmens kodas, NIN, SSN ir t.t. AUTO_INCREMENT - MySQL automatically increases the value of the field by 1 each time new record added (on insert).
firstname VARCHAR(30) NOT NULL, -- 'not null' reiskia, kad irasas negali buti paliktas tuscias.
lastname VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE, -- 'unique' reiksme reiskia kad emailas turi buti unikalus, t.y dvieju tokiu paciu emailu neturetu buti duomenu bazeje.
update_date TIMESTAMP
DEFAULT CURRENT_TIMEST AMP ON UPDATE CURRENT_TIMESTAMP -- sukurimo metu idedamas timestamp, ir kai irasas bus suupdeitintas, dar karta atnaujinsime timestamp.
);

SELECT * FROM z1.myguests; -- pasirenkame table 'MyGuests'

ALTER TABLE MyGuests -- keiciame table 'MyGuests'
ADD middlename VARCHAR(30); -- prideda papildoma column 'middlename'.

ALTER TABLE MyGuests RENAME COLUMN id TO guest_id -- pakeicia column reiksme.

-- DROP TABLE employees; -- istrina lentele pavadinimu 'employees' - reikia nurodyt kurioje duombaze istrina, nes kitu atveju istrins visose duombazese, kuriose ras table.

-- DROP DATABASE Z1; -- istrina duombaze

