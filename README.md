# HITO Container Infrastructure

## Setup

    git clone git@github.com:hitontology/docker.git
	git submodule init
	git submodule update
	cp .env.dist .env
	docker-compose up

Modify `.env` to customize.

## Troubleshooting

### After a git pull I still have an old version or something strange is going on

Make sure after a `git pull` you also do `git submodule update`.
Delete the volumes with `docker compose down -v` and rebuild the containers on start with `docker compose up --build -d`.
