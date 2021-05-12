docker run -d --name mongo -p 27017:27017 mongo
curl https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.ova --output bionic-server-cloudimg-amd64.ova
docker run -d --name easyavi --link mongo -p 443:443 -v "$PWD":/root/images --add-host dockerhost:`ip -f inet addr show eth0 | awk '/inet / {print $2}' | awk -F/ '{print $1}'` --env HOST_MAC=`ip link show eth0 | grep ether | awk '{print $2}'`  adeleporte/easyavi
