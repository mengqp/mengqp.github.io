#!/bin/sh
# umount /mnt/usb
umount /mnt/usb
# delete current usb
rm /mnt/usb -rf


ip=192.168.1.128
user=ftp
passwd=123456

# create usb dir
mkdir /mnt/usb
# create old dir
mkdir /mnt/usb/old

# create new dir
mkdir /mnt/usb/new
# update HMI & hmi_gui
ftpget -u $user -p $passwd $ip /mnt/usb/new/HMI new/HMI
ftpget -u $user -p $passwd $ip /mnt/usb/new/hmi_gui new/hmi_gui
# permision
chmod 755 /mnt/usb/new/*

# create cfg dir
mkdir /mnt/usb/new/cfg
# update Coordinate-A.txt
ftpget -u $user -p $passwd $ip /mnt/usb/new/cfg/Coordinate-A.txt new/cfg/Coordinate-A.txt
# update data_and_param.cfg
ftpget -u $user -p $passwd $ip /mnt/usb/new/cfg/data_and_param.cfg new/cfg/data_and_param.cfg
# update jx.txt yc.txt yx.txt
ftpget -u $user -p $passwd $ip /mnt/usb/new/cfg/jx.txt new/cfg/jx.txt
ftpget -u $user -p $passwd $ip /mnt/usb/new/cfg/yc.txt new/cfg/yc.txt
ftpget -u $user -p $passwd $ip /mnt/usb/new/cfg/yx.txt new/cfg/yx.txt
# update pwd.cfg
ftpget -u $user -p $passwd $ip /mnt/usb/new/cfg/pwd.cfg new/cfg/pwd.cfg
# update rs485_devs-A.txt
ftpget -u $user -p $passwd $ip /mnt/usb/new/cfg/rs485_devs-A.txt new/cfg/rs485_devs-A.txt
# update sysUI-A.txt
ftpget -u $user -p $passwd $ip /mnt/usb/new/cfg/sysUI-A.txt new/cfg/sysUI-A.txt
# update TextName.*
ftpget -u $user -p $passwd $ip /mnt/usb/new/cfg/TextName.txt new/cfg/TextName.txt
ftpget -u $user -p $passwd $ip /mnt/usb/new/cfg/TextTemp.txt new/cfg/TextTemp.txt
# permision
chmod 755 /mnt/usb/new/cfg/*

# create log dir
mkdir /mnt/usb/new/log
# update soelog
ftpget -u $user -p $passwd $ip /mnt/usb/new/log/soe.log new/log/soe.log
ftpget -u $user -p $passwd $ip /mnt/usb/new/log/soe_back.log new/log/soe_back.log
# update start.log
ftpget -u $user -p $passwd $ip /mnt/usb/new/log/start.log new/log/start.log
# update state
ftpget -u $user -p $passwd $ip /mnt/usb/new/log/state new/log/state
# permision
chmod 755 /mnt/usb/new/log/*

# create res dir
mkdir /mnt/usb/new/res
# update default pic
ftpget -u $user -p $passwd $ip /mnt/usb/new/res/default.bmp new/res/default.bmp
ftpget -u $user -p $passwd $ip /mnt/usb/new/res/default.jpg new/res/default.jpg

# create ac-param dir
mkdir /mnt/usb/ac-param
# update ac-src-EQ.txt
ftpget -u $user -p $passwd $ip /mnt/usb/ac-param/ac-src-EQ.txt ac-param/ac-src-EQ.txt
# update ac-src-param.txt
ftpget -u $user -p $passwd $ip /mnt/usb/ac-param/ac-src-param.txt ac-param/ac-src-param.txt
# update rs485_devs-A.txt
ftpget -u $user -p $passwd $ip /mnt/usb/ac-param/rs485_devs-A.txt ac-param/rs485_devs-A.txt
# update soe
ftpget -u $user -p $passwd $ip /mnt/usb/ac-param/soe.log ac-param/soe.log
ftpget -u $user -p $passwd $ip /mnt/usb/ac-param/soe_back.log ac-param/soe_back.log
# permision
chmod 755 /mnt/usb/ac-param/*
