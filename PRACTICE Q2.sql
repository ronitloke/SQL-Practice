-- write a query to find avg marks in each city in ascending order.

select city, avg(marks) from student1
group by city
order by avg(marks); 

select city, avg(marks) from student1
group by city
order by avg(marks) Desc; 


