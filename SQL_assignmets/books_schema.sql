-- insert into users(first_name,last_name, created_at, updated_at)
-- values  ("Jane", "Amsden", current_timestamp, current_timestamp), ("Emily", "Dixon", current_timestamp, current_timestamp), 
-- ("Theodore", "Dostoevsky", current_timestamp, current_timestamp), ("William", "Shapiro", current_timestamp, current_timestamp), ("Lao", "Xiu", current_timestamp, current_timestamp

-- insert into books(title, created_at, updated_at)
-- values ("C Sharp", current_timestamp, current_timestamp), ("Java", current_timestamp, current_timestamp), ("Python", current_timestamp, current_timestamp), ("PHP", current_timestamp, current_timestamp),
--  ("Ruby", current_timestamp, current_timestamp);
--  
-- update books
-- set title = "C#"
-- where id = 1;

-- update users
-- set first_name = "Bill"
-- where id = 9;

select * from users;
select * from favorites;
select * from books;

-- insert into favorites (user_id, book_id)
-- values (6,1),(6,2);
-- insert into favorites (user_id, book_id)
-- values (8,1),(8,2),(8,3),(8,4);

-- insert into favorites(user_id,book_id)
-- values(10,1),(10,2),(10,3),(10,4),(10,5);

-- select first_name, last_name from users
-- join favorites on users.id = favorites.user_id
-- where favorites.book_id = 2;

select * from favorites
where book_id =3;

delete from favorites where user_id =7 and book_id =3;

insert into favorites(user_id,book_id)
values(10,2);

select title from books
left join favorites on books.id = favorites.book_id
where favorites.user_id = 8;

select * from users 
left join favorites on book_id = favorites.book_id
where favorites.book_id = 5;