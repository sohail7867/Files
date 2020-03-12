echo "Starting provision on WEB2"
sudo apt-get update -y 
sudo apt-get install -y nginx
echo "<h1>MACHINE 2</h1>" > /usr/share/nginx/html/index.html
echo "Provision of WS 2 is complete"
