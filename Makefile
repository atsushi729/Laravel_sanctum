install:
	docker-compose down
	docker-compose up --build -d
	docker-compose run --rm app cp .env.example .env
	docker-compose run --rm app composer install
	docker-compose run --rm app php artisan key:generate