docker run \
    --rm \
    --privileged \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    -v ./apcupsd:/apcupsd \
    homeassistant/aarch64-builder \
    --all \
    --no-cache \
    --docker-user "${DOCKER_USER}" \
    --docker-password "${DOCKER_PASSWORD}" \
    -t /apcupsd
