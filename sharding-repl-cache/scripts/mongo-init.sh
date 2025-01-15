#!/bin/bash

# Подключаемся к роутеру mongos_router_1
docker compose exec -T mongos_router_1 mongosh --host mongos_router_1:27017 <<EOF
// Создаем базу данных some_db
use some_db;

// Включаем шардирование для базы данных some_db
sh.enableSharding("some_db");

// Создаем коллекцию helloDoc
db.createCollection("helloDoc");

// Добавляем тестовые данные в коллекцию helloDoc
for(var i = 0; i < 1000; i++) db.helloDoc.insertOne({age:i, name:"ly"+i})

// Проверяем, что данные добавлены
print("Документы в коллекции helloDoc:");
db.helloDoc.find().pretty();
EOF


