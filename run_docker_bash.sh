# /path/to/desired/storage/location
ServerFiles=$1
# image used to run the server
Image=$2
# Memory
Memory=$3
ContainerName=$4

docker run \
  -e MEMORYSIZE=$Memory \
  --name $ContainerName \
  --entrypoint=/bin/bash \
  -v $ServerFiles:/data:rw \
  -p 25565:25565 \
  -i $Image
