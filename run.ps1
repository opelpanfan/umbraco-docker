
$Build = "$PSScriptRoot\build"

. $Build\common.ps1
. $Build\container-helpers.ps1

New-DockerImage $ImageName $ContainerName

$WebIPAddress = & $Build\test.ps1

Set-HostEntry $WebIPAddress $ContainerName
Test-HostEntry $ContainerName