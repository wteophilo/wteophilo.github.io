post_name =

install:
	docker compose build
	docker compose run --rm web bundle install
up:
	docker compose up -d web

down:
	docker compose kill
	docker compose rm -f

shell:
	docker compose run --rm --service-ports web sh

create-post:
	docker compose run --rm --no-deps web bundle exec jekyll post $(post_name)