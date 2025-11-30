#!/usr/bin/env fish
dotnet restore ./engine/Tools/SboxBuild/SboxBuild.csproj
dotnet restore ./engine/Tools/CodeGen/CodeGen.csproj
dotnet restore ./engine/Tools/CreateGameCache/CreateGameCache.csproj
dotnet restore ./engine/Sandbox-Engine.slnx
dotnet build -c Release ./engine/Sandbox-Engine.slnx -a x64 --os win # error is expected. doesn't matter. we just do it to restore in release because there is no flag for somereason
#others

#dotnet restore ./engine/Launcher/SboxStandalone/Sbox-Standalone.csproj
#dotnet restore ./engine/Launcher/Sbox/Sbox.csproj
#dotnet restore ./engine/Launcher/SboxStandaloneTest/Sbox-Launcher.csproj
#dotnet restore ./engine/Launcher/SboxDev/Sbox-Dev.csproj
#dotnet restore ./engine/Launcher/SboxBench/SboxBench.csproj
#dotnet restore ./engine/Launcher/SboxServer/Sbox-Server.csproj
#dotnet restore ./engine/Launcher/SboxProfiler/SboxProfiler.csproj
