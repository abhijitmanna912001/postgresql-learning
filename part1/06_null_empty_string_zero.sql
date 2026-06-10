-- null - unkown/missing val
-- empty string - known string val but it contains no characters
-- zero - actual numeric value of 0
DROP TABLE IF EXISTS basics.value_examples;
CREATE TABLE basics.value_examples (
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);

INSERT INTO basics.value_examples (nickname, bio, score) VALUES
    ('Alice', 'Software Engineer', 85),
    ('Bob', '', 90),
    ('Charlie', 'Data Scientist', 0),
    ('Dave', NULL, 75);

-- SELECT * FROM basics.value_examples;

SELECT * FROM basics.value_examples
WHERE score = 0;