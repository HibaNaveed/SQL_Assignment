create database EventManagementSystem;
use EventManagementSystem;

create table Events(
EventId int primary key not null identity(1,1),
EventName varchar(200),
EventDate varchar(200),
Location varchar(200),
Description text,

);
CREATE PROCEDURE inserted
@EventName varchar(200),
@EventDate varchar(200),
@Location varchar(200),
@Description text
as
insert into Events(EventName,EventDate,Location,Description) values(@EventName,@EventDate,@Location,@Description)
go
EXEC inserted @EventName = 'Innovation Ignited', @EventDate='12-1-2025',@Location = 'Karachi',@Description='Creative arts enthusiasts'
EXEC inserted @EventName = 'Foodie Fiesta', @EventDate='9-12-2024',@Location = 'Islamabad',@Description='Culinary enthusiasts for lively celebration'
EXEC inserted @EventName = 'Carnival', @EventDate='11-02-2024',@Location = 'Lahore',@Description='fest perfect for families'
EXEC inserted @EventName = 'TechSpark', @EventDate='23-05-2024',@Location = 'Islamabad',@Description='Gathering for tech professionals'
EXEC inserted @EventName = 'Birthday bash', @EventDate='02-09-2024',@Location = 'Karachi',@Description='Grand Birthday party'
select * from Events;

CREATE PROCEDURE selected
as
select * from Events;
go
EXEC selected;

create procedure updated
@EventId int,
@EventName varchar(200),
@EventDate varchar(200),
@Location varchar(200),
@Description text
as
update Events set EventName= @EventName,EventDate = @EventDate, Location= @Location,Description=@Description where EventId =@EventId
go
EXEC updated @EventName = 'Birthday Festivity',@EventDate = '09-02-2025', @Location= 'London',@Description='Grand Eve',@EventId =5
select * from Events;

create procedure Deleted
@EventId int
as
DELETE FROM Events  WHERE  EventId = @EventId
go
EXEC Deleted @EventId =3;
select * from Events;

create procedure Search
@EventName varchar(20)
as
select * FROM Events  WHERE  EventName = @EventName
go
Exec Search @EventName ='Carnival'

--Search By Name
create procedure Search1
@EventName varchar(20)
as
SELECT * FROM Events WHERE EventName LIKE '%' + @EventName + '%';
go
Exec Search1 @EventName = 'Birthday';
