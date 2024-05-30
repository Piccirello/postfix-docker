# postfix-docker

A barebones postfix server running on alpine. This container supports graceful exit.

Relevant configuration, like `/etc/postfix/main.cf`, should be mounted into the container. `example/deployment.yaml` contains an example Deployment and Service for deploying this container to kubernetes.
