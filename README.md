# Mattermost Pidgin Client Installer
A unified installer for the Pidgin client and Mattermost plugin. Rather than
having to download and run two separate installers, this project bundles the
main Pidgin installer along with the Pidgin-Mattermost plugin to make your life
just a little easier.

[Get It Here](https://github.com/Brightscout/mattermost-pidgin-client/releases)

The current version includes:

* [Pidgin Client version v2.12.0](https://sourceforge.net/projects/pidgin/)
* [Pidgin-Mattermost Plugin v1.1](https://github.com/EionRobb/purple-mattermost/releases/tag/v1.1)



## How to build
We use [NSIS](http://nsis.sourceforge.net/Main_Page) to generate the windows installers. The build runs on linux through a [Docker image](https://hub.docker.com/r/brightscout/mattermost-pidgin-client-build/). Here are the steps to build a new installer:

Make sure you have Docker installed. You can learn more [here](https://docs.docker.com/engine/installation/).

and then:
```
$ git clone https://github.com/Brightscout/mattermost-pidgin-client
$ cd mattermost-pidgin-client
$ docker run -v `pwd`/installer:/build/installer brightscout/mattermost-pidgin-client-build
```

The newly generated file should be found here: **installer/Mattermost-Pidgin-Client-v1.0.exe**

## How to update installer versions

To update the embedded installers you will need to:

1. Download the desired installer versions and place the files under ./installer/installers
2. Update the [installer/script.nsi](https://github.com/Brightscout/mattermost-pidgin-client/blob/master/installer/script.nsi) file with the new version numbers:

```
!define PIDGIN_VERSION "2.12.0"
!define PIDGIN_MM_VERSION "1.1"
```
