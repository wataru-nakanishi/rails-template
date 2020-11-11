# rails-template
1. Create Dockerfile, Gemfile, Gemfile.lock(empty), entrypoint.sh, docker-compose.yml
1. generate the Rails skeleton app  
` docker-compose run --no-deps web rails new . --force --database=postgresql `
1. Build docker image  
` docker-compose build `
1. Change root user plugin  
```
docker-compose exec db bash
# chacking user's plugin
mysql -u root
# change root user's plugin
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '';
```

URL: https://docs.docker.com/compose/rails/