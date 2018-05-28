drop database if exists setnjapsa;

create database setnjapsa default character set utf8;

#sipavanje
#Z:\Program\XAMPP\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < Z:\programiranje\java\setnjapsa.sql

use setnjapsa;

create table covjek(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
korisnickoime varchar(50) not null,
lozinka varchar(50) not null,
pas int not null
);

create table pas(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
starost int not null,
pasmina varchar(50),
setnja int not null,
covjek int not null
);

create table setnja(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
vrijeme time not null,
pas int not null,
krajnjatocka int not null
);

create table krajnjatocka(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
geolokacija decimal(9,6),
potrebnenamirnice varchar(50)
);

create table postavke(
pocetnatocka decimal (9,6) not null,
korisnickoime int not null,
lozinka int not null,
pas int not null,
sifra int not null primary key auto_increment

);

alter table pas add foreign key (covjek) references covjek(sifra);
alter table pas  add foreign key (setnja) references setnja(sifra);
alter table setnja add foreign key (krajnjatocka) references krajnjatocka(sifra);