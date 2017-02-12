# Docker-Umbraco

> Builds an [Umbraco CMS v7.5.9][1] Docker image based on a `microsoft/aspnet` [Windows Container][2]


## Pre-Requisites

* [Docker][4]
* [PowerShell][5]

To use images from this repository you will need to switch Docker to using Windows Containers. If you are new to Docker or Windows Containers the [Build And Run Your First Docker Windows Server Container][3] will guide you through the process of getting setup with these pre-requisites. For Windows 10 users the [Windows Containers on Windows 10][7] quickstart covers the same material.


## Using the Docker Image 

A pre-built Docker image is availble for use on the [Docker Hub][9].

Follow these simple instructions for running the pre-built Docker image in an *Administrative* level PowerShell command prompt.

```
# Pull the image from Docker Hub
docker pull kevinobee/umbraco

# Run the Umraco Docker image
docker run -d -P --name umbraco.web kevinobee/umbraco

# Get the IP Address of the running umbraco.web container
#   Use this to connect to UmbracoCMS instance on HTTP port 8080
docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" umbraco.web
```

For convenience setting a *hosts* file entry for `umbraco.web` to map to the IP Address of the running container.

Use using regular [Docker commands][10] for stopping and restarting the container.


## Building the Umbraco Image

```
# Clean out any previous containers and images
.\clean.ps1

# Build and run a named container - umbraco.web
.\run.ps1
```

You should now be able to connect to your running [Umbraco CMS instance][6]. 

As part of the build process an entry for `umbraco.web` was added to the `C:\Windows\System32\drivers\etc\hosts` file. The IP address mapped to `umbraco.web` was extracted from the running Umbraco container.

Your Umbraco CMS Docker container can be browsed on [http://umbraco.web:8080][6]


## Contributing to the Project

Take a look at our [Developer notes][8] and then dive right in.


 [1]: https://our.umbraco.org/contribute/releases/759
 [2]: https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/quick-start-windows-server
 [3]: https://blog.docker.com/2016/09/build-your-first-docker-windows-server-container/
 [4]: https://www.docker.com/
 [5]: https://msdn.microsoft.com/en-us/powershell/mt173057.aspx
 [6]: http://umbraco.web:8080
 [7]: https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/quick-start-windows-10
 [8]: doc/Contributing/Developer-Notes.md
 [9]: https://hub.docker.com/r/kevinobee/umbraco/
 [10]: https://docs.docker.com/engine/reference/commandline/docker/