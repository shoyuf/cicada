-- create table ci_tag
CREATE TABLE "main"."ci_tag" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" VARCHAR,
  UNIQUE ("id" ASC),
  UNIQUE ("name" ASC)
);

-- create table ci_snapshot
CREATE TABLE "main"."ci_snapshot" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "article_id" INTEGER,
  "content" TEXT,
  "content_clean" TEXT,
  UNIQUE ("id" ASC),
  UNIQUE ("article_id" ASC)
);

-- create table ci_article_tag
CREATE TABLE "main"."ci_article_tag" (
  "article_id" INTEGER NOT NULL,
  "tag_id" INTEGER NOT NULL
);

-- create table ci_article
CREATE TABLE "main"."ci_article" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "url" VARCHAR NOT NULL,
  "title" VARCHAR NOT NULL,
  "summary" TEXT,
  "create_time" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE ("url" ASC)
);