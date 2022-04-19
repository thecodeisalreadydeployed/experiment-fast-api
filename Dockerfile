FROM python:3.8-alpine
COPY . /app
RUN pip install -r /app/requirements.txt
ENV PORT ${PORT}
EXPOSE ${PORT}
CMD uvicorn app.main:app --host 0.0.0.0 --port ${PORT}
