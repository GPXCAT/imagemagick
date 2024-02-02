# build
```bash
docker build -t jscat/imagemagick .
```

# build multi platform
```bash
docker buildx build --platform linux/amd64,linux/arm64 -t jscat/imagemagick:latest --push .
```

# run
```bash
docker run --rm -it \
    -v $(pwd):/app -w /app \
    jscat/imagemagick --help
```

# install docker
https://docs.docker.com/engine/install/ubuntu/
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

ImageMagick documentation: https://imagemagick.org