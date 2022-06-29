# FROM golang:1.18-alpine as builder

# RUN mkdir /app

# COPY . /app

# WORKDIR /app

# # not using any C library
# RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api

# RUN chmod +x /app/brokerApp

# build a tiny docker image
FROM alpine:latest

RUN mkdir /app

# COPY --from=builder /app/brokerApp /app
COPY brokerApp /app

CMD [ "/app/brokerApp" ]