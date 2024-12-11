FROM redis:7

# Копируем пользовательский файл конфигурации
COPY redis.conf /usr/local/etc/redis/redis.conf

# Запуск Redis с пользовательской конфигурацией
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
