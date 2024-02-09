--take URL of post and return the content
create procedure spGetcontent
@input_url VARCHAR(50),
@post_content VARCHAR(MAX) output
as
begin
  select @post_content = posts.content
  from Posts
  where Posts.url = @input_url
end

--execution
declare @result varchar(max)
execute spGetcontent @input_url ='https://example.com/post2' , @post_content = @result output
select @result
