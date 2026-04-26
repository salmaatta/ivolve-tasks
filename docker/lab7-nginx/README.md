# Lab 7: Docker Volume and Bind Mount with Nginx

## Steps

### 1. Create Volume
docker volume create nginx_logs

### 2. Create HTML file
mkdir -p ~/nginx-bind/html
echo "Hello from Bind Mount" > ~/nginx-bind/html/index.html

### 3. Run Nginx Container
docker run -d \
  --name nginx-container \
  -p 8080:80 \
  -v nginx_logs:/var/log/nginx \
  -v ~/nginx-bind/html:/usr/share/nginx/html \
  nginx

### 4. Test
curl http://localhost:8080

### 5. Update HTML and verify
echo "Hello from Bind Mount - Updated!" > ~/nginx-bind/html/index.html
curl http://localhost:8080

### 6. Verify Logs
docker logs nginx-container

### 7. Cleanup
docker stop nginx-container
docker rm nginx-container
docker volume rm nginx_logs
