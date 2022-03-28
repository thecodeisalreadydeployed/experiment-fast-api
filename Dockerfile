FROM python:3.8-alpine
WORKDIR /app
RUN pip install fastapi uvicorn
COPY main.py /app
CMD ["uvicorn", "main:app", "--proxy-headers", "--host", "0.0.0.0", "--port", "8000"]