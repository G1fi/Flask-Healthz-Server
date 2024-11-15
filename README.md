# Flask Server with Docker (CI/CD Test Assignment)

Этот репозиторий содержит Python сервер на Flask, который отвечает на запросы. При обращении к эндпоинту /healthz сервер возвращает статус 200 OK с сообщением "Service is Healthy!". Для всех других запросов сервер возвращает ошибку 404. Сервер упакован в Docker контейнер для удобства развертывания. Выполнено в качестве тестового задания CI/CD

## Как использовать

### 1. Клонируйте репозиторий

Сначала клонируйте репозиторий на вашу машину:

```bash
git clone https://github.com/G1fi/Flask-Healthz-Server.git
cd Flask-Healthz-Server
```

### 2.1 Создайте Docker образ и запустите контейнер

Для сборки Docker образа выполните команду:

```bash
docker build -t flask-server .
```

Затем запустите контейнер:

```bash
docker run -p 8080:8080 flask-server
```

Это запустит сервер на порту 8080.

### 2.2 ИЛИ Запустите Docker Compose

Проверьте конфигурацию в `docker-compose.yml` и запустите Docker Compose:

```bash
docker compose up --build
```

Это запустит сервер на порту 8080.

### 3. Проверьте работу сервера

Чтобы проверить, что сервер работает корректно, выполните запрос:

```bash
curl http://localhost:8080/healthz
```


Если всё настроено правильно, вы должны получить ответ:

```html
<h1>Service is Healthy!</h1>
```