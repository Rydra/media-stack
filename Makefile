start:
	docker compose up -d

start-all: start nginx-start

stop-all: nginx-stop stop

nginx-start:
	docker compose -f docker-compose-nginx.yml up -d

nginx-restart: nginx-stop nginx-start

nginx-stop:
	docker compose -f docker-compose-nginx.yml down

stop:
	docker compose down

restart: stop start

restart-all: stop-all start-all

nginx-logs:
	docker compose -f docker-compose-nginx.yml logs -f
