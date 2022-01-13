port=8899
nohup jupyter-lab --notebook-dir=./ \
		  --ip=0.0.0.0  \
		  --no-browser \
		  --allow-root \
		  --port=$port \
		  --NotebookApp.token='' \
		  --NotebookApp.password='' \
		  --NotebookApp.allow_origin='*'  >jupyterlab.log 2>&1 &
echo $! > jupyterlab.pid
