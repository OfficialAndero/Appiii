CREATE DATABASE TITpe23_baas
-- kasutame andmebaasi
USE TITpe23_baas;
--tabeli loomine

CREATE TABLE raamat(
raamatID int not null PRIMARY KEY identity(1,1), 
raamatuNimi varchar(100) not null,
zanrID int,
autorID int,
hind decimal(5,2),
v_aasta int);
SELECT * FROM raamat;

--andmete lisamine tabelisse 
INSERT INTO raamat(raamatuNimi, zanrID, autorID, hind, v_aasta)
VALUES(
'Harry Potter' , 1, 1, 15.50, 2010)

--drop table raamat
CREATE TABLE zanr(
zanrID int not null PRIMARY KEY identity(1,1), 
zanrNimetus varchar (25) UNIQUE)
select *FROM zanr;
INSERT INTO zanr(zanrNimetus)
VALUES ('komöödia'), ('detektiiv');

--Fireign key lisamine zanrID tabelis raamat

ALTER TABLE raamat ADD foreign key (zanrID)
REFERENCES zanr(zanrID) 

CREATE TABLE autor( autorID INT not null PRIMARY KEY identity(1,1),
autorEesnimi varchar(25),
autorPerenimi varchar(30),
synniaeg date,
synnikoht char(10));

SELECT * FROM autor;

INSERT INTO autor( 
autorEesnimi, autorPerenimi, synniaeg, synnikoht)
VALUES ( 
'J.K', 'Rowling', '1985-12-30', 'UK')

ALTER TABLE raamat ADD foreign key (autorID)
REFERENCES autor(autorID)

INSERT INTO raamat(
raamatuNimi, zanrID, autorID, hind, v_aasta)
VALUES(
'Alice Imedemaal', 2, 2, 20.50, 2015);

SELECT * FROM raamat;

