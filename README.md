# PaperMC Minecraft Server
Simple Minecraft server running [itzg /docker-minecraft-server](https://github.com/itzg/docker-minecraft-server). "PaperMC" server allows installing plugins improving the Minecraft vanilla experience.  
A backup server is included and creates a backup every 24h with 7 days retention per default. Backup files can be found in `./backups` 

A Plugin folder will be created automatically after first start and can be found in `./data/plugins`. 
All .jar files can be placed directly into this folder. Spigot plugins compatible. Restart is required. 
Plugin files are not included in this repository and have to be downloaded manually.
Recommended plugins:
- [Dynmap](https://www.spigotmc.org/resources/dynmap%C2%AE.274/)
- [Chunky](https://www.spigotmc.org/resources/chunky.81534/)
- [EasyCarts](https://www.spigotmc.org/resources/easycarts.3941/)

## Setup

An `.env` file needs to be created, see `env.example`.

Build container 
```sh
docker compose build
```

Start server
```sh
docker compose up -d
```

Stop server
```sh
docker compose down
```

## Linking config files

The `./data` folder containing all Minecraft files is ignored, thus no data will be committed to this repository. To save configs, plugin- and user-data, simply add all desired files to the `./config` folder.  To use them, you have to run the make commands linking them into the `./data` folder. Updating the Makefile to suit your needs may be necessary.

Link config files
```sh
`make ln-config`
```

Link plugins
```sh
`make ln-plugins`
```

Link user data
```sh
`make ln-users`
```

## Configuring Firewall
Opens firewall for Minecraft. Port `19132` is needed if bedrock players want to connect through plugins [Geyser and Floodgate](https://geysermc.org/). 

```sh
`make firewall`
```