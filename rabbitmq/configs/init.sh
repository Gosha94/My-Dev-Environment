#!/bin/sh

# Create Rabbitmq user
( sleep 15 ; \
rabbitmqctl add_user xo_admin xo_admin; \
rabbitmqctl add_user super_rabbit super_rabbit; \
rabbitmqctl set_user_tags xo_admin administrator ; \
rabbitmqctl set_user_tags super_rabbit administrator ; \
rabbitmqctl set_permissions -p / super_rabbit  ".*" ".*" ".*" ; \
rabbitmqctl set_permissions -p 'xo_game' xo_admin  ".*" ".*" ".*" ; \
) &
# $@ is used to pass arguments to the rabbitmq-server command.
# For example if you use it like this: docker run -d rabbitmq arg1 arg2,
# it will be as you run in the container rabbitmq-server arg1 arg2
rabbitmq-server $@