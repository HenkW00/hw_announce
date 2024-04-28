# HW Scripts - Announce

**Description**
This script allows specific user groups to send server-wide announcements. It supports multiple notification systems and logs usage to Discord.

## Author
- HW Development | HenkW

## 🛠 Requirements
- ESX Server

## 🌐 Requirements Download links
- [es_extended](https://github.com/ESX-Org/es_extended)

## ✅ Usage
- Use `/hw_announce [message]` to send an announcement.
- Only users with specified roles in the `config.lua` file can use this command.

## Configuration
- You can specify which groups have access to the announce command.
- You can choose between different notification systems: ESX, Mythic, okokNotify, or chat.
- Discord logging is configurable via webhook URL in `config.lua`.

## 🔧 Download & Installation
Follow these steps to set up the repair script on your ESX server:

1. **Download the Files**: Download the script files from the provided source.
2. **Copy to Server Resource Directory**: Place the `hw_repairkit` folder in the server resource directory.
3. **Update `server.cfg`**: Add the following line to your `server.cfg` file:
    ```cfg
    start hw_repairkit
    ```
4. **Start Your Server**: Restart or start your ESX server to load the `hw_repairkit` resource.

If help is needed, you can contact me via discord.
Link for that you can find in console upon restarting the script, otherwise just search for HenkW00 on google/github/CFX

Enjoy the script, i hope you like it! <3