FROM postgres:15

# Установка начального SQL-скрипта
COPY init.sql /docker-entrypoint-initdb.d/

# Установка переменных среды (они будут переопределяться в docker-compose.yml)
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=adminpassword
ENV POSTGRES_DB=project_management
