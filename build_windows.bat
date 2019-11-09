@echo off
setlocal

cd /d %~dp0

conan remote add bintray-mavsdk https://api.bintray.com/conan/mavsdk/conan --insert --force

conan create --update . -s arch=x86 -s compiler.version=16 -s compiler.runtime=MT
