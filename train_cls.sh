python main_lincls.py \
  -a resnet50 \
  --dist-url 'tcp://localhost:10001' --multiprocessing-distributed --world-size 1 --rank 0 \
  --pretrained checkpoint/checkpoint_0099.pth.tar \
  --name load_99 \
  --resume checkpoint.pth.tar \
  --lars \
  --amp
