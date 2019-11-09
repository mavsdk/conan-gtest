set -e

cd $(dirname "$0")

conan remote add bintray-mavsdk https://api.bintray.com/conan/mavsdk/conan --insert --force

conan create --update . -s compiler.libcxx=libstdc++11
