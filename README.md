# What is it?

It's an experience where I try 2 news technologies for me: Svelte UI for the frontend and Pheonix for the backend.

It's just a funny side project where I can experiment with these technologies.

## To test

### Frontend
```
cd frontend
yarn install
yarn dev
```

### Backend
Create a docker postPostgrestainer in first.
Execute this command : 
```
docker pull postgres
docker run --name bs_db -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=password -d postgres
```

For the postgres Postgresation, you can choose yourself a name and password, but if you don't want to change the configuration of the database in the backend folder, you can just copy/past the command above.

After that you can just execute the command bellow:

```
mix phx.server
```
