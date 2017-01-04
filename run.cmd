cd src\DockerDash\

docker-machine ls
@REM @powershell Get-VM MobyLinuxVM
set DOCKER_REMOTE_API=tcp://192.168.1.134:4243

dotnet run -f netcoreapp1

@PAUSE

@REM docker run -d -p 5050:5050 \
@REM -e DOCKER_REMOTE_API='tcp://192.168.1.134:4243' \
@REM -e DOCKERDASH_USER='admin' \
@REM -e DOCKERDASH_PASSWORD='changeme' \
@REM --name dockerdash \
@REM stefanprodan/dockerdash