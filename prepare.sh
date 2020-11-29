service cgroups start
sleep 5
rm /var/run/docker.pid 2> /dev/null
rm /var/run/docker.sock 2> /dev/null
containerd >> /var/log/containerd.log 2>&1 &
sleep 15
dockerd >> /var/log/docker.log 2>&1 &
sleep 15
