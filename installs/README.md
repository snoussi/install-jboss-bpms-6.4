# Installation packages

Below the list of installation packages to download from the Red Hat Customer Portal:

### EAP 7.0 packages
- Red Hat JBoss Enterprise Application Platform 7.0.0
- Red Hat JBoss Enterprise Application Platform 7.0 Update 08

### BPMS 6.4 packages [1]
- Red Hat JBoss BPM Suite 6.4.0 Deployable for EAP 7
- Red Hat JBoss BPM Suite 6.4 Update 1
- Red Hat JBoss BPM Suite 6.4 Update 2
- Red Hat JBoss BPM Suite 6.4 Update 3
- Red Hat JBoss BPM Suite 6.4 Update 4
- Red Hat JBoss BPM Suite 6.4 Update 5
- Red Hat JBoss BPM Suite 6.4 Update 6 [2]

### BPMS 6.4 offline maven repository
- Red Hat JBoss BPM Suite 6.4.0 Maven Repository
- Red Hat JBoss BPM Suite 6.4 Update 6 Incremental Maven Repository

### BPMS 6.4 supplementary tools (including database scripts)
- Red Hat JBoss BPM Suite 6.4.0 Supplementary Tools

[1] Please note that, JBoss BPMS patches are not cumulative, all the update packages need to be applied to the main installation.

[2] This patch introduces a small change into the database schema. You must apply the bpms-6.4-to-7.0.sql script to your database before you run Red Hat JBoss BPM Suite or Red Hat JBoss BRMS 6.4.6. Detailed instructions on how to obtain this script can be found in the following Red Hat Knowledgebase article : https://access.redhat.com/solutions/3211361