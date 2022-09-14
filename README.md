# mc_client

Server IP address: `to be filled`

1. install Minecraft v1.19.2 and run once
1. download forge v1.19.2 mod [here](https://files.minecraftforge.net/net/minecraftforge/forge/)
1. download mods [here](https://www.curseforge.com/minecraft/mc-mods)
1. dump mods at `C:\Users\<user>\AppData\Roaming\.minecraft\mods`

# mc_server 

https://www.linuxnorth.org/minecraft/modded_linux.html

https://medium.com/@manbobo2012/host-a-minecraft-server-on-google-cloud-with-automatic-deployment-and-backup-f00d49a1a306

env:
```bash
sudo -s 
apt update && apt -y upgrade
apt install tmux wget openjdk-17-jdk-headless default-jre unzip zip cron
mkdir ~/minecraft && cd ~/minecraft
```

forged mod:
```bash
sudo -s 
cd ~/minecraft
wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.19.2-43.1.1/forge-1.19.2-43.1.1-installer.jar
java -jar forge-1.19.2-43.1.1-installer.jar --installServer
rm forge-1.19.2-43.1.1-installer.jar
```

mods:
```bash
mkdir ~/minecraft/mods
cd  ~/minecraft/mods
wget https://ci.lucko.me/job/spark/336/artifact/spark-forge/build/libs/spark-1.9.36-forge.jar
```

run server:
```bash
cd  ~/minecraft
sh run.sh nogui
```

cron job:
```bash
cd ~/minecraft
wget https://raw.githubusercontent.com/Jacky56/mc_server/main/cron_dump_save.sh
crontab -e -u root

# copy the below in the cronjob file
*/15 * * * * ~/minecraft/cron_dump_save.sh

```

spark mod:
```bash
/spark profiler
/spark profiler --stop
```

tmux:
```bash
sudo -s
tmux a
```

