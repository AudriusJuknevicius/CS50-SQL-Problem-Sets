-- CREATE TABLE "ingredients" (
--     "id" INTEGER,
--     "ingredient" TEXT NOT NULL,
--     "weight" INTEGER NOT NULL,
--     "price_per_unit" NUMERIC NOT NULL,
--     "gluten_check" TEXT NOT NULL CHECK("gluten_check" in ('Gluten', 'Gluten-Free')),
--     PRIMARY KEY("id")
-- );

CREATE TABLE "donuts" (
    "id" INTEGER,
    "donut_name" TEXT NOT NULL,
    "donut_gluten" TEXT NOT NULL CHECK("donut_gluten" in ('Gluten', 'Gluten-Free')),
    "donut_price" NUMERIC,
    "donut_ingredients" TEXT NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_gluten") REFERENCES "ingredients"("gluten_check"),
    FOREIGN KEY("donut_ingredients") REFERENCES "ingredients"("id")

);

CREATE TABLE "orders" (
    "id" INTEGER,
    "order_number" TEXT NOT NULL UNIQUE,
    "donut_order" TEXT NOT NULL,
    "customer_id" INTEGER NOT NULL UNIQUE,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id"),
    FOREIGN KEY("donut_name") REFERENCES "donuts"("id")
);

-- CREATE TABLE "customers" (
--     "id" INTEGER,
--     "first_name" TEXT NOT NULL,
--     "last_name" TEXT NOT NULL,
--     "order_history" TEXT NOT NULL UNIQUE,
--     PRIMARY KEY("id"),
--     FOREIGN KEY("order_history") REFERENCES "orders"("id")
-- );


