$root = $env:APPVEYOR_BUILD_FOLDER
$versionStr = $env:APPVEYOR_BUILD_VERSION

Write-Host $root
Write-Host "Setting .nuspec version tag to $versionStr"

$content = (Get-Content $root\source\Contrib.sln\Thinktecture.IdentityServer.Services.Contrib\ThinkTecture.IdentityServer.Services.Contrib.nuspec) 
$content = $content -replace '\$version\$',$versionStr

$content | Out-File $root\source\Contrib.sln\Thinktecture.IdentityServer.Services.Contrib\ThinkTecture.IdentityServer.Services.Contrib.nuspec
