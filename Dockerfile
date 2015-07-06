FROM sylviefiat/docker-concrete5:latest
MAINTAINER sylviefiat

COPY custom/PageListController.php /app/concrete/blocks/page_list/controller.php
COPY custom/PageList.php /app/concrete/src/Page/

EXPOSE 80
CMD ["/run.sh"]
