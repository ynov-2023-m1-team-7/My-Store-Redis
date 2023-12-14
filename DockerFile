FROM redis:7.2.3-alpine3.18

# Copy the redis.conf file to the container
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expose the port 6379
EXPOSE 6379

# Run the redis server
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]


# Build the image
#docker build -t my-store-redis .

# Run the container
#docker run -d --name my-store-redis -p 6379:6379 my-store-redis
