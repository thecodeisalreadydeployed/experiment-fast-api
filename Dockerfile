FROM python:3.8-alpine
ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
RUN pip install fastapi uvicorn
COPY . /app
ENV PORT ${PORT}
EXPOSE ${PORT}
CMD uvicorn app.main:app --proxy-headers --host 0.0.0.0 --port ${PORT}
