FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 7860  # 改成 7860

CMD ["python", "app.py", "--host=0.0.0.0", "--port=7860"]  # 加参数支持端口