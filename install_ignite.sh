#curl -o binary.zip http://mirror.apache-kr.org//ignite/2.3.0/apache-ignite-fabric-2.3.0-bin.zip
#unzip binary.zip
#sudo mkdir -p /opt/apache_ignite/
#sudo mv a* /opt/apache_ignite/
sudo ln -s /opt/apache_ignite/apache-ignite-fabric-2.3.0-bin /usr/local/ignite
export IGNITE_HOME=/opt/apache_ignite/apache-ignite-fabric-2.3.0-bin/bin
PATH=$PATH:$IGNITE_HOME



