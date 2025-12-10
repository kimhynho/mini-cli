FROM ubuntu:24.04

WORKDIR /app

COPY src/mini.c .

RUN apt-get update && \
    apt-get install -y gcc && \
    gcc mini.c -o mini

CMD ["./mini"]

