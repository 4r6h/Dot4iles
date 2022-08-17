Full() {
while true
do
echo
read -p " Write your Full Name : " Full_Name


	if [ -z "$Full_Name" ]; then

		echo "\n You entered nothing!\n"
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

		echo "\n Do you want to set your Full Name as $Full_Name\n"

read -p " Then press enter [Y/n] " FNcon

case $FNcon in
	[Yy]|[Yy][Ee][Ss]|$ENTER)
		
			echo "$Full_Name"
			echo "$New_Username"
			exit
		;;
	[Nn]|[Nn][Oo])
			continue
		;;
	*)
		echo "\n ...invalid input!\n"
esac
	fi
done
}

while true
do
echo
read -p " Write your User Name : " New_Username

	if [ -z "$New_Username" ]; then

		echo "\n You entered nothing!\n"
	else

		New_Username=$( echo $New_Username | tr [:upper:] [:lower:] )

		echo "\n Do you want to set your User Name as $New_Username\n"

read -p " Then press enter [Y/n] " NUcon

case $NUcon in
	[Yy]|[Yy][Ee][Ss]|$ENTER)
		
			Full
		;;
	[Nn]|[Nn][Oo])
			continue
		;;
	*)
		echo "\n ...invalid input!\n"
esac
	fi
done
