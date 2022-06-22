FROM rabbitmq:3.9-management

ADD ./configs/init.sh /etc/init.sh
ADD ./configs/rabbitmq.conf /etc/rabbitmq/
ADD ./configs/definitions.json /etc/rabbitmq/

# Define default commands
CMD ["/etc/init.sh"]

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf /etc/rabbitmq/definitions.json