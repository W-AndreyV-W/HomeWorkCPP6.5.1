FROM ubuntu:xenial
	RUN apt-get update && apt-get install -y g++ nano
	WORKDIR /root/test/
	COPY hello_wrold.cpp .
	RUN g++ hello_wrold.cpp -o hello_wrold
	CMD ["./hello_wrold"]
