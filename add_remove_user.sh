#!/usr/bin/env bash

while true

do
	echo "01 Are You Want to Add a User then type 1"

	echo "02 If You Want to Delete a User then type 2"
	
	echo "03 If You Want to Exit then type 3"

	read -r -p "Choose an option and press enter: " input
	
	case $input in
		
		[01]|[1])
while true

do

sleep 1

echo "Write user's full name like this: Rahat, RAHAT, Rahat_Hossain"

sleep 1

echo "If you want to give space between words then type your name like this: Rahat Hossain"

sleep 1
        read -p "Enter new user's full name: " Full_Name
wait

echo "Write your user name in all lower caps and (Do Not Add Spaces) like: rahat, rahat_hossain"

        read -p "Enter new username: " New_Username
wait

echo "Example: bash, zsh, fish"

        read -p "Define new user's Default Shell: " Default_Shell

if grep -q $New_Username "/etc/passwd"; [ -d /home/$New_Username ]; [ -d /home/$Full_Name ];

        then
                echo "User or Home Directory Exist"

        else

sudo useradd -g users -G sudo -s /usr/bin/$Default_Shell -c "$Full_Name" -m -d /home/"$Full_Name" $New_Username


echo "Give $New_Username's password"

sudo passwd $New_Username

sudo usermod -aG audio $New_Username
sudo usermod -aG video $New_Username
sudo usermod -aG games $New_Username
sudo usermod -aG wheel $New_Username

cat /etc/passwd | grep $New_Username; echo "$Full_Name's new user $New_Username created"
	break
fi
done
                  ;;
		 [02]|[2])
while true
do
	read -r -p "Write the user name you want to delete! : " Del_User
	
	read -r -p "Write the user's full name you want to delete! : " Del_Full_User

if grep -q $Del_User "/etc/passwd"; [ -d /home/$Del_User ]; [ -d /home/$Del_Full_User ];

	then
		sudo userdel $Del_User
		sudo rm -rf /home/$Del_User /home/$Del_Full_User
		echo "$Del_Full_User's User $Del_User Deleted"
break
	else
		echo "User Not Found"
fi

done
		  ;;
	  	 [03]|[3])
	exit
                  ;;
            *)
                  echo "Invalid input..."
                  ;;
      esac      
done
