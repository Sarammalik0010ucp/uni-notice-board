# Use official nginx image to serve static site
FROM nginx:alpine

# Copy built site from dist folder to nginx html folder
COPY dist/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Default command runs nginx
CMD ["nginx", "-g", "daemon off;"]
