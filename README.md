# SimSiam

This code is an implementation of [SimSiam]() released by the Facebook AI Research Group in November 2020. Most of this code was implemented by referring to this [code](https://arxiv.org/abs/2011.10566), and the code was slightly tuned to enable AMP learning and monitoring through the Tensorboard. The library of technologies used to implement this code is as follows.

 - PyTorch 1.9.0
 - Automatic Mixed Precision(AMP)
 - Distributed Data Parallel(DDP) with syncBN



Data augmentation and hyperparameter setting in the Pretrain stage and linear classification stage both followed the contents of the paper. When AMP is applied with 8 V100 16G GPUs, you can learn with a total of 1024 batch size, and the ImageNet linear classification performance according to epoch is as follows. In all cases, linear classification only learned 100 epochs. The code execution environment is available through pull on this docker hub [link](https://hub.docker.com/repository/docker/jskpop/torch_ddp).

| Epochs | 100 | 200 | 400 | 800 |
|--|--|--|--|--|
| Train Acc. | 71.54 |  |  |  |
| Valid Acc. | 67.55 |  |  |  |
