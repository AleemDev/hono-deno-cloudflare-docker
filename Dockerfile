FROM denoland/deno:debian

WORKDIR /app

# Copy the entrypoint script into the container
# COPY entrypoint.sh /entrypoint.sh
# USER 1000:1000
# RUN chmod +x /entrypoint.sh

# We don't copy source code here because it will be mounted via docker-compose
EXPOSE 8000

# Set the entrypoint to our script
# ENTRYPOINT ["/entrypoint.sh"]

# The CMD becomes the "$@" that the entrypoint script executes at the end
CMD ["deno", "task", "dev", "--host", "0.0.0.0"]