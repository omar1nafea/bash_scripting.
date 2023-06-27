who=`whoami`
cmduser=`grep $who DB_admins.db`
if [[ $who == $cmduser ]]
then
myfile=`cat DB_admins.db`
echo "list of users"
echo $myfile
read -p "Enter name of user you wanted to delete: " username
cmddel=$(sed "s/$username//" DB_admins.db)
cmdgrep=`grep $username DB_admins.db`
if [[ $username == "oracle" ]]
then
echo "you can't delete user"
elif [[ $username == $cmdgrep ]]
then
echo "$cmddel" >DB_admins.db
echo "$username deleted successfully"
else
echo "$username not exist"
fi
else echo "you can't run the script"
fi