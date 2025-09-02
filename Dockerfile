FROM python:3.9-slim
WORKDIR /app
COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt
COPY src/main.py
EXPOSE 5000
CMD ["python", "main.py"]
