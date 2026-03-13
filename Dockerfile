# Use official nginx image
FROM nginx:latest

# Copy custom html files to nginx web directory
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
