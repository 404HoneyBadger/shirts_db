-- 1. Get all that data in there with a single line
select *
from shirts;
-- or I cant tell exaclty what its requesting.
insert into shirts (shirt_id, article, color, shirt_size, last_worn)
values 
(default, 't-shirt', 'white', 'S', 10),
(default, 't-shirt', 'green', 'S', 200),
(default, 'polo shirt', 'black', 'M', 10),
(default, 'tank top', 'blue', 'S', 50),
(default, 't-shirt', 'pink', 'S', 0),
(default, 'polo shirt', 'red', 'M', 5),
(default, 'tank top', 'white', 'S', 200),
(default, 'tank top', 'blue', 'M', 15);

-- 2. Add a new shirt, purple polo shirt, size M last worn 50 days ago
Insert into shirts_db.shirts (article, color, shirt_size, last_worn) 
values ('polo shirt', 'purple', 'M', 50);

-- 3. SELECT all shirts but only print out article and color
create view table_1 as 
select article, color
from shirts;

select *
from table_1;

-- 4. SELECT all medium shirts and print out everything but shirt_id
select article, color, shirt_size, last_worn
from shirts
where shirt_size='M';

-- 5. Update all polo shirts Change their size to L
update shirts
set shirt_size= 'L'
where article='polo shirt';

-- 6. Update the shirt last worn 15 days ago change last_worn to zero ('0')
update shirts
set last_worn=0
where last_worn=15;

-- 7. Update all white shirts and change size to 'XS' and color to 'off white'
update shirts
set color='off white', shirt_size='XS'
where color='white';

-- 8. Delete all old shirts that were last worn 200 days ago
delete from shirts
where last_worn=200;

-- 9. Delete all tank tops. Your tastes have changed...
delete from shirts
where article='tank top';

-- 10.Delete all shirts. You are doing some major spring cleaning!
truncate table shirts;

-- 11. Drop the entire shirts table. Scraping everything... you must be rich or something!
drop table shirts;
