wget http://www-us.apache.org/dist//ignite/2.3.0/apache-ignite-fabric-2.3.0-bin.zip
unzip apache-ignite-fabric-2.3.0-bin.zip
mv apache-ignite-fabric-2.3.0-bin /opt/ignite

cat <<EOF > /etc/systemd/system/ignite.service
[Unit]
Description=Apache Ignite

[Service]
ExecStart=/opt/ignite/bin/ignite.sh
WorkingDirectory=/opt/ignite
KillMode=process
PrivateTmp=true

[Install]
WantedBy=multi-user.target
EOF
systemctl enable ignite.service
systemctl start ignite.service
EOF