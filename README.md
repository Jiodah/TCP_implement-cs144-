# 基于C++11实现的TCP协议

## 目录树
```cpp
sponge
├── apps
├── build      代码构建
├── CMakeLists.txt
├── compile_commands.json -> build/compile_commands.json
├── doctests
├── etc
├── libsponge  源代码
├── README.md
├── tests
├── tun.sh
├── txrx.sh
└── writeups
```

## 项目组成和结果展示
如图所示
![image-20230313111322059](https://imgbed001.oss-cn-hangzhou.aliyuncs.com/img/image-20230313111322059.png)

本项目一共分为5部分：
- 字节流（byteStream）：对传输的数据进行读写操作、并且支持流量控制；
- 流重组器（StreamReassembler）：对传输过程中TCP段可能会出现乱序、丢失、重复、交叉重叠等错误状态进行处理，使其还原为原来的正确顺序；
- TCP接收器（TCPReceiver）：将接收到的数据送入流重组器中进行处理之后再传入字节流中，同时给发送方返回确认号（ack）和窗口大小（window size）实现对流量的控制；
- TCP发送器（TCPSender）：实现了重传定时器用于TCP的超时重传，同时对传输信息进行加工合成TCP段用于发送；
- TCP连接（TCPConnection）：将TCP接收器和发送器封装在一起从而实现完整的收发数据功能。

基于以上5部分，最终可以实现一个TCP协议。

压力测试如图所示：
```cpp
$ ./apps/tcp_benchmark 
CPU-limited throughput                : 1.00 Gbit/s
CPU-limited throughput with reordering: 0.94 Gbit/s
```
