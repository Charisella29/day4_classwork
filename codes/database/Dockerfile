FROM postgres:15-alpine

COPY init-database.sql /docker-entrypoint-initdb.d/

# set environment variable

ENV POSTGRES_DB=nimc_db
ENV POSTGRES_USER=nimc_user
ENV POSTGRES_PASSWORD=nimc_password

EXPOSE 5432