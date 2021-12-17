--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  genre_id INTEGER,
  schrijver_id INTEGER,
  bladzijdes INTEGER,
  uitgever_id INTEGER,
  verflimd_id INTEGER
);

DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(30)
);



DROP TABLE IF EXISTS schrijver;
CREATE TABLE schrijver (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(101)
);

DROP TABLE IF EXISTS uitgever;
CREATE TABLE uitgever (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(101)
);

DROP TABLE IF EXISTS verfilmd;
CREATE TABLE verfilmd (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(10)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('Advocaat van de hanen',  '..', '816905633-0', 19, 1 , 1 , 573, 1 , 1);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('Mein Kampf', '..', '077030122-3', 22, 3, 2, 818, 2, 2 );
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('Het Achterhuis', '..', '492092523-7', 6, 3, 7, 297 , 3, 1 );
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('Het gouden ei', '..', '445924201-X', 3.5, 3, 3, 98, 4/5 , 1);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('The Da Vinci Code', '..', '693155505-7', 24.5, 4, 4, 489 , 4 , 1);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('Alaska', '..', '686928463-6', 14, 6, 5, 184, 5 ,2 );
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('Asbestemming', '..', '492662523-7', 17, 2 , 1 , 344 , 1 , 2);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('Jip en Janneke', '..', '672662523-7', 7, 5/6, 6, 353, 5, 2);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('Joe Speedboot', '..', '498862523-7', 14, 6, 7, 316, 1 , 2);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('De aanslag', '..', '492493523-7', 27, 8, 8, 352, 1, 1);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('De aanslag', '..', '492493523-7', 27, 8, 8, 352, 1, 1);
insert into products (name, description, code, price, genre_id, schrijver_id, bladzijdes, uitgever_id, verflimd_id) values ('De aanslag', '..', '492493523-7', 27, 8, 8, 352, 1, 1);

insert into genre (name) values ('Drama');
insert into genre (name) values ('Literaire fictie');
insert into genre (name) values ('Autobiografie');
insert into genre (name) values ('Thriller');
insert into genre (name) values ('Horror');
insert into genre (name) values ('Fictie');
insert into genre (name) values ('Kinderboek');
insert into genre (name) values ('Oorlog');

insert into schrijver (name) values ('A.F.Th. van der Heijden');
insert into schrijver (name) values ('Adolf Hitler');
insert into schrijver (name) values ('Tim Krabbé');
insert into schrijver (name) values ('Dan Brown');
insert into schrijver (name) values ('Anna Woltz');
insert into schrijver (name) values ('Annie M.G. Schmidt');
insert into schrijver (name) values ('Anne Frank');

insert into uitgever (name) values ('De Bezige Bij');
insert into uitgever (name) values ('	Verlag Franz Eher Nachfolger GmbH');
insert into uitgever (name) values ('Prometheus');
insert into uitgever (name) values ('Luitingh');
insert into uitgever (name) values ('Querido');

insert into verfilmd (name) values ('ja');
insert into verfilmd (name) values ('NULL'); /*kijken of null kan */

