#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
unzip sonarqube-8.9.6.50800.zip
yum install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-8.9.6.50800 -R
chmod 777 sonarqube-8.9.6.50800 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-8.9.6.50800/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
#  for sonar first execute 3 to 10 cmds and then execure this cd /opt/ then you found a sonar folder go inside folder you found bin and then inside bin you found sonar.sh you sould start that service by using ./sonar.sh start
# sonar cube port -9000 and ./sonar.sh stop and restart and status
