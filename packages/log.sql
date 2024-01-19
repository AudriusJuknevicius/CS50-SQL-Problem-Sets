
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
SELECT
    *
    FROM
    "packages"
    Natural Join "scans"
    
    WHERE
    "id" = "854"
    ;
