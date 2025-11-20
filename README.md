# Campus Event Management — Static Website

This repository contains the static website for the Campus Event Management assignment.

## Build & Run (local)
1. Install Parcel globally: `npm install -g parcel`.
2. Start dev server: `npm run start`.

## Build for production
`npm run build` will output to the `dist/` folder.

## Docker (build & run)
1. Build docker image (replace username):
   `docker build -t aliarham/campus-events:v1 .`
2. Run container:
   `docker run -p 8080:80 aliarham/campus-events:v1`

---

## License
MIT