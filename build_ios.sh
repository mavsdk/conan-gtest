set -e

cd $(dirname "$0")

conan remote add bintray-mavsdk https://api.bintray.com/conan/mavsdk/conan --insert --force

conan create --update . -s os=iOS -s arch=armv7 -s os.version=8.0 -s compiler.version=11.0
