ls
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo~
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo amazon-linux-extras install java-openjdk11 -y
cat /etc/os-release
sudo yum install -y amazon-linux-extras
sudo yum install fontconfig java-17-openjdk
yum list | grep java
sudo yum install java-17-amazon-corretto-devel.x86_64  
sudo yum install jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
/var/lib/jenkins/secrets/initialAdminPassword
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.73/bin/apache-tomcat-9.0.73.tar.gz
tar -xvf apache-tomcat-9.0.73.tar.gz
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.73/bin/apache-tomcat-9.0.73.tar.gz
tar -xvf apache-tomcat-9.0.73.tar.gz
cd apache-tomcat-9.0.73
curl -s https://tomcat.apache.org/download-90.cgi | grep 'tar.gz' | grep -o 'https:[^"]*'
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.102/bin/apache-tomcat-9.0.102.tar.gz
tar -xvf apache-tomcat-9.0.102.tar.gz
cd apache-tomcat-9.0.102
cd bin
./startup.sh
[200~cd conf
vi server.xml
