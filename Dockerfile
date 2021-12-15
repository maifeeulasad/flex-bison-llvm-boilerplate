FROM ubuntu
# RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add-
# RUN sudo wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -
RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get install -y gcc g++ libc-dev 
RUN sudo apt-get install -y make 
RUN sudo apt-get install -y flex bison 
# RUN sudo apt-get install -y llvm-9 llvm-9-dev
# RUN sudo apt-get install -y clang-9 llvm-9-tools libclang-9-dev llvm-9-dev
WORKDIR /compiler_dev
