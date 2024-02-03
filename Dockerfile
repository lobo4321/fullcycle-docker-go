FROM golang:latest as builder
WORKDIR /app
COPY . .
RUN go build -o main .

FROM scratch
WORKDIR /app
COPY --from=builder /app/main .
CMD ["./main"]






