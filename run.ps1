# Docker image and container name for the application
$ImageName="kevinobee/umbraco"
$ContainerName="umbraco.web"

$HttpPort = 8080

$ErrorActionPreference = 'Stop'
$WarningPreference = 'Continue'
$InformationPreference = 'Continue'

# Build the docker image from the path matching the container name
docker build -t $ImageName $ContainerName

# Launch the image in a container
docker run -d -P --name $ContainerName $ImageName

# Find out the IP address you need to connect
$WebIPAddress = docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" $ContainerName

$WebsiteUrl = "http://${WebIPAddress}:${HttpPort}/"

Write-Progress -Activity Testing -CurrentOperation "Starting Umbraco CMS - $WebsiteUrl"

if ((Invoke-WebRequest -Uri $WebsiteUrl).StatusCode -eq 200) {

    Write-Information -MessageData "Success: Umbraco CMS available - $WebsiteUrl"
}

# Add hosts entry for the container name and ping it to ensure it resolves
& .\hosts.ps1 add $WebIPAddress $ContainerName
ping $ContainerName -n 1
