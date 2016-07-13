# Copyright (C) 2014-2015 UBER
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

################
#Strict Aliasing
################
LOCAL_DISABLE_STRICT := \
	libc_bionic \
	libc_dns \
	libc_tzcode \
	libziparchive \
	libtwrpmtp \
	libfusetwrp \
	libguitwrp \
	busybox \
	libuclibcrpc \
	libziparchive-host \
	libpdfiumcore \
	libandroid_runtime \
	libmedia \
	libpdfiumcore \
	libpdfium \
	bluetooth.default \
	logd \
	mdnsd \
	net_net_gyp \
	libstagefright_webm \
	libaudioflinger \
	libmediaplayerservice \
	libstagefright \
	ping \
	ping6 \
	libdiskconfig \
	libjavacore \
	libfdlibm \
	libvariablespeed \
	librtp_jni \
	libwilhelm \
	libdownmix \
	libldnhncr \
	libqcomvisualizer \
	libvisualizer \
	libutils \
	libandroidfw \
	dnsmasq \
	static_busybox \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
	content_content_renderer_gyp \
	third_party_WebKit_Source_modules_modules_gyp \
	third_party_WebKit_Source_platform_blink_platform_gyp \
	third_party_WebKit_Source_core_webcore_remaining_gyp \
	third_party_angle_src_translator_lib_gyp \
	third_party_WebKit_Source_core_webcore_generated_gyp \
	libc_gdtoa \
	libc_openbsd \
	libc \
	libc_nomalloc \
	patchoat \
	dex2oat \
	libart \
	libart-compiler \
	oatdump \
	libart-disassembler \
	linker \
	camera.msm8084 \
	mm-vdec-omx-test \
	libc_malloc \
	mdnsd \
	libstagefright_webm \
	libc_bionic_ndk \
	libc_dns \
	libc_gdtoa \
	libc_openbsd_ndk \
	liblog \
	libc \
	libbt-brcm_stack \
	libandroid_runtime \
	libandroidfw \
	libosi \
	libnetlink \
	clatd \
	ip \
	libc_nomalloc \
	linker \
	sensors.flounder \
	libnvvisualizer

LOCAL_FORCE_DISABLE_STRICT := \
	libziparchive-host \
	libziparchive \
	libdiskconfig \
	logd \
	libjavacore \
	camera.msm8084 \
	libstagefright_webm \
	libc_bionic_ndk \
	libc_dns \
	libc_gdtoa \
	libc_openbsd_ndk \
	liblog \
	libc \
	libbt-brcm_stack \
	libandroid_runtime \
	libandroidfw \
	libosi \
	libnetlink \
	clatd \
	ip \
	libc_nomalloc \
	linker \
	libc_malloc \
	sensors.flounder \
	libnvvisualizer

DISABLE_STRICT := \
	-fno-strict-aliasing

STRICT_ALIASING_FLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing

STRICT_GCC_LEVEL := \
	-Wstrict-aliasing=3

STRICT_CLANG_LEVEL := \
	-Wstrict-aliasing=2

###############
# Krait Tunings
###############
LOCAL_DISABLE_KRAIT := \
	libc_dns \
	libc_tzcode \
	bluetooth.default \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support

KRAIT_FLAGS := \
	-mcpu=cortex-a15 \
	-mtune=cortex-a15

#############
# GCC Tunings
#############
LOCAL_DISABLE_GCCONLY := \
	bluetooth.default \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support

ifeq (arm,$(TARGET_ARCH))
GCC_ONLY := \
	-fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast \
	-mvectorize-with-neon-quad
else
GCC_ONLY := \
	-fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast
endif

##########
# GRAPHITE
##########
LOCAL_DISABLE_GRAPHITE := \
	libavformat \
	libavcodec \
	libunwind \
	libFFTEm \
	libicui18n \
	libskia \
	libvpx \
	libmedia_jni \
	libstagefright_mp3dec \
	libart \
	libstagefright_amrwbenc \
	libpdfium \
	libpdfiumcore \
	libswscale \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
	libjni_filtershow_filters \
	fio \
	libwebrtc_spl \
	libpcap \
	libFraunhoferAAC \
	libhwui

