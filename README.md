## Sass and Docker

### How to install Sass or Scss:

- After installing Node.js run this comman:

  ##### `npm install -g sass` or

  ##### `npm install -D sass` -- for local

- For Linux Ubuntu users:
  ##### `sudo npm install -g sass`

### Installing Live - server

##### `npm install -g live-server`

##### `npm install -D live-server` for local

### Config Sass and live-server in package.json

- Add this to package.json

```js
"scripts": {
    "sassComp": "sass --watch Scss/main.scss:Style/style.css",
    "server": "live-server",
    "start": "npm run server && npm run sassComp  "
  },
```

### To run the app just run:

```js
npm start  or  npm run start
```

##

## Docker Setup

#### In root directory run this from terminla:

```js
docker init
```

#### After a few questions it will generate this four files:

```
    - .dockerignore
    - Dockerfile
    - compose.yaml
    - README.Docker.md
```

### When you're ready, start your application by running:

```
docker compose up --build
```

### Or if you want to creat Image or Container:

```
docker build -t sass-image .
// for image
```

```
docker create --name sass-container sass-image
// for container
```

### Then you can run your container using this command:

```
docker run --name sass-container -p 8080:80 sass-image
```
