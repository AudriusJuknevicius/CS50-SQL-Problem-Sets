SELECT
    pupils,
    AVG("e.per_pupil_expenditure") as [Average District Per-Pupil Expenditure]
FROM
    "districts" d
JOIN "expenditures" e on "district_ID" = "districts"."id";
    ;

