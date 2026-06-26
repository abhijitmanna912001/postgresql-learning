-- CTE -> Common Table Expression
WITH
    cls_avg AS (
        select
            avg(score) as class_average
        from
            exam_scores
    )
select
    s.name as student_name,
    s.branch as student_branch,
,
    e.score,
    ca.class_average
from
    exam_scores as e
    inner join students as s on s.student_id = e.student_id
    cross join cls_avg as ca
where
    e.score > ca.class_average