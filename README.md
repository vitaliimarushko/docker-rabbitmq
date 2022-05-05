# Requirements

Install the following dependencies:

- [Docker](https://docs.docker.com/engine/install/debian/#install-using-the-repository): ^19.x

# Deployment

1. Add required permission to execute the main script:

```shell
sudo chmod u+x run.sh
```

2. Run the script:

```shell
./run.sh
```

# Connection

| Parameter | Value   |
|-----------|---------|
| host      | 0.0.0.0 |
| port      | 5673    |
| username  | root    |
| password  | 1       |
| vhost     | hostt   |

Also, you can get the manual access through the docker instance:

```shell
docker exec -it docker-rabbitmq-1 /bin/bash -c "rabbitmqctl status"
```
