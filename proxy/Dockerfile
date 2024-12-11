FROM traefik:v2.10

# Копируем статические и динамические конфигурации
COPY traefik.yml /etc/traefik/traefik.yml
COPY dynamic_config.yml /etc/traefik/dynamic_config.yml

# Открываем порты для HTTP, HTTPS и панели мониторинга
EXPOSE 80 443 8080
