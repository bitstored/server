mongod &
cd auth-service
go run cmd/auth-service/main.go &
cd ../compression-service
go run cmd/compression-service/main.go &
cd ../crypto-service
go run cmd/crypto-service/main.go &
cd ../file-service
go run cmd/file-service/main.go &
cd ../user-service
go run cmd/user-service/main.go &
cd ../watermarking-service
go run cmd/watermarking-service/main.go &
cd pkg/watermarking/server
source bits_vm
python server.py
