create database employee;
use employee;
create table Country_with_fields 
( ID Int Primary Key ,
country_name varchar(50),
population_in_lacs decimal,
area_in_sq_miles decimal);
insert into Country_with_fields(id,country_name,population_in_Lacs,area_in_sq_miles)
values
(11,"USA",3454,665384.04),
(12,"Canada",401,3855100),
(13,"UK",683,94060),
(14,"India",14509,1269219),
(15,"China",14193,663705405 ),
(16,"Indonesia",2834,735358),
(17,"Mexico",1280,761610 ),
(18,"Turkey",853,302535),
(19,"Germany",844,138069),
(20,"Australia",266.4, 2968464 );
create table person_with_fields 
( Id int unique primary key,
 Fname varchar(50),
 Lname varchar(50),
Population_in_lacs decimal(10),
 Rating decimal(2),
 Country_Id  int ,
 Country_name varchar(50),
 foreign key (country_id) references country_with_fields(id) 
 on update cascade
 on delete cascade
 );
insert into person_with_fields(Id,Fname,Lname,Population_in_lacs,Rating,Country_Id,Country_name) 
values
(11,"John","David",3454,4,11,"USA"),
(12,"Simon","Andrews",266.4,9,20,"Australia"),
(13,"Robert","xavier",2834,8,16,"Indonesia"),
(14,"Mariam","Muhammad",3454,5,12,"USA"),
(15,"Veena","Nair",844,7,19,"Germany"),
(16,"Abdul","Salam",14193,6,15,"china"),
(17,"Asia","Khan",14193,5,14,"china"),
(18,"Roy","krishna",683,4,13,"UK"),
(19,"Teresa","Davis",1280,3,17,"Mexico"),
(20,"Ram","Varma",853,2,18,"Turkey"),
(21,"Rony",null,3454,5,11,"USA"),
(22,"Jackson",null,266.4,7,20,"Australia");


select * from Country_with_fields
inner join person_with_fields
on country_with_fields.country_name = person_with_fields.Country_name;
select * from Country_with_fields
left join person_with_fields
on country_with_fields.country_name = person_with_fields.Country_name;
select * from Country_with_fields
right join person_with_fields
on country_with_fields.country_name = person_with_fields.Country_name;
select * from Country_with_fields
 left join person_with_fields
on country_with_fields.country_name = person_with_fields.Country_name
where person_with_fields.Country_name is null ;
select * from Country_with_fields
 right join person_with_fields
on country_with_fields.country_name = person_with_fields.Country_name
where country_with_fields.country_name is null ;
select * from Country_with_fields
left join person_with_fields
on country_with_fields.country_name = person_with_fields.Country_name
union
select * from Country_with_fields
right join person_with_fields
on country_with_fields.country_name = person_with_fields.Country_name;
select rating,round(rating)
from person_with_fields;

