CC := gcc
LD := ld
RM := rm -f
AR := ar rcs
CFLAGS := -I../../../system/core/include -I../safe-iop/include
OBJS := logd_write.o
OBJS +=	event_tag_map.o fake_log_device.o

## see logd_write.c, printf("[android_log_buf_print]
## gdb, b __android_log_print


all : liblog.a

liblog.a : $(OBJS)
	$(AR) $@ $(OBJS)
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<
	
clean :
	$(RM) $(OBJS) *.a


