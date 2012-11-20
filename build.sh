#!/bin/bash
echo "building adx"
touch *
ADB_PATH=`which adb`
if [  -z "$ADB_PATH" ] ; then
        ADB_PATH="/media/android/sdk/platform-tools/adb"
fi
mm
if [ ! -z "$?" ] ; then
   echo "killing existing adb processes"
   pkill -9 adb
   echo "removing existing adb found at $ADB_PATH"
   rm $ADB_PATH
   echo "copying /media/android/build/android-4.1.1/out/host/linux-x86/bin/adb $ADB_PATH"
   cp $PWD/../../../out/host/linux-x86/bin/adb $ADB_PATH
   rm "/media/android/sdk/platform-tools/a"
   ln -s $ADB_PATH "/media/android/sdk/platform-tools/a"	
   echo "starting adb"
   adb start-server
   #. bash_completion/adb.bash
   #cp bash_completion/adb.bash /etc/bash_completion.d/adb.bash
fi 


