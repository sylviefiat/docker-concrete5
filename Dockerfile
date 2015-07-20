FROM nikmartin/docker-concrete5.7:latest
MAINTAINER sylviefiat <sylvie.fiat@ird.fr>

COPY custom/PageListController.php /app/concrete/blocks/page_list/controller.php
COPY custom/PageList.php /app/concrete/src/Page/
COPY custom/IPAddress.php ./src/Utility/IPAddress.php

RUN chmod -R 777 /var/www/html/application/config/ /var/www/html/application/files/ /var/www/html/packages/

EXPOSE 80
CMD ["/run.sh"]
