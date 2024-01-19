
-- *** The Lost Letter ***

-- *** The Devious Delivery ***

-- *** The Forgotten Gift ***


-- *** The Lost Letter ***

-- First Name: Anneke
-- Address: 900 Somerville Avenue
-- Sent: Not long ago
-- Recipient: Varsha
-- Recipient Address: 2 Finnegan Street, Uptown (potentially wrong?) Supposed to be "2 Finnigan Street"
-- Contents: Congratulatory note

-- Task: Check if the letter has arrived at the destination

-- At what type of address did the Lost Letter end up?:
-- At what address did the Lost Letter end up?:

-- .schema

-- SELECT
--     *
--     FROM
--     "addresses"
--     NATURAL JOIN "scans"
--     Where
--     "address" like "2 Finn____ Street"
--     ;

-- Found that the address type was residential.
-- SELECT
--     *
--     FROM
--     "packages"
--     NATURAL JOIN "scans"
--     Where
--     "id" = 854
--     ;
-- SELECT
--     *
--     FROM
--     "addresses"
--     Natural Join "packages"
--     WHERE
--     "from_address_id" = "432"
--     ;
-- SELECT
--     *
--     FROM
--     "packages"
--     Natural Join "scans"

--     WHERE
--     "from_address_id" = "432" and "contents" = "Congratulatory letter"
--     ;
-- SELECT
--     *
-- FROM
--     "addresses"
-- WHERE
-- "id" = "4792"
-- ;
-- SELECT
--     *
-- FROM
--     "scans"
-- WHERE
--     "package_id" = 4280
--     ;
-- SELECT
--     *
-- FROM
--     "addresses"
-- WHERE
--     "ID" = 7081
--     ;

-- Address is 52 Mt Washington Avenue and the type is Residential.  This turned out to be wrong - I went back.

-- SELECT
--     *
-- FROM "packages"
-- WHERE
-- "id" = 384 (the package ID)
-- ;

-- SELECT
--     *
-- FROM "scans"
-- WHERE
-- "package_id" = 384
-- ;

-- delivery address_ID = 854, "2 Finnigan Street".


-- *** The Devious Delivery ***

-- SELECT
--     *
-- FROM
--     "packages"
-- WHERE
--     "from_address_ID" is NULL
--     ;

-- ID - 5090, contents "Duck debugger, from_address_id is NULL, to_address_id is 50.

-- SELECT
--     *
-- FROM
--     "scans"
-- WHERE
--     "package_ID" = 5098
--     ;

SELECT
    *
FROM
    "addresses"
WHERE
    "ID" = 348 and "ID" = 50
    ;
