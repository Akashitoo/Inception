all:
	sudo docker-compose -f srcs/docker-compose.yml up --build

clean:
	sudo docker-compose -f srcs/docker-compose.yml down -v
	
fclean: clean
		sudo docker system prune -f
re: fclean all