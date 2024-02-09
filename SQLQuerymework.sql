use social
--------------------------------------------------
/*select user ids for persons who has the same react on posts and comments */
SELECT distinct pr.user_id
FROM post_react pr
JOIN comment_react cr ON pr.user_id = cr.user_id
WHERE pr.type = cr.type;
---------------------------------------------------
/*count the number of reactions on a post */
SELECT post_id, COUNT(*) AS reaction_count
FROM post_react
GROUP BY post_id;
----------------------------------------------------
/*find users who have the most followers*/
SELECT user_followed, COUNT(*) AS follower_count
FROM following
GROUP BY user_followed
ORDER BY follower_count DESC;
----------------------------------------------------
--a scaler function returns email of the user

create FUNCTION fngetusersemail(@user_name  VARCHAR(50))
returns varchar(50)
	begin
		declare @email varchar(50)
		select @email = email
		from users
		where user_name= @user_name
		return @email 
	end

select dbo.fngetusersemail('alice_green')
--------------------------------------------------------
--a table valued function returns user id and comment date
CREATE FUNCTION fnuser_id_and_comment_date()
RETURNS table
	AS
	RETURN
	(	select user_id , comment_date
		from Comments
	)
select * from dbo.fnuser_id_and_comment_date()