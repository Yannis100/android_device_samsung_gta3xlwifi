#
# Copyright 2014 The Android Open Source Project
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

FDEVICE="gta3xlwifi"
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then


#export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1

# set to 1 to disable checking for compatibility.zip in ROMs
# default = 0
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1

# use system (ROM) fingerprint where available
export OF_USE_SYSTEM_FINGERPRINT=1


# whether the device is an A/B device
# set to 1 if your device is an A/B device (** make sure that it really is **)
# if you enable this (by setting to 1), you must also (before building):
#     set "OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1" and
#     set "OF_USE_MAGISKBOOT=1"
# default = 0

export OF_AB_DEVICE=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_USE_MAGISKBOOT=1

# Set this to 1 if you are building R11
# If enabled, it makes some necessary changes to the updater script in zip installer, to trigger the correct cache paths for cache
# Do NOT enable this, unless you are building the latest R11 sources, and have pulled the latest commits to the vendor tree
# default = 0

#export FOX_R11=1

# Use this if your screen's aspect ratio is not 16:9
# to calculate OF_SCREEN_H, if your screen width is not 1080, use this formula: <aspect ratio height>*120
# e.g. if the aspect ratio is 19:9 then use 19*120 (=2280)
# use "export OF_SCREEN_H=2280" to resize recovery to 19:9 screen
# default = 1920

export OF_SCREEN_H=1920

# the version number of the release
#export FOX_VERSION=1

# the maintainer's name
export OF_MAINTAINER="nubianprince"

# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
   	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 	fi


add_lunch_combo lineage_"$FDEVICE"-eng
add_lunch_combo lineage_"$FDEVICE"-userdebug
fi
