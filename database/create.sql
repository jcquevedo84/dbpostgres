CREATE ROLE app WITH LOGIN PASSWORD 'app';

do
'    begin
      IF EXISTS (SELECT FROM pg_database WHERE datname = ''test_db'') THEN
          RAISE NOTICE ''Database already exists'';  -- optional
      ELSE
          CREATE DATABASE test_db OWNER = app;
      END IF;
end;
' LANGUAGE PLPGSQL;

GRANT ALL PRIVILEGES ON DATABASE "test_db" TO app;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";