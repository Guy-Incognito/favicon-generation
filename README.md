# favicon-generation

Tool which generates mutliple resolutions of png favicons

+ 32x32 
+ 128x128 
+ 144x144 
+ 152x152 
+ 192x192 
+ 256x256 
+ 384x384 
+ 512x512

as well as a `favicon.ico` with the following resolutions:

+ 16x16
+ 32x32
+ 48x48

## Local usage

Requires `imagemagic` and `pngquant`.

favicon-generation.sh [input-file]

## Docker usage

### Build image

```
docker build . -t favicon-generator
```
### Run image

```
docker run 
-v /local/path/to/image:/data \
-u $(id -u ${USER}):$(id -g ${USER}) \
--rm favicon-generator [input-file]
```

To set resulting png quality, adjust environment variable `PNG_QUALITY`.
If `PNG_QUALITY` is set to 100, no lossy compression will be done.
```
docker run 
-v /local/path/to/image:/data \
-u $(id -u ${USER}):$(id -g ${USER}) \
--env PNG_QUALITY=30 \
--rm favicon-generator [input-file]
```

