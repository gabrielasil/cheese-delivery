CREATE TABLE "store" (
  "id" uuid PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp NOT NULL,
  "deleted_at" timestamp,
  "name" varchar NOT NULL,
  "address" varchar NOT NULL,
  "city" varchar NOT NULL,
  "state" varchar NOT NULL,
  "coordinates" "geography(point, 4326)" NOT NULL,
  "description" varchar,
  "delivery_range" numeric NOT NULL
);

CREATE TABLE "cheese" (
  "id" uuid PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp NOT NULL,
  "deleted_at" timestamp,
  "name" varchar NOT NULL,
  "quantity" numeric NOT NULL,
  "description" varchar,
  "store_id" uuid NOT NULL
);

CREATE TABLE "order_items" (
  "id" uuid PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "cheese_id" uuid NOT NULL,
  "quantity" numeric NOT NULL,
  "order_id" uuid NOT NULL,
  "observations" varchar
);

CREATE TABLE "order" (
  "id" uuid PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "delivered_at" timestamp,
  "store_id" uuid NOT NULL,
  "customer_id" uuid NOT NULL,
  "customer_payment_form_id" uuid NOT NULL,
  "observations" varchar
);

CREATE TABLE "customer" (
  "id" uuid PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp NOT NULL,
  "deleted_at" timestamp,
  "name" varchar NOT NULL,
  "gov_reg_code" varchar UNIQUE NOT NULL
);

CREATE TABLE "customer_address" (
  "id" uuid PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp NOT NULL,
  "deleted_at" timestamp,
  "address" varchar NOT NULL,
  "city" varchar NOT NULL,
  "state" varchar NOT NULL,
  "coordinates" "geography(point, 4326)" NOT NULL,
  "customer_id" uuid NOT NULL
);

CREATE TABLE "customer_payment_form" (
  "id" uuid PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "customer_id" uuid NOT NULL,
  "payment_form_id" uuid NOT NULL
);

CREATE TABLE "payment_form_catalog" (
  "id" uuid PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "payment_type" varchar NOT NULL
);

CREATE TABLE "store_payment_form" (
  "id" uuid PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "store_id" uuid NOT NULL,
  "payment_form_id" uuid NOT NULL
);

ALTER TABLE "cheese" ADD FOREIGN KEY ("store_id") REFERENCES "store" ("id");

ALTER TABLE "order_items" ADD FOREIGN KEY ("cheese_id") REFERENCES "cheese" ("id");

ALTER TABLE "order_items" ADD FOREIGN KEY ("order_id") REFERENCES "order" ("id");

ALTER TABLE "order" ADD FOREIGN KEY ("store_id") REFERENCES "store" ("id");

ALTER TABLE "order" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("id");

ALTER TABLE "order" ADD FOREIGN KEY ("customer_payment_form_id") REFERENCES "customer_payment_form" ("id");

ALTER TABLE "customer_address" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("id");

ALTER TABLE "customer_payment_form" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("id");

ALTER TABLE "customer_payment_form" ADD FOREIGN KEY ("payment_form_id") REFERENCES "payment_form_catalog" ("id");

ALTER TABLE "store_payment_form" ADD FOREIGN KEY ("store_id") REFERENCES "store" ("id");

ALTER TABLE "store_payment_form" ADD FOREIGN KEY ("payment_form_id") REFERENCES "payment_form_catalog" ("id");
