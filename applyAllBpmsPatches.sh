#!/bin/sh
AUTHORS1="Rachid Snoussi"

PRODUCT="Red Hat JBoss BPM Suite 6.4 on EAP7"

BPMS=jboss-bpmsuite-6.4.0.GA-deployable-eap7.x
BPMS_PATCH_WILDCARD=jboss-bpmsuite-6.4.?-patch*


#TODO: Edit EAP/BPMS path
TARGET=../
SRC_DIR=./installs
JBOSS_HOME=$TARGET/jboss-eap-7.0


echo
echo "Applying patches on $PRODUCT now..."
echo
mkdir -p ./patch_tmp
cd $SRC_DIR
for f in $BPMS_PATCH_WILDCARD; do
	echo " >>> Applying $f ..."
  	unzip -qo $f -d ../patch_tmp ;
#	cd ../patch_tmp/${f::$#-4} 
	cd ../patch_tmp/${f%????}
	./apply-updates.sh ../../$JBOSS_HOME eap7.x
done
cd ..

rm -rf ./patch_tmp
if [ $? -ne 0 ]; then
  echo
  echo "Error occurred during $PRODUCT installation!"
  exit
fi