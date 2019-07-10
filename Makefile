build:
	protoc -I. --go_out=plugins=micro:. \
	--micro_out=plugins=micro:. \
	proto/vessel/vessel.proto
#	docker build -t vessel -service .

run:
	docker run -p 50051:50051 \
	-e MICRO_SERVER_ADDRESS=:50051 \
	vessel-service