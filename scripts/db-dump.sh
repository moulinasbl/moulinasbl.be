export $(cat .env | grep -v ^# | xargs) && ssh $REMOTE_DB_TUNNEL_HOST "mysqldump -h $REMOTE_DB_HOST -P $REMOTE_DB_PORT -u $REMOTE_DB_USER -p$REMOTE_DB_PASS $REMOTE_DB_NAME | gzip -c" | gunzip > db.sql