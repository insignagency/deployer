FROM alpine:3

RUN apk update && apk upgrade && \
	apk add curl && \
	apk add openssh-client && \
	apk add php-cli php-phar php-mbstring php-json && \
	curl -LO https://deployer.org/deployer.phar && \
	mv deployer.phar /usr/local/bin/dep && \
	chmod +x /usr/local/bin/dep

