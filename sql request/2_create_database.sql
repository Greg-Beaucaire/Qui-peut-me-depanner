-- Database: db_aide

DROP DATABASE IF EXISTS db_aide;

CREATE DATABASE db_aide
    WITH 
    OWNER = test_user
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;