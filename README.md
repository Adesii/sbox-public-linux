
# Linux
Hi, this is a fork of sbox-public it has minimal changes to source code and is mostly just here to make it easier to compile sbox-public with wine as there are some issues if you just pull sbox-public and use the `./Bootstrap.bat`

### Steam version Recommendations:
- install the dotnet sdk in your protonprefix for your editor and sbox prefix. otherwise opening a project will create a Z: directory in your libraries and code paths if your project and sbox installation are on different drives. **THIS IS EXTREMELY BAD IF YOU PLAN ON DELETING A LIBRARY, IT WILL WIPE YOUR LINUX SYSTEM** somewhat. it will recursely delete the Library if it comes across a Z: path its gonna loop back to your root filesystem / which basically means rm rf /

### Steps:
- clone this repository
- open a normal linux terminal of your choice in this folder
- run `./restore.fish` in here using your linux shell (or the commands inside of this file inside of this folder)
- wait for it to be done (or rather error out. this is expected)
- open a wine cmd in this folder using winetricks
- run `./Bootstrap.bat` in your wine environment
- run winetricks again and select "run an arbitrary executable". or just double click the `sbox-dev.exe` whatever you prefer

you might need to copy your wineprefix's dotnet installation into your linux dotnet installation for the dll's to be available inside of wine. idk why but it seems the environment variables are wonky inside of wine. Could maybe also set `DOTNET_ROOT` environment variable inside of your wine cmd to fix it. but this needs testing
### Notes
if any issues arise please dm me on discord (adesi)
its very likely you'll run into issues with this method as from the few times others have tried to replicate my method it didn't work for them.

i want to figure out why it works on my system and not on others. Give a detailed report of the errors you encountered and i'll try to help you fix them and update the steps needed

notes about my system:
i run cachyos,i installed dotnet sdk 10 in both my wineprefix and my normal linux system. i copied over the wineprefix dotnet installation into my linux dotnet folder due to the dotnet_root being wonky inside of wine.
##

# Original readme:
<div align="center">
  <img src="https://sbox.game/img/sbox-logo-square.svg" width="80px" alt="s&box logo">

  [Website] | [Getting Started] | [Forums] | [Documentation] | [Contributing]
</div>

[Website]: https://sbox.game/
[Getting Started]: https://sbox.game/dev/doc/about/getting-started/first-steps/
[Forums]: https://sbox.game/f/
[Documentation]: https://sbox.game/dev/doc/
[Contributing]: CONTRIBUTING.md

# s&box

s&box is a modern game engine, built on Valve's Source 2 and the latest .NET technology, it provides a modern intuitive editor for creating games.

![s&box editor](https://files.facepunch.com/matt/1b2211b1/sbox-dev_FoZ5NNZQTi.jpg)

If your goal is to create games using s&box, please start with the [getting started guide](https://sbox.game/dev/doc/about/getting-started/first-steps/).
This repository is for building the engine from source for those who want to contribute to the development of the engine.

## Getting the Engine

### Steam

You can download and install the s&box editor directly from [Steam](https://sbox.game/give-me-that).

### Compiling from Source

If you want to build from source, this repository includes all the necessary files to compile the engine yourself.

#### Prerequisites

* [Git](https://git-scm.com/install/windows)
* [Visual Studio 2026](https://visualstudio.microsoft.com/)
* [.NET 10 SDK](https://dotnet.microsoft.com/en-us/download)

#### Building

```bash
# Clone the repo
git clone https://github.com/Facepunch/sbox-public.git
```

Once you've cloned the repo simply run `Bootstrap.bat` which will download dependencies and build the engine.

The game and editor can be run from the binaries in the game folder.

## Contributing

If you would like to contribute to the engine, please see the [contributing guide](CONTRIBUTING.md).

If you want to report bugs or request new features, see [sbox-issues](https://github.com/Facepunch/sbox-issues/).

## Documentation

Full documentation, tutorials, and API references are available at [sbox.game/dev/](https://sbox.game/dev/).

## License

The s&box engine source code is licensed under the [MIT License](LICENSE.md).

Certain native binaries in `game/bin` are not covered by the MIT license. These binaries are distributed under the s&box EULA. You must agree to the terms of the EULA to use them.

This project includes third-party components that are separately licensed.
Those components are not covered by the MIT license above and remain subject
to their original licenses as indicated in `game/thirdpartylegalnotices`.