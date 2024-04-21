# How to run RVGL (Re-Volt) on Batocera on Odroid Go Super

## Clone the project

```
git clone
```

## Install locally RVGL Launcher
- Install RVGL Launcher on your local machine:
https://re-volt.gitlab.io/rvgl-launcher/

## Download the game
- Thanks to RVGL Launcher install the game locally

![](img/rvgl_launcher_01.png)

- Install the Pack `rvgl_linux`

![](img/rvgl_launcher_02.png)

## Option 1: Manual instllation: Install RVGL on batocera SHARE
- Create a directory `roms/ports/revolt` under `SHARE`
- Copy `packs` and `save` directories from your local installation to `rvgl` you created previously

![](img/copy_01.png)

- Copy `packs` and `save` directories from the project to `revolt` (replace files)

![](img/copy_02.png)

- Copy `revolt.sh` to `roms/ports` under `SHARE`

![](img/copy_03.png)

## Option 2: Automatic instllation: 
On linux you can use the script:
`deploy_rvgl_from_local.sh`

The script will automatically detect the rvgl installation and the mounting point for the sdcard.

## Play on your Console

Warning: the startup is slow, the screen will be black for few minutes, be patient

## Supported Batocera versions:
- Batocera 38

## Supported rvgl version
- rvgl 23.1030a1