set -e

cd $(dirname "$0")

conan remote add bintray-mavsdk https://api.bintray.com/conan/mavsdk/conan --insert --force

conan create --update . -s os=Android -s os.api_level=21 -s arch=armv8 -s compiler=clang -s compiler.version=8 -s compiler.libcxx=libc++
