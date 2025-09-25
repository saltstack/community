# Streaming on Twitch

How does streaming on the [SaltStack Twitch channel](https://www.twitch.tv/saltstackinc) work?

> _Only Salt maintainers and VMware employees currently stream through the Twitch channel._

## Table of Contents

- [Twitch Account](#twitch-account)
- [Request SaltStackInc channel moderator/user permissions](#request-saltstackinc-channel-moderatoruser-permissions)
- [OBS Studio](#obs-studio)
  - [Example Salt state on Pop!_OS](#example-salt-state-on-pop_os-and-ubuntu)
  - [Basic setup](#basic-setup)
  - [Quick reference](#quick-reference)
- [Twitch chat and StreamElements chat moderation](#twitch-chat-and-streamelements-chat-moderation)

## Twitch Account

- [Create an Account with Twitch](https://help.twitch.tv/s/article/creating-an-account-with-twitch?language=en_US)
- Take a look at [Twitch Creator Camp](https://www.twitch.tv/creatorcamp/en/) for a Twitch platform crash course
- You're set to go, so now give [SaltStack Twitch channel](https://www.twitch.tv/saltstackinc) a follow!

## Request SaltStackInc channel moderator/user permissions

- Go to the SaltStack Twitch Chat (can do so from the main page of the channel without a stream happening)
- Type in `/mods`
- Reach out to the user(s) on the [SaltStack Slack Community](https://saltstackcommunity.herokuapp.com/)
  - Request SaltStackInc Twitch moderator and StreamElements permissions (at least Moderator or Super Moderator
    on StreamElements) too, which adds features like changing the stream title.

## OBS Studio

Install [OBS Studio](https://obsproject.com/), free software that can work on MacOS, Windows, and Linux.

### Example Salt state on Pop!_OS and Ubuntu

```
{% set user_name = salt['pillar.get']('common:lookup:user') %}

'flatpak install com.obsproject.Studio -y --user':
  cmd.run:
    - creates: /home/{{ user_name }}/.local/share/flatpak/exports/share/applications/com.obsproject.Studio.desktop
    - runas: {{ user_name }}
```

### Basic setup

An excellent video on using OBS Studio for streaming, scenes, sources, transitions, etc.
- [OBS For Brand New Streamers](Creating Scenes, Adding Custom Widgets, and MORE)](https://www.youtube.com/watch?v=EuSUPpoi0Vs)

The following is covered:

- Overview
- Setting Up Your First Scene
- Adding Cool Widgets
- Adding a Second Scene
- Transitions
- The Audio Mixer
- The Settings
- Switching Scenes w/ a Hotkey

#### Quick reference

- The initial configuration wizard can be used for optimizing for streaming
- Twitch can be selected, and the API streaming key should be entered
  - **OPTIONAL**: Can stream against personal channel for testing. OBS Studio provides a button that will go directly to the personal channel key location.
- At a minimum, there needs to be one **Scene** with the following sources:
  - **Video Capture Device**: For selecting your webcam, if wanting to include your face on the stream
  - **Mic/Aux** (or **Audio Input Capture** using your mic): For viewers to hear your voice
  - **Screen Capture**: To share targeted windows, desktops, etc.

## Twitch chat and StreamElements chat moderation

- [Twitch Chat Commands](https://help.twitch.tv/s/article/chat-commands?language=en_US)
- [StreamElements Chat Commands for SaltStackInc](https://streamelements.com/saltstackinc/commands)

Some example chat commands:

**Everyone**

```
# Twitch
/mods           This command will display a list of all chat moderators for that specific channel.
/w              /w {USERNAME} {MESSAGE}: This command sends a private message to another user on Twitch.
/block          /block {USERNAME}, or click on a username and then on the Block button on the user badge that appears.
/unblock        /unblock {USERNAME}, or click on the Unignore button which replaces the Block button.

# StreamElements
!uptime 	${channel} has been streaming for 2 hours 20 mins
!commands 	You can find a list of all Commands here https://StreamElements.com/${channel.alias}/commands
```

**Moderators**

```
# Twitch
/timeout        /timeout {USERNAME} [SECONDS], or clicking the clock symbol either directly in chat or on the user badge which appears when clicking on a username.
/ban            /ban {USERNAME}, or by clicking the Cancel symbol either directly in chat or on the user badge which appears when clicking on a username.
/unban          /unban {USERNAME}, or by clicking the Unban button which replaces the Ban button.

# StreamElements
!settitle 	Update the stream title.
```
