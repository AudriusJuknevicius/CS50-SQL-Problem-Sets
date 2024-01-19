
-- *** The Lost Letter ***

-- *** The Devious Delivery ***

-- *** The Forgotten Gift ***


-- *** The Lost Letter ***

-- First Name: Anneke
-- Address: 900 Somerville Avenue
-- Sent: Not long ago
-- Recipient: Varsha
-- Recipient Address: 2 Finnegan Street, Uptown (potentially wrong?)
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
SELECT
    *
    FROM
    "packages"
    NATURAL JOIN "scans"
    Where
    "address" = "900 Somerville Avenue"
    ;
