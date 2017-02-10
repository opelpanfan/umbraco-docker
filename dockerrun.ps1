# Docker image name for the application
$ImageName="kevinobee/umbraco"

# Docker container name
$ContainerName="umbraco.web"

$HttpPort = 8080
$InformationPreference = 'Continue'

# Build the docker image
docker build -t $ImageName .

# Launch the image in a container
docker run -d -P --name $ContainerName  $ImageName

# Find out the IP address you need to connect
$WebIPAddress = docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" $ContainerName

$WebsiteUrl = "http://${WebIPAddress}:${HttpPort}/"

Write-Progress -Activity Testing -CurrentOperation "Starting Umbraco CMS - $WebsiteUrl"

if ((Invoke-WebRequest -Uri $WebsiteUrl).StatusCode -eq 200) {

    Write-Information -MessageData "Success: Umbraco CMS available - $WebsiteUrl"
}
