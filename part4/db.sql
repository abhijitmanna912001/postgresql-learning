-- Get exam attempts that scored above class average

select
    s.name as student_name,
    s.branch as student_branch,
,
    e.score
from
    exam_scores as e
    inner join students as s on s.student_id = e.student_id
where
    e.score > (
        select
            avg(score) as class_average
        from
            exam_scores
    );