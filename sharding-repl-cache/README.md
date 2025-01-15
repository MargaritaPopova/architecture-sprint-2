# pymongo-api

--------
**Схема**: https://drive.google.com/file/d/1Y1gy_0oU6AiNpNVEYW0Ssq7iZbdWiddT/view?usp=sharing  
или
https://app.diagrams.net/#G1Y1gy_0oU6AiNpNVEYW0Ssq7iZbdWiddT#%7B%22pageId%22%3A%22-H_mtQnk-PTXWXPvYvuk%22%7D
---------

## Как запустить

Переходим в папку sharding-repl-cache 
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
`Unable to notify any shard on new database additions` либо при запуске сервера падает 500, нужно удалить все предыдущие контейнеры и волюмы 
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