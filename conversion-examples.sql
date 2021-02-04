-- Example of conversion function
/*
declare @nbr int;
set @nbr = convert(int, '123') + 5

select @nbr
*/

/* Example of Date and Time function*/

declare @buydate datetime = '2021-02-28';

select DATEADD(dd, 2, @buydate)