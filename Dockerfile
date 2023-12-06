FROM golang:alpine3.17
RUN mkdir /app
ADD . /app
WORKDIR /app
COPY go.mod .
RUN go build -o main .
CMD [ "/app/main" ]