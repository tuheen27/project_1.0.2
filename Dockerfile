# Start with Nginx as base image
FROM nginx:alpine

# Remove the default HTML page Nginx serves
RUN rm -rf /usr/share/nginx/html/*

# Copy your one HTML file into the web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Run Nginx in foreground (so container keeps running)
CMD ["nginx", "-g", "daemon off;"]
