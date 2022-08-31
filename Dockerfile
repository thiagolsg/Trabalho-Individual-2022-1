FROM postgres

ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB library_db

#COPY world.sql /docker-entrypoint-initdb.d/