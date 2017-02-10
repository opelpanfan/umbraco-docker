# Docker image name for the application
$ImageName="kevinobee/umbraco"

# Docker container name
$ContainerName="umbraco.web"

# clean up
docker stop $ContainerName
docker rm $ContainerName
docker rmi $ImageName