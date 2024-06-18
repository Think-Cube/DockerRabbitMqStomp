
# RabbitMQ Dockerfile

This repository contains a Dockerfile for building a custom RabbitMQ image with additional plugins enabled. The RabbitMQ image includes the following plugins:

- RabbitMQ Management
- RabbitMQ STOMP
- RabbitMQ Web STOMP

## Dockerfile Details

```Dockerfile
FROM rabbitmq:3.11
RUN rabbitmq-plugins enable --offline rabbitmq_management
RUN rabbitmq-plugins enable --offline rabbitmq_stomp
RUN rabbitmq-plugins enable --offline rabbitmq_web_stomp
EXPOSE 15671 15672 15674 61613
```

## Getting Started

### Prerequisites

- Docker installed on your machine.

### Building the Docker Image

To build the Docker image, run the following command in the directory containing the Dockerfile:

```sh
docker build -t custom-rabbitmq:3.11 .
```

### Running the Docker Container

To run a container from the built image, use the following command:

```sh
docker run -d --name rabbitmq -p 15671:15671 -p 15672:15672 -p 15674:15674 -p 61613:61613 custom-rabbitmq:3.11
```

### Accessing RabbitMQ

- **Management UI**: You can access the RabbitMQ Management UI at `http://localhost:15672`. The default username and password are `guest` and `guest`.

- **STOMP**: The RabbitMQ STOMP plugin is accessible on port `61613`.

- **Web STOMP**: The RabbitMQ Web STOMP plugin is accessible on port `15674`.

## Plugin Information

### RabbitMQ Management

The RabbitMQ Management plugin provides an HTTP-based API for management and monitoring of RabbitMQ. It also provides a browser-based UI for management and monitoring.

### RabbitMQ STOMP

The RabbitMQ STOMP plugin enables the STOMP protocol in RabbitMQ. STOMP is a simple text-orientated messaging protocol.

### RabbitMQ Web STOMP

The RabbitMQ Web STOMP plugin provides a WebSockets to STOMP gateway. This allows STOMP clients to communicate with RabbitMQ over WebSockets.

## Ports

The following ports are exposed in the Dockerfile:

- `15671`: AMQP-over-SSL (Not used by default)
- `15672`: HTTP API / Management UI
- `15674`: STOMP-over-WebSockets
- `61613`: STOMP

## Customization

You can customize the Dockerfile to include other RabbitMQ plugins or configurations as needed. For more information on RabbitMQ and its plugins, visit the [official RabbitMQ documentation](https://www.rabbitmq.com/documentation.html).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any enhancements or bug fixes.
