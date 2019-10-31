FROM alpine:3.10

COPY . /usr/src/linpack
WORKDIR /usr/src/linpack
RUN apk add --no-cache gcc musl-dev

RUN gcc -o linpack -O3 -march=native -lm linpack.c
ENTRYPOINT ["./linpack"]
