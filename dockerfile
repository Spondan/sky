# Use a lightweight web server
FROM nginx:alpine

# Remove the default nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy your site into nginx’s html folder
COPY . /usr/share/nginx/html

# Expose port 3000
EXPOSE 3000

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
