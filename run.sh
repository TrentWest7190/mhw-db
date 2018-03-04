#!/bin/bash

psql -c "DROP DATABASE IF EXISTS monster_hunter_world"

psql -c "CREATE DATABASE monster_hunter_world"

psql -d monster_hunter_world -f ./generate_database.sql

for filename in ./weapon_metadata/*.csv; do
        tablename=$(basename $filename | cut -d "." -f1)
        psql -d monster_hunter_world -c "\copy $tablename FROM '$filename' CSV HEADER"
done

cat headers.csv weapons/*.csv | psql -d monster_hunter_world -c 'COPY weapons FROM stdin CSV HEADER'
