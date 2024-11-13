# Используем официальный образ Python как базовый
FROM python:3.11-slim

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем локальные файлы в рабочую директорию контейнера
COPY server.py /app/

# Устанавливаем зависимости (Flask)
RUN pip install --no-cache-dir flask

# Открываем порт 8080 для сервера
EXPOSE 8080

# Запускаем Flask сервер
CMD ["python", "server.py"]
