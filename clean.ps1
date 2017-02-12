. $PSScriptRoot\build\common.ps1

# clean up
docker stop $ContainerName
docker rm $ContainerName
docker rmi $ImageName