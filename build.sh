docker build -t linimbus/webshell -f Dockerfile  .

docker run -d --name=webshell --restart=always \
      -v /etc/letsencrypt/live/xxx.com/fullchain.pem:/etc/cert.pem 
      -v /etc/letsencrypt/live/xxx.com/privkey.pem:/etc/key.pem \
      -p 8800:4433 -p 31000:8888 \
      linimbus/webshell wssh \
      --certfile=/etc/cert.pem \
      --keyfile=/etc/key.pem
