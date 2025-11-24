FROM ubuntu

RUN apt update && apt upgrade -y && apt install -y curl
RUN curl https://google.com | wc -c > google-size
ENTRYPOINT ["sh", "-c", "echo google is this big: $(cat google-size)"]
