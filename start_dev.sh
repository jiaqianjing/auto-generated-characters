image='neurons/auto-gen-characters:1.0.0'
container_name='dev'
cmd='sleep 1000d'
# [Tips]: host 模式在非 linux 下，可能不支持，因此启动容器时，同时开了一个用于宿主机访问容器内 jupyterlab 的端口 8899
nvidia-docker run  -itd --name $container_name  \
                   --restart=always \
                   --network host \
                   -p 8899:8899 \
                   -v $PWD:/workspace \
                   $image  \
                   $cmd

