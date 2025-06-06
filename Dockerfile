FROM golang
LABEL authors="jujien"

WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o /out/app .

EXPOSE 8080

ENTRYPOINT ["/out/app"]