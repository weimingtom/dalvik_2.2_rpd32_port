CC := gcc
CPP := g++
LD := ld
RM := rm -f
AR := ar rcs
CFLAGS := -I. -I.. -I../../frameworks/base/include 
CFLAGS += -I../../system/core/include 
CFLAGS += -I../../externel/safe-iop/include 
CFLAGS += -I./include/nativehelper
CFLAGS += -I../libcore/include

CFLAGS += -DHAVE_SYS_SENDFILE_H
CFLAGS += -DMINCORE_POINTER_TYPE="unsigned char*"

# for libfdlibm
CFLAGS += -D_IEEE_LIBM
#-D__LITTLE_ENDIAN"

OBJS := Register.o JNIHelp.o

OBJS += ../libcore/dalvik/src/main/native/org_apache_harmony_dalvik_NativeTestTarget.o
OBJS += ../libcore/dalvik/src/main/native/dalvik_system_TouchDex.o

OBJS += ../libcore/luni/src/main/native/cbigint.o
OBJS += ../libcore/luni/src/main/native/commonDblParce.o
OBJS += ../libcore/luni/src/main/native/java_io_FileDescriptor.o
OBJS += ../libcore/luni/src/main/native/java_io_ObjectInputStream.o
OBJS += ../libcore/luni/src/main/native/java_io_ObjectOutputStream.o
OBJS += ../libcore/luni/src/main/native/java_io_ObjectStreamClass.o
OBJS += ../libcore/luni/src/main/native/java_lang_Double.o
OBJS += ../libcore/luni/src/main/native/java_lang_Float.o
OBJS += ../libcore/luni/src/main/native/java_lang_Math.o
OBJS += ../libcore/luni/src/main/native/java_lang_StrictMath.o
OBJS += ../libcore/luni/src/main/native/org_apache_harmony_luni_util_fltparse.o
OBJS += ../libcore/luni/src/main/native/org_apache_harmony_luni_util_NumberConvert.o

OBJS += ../libcore/luni/src/main/native/java_io_File.o
#OBJS += ../libcore/luni/src/main/native/java_lang_Character.o
OBJS += ../libcore/luni/src/main/native/java_net_InetAddress.o
OBJS += ../libcore/luni/src/main/native/java_net_NetworkInterface.o
OBJS += ../libcore/luni/src/main/native/org_apache_harmony_luni_platform_OSFileSystem.o
OBJS += ../libcore/luni/src/main/native/org_apache_harmony_luni_platform_OSMemory.o
OBJS += ../libcore/luni/src/main/native/org_apache_harmony_luni_platform_OSNetworkSystem.o

# 
# mincore 
# MINCORE_POINTER_TYPE
# /system/core/include/arch/target_linux-x86/AndroidConfig.h
# 

OBJS += ../libcore/luni-kernel/src/main/native/java_lang_ProcessManager.o
OBJS += ../libcore/luni-kernel/src/main/native/java_lang_System.o

OBJS += ../libcore/icu/src/main/native/UCharacter.o
OBJS += ../libcore/icu/src/main/native/RuleBasedNumberFormat.o
OBJS += ../libcore/icu/src/main/native/Resources.o
OBJS += ../libcore/icu/src/main/native/NativeRegEx.o
OBJS += ../libcore/icu/src/main/native/NativeNormalizer.o
OBJS += ../libcore/icu/src/main/native/NativeDecimalFormat.o
OBJS += ../libcore/icu/src/main/native/NativeConverter.o
OBJS += ../libcore/icu/src/main/native/NativeCollation.o
OBJS += ../libcore/icu/src/main/native/NativeBreakIterator.o
OBJS += ../libcore/icu/src/main/native/ErrorCode.o
OBJS += ../libcore/icu/src/main/native/BidiWrapper.o

OBJS += ../libcore/archive/src/main/native/java_util_zip_Adler32.o
OBJS += ../libcore/archive/src/main/native/java_util_zip_CRC32.o
OBJS += ../libcore/archive/src/main/native/java_util_zip_Deflater.o
OBJS += ../libcore/archive/src/main/native/java_util_zip_Inflater.o
OBJS += ../libcore/archive/src/main/native/sieb.o
OBJS += ../libcore/archive/src/main/native/zip.o
OBJS += ../libcore/archive/src/main/native/zipalloc.o
OBJS += ../libcore/archive/src/main/native/zipsup.o



OBJS += ../libcore/sql/src/main/native/sqlite_jni.o
OBJS += ../libcore/sql/src/main/native/sqlite_jni_registration.o

OBJS += ../libcore/openssl/src/main/native/BNInterface.o

OBJS += ../libcore/x-net/src/main/native/org_apache_harmony_xnet_provider_jsse_NativeCrypto.o

OBJS += ../libcore/xml/src/main/native/org_apache_harmony_xml_ExpatParser.o

