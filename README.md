# dalvik_2.2_rpd32_port
[WIP] Android 2.2 dalvik debian linux 32bit port, only for rpd 2017 32bit, not good.   
It is not recommended to study this too old version, use mono instead, or jamvm, or higher version of Android, like Android 2.3 and 4.4 .   

## References  
* dalvik_linux_port_v10_success.tar.gz
* https://github.com/weimingtom/dalvik_cygwin_port
* https://github.com/weimingtom/wmt_dalvik_study
* https://github.com/weimingtom/wmt_jvm_study

## How to build and run  
(1) must use debian/linux 32bit, (64 bit failed) , use rpd 2017 run success  
(2) see Makefile, sudo apt install  
sudo apt install libffi-dev  
sudo apt install libicu-dev  
sudo apt install libsqlite3-dev  
sudo apt install libssl-dev  
sudo apt install libexpat-dev  
(3) make clean all  
(4) run testvm/prepare_jar.txt  
$ make clean all  
$ sudo mkdir -p /data/dalvik-cache  
$ sudo chown -R pi:pi /data  
$ sudo mkdir -p /system/bin  
$ sudo chown -R pi:pi /system  
$ cp dalvik/dexopt/dexopt /system/bin/.  
$ cp testvm/foo.jar /data/.  
$ cp testvm/framework2/*.jar /data/.  
$ cd dalvik/dalvikvm  
$ make test  
./dalvikvm -Xbootclasspath:/data/core.jar -classpath /data/foo.jar Foo  
only foo.jar and core.jar need  
(5) if gdb, see   
make debug  
if debug multi processes(dexopt and dalvikvm)  
(gdb) set follow-fork-mode child  
(gdb) set detach-on-fork on  
(gdb) b dvmAbort  
(gdb) r  
