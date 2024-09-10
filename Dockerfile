# Dockerfile
# https://github.com/rellzy27/a433-microservices

# Base image from Docker Hub
FROM node:14
LABEL org.opencontainers.image.source="https://github.com/rellzy27/a433-microservices"
# Set working directory to /app
WORKDIR /app
# Copy all files from current directory to working dir in image
COPY . .
ENV NODE_ENV=production DB_HOST=item-db
RUN npm install --production --unsafe-perm && npm run build
# Expose port 8080
EXPOSE 8080
# Start app
CMD ["npm", "start"]