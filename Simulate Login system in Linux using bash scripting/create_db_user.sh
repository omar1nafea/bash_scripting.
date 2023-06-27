who=`whoami`
cmduser=`grep $who DB_admins.db`
if [[ $who == $cmduser ]]
then
read -p "Enter DB User :" dbuser
cmd=`grep $dbuser DB_admins.db`
if [[ $dbuser == $cmd ]]
then
echo "user already exist"
else
echo $dbuser >> DB_admins.db
echo "$dbuser added successfully"
fi
else echo "you can't run script"
fi