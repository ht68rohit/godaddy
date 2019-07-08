FROM golang

RUN go get github.com/gorilla/mux

RUN go get github.com/kryptoslogic/godaddy-domainclient

WORKDIR /go/src/github.com/heaptracetechnology/godaddy

ADD . /go/src/github.com/heaptracetechnology/godaddy

RUN go install github.com/heaptracetechnology/godaddy

ENTRYPOINT godaddy

EXPOSE 3000