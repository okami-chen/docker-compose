docker exec -it $(docker ps -a | grep redis:latest | awk  '{print $1}') bash