echo "Starting provision on WEB1"
sudo apt-get update -y 
sudo apt-get install -y nginx
echo "<h1>MACHINE 1</h1>" > /usr/share/nginx/html/index.html
echo "Provision of WS 1 is complete"
