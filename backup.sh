#!/bin/sh
today=`date "+%Y-%m-%dT%H_%M_%S"`
rsync -aP -e ssh --link-dest=/home/backup_act/Archive/machinename/current root@machinename.example.com:/etc      /home/backup_act/Archive/machinename/back-$today
rsync -aP -e ssh --link-dest=/home/backup_act/Archive/machinename/current root@machinename.example.com:/var/mail /home/backup_act/Archive/machinename/back-$today
rsync -aP -e ssh --link-dest=/home/backup_act/Archive/machinename/current root@machinename.example.com:/var/www  /home/backup_act/Archive/machinename/back-$today
rsync -aP -e ssh --link-dest=/home/backup_act/Archive/machinename/current root@machinename.example.com:/home     /home/backup_act/Archive/machinename/back-$today
rm /home/backup_act/Archive/machinename/current
ln -s /home/backup_act/Archive/machinename/back-$today  /home/backup_act/Archive/machinename/current
