drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;
create table smjer(
	sifra 		int,
	naziv 		varchar(50),
	trajanje 	int,
	cijena 		decimal(18,2),
	upisnina 	decimal(18,2),
	verificiran boolean
);

create table grupa(
sifra int,
naziv varchar(50),
smjer int,
predavac int,
brojpolaznika int,
datumpocetka datetime
);

create table predavac(
sifra int,
osoba int,
iban char(21)
);

create table polaznik(
sifra int,
osoba int,
brojugovora varchar(20)
);


create table osoba(
sifra int,
oib char(11),
ime varchar(50),
prezime varchar(50),
email varchar(100)
);

create table clan(
grupa int,
polaznik int
);


alter table grupa add foreign key (smjer) references smjer(sifra); 
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);









