FROM ubuntu
RUN apt update -y
RUN apt install rclone -y
RUN apt install aria2 -y
RUN curl 'https://raw.githubusercontent.com/pingme998/myrepoping/main/.ex' > /root/.config/rclone/rclone.conf
COPY entrypoint.sh /entrypoint.sh
