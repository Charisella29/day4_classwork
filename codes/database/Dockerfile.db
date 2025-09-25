FROM postgres:15-alpine

# Copy initialization script
COPY init-database.sql /docker-entrypoint-initdb.d/

# Set environment variables
ENV POSTGRES_DB=nimc_db
ENV POSTGRES_USER=nimc_user
ENV POSTGRES_PASSWORD=nimc_password

EXPOSE 5432