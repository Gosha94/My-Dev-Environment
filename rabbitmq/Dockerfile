FROM rabbitmq:3.7-management

COPY ./configs/rabbitmq.conf /etc/rabbitmq
COPY ./configs/definitions.json /etc/rabbitmq

# ADD ./configs/init.sh /etc/init.sh
# ADD ./configs/rabbitmq.conf /etc/rabbitmq/
# ADD ./configs/definitions.json /etc/rabbitmq/

# Define default commands
# CMD ["/etc/init.sh"]

# RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf /etc/rabbitmq/definitions.json
RUN cat /etc/rabbitmq/rabbitmq.conf