# Using the torch-rnn to generate the Lyrics based on Li Qingzhao's works
  Li Qingzhao's Lyrics are very beautiful and famous, so I want to use torch-rnn to generate the Lyrics, see whether the machine could
  generate the same style with Li Qingzhao's.
# Basic Requirement and Setup
  Before playing the game, you should have torch and download torch-rnn first, here are the links need to be used, remember to set the 
  environment of torch.
  
  Troch: http://torch.ch/
  
  torch-rnn : https://github.com/jcjohnson/torch-rnn
  
  Tips: after downloading the torch-rnn, when setup the torch-rnn, especially when doing the Python setup, you should remember where the     requirements.txt is, or you will failed.
# About the Data
  There are some datas in the data file, but only the Li_Qing_Zhao.txt and the songci_txt can be used, and the Li_Qing_Zhao.txt is a very 
  small dataset while the songci.txt is a large dataset.
  
  Tips: when you want to have your own dataset trained, notice the type must be UTF-8, you can simply change the type in the ipytohn 
  notebook if your type is not UTF-8.
# Generate the Lyrics

r  DO IT IN COMMAND LINE
g  
  ## precessing the data
  
  python scripts/preprocess.py --input_txt data/Li_Qing_Zhao.txt --output_h5 Li_Qing_Zhao.h5 --output_json Li_Qing_Zhao.json
  
  ## train the model
  
  th train.lua -input_h5 Li_Qing_Zhao.h5 -input_json Li_Qing_Zhao.json -gpu -1  # without gpu
  
  ## sample text
  
  th sample.lua -checkpoint cv/checkpoint_yourcheckpoint.t7 -length 100 -gpu -1
  
  Tips: the -gpu -1 means the model running on cpu only, if you want to run it on gpu, see details in the requirements. Notice
  the Li_Qing_Zhao.txt is a small dataset, if you have some problems when train the model, try a samll batch_size or add a 
  dropout. You can also try the songci.txt dataset, but it will take a very long time when you run it on cpu only with 50 epochs, 
  I suggest you should run it on GPU machine.
  
# 用torch-rnn在基于李清照的词的基础上生成类李清照风格的词
  李清照的词风优美且闻名于耳， 我想基于李清照的词用torch-rnn来生成词，看是否机器能够生成类似李清照风格的词作。
# 基本需求和设置
  在此之前，你必须下载torch和torch-rnn，并且配置好troch环境，我是在linux系统下下载和配置的。下面是一些有用的连接：
  
  Troch: http://torch.ch/
  
  torch-rnn : https://github.com/jcjohnson/torch-rnn
  
  TIPs: 下载好之后， 在配置torch-rnn的时候，尤其记得注意requirements.txt文件的位置，以防止在配置Python Setup的时候失败。
# 关于数据
  在data文件夹里面有几个数据文件，注意只有Li_Qing_Zhao.txt 和songci.txt可以使用，Li_Qing_Zhao.txt 是一个小的dataset，而singci.txt是一个比较
  大的dataset。
  
  TIPs： 你也可以制作你自己的dataset，但是注意数据类型采用UTF-8格式， 你可以在ipython notebook中很容易的转换你的数据格式为UTF-8当你需要的时候。
# 生成词作
  在命令行里输入
  
  ## 处理数据
  
  python scripts/preprocess.py --input_txt data/Li_Qing_Zhao.txt --output_h5 Li_Qing_Zhao.h5 --output_json Li_Qing_Zhao.json
  
  ## 训练模式
  
  th train.lua -input_h5 Li_Qing_Zhao.h5 -input_json Li_Qing_Zhao.json -gpu -1  # 不用gpu
  
  ## 生成词作
  
  th sample.lua -checkpoint cv/checkpoint_yourcheckpoint.t7 -length 100 -gpu -1
  
  TIPs：-gpu -1 是指在cpu上运行，如果你想在GPU上运行可以参考需求里面的具体设置。注意Li_Qing_Zhao.txt是一个小的dataset，如果你在训练数据的过程
  中产生问题，可以尝试将batch-size设置的小一点或者添加dropout。你也可以尝试训练songci.txt这个dataset，但是如果在cpu上训练这个dataset会花费很
  长时间，建议在GPU上运行。
