show databases;
use useralexx;

# 1.Вибрати усіх клієнтів, чиє ім'я має менше ніж 6 символів.
select *
from client
where length(FirstName) < 6;
# 2.Вибрати львівські відділення банку.
select *
from department
where DepartmentCity = 'Lviv';
# 3.Вибрати клієнтів з вищою освітою та посортувати по прізвищу.
select *
from client
where Education = 'high'
order by LastName;
# 4.Виконати сортування у зворотньому порядку над таблицею Заявка і вивести 5 останніх елементів.
select *
from application
order by idApplication desc
limit 5;
# 5.Вивести усіх клієнтів, чиє прізвище закінчується на OV чи OVA.
select *
from client
where LastName like '%IV'
   or LastName like '%IVA';
# 6.Вивести клієнтів банку, які обслуговуються київськими відділеннями.
select idClient, FirstName, LastName, DepartmentCity
from client c
         join department d on d.idDepartment = c.Department_idDepartment
where DepartmentCity = 'Kyiv';
# 7.Знайти унікальні імена клієнтів.
select distinct FirstName
from client;
# 8.Вивести дані про клієнтів, які мають кредит більше ніж на 5000 гривень.
select idClient, FirstName, LastName, CreditState, Sum, Currency
from client c
         join application a on c.idClient = a.Client_idClient
where Sum > 5000 and Currency = 'Gryvnia' and CreditState = 'Not returned';
# 9.Порахувати кількість клієнтів усіх відділень та лише львівських відділень.
select count(*) as countClients
from client c
         join department d on d.idDepartment = c.Department_idDepartment;

select count(*) as countClients, DepartmentCity
from client c
         join department d on d.idDepartment = c.Department_idDepartment
where DepartmentCity = 'Lviv';
# 10.Знайти кредити, які мають найбільшу суму для кожного клієнта окремо.
select max(Sum) as maxSum, FirstName, LastName from application a
join client c on a.Client_idClient = c.idClient group by FirstName, LastName;
# 11. Визначити кількість заявок на крдеит для кожного клієнта.

# 12. Визначити найбільший та найменший кредити.

# 13. Порахувати кількість кредитів для клієнтів,які мають вищу освіту.

# 14. Вивести дані про клієнта, в якого середня сума кредитів найвища.

# 15. Вивести відділення, яке видало в кредити найбільше грошей

# 16. Вивести відділення, яке видало найбільший кредит.

# 17. Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн.

# 18. Усіх клієнтів київських відділень пересилити до Києва.

# 19. Видалити усі кредити, які є повернені.

# 20. Видалити кредити клієнтів, в яких друга літера прізвища є голосною.

# 21.Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000

# 22.Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000

# 23.Знайти максимальний неповернений кредит.

# 24.Знайти клієнта, сума кредиту якого найменша

# 25.Знайти кредити, сума яких більша за середнє значення усіх кредитів

# 26. Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів

# 27. Місто клієнта з найбільшою кількістю кредитів
