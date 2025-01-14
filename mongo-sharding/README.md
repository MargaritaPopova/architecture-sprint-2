# pymongo-api

## Как запустить

Запускаем кластер mongodb и приложение командой

```shell
docker compose build --no-cache
docker compose up -d
```

Заполняем mongodb данными

```shell
./scripts/mongo-init.sh
```
Если скрипт падает с ошибкой
`Unable to notify any shard on new database additions`, можно попробовать удалить все предыдущие контейнеры и волюмы 
```shell
docker stop $(docker ps -q)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
docker volume rm $(docker volume ls -q)
```
пересобрать docker compose еще раз и заново запустить скрипт.
## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs