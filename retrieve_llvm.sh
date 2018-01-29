LLVM_FOLDER=$HOME/llvm/llvm_source

set -e
mkdir -p $LLVM_FOLDER

# Checkout LLVM:
pushd $LLVM_FOLDER
svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm
popd

# Checkout Clang:
pushd $LLVM_FOLDER
cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
popd

# Checkout Extra Clang Tools [Optional]:
pushd $LLVM_FOLDER
cd llvm/tools/clang/tools
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra
popd

# Checkout LLD linker [Optional]:
pushd $LLVM_FOLDER
cd llvm/tools
svn co http://llvm.org/svn/llvm-project/lld/trunk lld
popd

# Checkout Polly Loop Optimizer [Optional]:
pushd $LLVM_FOLDER
cd llvm/tools
svn co http://llvm.org/svn/llvm-project/polly/trunk polly
popd

# Checkout Compiler-RT (required to build the sanitizers) [Optional]:
pushd $LLVM_FOLDER
cd llvm/projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt
popd

# Checkout Libomp (required for OpenMP support) [Optional]:
pushd $LLVM_FOLDER
cd llvm/projects
svn co http://llvm.org/svn/llvm-project/openmp/trunk openmp
popd

# Checkout libcxx and libcxxabi [Optional]:
pushd $LLVM_FOLDER
cd llvm/projects
svn co http://llvm.org/svn/llvm-project/libcxx/trunk libcxx
svn co http://llvm.org/svn/llvm-project/libcxxabi/trunk libcxxabi
popd
