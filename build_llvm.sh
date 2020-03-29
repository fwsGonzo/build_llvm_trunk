LLVM_SOURCE=$PWD/llvm-project/llvm
LLVM_INSTALL=$HOME/llvm/install
LLVM_BUILD=$PWD/build

PROJECTS="clang;clang-tools-extra;libcxx;libcxxabi;libunwind;lldb;compiler-rt;lld"

set -e
mkdir -p $LLVM_BUILD
mkdir -p $LLVM_INSTALL
pushd $LLVM_BUILD
cmake -DCMAKE_INSTALL_PREFIX=$LLVM_INSTALL -DLLVM_ENABLE_PROJECTS=$PROJECTS -DCMAKE_BUILD_TYPE=Release $LLVM_SOURCE
make -j8
make install
popd
