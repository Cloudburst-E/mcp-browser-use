REPOSITORY=us-east4-docker.pkg.dev/production-384921/cloudburst-docker
IMAGE_NAME=mcp/browser-use

function build {
  docker buildx build --platform linux/amd64 -t ${REPOSITORY}/${IMAGE_NAME} .
}

function push {
  build "$@"
  docker push ${REPOSITORY}/${IMAGE_NAME}
}

"$@"
