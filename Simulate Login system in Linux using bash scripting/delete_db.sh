who=`whoami`
cmduser=`grep $who DB_admins.db`
if [[ $who == $cmduser ]]
then
myfile=`ls DataBases`
echo "list of DataBases"
echo $myfile

read -p "Enter DB Name :" dbname
owner=`stat -c '%U' DataBases/$dbname`
if [[ $who == $owner ]]
 then
echo $(rm -r DataBases/$dbname)
echo "The DataBase $dbname deleted successfully"
else
                echo "you can't delete the database"

fi
else
echo "you can't run the script"
fi