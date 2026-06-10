DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students (
    --create an auto incrementing integer
    -- primary key means this col uniquely identifies each row
    id SERIAL PRIMARY KEY,

    -- text - string data
    -- not null means this col is required
    -- postgres is going to reject if this name value is not present
    name TEXT NOT NULL,

    -- unique means - no 2 students will have same email
    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK (age >= 18),

    created_at TIMESTAMP DEFAULT NOW()
);

-- insert some data

INSERT INTO basics.students (name, email, age)
VALUES 
    ('Sangam', 'sangam@gmail.com', 25),
    ('John Doe', 'johndoe@gmail.com', 26);