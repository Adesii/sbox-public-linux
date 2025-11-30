@echo off

dotnet run --project .\engine\Tools\SboxBuild\SboxBuild.csproj --no-restore -- build --config Developer
dotnet run --project .\engine\Tools\SboxBuild\SboxBuild.csproj --no-restore -- build-shaders
dotnet run --project .\engine\Tools\SboxBuild\SboxBuild.csproj --no-restore -- build-content
