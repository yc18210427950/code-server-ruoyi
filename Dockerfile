FROM linuxserver/code-server

RUN apt update

RUN apt install tzdata -y

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata

# 安装一些常用工具，例如vim和curl
RUN apt-get install -y vim curl wget git


RUN apt install -y openjdk-8-jdk
RUN apt install -y maven
RUN apt install -y gradle 

# 安装node16
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

RUN npm config set registry https://registry.npmmirror.com

RUN npm i -g yarn
RUN npm i -g tyarn
RUN npm i -g pnpm
RUN npm i -g serve