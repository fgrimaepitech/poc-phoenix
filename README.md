# To launch
Create a docker postgres container in first.
Execute this command : 
```
docker pull postgres
docker run --name bs_db -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=password -d postgres
```

For the postgres configuration, you can choose yourself the username and password, but if you don't want to change the configuration of the database in the backend folder, you can just copy/paste this command above.

