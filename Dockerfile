FROM ubuntu/nginx

ENV TZ Europe/Minsk

RUN apt-get update && apt-get install nano

RUN mkdir -p /home/ubuntu/task6/services
RUN mkdir -p /home/ubuntu/task6/51ame.ddns.net

ADD ./51ame.ddns.net /home/ubuntu/task6/51ame.ddns.net
ADD ./ /home/ubuntu/task6/

RUN cp /home/ubuntu/task6/51ame.ddns.net/index.html /var/www/html/index.html
RUN cp /home/ubuntu/task6/51ame.ddns.net/cpu.html /var/www/html/cpu.html
RUN cp /home/ubuntu/task6/51ame.ddns.net/background.jpg /var/www/html/background.jpg


RUN chmod +x /home/ubuntu/task6/logscript.sh
RUN chmod +x /home/ubuntu/task6/cpu-script.sh
RUN chmod +x /home/ubuntu/task6/nohup.sh

RUN cp /home/ubuntu/task6/nohup.sh /docker-entrypoint.d/nohup.sh
