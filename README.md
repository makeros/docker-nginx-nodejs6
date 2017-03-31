# nginx-nodejs6
Nginx server with nodejs 6
U can start a container based on this image and provide environment variables wich will be used in nginx.conf.

TO do so follow this steps:
* in your dockerfile copy your nginx conf (with environment variables/or not ;) into /etc/nginx/conf-templates/nginx.conf.template

example:
```
...
    location /api/ {
        proxy_pass      http://${PROXY_URL};
        proxy_set_header    Host             '$host';
        proxy_set_header    X-Real-IP        '$remote_addr';
        proxy_set_header    X-Forwarded-For  '$proxy_add_x_forwarded_for';
    }
...
```
(full example is in /main/templates/nginx.conf.template.example)

* now when You run the container provide the PROXY_URL as an env parameter


