mysql -h ${MYSQL_HOST} -uroot -pRoboShop@1 < /schema.sql
mysql -h ${MYSQL_HOST} -uroot -pRoboShop@1 < /app-user.sql
mysql -h ${MYSQL_HOST} -uroot -pRoboShop@1 < /master-data.sql
