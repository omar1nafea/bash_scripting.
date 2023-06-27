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
read -p "Enter Table Name :" tablename

if [[ -f DataBases/$dbname/$tablename ]]
then
          echo "The Table $tablename Already Exist"
else
echo $(touch DataBases/$dbname/$tablename)
read -p "Enter Number of coulmn :" numcol
for (( i = 1; i <= numcol; i++ ))
do
read -p "Enter Name of coulmn :" namecol
echo -n $namecol"," >> DataBases/$dbname/$tablename
done
echo $(cat DataBases/$dbname/$tablename)
fi
fi
else
echo "you can't run the script"
fi