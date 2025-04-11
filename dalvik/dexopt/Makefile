CC := gcc
CPP := g++
LD := ld
RM := rm -f
AR := ar rcs
CFLAGS := -I.. -I../../frameworks/base/include -I../../system/core/include -I../../externel/safe-iop/include -I../vm
CFLAGS += -I../libnativehelper/include/nativehelper

CFLAGS += -DUSE_DL_PREFIX=1 -DANDROID=1 -DNO_MALLINFO=1 
# for sched_policy.c
CFLAGS += -DHAVE_SCHED_H -DHAVE_PTHREADS=1

# CFLAGS += -DHAVE_SYS_SENDFILE_H


LIBS := ../vm/libdvm.a ../libdex/libdex.a ../../system/core/liblog/liblog.a
LIBS += -lm -ldl -lz -lpthread -lffi 
LIBS += -licuuc -licudata -licui18n 
LIBS += -lsqlite3 -lssl -lcrypto -lexpat


OBJS := OptMain.o 
OBJS += ../../system/core/libcutils/mspace.o 
OBJS += ../../bionic/libc/bionic/dlmalloc.o 
OBJS += ../../system/core/libcutils/ashmem-host.o 
OBJS += ../../system/core/libcutils/atomic.o 
OBJS += ../../system/core/libcutils/sched_policy.o
OBJS += ../../system/core/libcutils/process_name.o 
OBJS += ../../system/core/libcutils/properties.o

# modified, removing register lib
# OBJS += Register.o
LIBS += ../libnativehelper/libnativehelper.a


all : dexopt

dexopt : $(OBJS)
	$(CPP) $(CFLAGS) -o $@ $(OBJS) $(LIBS)
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<
	
clean :
	$(RM) $(OBJS) *.exe dexopt
