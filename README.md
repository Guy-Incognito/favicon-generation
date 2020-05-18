# favicon-generation

## Local usage

Requires imagemagic and pngquant

favicon-generation.sh [input-file]

## Docker usage

### Build image

```
docker build . -t favicon-generator
```

```
docker run -v /local/path/to/image:/data  --rm favicon-generator [input-file]
```
