CREATE TABLE "public"."post" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "title" text NOT NULL, "description" text NOT NULL, "userId" integer NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("userId") REFERENCES "public"."users"("id") ON UPDATE restrict ON DELETE cascade, UNIQUE ("id"));COMMENT ON TABLE "public"."post" IS E'profile data of the users';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
