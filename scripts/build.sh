docker image build -t test_trans:0.1 . -f Dockerfile
docker run --gpus all -p 8896:8896 --name cont_trans --ipc=host 
	-it -v /nfs/homes/jxiong/code/transducer:/workspace/trans test_trans:0.1

docker start cont_trans
docker exec -it cont_trans /bin/bash

# 进入/worksapce/trans
python setup.py install
