CREATE TABLE "public"."cai_project" ( 
  "id" SERIAL,
  "project_name" VARCHAR(35) NOT NULL,
  CONSTRAINT "cai_project_pkey" PRIMARY KEY ("id"),
  CONSTRAINT "cai_project_name" UNIQUE ("project_name")
);
CREATE TABLE "public"."cai_project_person" ( 
  "id" SERIAL,
  "project_id" INTEGER NOT NULL,
  "person_id" INTEGER NOT NULL,
  "hours" INTEGER NOT NULL,
  CONSTRAINT "cai_project_person_pkey" PRIMARY KEY ("id")
);
CREATE TABLE "public"."cai_person" ( 
  "id" SERIAL,
  "person_name" VARCHAR(20) NOT NULL,
  CONSTRAINT "cai_person_pkey" PRIMARY KEY ("id"),
  CONSTRAINT "cai_person_name" UNIQUE ("person_name")
);
ALTER TABLE "public"."cai_project_person" ADD CONSTRAINT "FK_cai_project_person_project_id" FOREIGN KEY ("project_id") REFERENCES "public"."cai_project" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cai_project_person" ADD CONSTRAINT "FK_cai_person_project_person_id" FOREIGN KEY ("person_id") REFERENCES "public"."cai_person" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
