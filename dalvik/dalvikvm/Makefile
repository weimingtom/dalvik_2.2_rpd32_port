CC := gcc
CPP := g++
LD := ld
RM := rm -f
AR := ar rcs
CFLAGS := -I../libnativehelper/include/nativehelper -I.. -I../../frameworks/base/include -I../../system/core/include -I../../externel/safe-iop/include -DUSE_DL_PREFIX=1
CFLAGS += -DANDROID=1 -DNO_MALLINFO=1 
# for sched_policy.c
CFLAGS += -DHAVE_SCHED_H -DHAVE_PTHREADS=1 -g3 -O0

# -DUSE_MAX_ALLOWED_FOOTPRINT=1 
LIBS := ../vm/libdvm.a ../libdex/libdex.a ../../system/core/liblog/liblog.a
LIBS += -lm -ldl -lz -lpthread -lffi 
LIBS += -licuuc -licudata -licui18n 
LIBS += -lsqlite3 -lssl -lcrypto -lexpat


OBJS := Main.o 
OBJS += ../../system/core/libcutils/mspace.o 
OBJS += ../../bionic/libc/bionic/dlmalloc.o 
OBJS += ../../system/core/libcutils/ashmem-host.o 
OBJS += ../../system/core/libcutils/atomic.o 
OBJS += ../../system/core/libcutils/sched_policy.o

# modified, removing register lib
#OBJS += Register.o
LIBS += ../libnativehelper/libnativehelper.a

# /system/core/libcutils/mspace.c
# -DMSPACES=1 -DONLY_MSPACES=1

all : dalvikvm

dalvikvm : $(OBJS)
	$(CPP) $(CFLAGS) -o $@ $(OBJS) $(LIBS)
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<
	
clean :
	$(RM) $(OBJS) *.exe *.exe.stackdump dalvikvm

test :
	#./dalvikvm -Xbootclasspath:./foo.jar -classpath /data/foo.jar Foo
	#./dalvikvm -Xbootclasspath:/data/core.jar:/data/ext.jar:/data/framework.jar -classpath /data/foo.jar Foo
	./dalvikvm -Xbootclasspath:/data/core.jar -classpath /data/foo.jar Foo

debug :
	#gdb --args ./dalvikvm -Xbootclasspath:./framework/core.jar:./framework/ext.jar:./framework/framework.jar -classpath foo.jar Foo
	gdb --args ./dalvikvm -Xbootclasspath:/data/core.jar -classpath /data/foo.jar Foo


test2 :
	./dalvikvm -classpath foo.jar Foo

debug2 :
	gdb --args ./dalvikvm -classpath foo.jar Foo
	
## gdb, b __android_log_print
## see .gdbinit

	
