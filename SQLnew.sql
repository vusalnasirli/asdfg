create database BP101;
use BP101;

create table Employee(
Id int Unique,
Name nvarchar(100) Not Null,
Surname nvarchar(100) Not Null,
Salary money Not Null
)

insert into Employee values(3,N'Ezi', 'Eziov', 3000)

--Query 1 :
select * from  Employee 
where Name = 'Ilham'


--Query 2 :
select * from Employee 
Order by Salary desc

--Query 3 :
select * from Employee
where Name like '%l_'

---------------------------------------------------

create table Sales(
WorkerId int references Employee(Id),
Id int Unique,
BuyPrice money Not Null,
SellPrice money Not Null,
SelectDate DateTime default Getdate()
)

insert into Sales (Id,WorkerId, BuyPrice, SellPrice)
values(1,2, .8 , 1), (2,1,5,6), (3,1,4,7), (4,3,.5, 1), (5,2,100,150)

--Query 4 :

select * from Sales
where SellPrice>1


