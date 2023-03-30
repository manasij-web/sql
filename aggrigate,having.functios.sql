use db;
create table company(id int,name varchar(30),location varchar(30));
select * from company;
insert into company values(1,"tcs","pune"),(1,"accenture","airoli"),(3,"capjemini","thane");
alter table company add popularty int;
update company set popularty=80 where name="tcs";
update company set popularty=90 where name="capjemini"; 
update company set popularty=70 where name="accenture";
insert into company values(4,"quangnizant","pune",70),(5,"infosys","pune",90);
insert into company values(4,"quangnizant","ratnagiri",70),(5,"infosys","dapoli",90);
insert into company values(4,"quangnizant","bhopal",80),(5,"infosys","thane",60);
select * from company limit 2;

/*aggrigate functions*/
select count(*) from company;
select min(popularty) from company;
select max(popularty) from company;
select sum(popularty) from company;
select sum(popularty) as popularty_sum from company;
select avg(popularty) as popularty_avg from company;

/*group clause*/
select popularty,avg(popularty) from company group by popularty;
select popularty,count(popularty) from company group by popularty;
select min(popularty) from company group by popularty;
select sum(popularty) from company group by popularty;
select id,name from company;
select id,max(popularty) from company group by id;
select id,min(popularty) from company group by id;
select id,avg(popularty) from company group by id;
select name,count(name) from company group by name;
select id,sum(popularty) from company group by id;

/*having clause*/
select name,sum(popularty) from company group by name having name like 'c%';
select name,sum(popularty) from company group by name having name like 'q%';
select name,sum(popularty) from company group by name having count(name)>2;



