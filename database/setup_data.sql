CREATE TABLE public.db_info (
	component text NOT NULL,
	db_version text NOT NULL,
	created timestamp NULL DEFAULT now(),
	last_updated timestamp NULL DEFAULT now(),
	CONSTRAINT db_info_pkey PRIMARY KEY (component)
);

INSERT INTO db_info (component,db_version) VALUES ('test_db', '1');