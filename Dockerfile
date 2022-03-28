FROM python:3.8-alpine
WORKDIR /app
RUN pip install fastapi uvicorn
ARG PORT=3000
ENV PORT ${PORT}
CMD uvicorn main:app --proxy-headers --host 0.0.0.0 --port ${PORT}