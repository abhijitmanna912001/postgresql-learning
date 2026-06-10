DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts (
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    is_active BOOLEAN DEFAULT TRUE,
    age INTEGER CHECK (age >= 18),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO
    basics.accounts (full_name, email, age)
VALUES
    ('Alice Smith', 'alice@gmail.com', 25),
    ('Bob Johnson', 'bob@gmail.com', 30),
    ('Charlie Brown', 'charlie@gmail.com', 22),
    ('David Lee', 'david@gmail.com', 28),
    ('Eve Davis', 'eve@gmail.com', 35);

SELECT
    *
FROM
    basics.accounts;