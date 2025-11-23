#udate password for root
sudo passwd root

yum install java-17-amazon-corretto -y

cd /opt

wget https://download.sonatype.com/nexus/3/nexus-3.86.2-01-linux-x86_64.tar.gz

tar -zxvf nexus-3.86.2-01-linux-x86_64.tar.gz

useradd nexus
#udate password for root
sudo passwd nexus
chown -R nexus:nexus nexus-3.86.2-01 sonatype-work/

su - nexus

cd /opt/nexus-3.86.2-01/bin

./nexus start
./nexus status
