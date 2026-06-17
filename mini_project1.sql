use datatypes;
create table books(
book_id int primary key,
title varchar(50),
author varchar(50),
price int,
quantity varchar(50)
);
-- INSERT 10 BOOKS
insert into books
values
(1,"Iron Man","Mark Fergus",500,"0.3kg"),
(2,"Hulk","Zak Penn",300,"0.2kg"),
(3,"Iron Man 2","Justin",450,"0.3kg"),
(4,"Thor","Ashley",450,"0.25kg"),
(5,"Captain Avenger","McFeely",500,"0.4kg"),
(6,"Avengers","Joss",400,"0.3kg"),
(7,"Iron Man 3","Drew",500,"0.4kg"),
(8,"Dark World","McFeely",450,"0.4kg"),
(9,"Winter soldier","McFeely",500,"0.5kg"),
(10,"Age of Ultron","Joss",700,"0.6kg");
-- VIEW ALL BOOKS
select * from books;
-- FIND BOOKS ABOVE PRICE 500
select * from books where price > 500;
-- UPDATE QUANTITY
set sql_safe_updates = 0;
update books
set quantity = "0.5kg";
set sql_safe_updates = 1;
-- DELETE ONE BOOK
delete from books
where book_id = 5;