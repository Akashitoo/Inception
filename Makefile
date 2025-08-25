all:
	sudo docker-compose -f srcs/docker-compose.yml up --build

clean:
	sudo docker-compose -f srcs/docker-compose.yml down
	sudo docker-compose -f srcs/docker-compose.yml down -v
	sudo docker system prune -f

re:	clean all