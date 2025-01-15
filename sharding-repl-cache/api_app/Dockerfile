FROM python:3.12.1-slim
WORKDIR /app
EXPOSE 8080
COPY requirements.txt ./
# Устанавливаем зависимости python не пересобирая их
RUN pip install --no-cache --no-cache-dir -r requirements.txt
# Копирование кода приложения
COPY app_cache.py /app/
ENTRYPOINT ["uvicorn"]
CMD ["app_cache:app", "--host", "0.0.0.0", "--port", "8080"]
