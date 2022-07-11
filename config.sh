
export DOCKER_HUB_REPOSITORY_USERNAME=zongxun
export DOCKER_HUB_REPOSITORY_PASSWORD=12345mtr.
export DOCKER_HUB_REPOSITORY_EMAIL=zoxun@outlook.com
export BASE64_CREDENTIALS="$(echo -n $DOCKER_HUB_REPOSITORY_USERNAME:$DOCKER_HUB_REPOSITORY_PASSWORD | base64)"
echo "{\"auths\":{\"https://index.docker.io/v1/\":{\"auth\":\"$BASE64_CREDENTIALS\",\"email\":\"$DOCKER_HUB_REPOSITORY_EMAIL\"}}}" > config.json
