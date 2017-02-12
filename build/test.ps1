. $PSScriptRoot\common.ps1
. $PSScriptRoot\container-helpers.ps1 

Start-DockerImage $ImageName $ContainerName

Get-ContainerIPAddress $ContainerName ${HttpPort}