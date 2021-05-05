docker run -d --name mongo -p 27017:27017 mongo
curl https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.ova --output bionic-server-cloudimg-amd64.ova
docker run -d --rm --name easyavi --link mongo -p 8082:8081 -v "$PWD":/root/images adeleporte/easyavi
