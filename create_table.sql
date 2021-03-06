create table customer
(
    szn char(10) primary key ,
    customer_id serial unique ,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    email varchar(100) not null
);

create table reservation
(
    res_num serial primary key,
    customer_id serial references customer(customer_id),
    res_date date not null,
    res_time time not null,
    numPeople int default 1,
    description text,
    location varchar(2) references location(shc_name)

);

create table location
(
  name varchar(50) unique ,
  shc_name char(2) primary key
);

create table table_seat
(
    table_num char(3) primary key not null,
    numPeople int not null default 2,
    is_reserved bool default false,
    location varchar(2) references location(shc_name)
);

create table characteristic
(
    name varchar(50) unique not null,
    id serial primary key
);

create table characteristic_table
(
    table_num char(3) references table_seat(table_num),
    id serial references characteristic(id)
);


create table characteristic_reservation
(
    res_num serial references reservation(res_num),
    id serial references characteristic(id)
);