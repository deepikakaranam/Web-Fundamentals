select * from friendships;
select* from users;
select users.first_name,users.last_name,users2.first_name as users2_first,users2.last_name as users2_last
from users
Left join friendships
on users.id=friendships.friend_1_id
Left join users as users2
on users2.id=friendships.friend_2_id;
/*Return all users who are friends with Kermit, make sure their names are displayed in results.*/
select users.first_name,users.last_name,users2.first_name as users2_first,users2.last_name as users2_last
from users
Left join friendships
on users.id=friendships.friend_1_id
Left join users as users2
on users2.id=friendships.friend_2_id
where users.first_name="Kermit";
 /*Return the count of all friendships*/
 /*select users.first_name,users.last_name,count(users2.first_name)
from users
Left join friendships
on users.id=friendships.friend_1_id
Left join users as users2
on users2.id=friendships.friend_2_id
group by users.id;*/
select count(*) from friendships;
/*Find out who has the most friends and return the count of their friends.*/
select users.first_name,users.last_name,count(users2.first_name) as num
from users
Left join friendships
on users.id=friendships.friend_1_id
Left join users as users2
on users2.id=friendships.friend_2_id
group by users.id order by num desc limit 1;
/*Create a new user and make them friends with Eli Byers, Kermit The Frog, and Marky Mark*/
insert into users(first_name,last_name,created_at)Values("deepika","karanam",NOW());
delete from users where id=8;
insert into friendships (friend_1_id,friend_2_id,created_at)values(6,5,now());
delete from friendships where friend_2_id=3;
/*Return the friends of Eli in alphabetical order*/
select users.first_name,users.last_name,users2.first_name as users2_first,users2.last_name as users2_last
from users
Left join friendships
on users.id=friendships.friend_1_id
Left join users as users2
on users2.id=friendships.friend_2_id
where friend_1_id=2;

/*Remove Marky Mark from Eli’s friends.*/

delete from friendships where friend_2_id=5;
/* Return all friendships, displaying just the first and last name of both friends*/
select * from friendships;
select* from users;
select users.first_name,users.last_name,users2.first_name as users2_first,users2.last_name as users2_last
from users
Left join friendships
on users.id=friendships.friend_1_id
Left join users as users2
on users2.id=friendships.friend_2_id;