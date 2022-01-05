#!/bin/bash
nlsr_config=''
if [ -e 'NLSR/nlsr.conf' ];then
 nlsr_config='NLSR/nlsr.conf'
elif [ -e '../NLSR/nlsr.conf' ];then
 nlsr_config='../NLSR/nlsr.conf'
else
 echo "cannot find conf file"
 exit 2
fi
pwd
echo $nlsr_config 
sudo nlsr -f $nlsr_config
