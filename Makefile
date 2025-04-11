#cygwin need libffi-devel
#cygwin need zlib-devel

#sudo apt install libffi-dev
#sudo apt install libicu-dev
#sudo apt install libsqlite3-dev
#sudo apt install libssl-dev
#sudo apt install libexpat-dev


all:
	make -C ./system/core/liblog all
	make -C ./dalvik/libdex all
	make -C ./dalvik/vm all
	make -C ./dalvik/libnativehelper all
	make -C ./dalvik/dexdump all
	make -C ./dalvik/dexlist all
	make -C ./dalvik/dexopt all
	make -C ./dalvik/dvz all
	make -C ./dalvik/dalvikvm all

clean:
	make -C ./system/core/liblog clean
	make -C ./dalvik/libdex clean
	make -C ./dalvik/vm clean
	make -C ./dalvik/libnativehelper clean
	make -C ./dalvik/dexdump clean
	make -C ./dalvik/dexlist clean
	make -C ./dalvik/dexopt clean
	make -C ./dalvik/dvz clean
	make -C ./dalvik/dalvikvm clean
