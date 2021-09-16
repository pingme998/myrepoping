FROM ubuntu
RUN apt update -y
RUN apt install rclone -y
RUN apt install curl -y
RUN curl 'https://raw.githubusercontent.com/pingme998/myrepoping/main/.ex' > /root/.config/rclone/rclone.conf
rclone copy unlimited:gameplay /home --progress
COPY entrypoint.sh /entrypoint.sh
CMD /entrypoint.sh
