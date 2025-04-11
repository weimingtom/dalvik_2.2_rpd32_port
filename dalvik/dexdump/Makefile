CC := gcc
LD := ld
RM := rm -f
AR := ar rcs
CFLAGS := -I.. -I../../frameworks/base/include -I../../system/core/include -I../../externel/safe-iop/include

#
# assertion "i == targetLen + arrayDepth * 2" failed: file "DexDump.c", line 169, function: descriptorToDot
#
CFLAGS += -DNDEBUG

LIBS := ../libdex/libdex.a ../../system/core/liblog/liblog.a -lz
OBJS := DexDump.o OpCodeNames.o

all : dexdump

dexdump : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<
	
clean :
	$(RM) $(OBJS) *.exe *.exe.stackdump dexdump

test : all
	./dexdump -d ../../_vendor/app.dex > ../../_vendor/app.dex.txt
