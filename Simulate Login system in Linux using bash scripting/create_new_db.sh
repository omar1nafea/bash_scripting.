who=`whoami`
cmduser=`grep $who DB_admins.db`
if [[ $who == $cmduser ]]
then
read -p "Enter DB Name :" dbname
if [[ -d DataBases/$dbname ]]
then
                echo "The DataBase $dbname Already Exist"
else
        mkdir  DataBases/$dbname
        owner=`stat -c '%U' DataBases/$dbname`
        echo $owner >> DataBases/owner.txt

fi
else
echo "you can't run the script"
fi