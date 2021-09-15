FROM ubuntu
RUN apt update -y
RUN apt install rclone -y

COPY entrypoint.sh entrypoint.sh
