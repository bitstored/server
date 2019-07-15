docker run --rm -it -p 27017:27017 mongo   &
cd auth-service
go run cmd/auth-service/main.go &
cd ../compression-service
go run cmd/compression-service/main.go &
cd ../crypto-service
go run cmd/crypto-service/main.go &
cd ../file-service
go run cmd/file-service/main.go cmd/file-service/handlers.go &
cd ../user-service
go run cmd/user-service/main.go  cmd/user-service/handlers.go &
cd ../watermarking-service
go run cmd/watermarking-service/main.go &
cd pkg/watermarking/server
source bits_vm
python server.py &
ocker run --rm -it -p 8081:8081 42740d69f4cf &