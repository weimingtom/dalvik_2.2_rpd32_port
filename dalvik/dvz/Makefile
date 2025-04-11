CC := gcc
LD := ld
RM := rm -f
AR := ar rcs
CFLAGS := -I.. -I../../frameworks/base/include -I../../system/core/include -I../../externel/safe-iop/include
LIBS := 
# ../libdex/libdex.a -lz
OBJS := dvz.o ../../system/core/libcutils/zygote.o ../../system/core/libcutils/socket_local_client.o

all : dvz

dvz : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<
	
clean :
	$(RM) $(OBJS) *.exe dvz
