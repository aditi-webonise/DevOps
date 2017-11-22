#!/bin/bash
while :
do

echo "Make a choice
	1.Backup
	2.Restore"
read choice
case $choice in
     1)
	echo "Enter database name "
	read db1
	echo "Enter name for sql file"
	read filename
	echo "Enter username"
	read user
	mysqldump -u $user -p $db1 > $filename 
	;;
     2)
	echo "Enter database name "
	read db2
	echo "Enter file path"
	read filepath
	echo "Enter username"
	read user
	mysql -u $user -p $db2 < $filepath
	;;
      *)
	echo "Invalid input."
	break
	;;
esac
done
echo "Bye"
