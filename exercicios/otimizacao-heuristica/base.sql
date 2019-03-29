create table PARTICIPANTE
(codparti int not null,
nome_parti varchar (40) not null,
idade int not null,
primary key (codparti));
create table AREA
(codarea int not null,
nome_area char (50),
primary key (codarea));
create table PALESTRA
(codpales int not null,
nome_pales varchar (40) not null,
codarea int not null,
vagas int not null,
foreign key (codarea) references area (codarea),
primary key (codpales));
create table ASSISTE
(codpales int not null,
codparti int not null,
foreign key (codpales) references palestra (codpales),
foreign key (codparti) references participante (codparti),
primary key (codpales,codparti));
