read -p "Write your name : " New_Username
New_Username=$( echo $name | tr [:upper:] [:lower:] )
echo "$New_Username"

read -p "Write your full name : " Full_Name
Full_Name=$( echo $Full_Name | tr [:lower:] [:upper:] )
echo "$Full_Name"
