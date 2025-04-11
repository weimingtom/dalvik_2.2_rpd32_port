CC := gcc
LD := ld
RM := rm -f
AR := ar rcs
CFLAGS := -I.. -I../../frameworks/base/include -I../../system/core/include -I../../externel/safe-iop/include
LIBS := ../libdex/libdex.a ../../system/core/liblog/liblog.a -lz
OBJS := DexList.o

all : dexlist

dexlist : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<
	
clean :
	$(RM) $(OBJS) *.exe dexlist

test : all
	./dexlist ../vendor/app.dex

