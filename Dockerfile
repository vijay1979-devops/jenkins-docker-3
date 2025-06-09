# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Copy custom NGINX configuration file (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website files to the default NGINX public folder
COPY ./html /usr/share/nginx/html
# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
