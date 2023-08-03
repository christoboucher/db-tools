FROM ubuntu

RUN apt-get update && apt-get install -y cron wget mysql-client ssh nano iputils-ping xz-utils

RUN wget https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2204-x86_64-100.7.4.deb && wget https://downloads.mongodb.com/compass/mongodb-mongosh_1.10.3_amd64.deb

RUN apt-get install -y ./mongodb-database-tools-ubuntu2204-x86_64-100.7.4.deb ./mongodb-mongosh_1.10.3_amd64.deb && rm -rf ./mongodb-database-tools-ubuntu2204-x86_64-100.7.4.deb ./mongodb-mongosh_1.10.3_amd64.deb

RUN apt-get clean && apt-get autoremove --yes && rm -rf /var/lib/apt/lists/*

COPY ./backup_cron /etc/cron.d/backup_cron

RUN chmod 0644 /etc/cron.d/backup_cron

ENTRYPOINT ["cron","-f"]
