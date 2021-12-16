CREATE TABLE test_user (
  id text DEFAULT uuid_generate_v4(),
  first_name text not null,
  last_name text not null,
  phone text,
  email text not null,
  created timestamp default CURRENT_TIMESTAMP,
  last_updated timestamp default CURRENT_TIMESTAMP,
  deleted bool NOT NULL DEFAULT false,
  PRIMARY KEY (id)
);
