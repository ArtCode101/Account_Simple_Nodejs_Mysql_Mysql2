db_start:
	docker run --name mysql -p 3306:3306 -e MYSQL_DATABASE=artdb -e MYSQL_ROOT_PASSWORD=root -d mysql:8.1.0

db_stop:
	docker stop mysql

db_remove:
	docker rm mysql

db_up:
	docker exec -i mysql mysql -uroot -proot artdb < db/accountup.sql

db_down:
	docker exec -i mysql mysql -uroot -proot artdb < db/accountdown.sql

app_init:
	npm init -y

app_install:
	npm install mysql2

