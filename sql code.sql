create database social
go
use social


-- Users Table
CREATE TABLE Users (
    user_name VARCHAR(50) PRIMARY KEY,
    email VARCHAR(50),
    password VARCHAR(50),
    address VARCHAR(50)
);

-- Posts Table
CREATE TABLE Posts (
    post_id INT PRIMARY KEY,
    user_id VARCHAR(50) FOREIGN KEY REFERENCES Users(user_name),
    url VARCHAR(50),
    content VARCHAR(MAX)
);

-- Comments Table
CREATE TABLE Comments (
    comment_id INT PRIMARY KEY,
    user_id VARCHAR(50) FOREIGN KEY REFERENCES Users(user_name),
    post_id INT FOREIGN KEY REFERENCES Posts(post_id),
    comment_text VARCHAR(MAX),
    comment_date DATETIME
);

-- post_react Table
CREATE TABLE post_react (
    user_id VARCHAR(50) FOREIGN KEY REFERENCES Users(user_name),
    post_id INT FOREIGN KEY REFERENCES Posts(post_id),
    type NVARCHAR(50) CHECK (type IN ('haha', 'love', 'angry','like')),
    date DATETIME,
    PRIMARY KEY (user_id, post_id)
);


CREATE TABLE comment_react (
    user_id VARCHAR(50) FOREIGN KEY REFERENCES Users(user_name),
    comment_id INT FOREIGN KEY REFERENCES Comments(comment_id),
    type NVARCHAR(50) CHECK (type IN ('haha', 'love', 'angry','like')),
    date DATETIME,
    PRIMARY KEY (user_id, comment_id)
);


CREATE TABLE hashtag(
   hashtag_id int PRIMARY KEY,
   content VARCHAR(50)
);

create table hashtag_post(
  post_id INT FOREIGN KEY REFERENCES Posts(post_id),
  hashtag_id int FOREIGN KEY REFERENCES hashtag(hashtag_id),
  PRIMARY KEY (post_id, hashtag_id)
   )


create table following(
  user_follower VARCHAR(50) FOREIGN KEY REFERENCES Users(user_name),
  user_followed VARCHAR(50) FOREIGN KEY REFERENCES Users(user_name),
  PRIMARY KEY (user_follower, user_followed)
   )


