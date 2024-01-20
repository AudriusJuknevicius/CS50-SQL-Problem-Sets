SELECT
    pupils,
    AVG("per_pupil_expenditure") as [Average District Per-Pupil Expenditure]
FROM
    "districts"
JOIN "expenditures" on "district_ID" = "districts"."id";
    ;

