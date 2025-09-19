# Use nginx image as base
FROM nginx:alpine

# Copy index.html to container's default nginx location
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
