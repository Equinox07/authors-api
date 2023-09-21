build:
	docker compose -f local.yml up --build -d --remove-orphans

up: 
	docker compose -f local.yml up -d

down: 
	docker compose -f local.yml down

show_logs: 
	docker compose -f local.yml logs

migrate: 
	docker compose -f local.yml run --rm api python3 manage.py migrate

makemigrations: 
	docker compose -f local.yml run --rm api python3 manage.py makemigrations

collectstatic: 
	docker compose -f local.yml run --rm api python3 manage.py 
	collectstatic --no-input --clear

superuser: 
	docker compose -f local.yml run --rm api python3 manage.py 
	createsuperuser

flake8: 
	docker compose -f local.yml run --rm api flake8 .

black-check: 
	docker compose -f local.yml run --rm api black --check --exclude=migrations .

black-diff: 
	docker compose -f local.yml run --rm api black --diff --exclude=migrations .

black: 
	docker compose -f local.yml run --rm api black --black --exclude=migrations .

isort-check: 
	docker compose -f local.yml run --rm api isort . --check-only --skip env --skip migrations
	
isort-diff: 
	docker compose -f local.yml run --rm api isort . --diff --skip env --skip migrations

isort: 
	docker compose -f local.yml run --rm api isort . --skip env --skip migrations

# authors-db: 
# 	docker compose -f local.yml run --rm api python3 manage.py 
# 	createsuperuser
