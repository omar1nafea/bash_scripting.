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
myfile=`ls DataBases/$dbname`
echo "list of tables"
echo $myfile

read -p "Enter Table Name :" tablename


colNum=$(cat DataBases/$dbname/$tablename | head -1 | awk -F, 'END{print NF;}')
echo $colNum
for (( i=1; i<=colNum; i++ ))
do
cat DataBases/$dbname/$tablename | head -1 | awk -F, '{print "enter " $'$i';}'
read fields
echo -n $fields"," >> DataBases/$dbname/$tablename

done

fi
else
echo "you can't run the script"
fi