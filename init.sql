CREATE TABLE IF NOT EXISTS projects (
  "id" uuid PRIMARY KEY,
  "name" text,
  "time" text,
  "img_url" text
);

CREATE TABLE IF NOT EXISTS project_tags (
  "id" uuid PRIMARY KEY,
  "project_id" uuid REFERENCES projects (id),
  "text" text
);

CREATE TABLE IF NOT EXISTS project_paragraphs (
  "id" uuid PRIMARY KEY,
  "project_id" uuid REFERENCES projects (id),
  "text" text
);
