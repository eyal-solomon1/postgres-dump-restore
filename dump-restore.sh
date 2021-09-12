#!/bin/bash

source_pass=$1
source_host=$2
source_db_name=$3
source_user=$4
source_port=$5

dest_pass=$6
dest_host=$7
dest_db_name=$8
dest_user=$9
dest_port=${10}

## remote db to remote db
PGPASSWORD=$source_pass pg_dump -h $source_host -d $source_db_name -U $source_user -p $source_port > test.sql
psql postgres://$dest_user:$dest_pass@$dest_host:$dest_port/postgres -c "CREATE DATABASE ${source_db_name}" \
-c "CREATE USER ${source_user} WITH PASSWORD '${source_pass}'" \
-c "ALTER USER "${source_user}" WITH CREATEDB" \
|| echo "database already exists"
psql postgres://$dest_user:$dest_pass@$dest_host:$dest_port/$source_db_name < test.sql && echo "loaded Data succesfuly !" || echo "Couldnt load data"
