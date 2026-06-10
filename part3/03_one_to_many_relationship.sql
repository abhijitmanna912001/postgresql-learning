-- one parent rows can have many child rows
-- one user can write many posts
-- but one post will always belongs to one user

-- users - parent table
-- posts - child table

-- posts.user_id -> user.id
-- users.id is the original user id
-- posts.user_id stores that original user id inside the posts table

