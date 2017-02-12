. $PSScriptRoot\build\container-helpers.ps1

New-DockerImage

Start-DockerImage

$WebIPAddress = Get-ContainerIPAddress

Set-HostEntry $WebIPAddress

Test-HostEntry