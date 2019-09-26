

GRPC_CROSS_COMPILE:=true
CROSS_COMPILE_PREFIX:=$(CURDIR)/toolchain/bujeon.albert.allwinner/linux-x86/arm/toolchain-sunxi-musl/toolchain/bin/arm-openwrt-linux-muslgnueabi-
CC:=$(CROSS_COMPILE_PREFIX)gcc
CXX:=$(CROSS_COMPILE_PREFIX)g++
RANLIB:=$(CROSS_COMPILE_PREFIX)ranlib
LD:=$(CROSS_COMPILE_PREFIX)ld
LDXX:=$(CROSS_COMPILE_PREFIX)g++
AR:=$(CROSS_COMPILE_PREFIX)ar


PROTOBUF_CONFIG_OPTS=--host=arm-openwrt-linux-muslgnueabi --with-protoc=/usr/local/bin/protoc

GRPC_CROSS_LDOPTS:=-L$(CURDIR)/prebuilt/allwinner.r11/lib \
				   -L$(CURDIR)/prebuilt/allwinner.r11/shared \
				   -L$(CURDIR)/toolchain/bujeon.albert.allwinner/linux-x86/arm/toolchain-sunxi-musl/toolchain/lib \
				   -L$(CURDIR)/toolchain/bujeon.albert.allwinner/linux-x86/arm/toolchain-sunxi-musl/toolchain/lib/gcc/arm-openwrt-linux-muslgnueabi/6.4.1

GRPC_CROSS_AROPTS:=rc --target=elf32-little
ARCH_FLAGS:=-I$(CURDIR)/prebuilt/allwinner.r11/include \
            -I$(CURDIR)/prebuilt/allwinner.r11/include/gstreamer-1.0 \
            -I$(CURDIR)/prebuilt/allwinner.r11/include/glib-2.0 \
			-I$(CURDIR)/prebuilt/allwinner.r11/include/zlib
