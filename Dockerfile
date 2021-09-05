FROM golang:1.17.0-buster

WORKDIR /go/src/work

COPY api/ /go/src/work/

RUN go get -v github.com/rubenv/sql-migrate/... && \
    go get -u github.com/go-swagger/go-swagger/cmd/swagger && \
    go get entgo.io/ent/cmd/ent && \
    go get -v golang.org/x/tools/gopls && \
    go build ./...

EXPOSE 8080