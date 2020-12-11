#!/bin/bash
# El sleep es clave, si no no le damos tiempo a iniciar al  mysql y la app falla

mysql_install_db --user=mysql &
sleep 3
mysqld_safe &
sleep 3
#mysqladmin -u root password Semperti2020! &
java -jar journals-1.0.jar &
