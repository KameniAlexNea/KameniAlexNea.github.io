# Build the image (only needed once or when Dockerfile changes)
docker build -t jekyll-site .

# Run the container with live reloading
docker run -p 4000:4000 -v $(pwd):/usr/src/app jekyll-site