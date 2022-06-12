FROM humanway/php8:8.1.3

WORKDIR /app

RUN apt-get update && apt-get install -y \
    git \
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
    && apt-get install -y \
        nodejs \
        openjdk-17-jdk \
    && npm install -g yarn
