--Name: Lee Torgerson
--File: Team.sql
--Date: 6/1/17

.echo on
.headers on

drop table if exists Roster;

create table Roster (
   id int primary key,
   name text,
   alias text,
   role text);

insert into roster values (1, "Bob", "Killer", "pitcher");
insert into roster values (2, "Tom", "Champ", "catcher");
insert into roster values (3, "Rob", "Sport", "infield");
insert into roster values (4, "Kenny", "Cleetus", "outfield");
insert into roster values (5, "Mike", "Big Stank", "infield");
insert into roster values (6, "Hank", "D-Bag", "outfield");

drop table if exists stats;

create table stats (
   id int,
   batting int,
   hits int,
   RBI int,
   HR int);

insert into stats values (1, 300, 30, 5, 1);
insert into stats values (2, 350, 35, 10, 2);
insert into stats values (3, 250, 25, 15, 3);
insert into stats values (4, 400, 40, 20, 4);
insert into stats values (5, 150, 15, 25, 5);
insert into stats values (6, 250, 25, 30, 6);

select * from roster where role = "pitcher";
select * from roster where role = "infield";
select * from roster where name = "Kenny";

select * from stats where batting >= 300;
select * from stats where HR >= 3;
select * from stats where RBI <= 15;


.exit


