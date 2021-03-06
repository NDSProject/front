all:
	@docker-compose --file docker-compose.dev.yml up --build

run:
	@docker run --push 80:8080 fazenda/nds-front

build:
	@docker buildx build --platform linux/amd64,linux/arm/v7,linux/arm/v6,linux/arm64/v8,linux/ppc64le,linux/s390x,linux/386 --push --tag fazenda/nds-front .
