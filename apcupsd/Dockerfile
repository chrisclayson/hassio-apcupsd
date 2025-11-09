FROM alpine:latest

ENV LANG=C.UTF-8

RUN apk add --no-cache apcupsd bash jq curl openssh

COPY run.sh /
RUN chmod a+x /run.sh

RUN rm /sbin/poweroff
COPY hassio_poweroff /sbin/poweroff
RUN chmod a+x /sbin/poweroff

RUN rm /sbin/reboot
COPY hassio_reboot /sbin/reboot
RUN chmod a+x /sbin/reboot

WORKDIR /data

CMD [ "/run.sh" ]
