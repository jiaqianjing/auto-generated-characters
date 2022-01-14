image='auto-gen-characters:1.0.0'
container_name='dev'
cmd='sleep 1000d'
nvidia-docker run  -itd --name $container_name  \
                   --restart=always \
                   --network host \
                   -v $PWD:/workspace \
                   $image  \
                   $cmd

