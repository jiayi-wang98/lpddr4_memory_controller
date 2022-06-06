#!/bin/csh -f

cd /home/jwang710/mc/verif

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/home/lab.apps/vlsiapps_new//vcs/current/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

