#!/bin/sh

onward()
{
  echo
  read -p "continue? [y/n] " forward

  if [ $forward = "${answer#[Nn]}" ]
  then
    exit
  fi
}


clear


read -p "
[1] download file
[2] mount device: /mnt
[3] mount device: /home/snocone

[0] exit

action: " confirm


case  $confirm  in
  1)

    echo "------- download"
    read -p "
file: " file

    echo "curl -O $file"
    curl -O $file

    echo
   ;;



  2)
    echo "------- mount device"
    name="CIRCUITPY"
    fdisk -l | grep "^/dev/sda"
    sudo mkdir -p /mnt/$name
    mount -t vfat /dev/sda1  /mnt/$name
    fdisk -l
    echo
   ;;

   3)
    echo "------- mount device"
    name="CIRCUITPY"
    mount_point="/home/snocone/arduino"
    fdisk -l | grep "^/dev/sda"
    sudo mkdir -p $mount_point
    mount -t vfat /dev/sda1  $mount_point/$name
    fdisk -l
    echo
   ;;




  *)
esac

echo
echo "------- complete"
echo