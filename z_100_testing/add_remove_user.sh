#!/usr/bin/env bash

while true

do

echo
	echo "01 Are You Want to Add a User then type 1"

	echo "02 If You Want to Delete a User then type 2"
	
	echo "03 If You Want to Exit then type 3"
echo
	read -r -p "Choose an option and press enter: " input
echo	
	case $input in
		
		[01]|[1])
sleep 1

	echo "Write user's full name like this: Rahat, RAHAT, Rahat_Hossain"

sleep 1

	echo "If you want to give space between words then type your name like this: Rahat Hossain"

sleep 1

while true

do
        read -p "Enter new user's full name: " Full_Name
wait
echo
	echo "Write your user name in all lower caps and (Do Not Add Spaces) like: rahat, rahat_hossain"
echo
        read -p "Enter new username: " New_Username

if grep -q $New_Username "/etc/passwd"; [ -d /home/$New_Username ]; [ -d /home/$Full_Name ];

        then
                echo "User or Home Directory Exist"

        else

while true 

do
	echo "Example: bash, zsh, fish"

read -r -p "
 Write the name of you shell: " Default_Shell

if [[ "$Default_Shell" != "bash" && "$Default_Shell" != zsh && "$Default_Shell" != fish ]]; then 

	echo "invalid name...."

elif [ ! -f "/bin/$Default_Shell" ]; then
	echo "$Default_Shell not installed in your computer. shell not found"

else 
	sudo useradd -g users -G sudo -s /usr/bin/$Default_Shell -c "$Full_Name" -m -d /home/"$Full_Name" $New_Username

echo "Give $New_Username's password"

sudo passwd $New_Username

sudo usermod -aG audio $New_Username
sudo usermod -aG video $New_Username
sudo usermod -aG games $New_Username
sudo usermod -aG wheel $New_Username

cat /etc/passwd | grep $New_Username; echo "$Full_Name's new user $New_Username created"
fi
	done
		fi
			done
break && exit
                  ;;
		 [02]|[2])
while true
do
	read -r -p "Write the user name you want to delete! : " Del_User
	
	read -r -p "Write the user's full name you want to delete! : " Del_Full_User

echo "Do you want to delete this user"
echo
cat /etc/passwd | grep -I "^$Del_User\|$Del_Full_User"
echo
read -r -p "Type yes or no then enter :" Del
case $Del in
	[yY][eE][sS]|[yY])
	
		sudo userdel $Del_User 
		sudo userdel $Del_Full_User
		sudo rm -rf /home/$Del_User /home/$Del_Full_User
		echo "$Del_Full_User's User $Del_User Deleted"

		;;
			[nN][oO]|[nN])
break && exit
		;;
			*)
				echo "Invalid input..."
		;;
      esac      
done

break && exit

#if [ -f $(cat /etc/passwd | grep -I "^$Del_User\|$Del_Full_User") ]

#[[ -d "/home/$Del_User" || -d "/home/$Del_Full_User" ]];

#	then
#		sudo userdel $Del_User $Del_Full_User
#		sudo rm -rf /home/$Del_User /home/$Del_Full_User
#		echo "$Del_Full_User's User $Del_User Deleted"
#break
#	else
#		echo "User Not Found"
#fi
#
#done
#	exit
		  ;;
	  	 [03]|[3])
break && exit
                  ;;
            *)
                  echo "Invalid input..."
                  ;;
      esac      
done