OBJS += ../../externel/fdlibm/k_standard.o
OBJS += ../../externel/fdlibm/k_rem_pio2.o
OBJS += ../../externel/fdlibm/k_cos.o 
OBJS += ../../externel/fdlibm/k_sin.o 
OBJS += ../../externel/fdlibm/k_tan.o
OBJS += ../../externel/fdlibm/e_acos.o
OBJS += ../../externel/fdlibm/e_acosh.o
OBJS += ../../externel/fdlibm/e_asin.o
OBJS += ../../externel/fdlibm/e_atan2.o
OBJS += ../../externel/fdlibm/e_atanh.o
OBJS += ../../externel/fdlibm/e_cosh.o
OBJS += ../../externel/fdlibm/e_exp.o
OBJS += ../../externel/fdlibm/e_fmod.o
OBJS += ../../externel/fdlibm/e_gamma.o
OBJS += ../../externel/fdlibm/e_gamma_r.o
OBJS += ../../externel/fdlibm/e_hypot.o
OBJS += ../../externel/fdlibm/e_j0.o
OBJS += ../../externel/fdlibm/e_j1.o
OBJS += ../../externel/fdlibm/e_jn.o
OBJS += ../../externel/fdlibm/e_lgamma.o
OBJS += ../../externel/fdlibm/e_lgamma_r.o
OBJS += ../../externel/fdlibm/e_log.o
OBJS += ../../externel/fdlibm/e_log10.o
OBJS += ../../externel/fdlibm/e_pow.o
OBJS += ../../externel/fdlibm/e_rem_pio2.o
OBJS += ../../externel/fdlibm/e_remainder.o
OBJS += ../../externel/fdlibm/e_scalb.o
OBJS += ../../externel/fdlibm/e_sinh.o
OBJS += ../../externel/fdlibm/e_sqrt.o
OBJS += ../../externel/fdlibm/w_acos.o
OBJS += ../../externel/fdlibm/w_acosh.o
OBJS += ../../externel/fdlibm/w_asin.o
OBJS += ../../externel/fdlibm/w_atan2.o
OBJS += ../../externel/fdlibm/w_atanh.o
OBJS += ../../externel/fdlibm/w_cosh.o
OBJS += ../../externel/fdlibm/w_exp.o
OBJS += ../../externel/fdlibm/w_fmod.o
OBJS += ../../externel/fdlibm/w_gamma.o
OBJS += ../../externel/fdlibm/w_gamma_r.o
OBJS += ../../externel/fdlibm/w_hypot.o
OBJS += ../../externel/fdlibm/w_j0.o
OBJS += ../../externel/fdlibm/w_j1.o
OBJS += ../../externel/fdlibm/w_jn.o
OBJS += ../../externel/fdlibm/w_lgamma.o
OBJS += ../../externel/fdlibm/w_lgamma_r.o
OBJS += ../../externel/fdlibm/w_log.o
OBJS += ../../externel/fdlibm/w_log10.o
OBJS += ../../externel/fdlibm/w_pow.o
OBJS += ../../externel/fdlibm/w_remainder.o
OBJS += ../../externel/fdlibm/w_scalb.o
OBJS += ../../externel/fdlibm/w_sinh.o
OBJS += ../../externel/fdlibm/w_sqrt.o
OBJS += ../../externel/fdlibm/s_asinh.o
OBJS += ../../externel/fdlibm/s_atan.o
OBJS += ../../externel/fdlibm/s_cbrt.o
OBJS += ../../externel/fdlibm/s_ceil.o
OBJS += ../../externel/fdlibm/s_copysign.o
OBJS += ../../externel/fdlibm/s_cos.o
OBJS += ../../externel/fdlibm/s_erf.o
OBJS += ../../externel/fdlibm/s_expm1.o
OBJS += ../../externel/fdlibm/s_fabs.o
OBJS += ../../externel/fdlibm/s_finite.o
OBJS += ../../externel/fdlibm/s_floor.o
OBJS += ../../externel/fdlibm/s_frexp.o
OBJS += ../../externel/fdlibm/s_ilogb.o
OBJS += ../../externel/fdlibm/s_isnan.o
OBJS += ../../externel/fdlibm/s_ldexp.o
OBJS += ../../externel/fdlibm/s_lib_version.o
OBJS += ../../externel/fdlibm/s_log1p.o
OBJS += ../../externel/fdlibm/s_logb.o
OBJS += ../../externel/fdlibm/s_matherr.o
OBJS += ../../externel/fdlibm/s_modf.o
OBJS += ../../externel/fdlibm/s_nextafter.o
OBJS += ../../externel/fdlibm/s_rint.o 
OBJS += ../../externel/fdlibm/s_scalbn.o 
OBJS += ../../externel/fdlibm/s_signgam.o 
OBJS += ../../externel/fdlibm/s_significand.o 
OBJS += ../../externel/fdlibm/s_sin.o
OBJS += ../../externel/fdlibm/s_tan.o
OBJS += ../../externel/fdlibm/s_tanh.o

OBJS += ../../system/core/libcutils/strdup8to16.o






all : libnativehelper.a

libnativehelper.a : $(OBJS)
	$(AR) $@ $(OBJS)
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<

%.o : %.cpp
	$(CPP) $(CFLAGS) -o $@ -c $<	

clean :
	$(RM) $(OBJS) *.a


