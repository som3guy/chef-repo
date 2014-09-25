#/bin/bash
#Installing apache tomcat.

# Create system group and user account for tomcat
groupadd -r tomcat
useradd -r -d /home/tomcat -g tomcat tomcat

# Extract the tar for tomcat
tar -zxvf /opt/apache-tomcat*

#Create directory link
ln -s /opt/apache-tomcat-7.0.55/ /opt/apache-tomcat

#Update the permissions
chown -Rh tomcat:tomcat /opt/apache-tomcat* tomcat

#Install the service and ensure it starts on boot.
chmod +x /etc/init.d/tomcat
chkconfig --add tomcat
chkconfig --levels 345 tomcat on

#Prepare the deployment directory
mkdir /home/tomcat/factory

#Link to deployment directory
ln -s /usr/apache/tomcat/conf/Catalina/localhost /home/tomcat/factory/conf
ln -s /home/tomcat/.grails /home/tomcat/factory/properties

#Update user settting in tomcat-users.xml
echo "<user username="tomcat" password="tacmot" roles="admin-gui,admin-script,manager-gui,manager-script,manager-jmx,manager-status"/>
</tomcat-users>" >> /opt/apache-tomcat/conf/tomcat-users.xml




