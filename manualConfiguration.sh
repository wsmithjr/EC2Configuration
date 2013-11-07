#sbt https://gist.github.com/visenger/5496675

wget http://scalasbt.artifactoryonline.com/scalasbt/sbt-native-packages/org/scala-sbt/sbt//0.12.3/sbt.deb
sudo dpkg -i sbt.deb
sudo apt-get update
sudo apt-get install sbt

# nginx https://www.digitalocean.com/community/articles/how-to-install-nginx-on-ubuntu-12-04-lts-precise-pangolin

sudo apt-get install nginx
sudo service nginx start