GRAPHITE_FLAGS := \
	-fgraphite \
	-fgraphite-identity \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block

######
# Pipe
######
LOCAL_DISABLE_PIPE := \
	libc_dns \
	libc_tzcode \
	$(NO_OPTIMIZATIONS)

#################
# Memory Sanitize
#################
DISABLE_SANITIZE_LEAK := \
	libc_dns \
	libc_tzcode \
	$(NOOP_BLUETOOTH) \
	$(NO_OPTIMIZATIONS)

##############
# IPA Analyser
##############
ifeq ($(ENABLE_IPA_ANALYSER),true)
LOCAL_DISABLE_IPA :=

 ifeq (,$(filter true,$(LOCAL_CLANG)))
   ifneq (1,$(words $(filter $(LOCAL_DISABLE_IPA),$(LOCAL_MODULE))))
     ifdef LOCAL_CFLAGS
       LOCAL_CFLAGS += -fipa-sra -fipa-pta -fipa-cp -fipa-cp-clone
     else
       LOCAL_CFLAGS := -fipa-sra -fipa-pta -fipa-cp -fipa-cp-clone
     endif
     ifdef LOCAL_LDFLAGS
       LOCAL_LDFLAGS += -fipa-sra -fipa-pta -fipa-cp -fipa-cp-clone
     else
       LOCAL_LDFLAGS := -fipa-sra -fipa-pta -fipa-cp -fipa-cp-clone
     endif
   endif
 endif
endif

#########
# pthread
######%#%
ifeq ($(ENABLE_PTHREAD),true)
LOCAL_DISABLE_PTHREAD := \
	libc_netbsd \
	libc_tzcode \
	$(NOOP_BLUETOOTH) \
	$(NO_OPTIMIZATIONS)

 ifeq ($(filter $(LOCAL_DISABLE_PTHREAD), $(LOCAL_MODULE)),)
  ifdef LOCAL_CONLYFLAGS
   LOCAL_CFLAGS += -pthread
  else
   LOCAL_CFLAGS := -pthread
  endif
  ifdef LOCAL_CPPFLAGS
   LOCAL_CPPFLAGS += -pthread
  else
   LOCAL_CPPFLAGS := -pthread
  endif
 endif
endif


########
# OpenMP
########
ifeq ($(ENABLE_GOMP),true)
LOCAL_DISABLE_GOMP := \
	libc_tzcode \
	libscrypt_static \
	libperfprofdcore \
	libperfprofdutils \
	perfprofd \
	libv8_32 \
	libv8 \
	$(NOOP_BLUETOOTH) \
	$(NO_OPTIMIZATIONS)

 ifneq ($(filter arm arm64,$(TARGET_ARCH)),)
  ifneq ($(strip $(LOCAL_IS_HOST_MODULE)),true)
   ifneq ($(strip $(LOCAL_CLANG)),true)
    ifeq ($(filter $(LOCAL_DISABLE_GOMP), $(LOCAL_MODULE)),)
     ifdef LOCAL_CFLAGS
      LOCAL_CFLAGS += -lgomp -ldl -lgcc -fopenmp
     else
      LOCAL_CFLAGS := -lgomp -ldl -lgcc -fopenmp
     endif
     ifdef LOCAL_LDLIBS
      LOCAL_LDLIBS += -lgomp -lgcc
     else
      LOCAL_LDLIBS := -lgomp -lgcc
     endif
    endif
   endif
  endif
 endif
endif

