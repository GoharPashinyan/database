-- SCHEMA: Homework

-- DROP SCHEMA IF EXISTS "Homework" ;

CREATE SCHEMA IF NOT EXISTS "Homework"
    AUTHORIZATION postgres;

-- Table: Homework.company

-- DROP TABLE IF EXISTS "Homework".company;

CREATE TABLE IF NOT EXISTS "Homework".company
(
    "CompanyName" character varying(255) COLLATE pg_catalog."default",
    "Industry" character varying(255) COLLATE pg_catalog."default",
    "Website" character varying(255) COLLATE pg_catalog."default",
    "Address" character varying(255) COLLATE pg_catalog."default",
    "ContactEmail " character varying(255) COLLATE pg_catalog."default",
    "PhoneNumber" character varying(255) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Homework".company
    OWNER to postgres;

INSERT INTO "Homework".company(
	"CompanyName", "Industry", "Website", "Address", "ContactEmail ", "PhoneNumber")
	VALUES ('BrightPath Education',	'Education',	'www.brightpathedu.org',	'67 Scholar Ave Boston MA 02118',	'admissions@brightpathedu.org',	'+1 (617) 555-8901');

SELECT "CompanyName", "Industry", "Website", "Address", "ContactEmail ", "PhoneNumber"
	FROM "Homework".company;

DELETE FROM "Homework".company
WHERE "CompanyName" = 'TechWave Solutions';