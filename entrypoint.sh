#!/bin/bash
curl 'https://raw.githubusercontent.com/pingme998/myrepoping/main/ex.conf' > /root/.config/rclone/rclone.conf
curl 'https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fdeveloperanaz&count_bg=%23FF1A00&title_bg=%23000000&icon=&icon_color=%23E7E7E7&title=VISITORS&edge_flat=false'
curl 'https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fdeveloperanaz&count_bg=%23FF1A00&title_bg=%23000000&icon=&icon_color=%23E7E7E7&title=VISITORS&edge_flat=false'
rclone listremotes
rclone rcd --rc-serve --rc-addr=0.0.0.0:8080