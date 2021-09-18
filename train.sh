python main_simsiam.py \
  -a resnet50 \
  -b 1024 \
  --epochs 100 \
  --dist-url 'tcp://localhost:10001' --multiprocessing-distributed --world-size 1 --rank 0 \
  --resume checkpoint_100/checkpoint_0029.pth.tar \
  --fix-pred-lr \
  --amp