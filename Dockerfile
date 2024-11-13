# Используем официальный образ Python
FROM python:3.11-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем локальные файлы в контейнер
COPY server.py /app/

# Устанавливаем зависимости
RUN pip install --no-cache-dir flask gunicorn

# Открываем порт 8080
EXPOSE 8080

# Используем Gunicorn для запуска приложения
CMD ["gunicorn", "-b", "0.0.0.0:8080", "server:app"]
