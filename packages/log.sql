
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

SELECT
    a.id,
    p.id,
    d.id,
    s.id,
    p.contents,
    p.from_address_id,
    s.package_id,
    s.action,
    s.timestamp


    FROM
    "addresses" a,
    "packages" p,
    "scans" s
    WHERE
