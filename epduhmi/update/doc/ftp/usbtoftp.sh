#!/bin/sh

##
# copy cfg
cp ~/cfg/ /usb/old/cfg/ -rf
# copy log
cp ~/log/ /usb/old/log/ -rf


ip=192.168.1.128
user=ftp
passwd=123456

# down Coordinate-A.txt
ftpput -u $user -p $passwd $ip old/cfg/Coordinate-A.txt /mnt/usb/old/cfg/Coordinate-A.txt
# down data_and_param.cfg
ftpput -u $user -p $passwd $ip old/cfg/data_and_param.cfg /mnt/usb/old/cfg/data_and_param.cfg
# down jx.txt yc.txt yx.txt
ftpput -u $user -p $passwd $ip old/cfg/jx.txt /mnt/usb/old/cfg/jx.txt
ftpput -u $user -p $passwd $ip old/cfg/yc.txt /mnt/usb/old/cfg/yc.txt
ftpput -u $user -p $passwd $ip old/cfg/yx.txt /mnt/usb/old/cfg/yx.txt
# down pwd.cfg
ftpput -u $user -p $passwd $ip old/cfg/pwd.cfg /mnt/usb/old/cfg/pwd.cfg
# down rs485_devs-A.txt
ftpput -u $user -p $passwd $ip old/cfg/rs485_devs-A.txt /mnt/usb/old/cfg/rs485_devs-A.txt
# down sysUI-A.txt
ftpput -u $user -p $passwd $ip old/cfg/sysUI-A.txt /mnt/usb/old/cfg/sysUI-A.txt
# down TextName.*
ftpput -u $user -p $passwd $ip old/cfg/TextName.txt /mnt/usb/old/cfg/TextName.txt
ftpput -u $user -p $passwd $ip old/cfg/TextTemp.txt /mnt/usb/old/cfg/TextTemp.txt

# create log dir
mkdir /mnt/usb/old/log
# down soelog
ftpput -u $user -p $passwd $ip old/log/soe.log /mnt/usb/old/log/soe.log
ftpput -u $user -p $passwd $ip old/log/soe_back.log /mnt/usb/old/log/soe_back.log
# down start.log
ftpput -u $user -p $passwd $ip old/log/start.log /mnt/usb/old/log/start.log
# down state
ftpput -u $user -p $passwd $ip old/log/state /mnt/usb/old/log/state


# create ac-param dir
mkdir /mnt/usb/ac-param
# down ac-dest-EQ.txt
ftpput -u $user -p $passwd $ip ac-param/ac-dest-EQ.txt /mnt/usb/ac-param/ac-dest-EQ.txt
# down ac-dest-param.txt
ftpput -u $user -p $passwd $ip ac-param/ac-dest-param.txt /mnt/usb/ac-param/ac-dest-param.txt
# down rs485_devs-A.txt
ftpput -u $user -p $passwd $ip ac-param/rs485_devs-A.txt /mnt/usb/ac-param/rs485_devs-A.txt
# down soe
ftpput -u $user -p $passwd $ip ac-param/soe.log /mnt/usb/ac-param/soe.log
ftpput -u $user -p $passwd $ip ac-param/soe_back.log /mnt/usb/ac-param/soe_back.log

sync
rm /usb/old -rf
