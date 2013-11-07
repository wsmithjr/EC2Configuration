#sbt https://gist.github.com/visenger/5496675

wget http://scalasbt.artifactoryonline.com/scalasbt/sbt-native-packages/org/scala-sbt/sbt//0.12.3/sbt.deb
sudo dpkg -i sbt.deb
sudo apt-get update
sudo apt-get install sbt

# nginx https://www.digitalocean.com/community/articles/how-to-install-nginx-on-ubuntu-12-04-lts-precise-pangolin

yes | sudo apt-get install nginx
yes | sudo service nginx start

sudo nano /etc/nginx/site-enabled/default

        location / {
          proxy_pass      http://localhost:9000;
        }
        
sudo service nginx restart

ssh -i joseph_wing.pem ubuntu@54.219.164.238 'sudo tar -zcvf FileTransfer.tar.gz Download/FileTransfer'

scp -i joseph_wing.pem ubuntu@54.219.164.238:~/FileTransfer.tar.gz ~/Desktop/Cloud\ Computing/FileTransfer.tar.gz

ssh -i joseph_wing.pem ubuntu@54.219.164.238 'sudo rm FileTransfer.tar.gz'
