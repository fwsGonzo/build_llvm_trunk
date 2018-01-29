LLVM_SOURCE=$HOME/llvm/llvm_source
LLVM_INSTALL=$HOME/llvm/install
LLVM_BUILD=$HOME/llvm/build

set -e
mkdir -p $LLVM_BUILD
mkdir -p $LLVM_INSTALL
pushd $LLVM_BUILD
cmake -DCMAKE_INSTALL_PREFIX=$LLVM_INSTALL -DCMAKE_BUILD_TYPE=Release $LLVM_SOURCE/llvm
make -j32
make install
popd
