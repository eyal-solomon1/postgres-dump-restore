#!/bin/bash

source_pass=""
source_host=""
source_db_name=""
source_user=""
source_port=""

dest_pass=""
dest_host=""
dest_db_name=""
dest_user=""
dest_port=""

./dump-restore.sh $source_pass $source_host $source_db_name $source_user $source_port $dest_pass $dest_host $dest_db_name $dest_user $dest_port
