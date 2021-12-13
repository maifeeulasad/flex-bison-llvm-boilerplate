FROM ubuntu
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add-
RUN sudo apt-add-repository "deb http://apt.llvm.org/bionic/llvm-toolchain-bionic-9 main"
RUN sudo apt-get update
RUN sudo apt-get upgrade
RUN sudo apt-get install -y gcc g++ libc-dev 
RUN sudo apt-get install -y make 
RUN sudo apt-get install -y flex bison 
RUN sudo apt-get install -y llvm-9 llvm-9-dev clang-9 llvm-9-tools
WORKDIR /compiler_dev
