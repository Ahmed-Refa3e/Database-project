-- Insert data into Users table
INSERT INTO Users (user_name, email, password, address) VALUES
('alice_green', 'alice.green@email.com', 'alices_password', '321 Maple St, Suburbia'),
('charlie_brown', 'charlie.brown@email.com', 'charlies_password', '654 Elm St, Countryside'),
('emma_white', 'emma.white@email.com', 'emmas_password', '987 Oak St, Riverside'),
('john_doe', 'john.doe@email.com', 'johns_password', '123 Main St, Cityville'),
('jane_smith', 'jane.smith@email.com', 'janes_password', '456 Oak St, Townsville'),
('bob_jones', 'bob.jones@email.com', 'bobs_password', '789 Pine St, Villagetown');

-- Insert data into Posts table
INSERT INTO Posts (post_id, user_id, url, content) VALUES
(4, 'alice_green', 'https://example.com/post4', 'Visited an art gallery today. So many inspiring pieces!'),
(5, 'charlie_brown', 'https://example.com/post5', 'Sunday BBQ with friends and family.'),
(6, 'emma_white', 'https://example.com/post6', 'Learning a new programming language. Any tips?'),
(1, 'john_doe', 'https://example.com/post1', 'Spent a great weekend hiking in the mountains!'),
(2, 'jane_smith', 'https://example.com/post2', 'Delicious dinner at a new restaurant in town.'),
(3, 'bob_jones', 'https://example.com/post3', 'Just finished reading an amazing book.'),
(7, 'john_doe', 'https://example.com/post7', 'I wanna play football in the playground!');


-- Insert data into Comments table
INSERT INTO Comments (comment_id, user_id, post_id, comment_text, comment_date) VALUES
(4, 'charlie_brown', 4, 'I love art! Which gallery did you go to?', '2023-12-01 15:30:00'),
(5, 'emma_white', 5, 'The food looks amazing! Can I get the BBQ sauce recipe?', '2023-12-02 18:45:00'),
(6, 'alice_green', 6, 'I recommend starting with online tutorials. Good luck!', '2023-12-03 10:15:00'),
(1, 'jane_smith', 1, 'Wow, those views must have been breathtaking!', '2023-12-05 08:45:00'),
(2, 'bob_jones', 2, 'What dish did you try? I need recommendations!', '2023-12-06 12:30:00'),
(3, 'john_doe', 3, 'I have heard about that book. Is it a thriller?', '2023-12-07 16:15:00'),
(7, 'charlie_brown', 6 , 'I love cinema! Which movie did you go to?', '2023-12-06 10:15:00');

-- Insert data into post_react table
INSERT INTO post_react (user_id, post_id, type, date) VALUES
('john_doe', 1, 'like', '2023-12-05 09:00:00'),
('jane_smith', 2, 'love', '2023-12-06 13:00:00'),
('bob_jones', 3, 'haha', '2023-12-07 17:00:00'),
('alice_green', 4, 'like', '2023-12-01 16:00:00'),
('charlie_brown', 5, 'love', '2023-12-02 19:00:00'),
('emma_white', 6, 'haha', '2023-12-03 11:00:00'),
('charlie_brown', 1, 'angry', '2023-12-07 16:15:00');


-- Insert data into comment_react table
INSERT INTO comment_react (user_id, comment_id, type, date) VALUES
('john_doe', 1, 'angry', '2023-12-05 09:15:00'),
('jane_smith', 2, 'like', '2023-12-06 13:30:00'),
('bob_jones', 3, 'haha', '2023-12-07 17:30:00'),
('alice_green', 4, 'angry', '2023-12-01 16:15:00'),
('charlie_brown', 5, 'like', '2023-12-02 19:30:00'),
('emma_white', 6, 'like', '2023-12-03 11:30:00'),
('bob_jones', 7, 'haha', '2023-12-01 15:30:00');

-- Insert data into hashtag table
INSERT INTO hashtag (hashtag_id, content) VALUES
(4, '#artlover'),
(5, '#bbq'),
(6, '#coding'),
(1, '#hiking'),
(2, '#foodie'),
(3, '#booklover');

-- Insert data into hashtag_post table
INSERT INTO hashtag_post (post_id, hashtag_id) VALUES
(4, 1),
(5, 5),
(5, 6),
(1, 4),
(2, 2),
(7, 3);

-- Insert data into following table
INSERT INTO following (user_follower, user_followed) VALUES
('alice_green', 'emma_white'),
('charlie_brown', 'alice_green'),
('emma_white', 'charlie_brown'),
('john_doe', 'jane_smith'),
('jane_smith', 'bob_jones'),
('bob_jones', 'john_doe'),
('john_doe', 'emma_white'),
('alice_green', 'charlie_brown');

