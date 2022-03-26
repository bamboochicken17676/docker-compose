cd /home/matthew
apt update
apt install docker docker.io docker-compose git nfs-common
git clone https://github.com/bamboochicken17676/docker-compose.git
sed -i '' -e '$a\10.0.1.265:/mnt/storage/Media /media/media nfs defaults' /etc/fstab
cd docker-compose
cd arr-stack
docker-compose up -d
cd ..
cd uptime-kuma
docker-compose up -d
cd ..
cd gitea
docker-compose up -d