FROM alpine

RUN apk update && apk upgrade && \
	apk add curl && \
	apk add php-cli php-phar php-mbstring && \
	curl -LO https://deployer.org/deployer.phar && \
	mv deployer.phar /usr/local/bin/dep && \
	chmod +x /usr/local/bin/dep

