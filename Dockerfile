FROM ubuntu
RUN apt update -y
RUN apt install rclone -y
RUN curl '' > /root/.config/rclone/rclone.conf
COPY entrypoint.sh entrypoint.sh
