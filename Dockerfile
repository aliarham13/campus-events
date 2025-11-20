# Use official Node image (slim) as build stage
FROM node:18-slim AS build
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json* ./
RUN npm install --production=false || true

# Copy source
COPY . ./

# Build static site with parcel
RUN npx parcel build src/index.html --dist-dir dist

# Use nginx for serving built files
FROM nginx:stable-alpine
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]