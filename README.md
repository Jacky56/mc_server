# mc_server

https://www.linuxnorth.org/minecraft/modded_linux.html

env:
```bash
sudo -s 
apt update && apt -y upgrade
apt install tmux wget openjdk-8-jdk default-jre
mkdir ~/minecraft && cd ~/minecraft
```

forged mod:
```bash
sudo -s 
cd ~/minecraft
wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.19.2-43.1.1/forge-1.19.2-43.1.1-installer.jar
java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer
```

mods:
```bash
cd  ~/minecraft/mods
wget https://ci.lucko.me/job/spark/336/artifact/spark-forge/build/libs/spark-1.9.36-forge.jar
```

run server:
```bash
cd  ~/minecraft
sh run.sh nogui
```

