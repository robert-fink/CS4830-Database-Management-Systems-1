/*
  Robert Fink
  Project1
  CS4380
*/

create table User(
	uid int primary key,
	firstname varchar(30),
	lastname varchar(30)
);

create table Product(
	pid int primary key,
	name varchar(30),
	brand varchar(30)
);

create table User_Buys_Product(
	pid int,
	uid int,
	date_time timestamp,
	unit_price decimal(60,2),
	quantity int,
	foreign key (uid) references User(uid) on delete cascade,
	foreign key (pid) references Product(pid) on delete cascade,
	primary key (date_time, uid, pid)
);

create table Clothing(
	pid int primary key,
	target_gender varchar(15),
	rating decimal(3,2),
	foreign key (pid) references Product(pid) on delete cascade
);

create table Food(
	pid int primary key,
	type varchar(55),
	foreign key (pid) references Product(pid) on delete cascade
);
