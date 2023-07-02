# Experiment to serve static files in Nginx and do the other things

Use namespace anargyroi

mount this dir /gazda/anargyroi/book/ into the container as /usr/share/nginx/html

```
k expose deployment webserver --type=LoadBalancer --port=80 --target-port=80
```

Add the ingress addon:
```
minikube addons enable ingress
```

