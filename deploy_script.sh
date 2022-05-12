#!/bin/bash
                  
path="/home/administrator/saythanks_folder"                 
remote_user="root"
remote_ip="172.16.36.21"  
dest_path="/root/saythanks_test_folder"
file_name="saythanks.zip"
zip -r ${path}/${file_name} ${path}                      
scp ${path} ${remote_user}@${remote_ip}:${dest_path} 
ssh ${remote_user}@${remote_ip} -- unzip ${dest_path}/${file_name} -d ${dest_path}


