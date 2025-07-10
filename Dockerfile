FROM rabbitmq:4.0.8-alpine
RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_stomp
RUN rabbitmq-plugins enable --offline rabbitmq_web_stomp
EXPOSE 15671 15672 15674 61613