######%#%%%%#
# Extra flags
#######%%%%%%
ifeq ($(ENABLE_EXTRAGCC),true)
LOCAL_DISABLE_EXTRAGCC := \
	libc_tzcode \
	libbinder \
	libjemalloc \
	libmediandk \
	$(NOOP_BLUETOOTH) \
	$(NO_OPTIMIZATIONS)

 ifndef LOCAL_IS_HOST_MODULE
  ifeq ($(LOCAL_CLANG),)
   ifneq (1,$(words $(filter $(LOCAL_DISABLE_EXTRAGCC), $(LOCAL_MODULE))))
    ifdef LOCAL_CONLYFLAGS
     LOCAL_CONLYFLAGS += \
	-frerun-cse-after-loop \
	-frename-registers \
	-ffunction-sections \
	-fdata-sections \
	-fgcse-las \
	-fgcse-sm \
	-fipa-pta \
	-fivopts \
	-fweb \
	-fomit-frame-pointer \
	-frename-registers \
	-fsection-anchors \
	-ftracer \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-funsafe-loop-optimizations \
	-funswitch-loops \
	-fira-loop-pressure \
	-fforce-addr \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-ffp-contract=fast \
	-Wno-unused-parameter \
	-Wno-unused-but-set-variable \
	-Wno-maybe-uninitialized \
	-Wno-error=array-bounds \
	-Wno-error=clobbered \
	-Wno-error=maybe-uninitialized \
	-Wno-error=strict-overflow
    else
     LOCAL_CONLYFLAGS := \
	-frerun-cse-after-loop \
	-frename-registers \
	-ffunction-sections \
	-fdata-sections \
	-fgcse-las \
	-fgcse-sm \
	-fipa-pta \
	-fivopts \
	-fweb \
	-fomit-frame-pointer \
	-frename-registers \
	-fsection-anchors \
	-ftracer \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-funsafe-loop-optimizations \
	-funswitch-loops \
	-fira-loop-pressure \
	-fforce-addr \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-ffp-contract=fast \
	-Wno-unused-parameter \
	-Wno-unused-but-set-variable \
	-Wno-maybe-uninitialized \
	-Wno-error=array-bounds \
	-Wno-error=clobbered \
	-Wno-error=maybe-uninitialized \
	-Wno-error=strict-overflow
    endif
    ifdef LOCAL_CPPFLAGS
     LOCAL_CPPFLAGS += \
	-frerun-cse-after-loop \
	-frename-registers \
	-ffunction-sections \
	-fdata-sections \
	-fgcse-las \
	-fgcse-sm \
	-fipa-pta \
	-fivopts \
	-fweb \
	-fomit-frame-pointer \
	-frename-registers \
	-fsection-anchors \
	-ftracer \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-funsafe-loop-optimizations \
	-funswitch-loops \
	-fira-loop-pressure \
	-fforce-addr \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-ffp-contract=fast \
	-Wno-unused-parameter \
	-Wno-unused-but-set-variable \
	-Wno-maybe-uninitialized \
	-Wno-error=array-bounds \
	-Wno-error=clobbered \
	-Wno-error=maybe-uninitialized \
	-Wno-error=strict-overflow
    else
     LOCAL_CPPFLAGS := \
	-frerun-cse-after-loop \
	-frename-registers \
	-ffunction-sections \
	-fdata-sections \
	-fgcse-las \
	-fgcse-sm \
	-fipa-pta \
	-fivopts \
	-fweb \
	-fomit-frame-pointer \
	-frename-registers \
	-fsection-anchors \
	-ftracer \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-funsafe-loop-optimizations \
	-funswitch-loops \
	-fira-loop-pressure \
	-fforce-addr \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-ffp-contract=fast \
	-Wno-unused-parameter \
	-Wno-unused-but-set-variable \
	-Wno-maybe-uninitialized \
	-Wno-error=array-bounds \
	-Wno-error=clobbered \
	-Wno-error=maybe-uninitialized \
	-Wno-error=strict-overflow
    endif
   endif
  endif
 endif
endif

################
# Cortex Tuning
################
LOCAL_DISABLE_CORTEX := \
	libc_dns \
	libc_tzcode \
	bluetooth.default 

ifeq (arm,$(TARGET_ARCH))
CORTEX_FLAGS := \
        -mcpu=cortex-a57.cortex-a53 \
        -mtune=cortex-a57.cortex-a53

# Link binaries with Cortex-a15 string routines
ifndef LOCAL_IS_HOST_MODULE
  ifeq ($(filter $(DISABLE_CORTEX_STRINGS), $(LOCAL_MODULE)),)
    my_ldflags += -L$(BUILD_SYSTEM)/../libs/$(TARGET_ARCH) -lbionic-a15
    endif
  endif
endif
