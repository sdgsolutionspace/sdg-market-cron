from sdgsolspace/sdg-market-api

## Add cron service into container
RUN apt-get -y install cron

## Add cron rules
ADD cron-sdg-market-api /etc/cron.d/

## Start cron as foreground service
ENTRYPOINT [ "/usr/sbin/cron", "-f" ]

