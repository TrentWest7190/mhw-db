#!/bin/bash

psql -d monster_hunter_world -f ./generate_database.sql

cat headers.csv weapons/*.csv | psql -d monster_hunter_world -c 'COPY weapons FROM stdin CSV HEADER'