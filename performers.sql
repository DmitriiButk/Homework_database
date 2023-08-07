create table if not exists Artists (
	id SERIAL primary key,
	Artist_name VARCHAR(60) not null
);

create table if not exists Gerne (
	id SERIAL primary key,
	Gerne_name VARCHAR(60) unique not NULL
);

create table if not exists Gerner_artist (
	id SERIAL primary key,
	Artists_id integer not null references Artists(id),
	Gerne_id integer not null references Gerne(id)
);

create table if not exists Album (
	id SERIAL primary key,
	Album_title VARCHAR(60) not NULL,
	Album_name VARCHAR(60) not null
);


create table if not exists Albums (
	id SERIAL primary key,
	Artists_id integer not NULL references Artists(id),
	Album_id integer NOT NULL references Album(id)
);

create table if not exists Tracks (
	id SERIAL primary key,
	Track_name VARCHAR(60) not NULL,
	Track_duration integer not NULL,
	Album_id integer not NULL references Album(id)
);


create table if not exists Compilation (
	id SERIAL primary key,
	Compilation_name VARCHAR(100) not NULL,
	Compilation_year integer check (Compilation_year >= 2000)
);

create table if not exists Compilations (
	id SERIAL primary key,
	Compilation_id integer not null references Compilation(id),
	Track_id integer not null references Tracks(id)
);

