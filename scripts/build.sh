docker run -p 8081:8081 envoy
docker run --rm -it -p 27017:27017 mongo user-service &
docker run --rm -it -p 8091:8091 couchbase/server file-service &
docker run --rm -it  mongo crypto-service &
docker run --rm -it compression-service &
docker run --rm -it watermarking-service &
docker run --rm -it auth-service &