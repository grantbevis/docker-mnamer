# mnamer Container
<img src="https://github.com/jkwill87/mnamer/raw/master/assets/logo.png" width=200px>

### Description

A little container I wrote to package [mnamer](https://github.com/jkwill87/mnamer) in docker

### Usage

Pass the folder of files you wish to process with mnamer as a volume to the container

### Example run command
The following will interactively process folders in the /mnt folder that you've passed to the container from /path/to/files
```
docker run \
  -it --rm --name mnamer \
  -v /path/to/files:/mnt \
  b3vis/mnamer
```