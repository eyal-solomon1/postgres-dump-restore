# A Simple postgres db dump N restore script

## Usage :
### in run-script.sh enter wanted values ( source and destination DB's )
### for example 

```
source_pass="password"
source_host="db1.12345678910.us-east-1.rds.amazonaws.com"
source_db_name="db1"
source_user="username"
source_port="5432"

dest_pass="password2"
dest_host="db2.12345678910.eu-east-1.rds.amazonaws.com"
dest_db_name="db2"
dest_user="postgres"
dest_port="5432"

./dump-restore.sh $source_pass $source_host $source_db_name $source_user $source_port $dest_pass $dest_host $dest_db_name $dest_user $dest_port

```
