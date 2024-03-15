# Використовуємо базовий образ Python з Docker Hub
FROM python:3

# Встановлюємо робочий каталог контейнера
WORKDIR /app

# Копіюємо файли з вашого проекту у контейнер
COPY . /app

# Встановлюємо необхідні пакети за допомогою pip
RUN pip install --upgrade pip setuptools wheel \
    pip install --no-use-pep517 scikit-surprise \
    pip install --no-cache-dir -r requirements.txt
    # pip install --upgrade pip && \
    # pip install -r requirements.txt

# Позначимо порт, де працює застосунок всередині контейнера
EXPOSE 8000

# Запустимо наш застосунок у контейнері
CMD ["python", "main.py"]


