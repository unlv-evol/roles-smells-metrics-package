!/bin/bash
clear
java -version

# set ck params 
PROJ_PATH=../../data/SourceProjects/
OUT_DIR=../../data/Metrics/ck/
USE_JARS=false
PARTITION=0
V_F=true #generate both variables and fields metrics 

# clear a list of project 
# MOBILE_PROJ="AmazeFileManager-3.5.2 AntennaPod-2.1.1 bitcoin-wallet-6.31 gnucash-android-2.4.1 
# k-9-5.600 keepassdroid-2.5.9 materialistic-3.3 Omni-Notes-6.0.5 
# OpenTripPlanner-for-Android-2.1.5 SeeWeather-2.03 Signal-Android-4.60.5 
# Telecine-1.6.2 Telegram-6.1.1_1946 Timber-1.8 TweetLanes-1.4.1"

DESKTOP_PROJ="argouml-0.35.1 checkstyle-8.39 freemind-1.0.0 ganttproject-2.8.11 GoGreen-0.1.3
ipscan-3.7.3 jEdit-5.5.0 JetUML-3.1 jpass-0.1.20 keystore-explorer-5.4.4 LiveChatServer-4.1
LogFX-0.9.1 mars-sim-3.1.0 pgptool-0.5.9.2 SweetHome3D-5.6"

# for proj in $MOBILE_PROJ; do
#     echo "processing... $proj"
#     mkdir ../../data/Metrics/ck/Mobile/$proj
#     java -jar ../../tools/ck-0.7.0-jar-with-dependencies.jar $PROJ_PATH/Mobile/$proj $USE_JARS $PARTITION $V_F $OUT_DIR/Mobile/$proj/
#     echo "Done!"
# done

for proj in $DESKTOP_PROJ; do
    # if [ $proj=checkstyle-8.39 ]
    # then
        echo "-------DESKTOP PROJECTS-------"
        echo "processing... $proj"
        mkdir ../../data/Metrics/ck/Desktop/$proj
        java -jar ../../tools/ck-0.7.0-jar-with-dependencies.jar $PROJ_PATH/Desktop/$proj $USE_JARS $PARTITION $V_F $OUT_DIR/Desktop/$proj/
        echo "Done!"
    # else
    #     echo "skip..."
    # fi
done