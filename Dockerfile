FROM nextcloud:fpm

RUN apt-get update && apt-get install -y \
    smbclient \
    libsmbclient \
    && rm -rf /var/lib/apt/lists/*
