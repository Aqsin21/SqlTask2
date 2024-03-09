use [master]

create database [Library]

use [Library]

create table [dbo].[Books]
(
    [Id] int primary key identity(1,1),
    [Name] nvarchar(100) not null,
	[Author] nvarchar(100) not null,
	[Genre] nvarchar(100) not null,
	[Price] decimal not null,
	[Pagecount] int not null,
	[Published] date not null,
	[CreatedAt] datetime not null default getdate(),

)
-- Task 6
Insert into Books ([Name],[Author],[Genre],[Price],[Pagecount],[Published],[CreatedAt])
Values 


    ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 12.99, 180, '1925-04-10', GETDATE()),
    ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 10.50, 281, '1960-07-11', GETDATE()),
    ('1984', 'George Orwell', 'Science Fiction', 9.99, 328, '1949-06-08', GETDATE()),
    ('Animal Farm', 'George Orwell', 'Dystopian', 8.99, 224, '1945-08-17', GETDATE()),
    ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 14.99, 320, '1937-09-21', GETDATE());
--Task 7
select *from [Books] Order by [Price] Desc;

--Task 8
SELECT TOP 3 * FROM [Books] ORDER BY Price;

-- Task 9
 select *from [Books] where [Author]='George Orwell';


 -- Task 10
 Update [Books] set [Price]=[Price]*1.05 where [Author]='George Orwell';


 -- Task 11

 Delete from  [Books] where [Price]>10;