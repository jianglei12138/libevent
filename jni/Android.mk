LOCAL_PATH:= $(call my-dir)

###########################################libevent_core###############################################
include $(CLEAR_VARS)

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-Wall -fno-strict-aliasing 

LOCAL_SRC_FILES := \
	libevent/buffer.c              libevent/bufferevent_sock.c libevent/evutil.c      libevent/select.c \
	libevent/bufferevent.c         libevent/epoll.c            libevent/evutil_rand.c libevent/signal.c \
	libevent/bufferevent_filter.c  libevent/event.c            libevent/listener.c    libevent/strlcpy.c\
	libevent/bufferevent_pair.c    libevent/evmap.c            libevent/log.c         libevent/poll.c   \
	libevent/bufferevent_ratelim.c libevent/evthread.c                 

LOCAL_MODULE := event_core
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libevent/include/event2 \
	$(LOCAL_PATH)/libevent/include \
	$(LOCAL_PATH)/libevent/

include $(BUILD_SHARED_LIBRARY)

##############################################libevent##################################################
include $(CLEAR_VARS)

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-Wall -fno-strict-aliasing 

LOCAL_SRC_FILES := \
	libevent/buffer.c              libevent/epoll.c         libevent/evthread.c    libevent/poll.c     \
	libevent/bufferevent.c         libevent/evdns.c         libevent/evutil.c      libevent/select.c   \
	libevent/bufferevent_filter.c  libevent/event.c         libevent/evutil_rand.c libevent/signal.c   \
	libevent/bufferevent_pair.c    libevent/event_tagging.c libevent/http.c        libevent/strlcpy.c  \
	libevent/bufferevent_ratelim.c libevent/evmap.c         libevent/listener.c    libevent/log.c      \
	libevent/bufferevent_sock.c    libevent/evrpc.c         


LOCAL_MODULE := event
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libevent/include/event2 \
	$(LOCAL_PATH)/libevent/include \
	$(LOCAL_PATH)/libevent/

include $(BUILD_SHARED_LIBRARY)

##########################################libevent_extra################################################
include $(CLEAR_VARS)

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-Wall -fno-strict-aliasing 

LOCAL_SRC_FILES := \
	libevent/evdns.c               libevent/event_tagging.c libevent/evrpc.c       libevent/http.c    \
 
LOCAL_SHARED_LIBRARIES := event_core
LOCAL_MODULE := event_extra
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libevent/include/event2 \
	$(LOCAL_PATH)/libevent/include \
	$(LOCAL_PATH)/libevent/

include $(BUILD_SHARED_LIBRARY)

##########################################libevent_pthread################################################
include $(CLEAR_VARS)

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-Wall -fno-strict-aliasing 

LOCAL_SRC_FILES := \
	libevent/evthread_pthread.c
LOCAL_SHARED_LIBRARIES := event_core
LOCAL_MODULE := event_pthread
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libevent/include/event2 \
	$(LOCAL_PATH)/libevent/include \
	$(LOCAL_PATH)/libevent/

include $(BUILD_SHARED_LIBRARY)