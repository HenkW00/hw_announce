# HW Announce System for FiveM

This script allows specific user groups to send server-wide announcements. It supports multiple notification systems and logs usage to Discord.

## Installation

1. Place the `hw_announce` folder in your `resources` directory.
2. Add `ensure hw_announce` to your server.cfg.
3. Configure the `config.lua` file to set your preferred notification system and Discord webhook URL.

## Usage

- Use `/hw_announce [message]` to send an announcement.
- Only users with specified roles in the `config.lua` file can use this command.

## Configuration

- You can specify which groups have access to the announce command.
- You can choose between different notification systems: ESX, Mythic, okokNotify, or chat.
- Discord logging is configurable via webhook URL in `config.lua`.
