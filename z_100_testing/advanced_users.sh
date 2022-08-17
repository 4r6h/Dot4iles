#!/usr/bin/env bash

add_user() {

while true 
do
	echo
	echo -e "\n Example: bash, zsh, fish\n"

read -r -p " Write the name of you shell: " Default_Shell

if [[ -z "$Default_Shell" ]]; then
	echo -e "\n you didn't choose anything! type again."

elif [[ "$Default_Shell" != "bash" && "$Default_Shell" != zsh && "$Default_Shell" != fish ]]; then

	echo -e "\n invalid shell name....\n"

elif [ ! -x "/bin/$Default_Shell" ]; then

	echo -e "\n $Default_Shell not installed in your computer. shell not found\n"
else 
	sudo useradd -g users -G sudo -s /usr/bin/$Default_Shell -c "$Full_Name" -m -d /home/"$Full_Name" $New_Username

echo -e "\n Give $New_Username's password\n"

sudo passwd $New_Username

sudo usermod -aG audio $New_Username
sudo usermod -aG video $New_Username
sudo usermod -aG games $New_Username
sudo usermod -aG wheel $New_Username

echo
	grep "^$New_Username" /etc/passwd
echo	
	echo -e "\n $Full_Name's new user $New_Username created.\n"
	exit
fi
done
}

Full() {

while true
do

echo
	read -p " Write your Full Name: " Full_Name

	if [ -z "$Full_Name" ]; then

		echo -e "\n You entered nothing!\n"
	else
		Fix_Case() {
			echo "$Full_Name" | 
				awk 'BEGIN { split("a an the is to at in on with and but or", w)
			        	for (i in w) nocap[w[i]] }
			
				function cap(word) {
			    		return toupper(substr(word,1,1)) tolower(substr(word,2))
				}		
			
				{	
			  		for (i=1; i<=NF; ++i) {
			      			printf "%s%s", (i==1||i==NF||!(tolower($i) in nocap)?cap($i):tolower($i)),
			                     		(i==NF?"\n":" ")
			  		}
				}'
			}	
		
		Full_Name=$( Fix_Case )

		echo -e "\n Do you want to set your Full Name as $Full_Name\n"
while true
do

read -p " Then press enter [Y/n] " FNcon

case $FNcon in
	[Yy]|[Yy][Ee][Ss]|$ENTER)
			
			add_user
		;;
	[Nn]|[Nn][Oo])
			break
		;;
	*)
		echo -e "\n ...invalid input!\n"
esac
done
	fi
done
}

User() {

while true
do
echo
	read -p " Write your User Name: " New_Username

	if [ -z "$New_Username" ]; then

		echo -e "\n You entered nothing!\n"
	else

while true 
do
		New_Username=$( echo $New_Username | tr [:upper:] [:lower:] )

		echo -e "\n Do you want to set your User Name as $New_Username\n"
	
read -p " Then press enter [Y/n] " NUcon

case $NUcon in
	[Yy]|[Yy][Ee][Ss]|$ENTER)
			
		if $(id "$New_Username" >/dev/null 2>&1); then
 
			echo -e "\n your user $New_Username already exists.\n"
			break
		else

			Full
		fi

		;;
	[Nn]|[Nn][Oo])
			break
		;;
	*)
		echo -e "\n ...invalid input!\n"
esac
done
	fi
done

}

main() {
	
	User
}

main
