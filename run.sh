#!/bin/bash

psql -c "DROP DATABASE IF EXISTS monster_hunter_world"

psql -c "CREATE DATABASE monster_hunter_world"

psql -d monster_hunter_world -f ./generate_database.sql

for filename in ./weapon_metadata/*.csv; do
	echo "weapon metadata: $filename"
        tablename=$(basename $filename | cut -d "." -f1)
        psql -d monster_hunter_world -c "\copy $tablename FROM '$filename' CSV HEADER"
done

cat headers.csv weapons/*.csv > all_weapons_temp.csv

psql -d monster_hunter_world -c "\copy weapons(wep_id,wep_type_id,name,attack,true_attack,element_type,element_value,status_type,status_value,affinity,needs_awakening,rarity) FROM './all_weapons_temp.csv' CSV HEADER"


for filename in ./sharpness/*.csv; do
	echo "weapon sharpness data: $filename"
        tablename=$(basename $filename | cut -d "." -f1)
        psql -d monster_hunter_world -c "\copy weapons_sharpness from '$filename' CSV"
done
rm -rf all_weapons_temp.csv
