SRC = ./srcs/docker-compose.yml

all:
	docker compose -f ${SRC} up -d

clean:
	docker compose -f ${SRC} down --rmi all

fclean: clean
	docker system prune -a -f
	docker volume rm srcs_db_vol srcs_wp_vol srcs_rds_vol

re: fclean all
