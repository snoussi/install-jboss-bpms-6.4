#!/bin/sh
AUTHORS1="Rachid Snoussi"

echo "Start Server first by running this command: ./standalone.sh --admin-only"

#TODO: Edit EAP/BPMS path
TARGET=./target
JBOSS_HOME=$TARGET/jboss-eap-6.4
CLI_SCRIPT=add_kieServerSystemProperties.cli

echo "Adding a controllerUser user on JBoss EAP ..."
echo
$JBOSS_HOME/bin/add-user.sh -a --user controllerUser --password controller@user1! --role rest-all
if [ $? -ne 0 ]; then
  echo
  echo Error occurred during user adding !
  exit
fi

echo "Adding a kieserverUser user on JBoss EAP ..."
echo
$JBOSS_HOME/bin/add-user.sh -a --user kieserverUser --password kieserver@user1! --role kie-server
if [ $? -ne 0 ]; then
  echo
  echo Error occurred during user adding !
  exit
fi

if [ ! -z "$CLI_SCRIPT" ]
then
	echo "Executing CLI script: " $CLI_SCRIPT
	$JBOSS_HOME/bin/jboss-cli.sh -c --file=$CLI_SCRIPT
fi