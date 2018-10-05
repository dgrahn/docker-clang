FROM buildpack-deps:bionic

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
RUN apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-7 main"
RUN apt-get update
RUN apt-get install -y clang-7
RUN ln -s /usr/bin/clang++-7 /usr/bin/clang++
RUN ln -s /usr/bin/clang-7 /usr/bin/clang
RUN ln -s /usr/bin/clang-cpp-7 /usr/bin/clang-cpp
