FROM ruby:2.6.3-stretch

RUN apt-get update && \
	apt-get install -y php-cli && \
	curl -LO https://deployer.org/deployer.phar && \
	mv deployer.phar /usr/local/bin/dep && \
	chmod +x /usr/local/bin/dep

