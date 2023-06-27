myfiledb=`ls DataBases`
echo "list of DataBases"
echo $myfiledb

read -p "Enter DB Name :" dbname 
myfile=`ls DataBases/$dbname`
echo "list of tables"
echo $myfile

read -p "Enter Table Name :" tablename

read -p "enter the word you want" word
grep $word DataBases/$dbname/$tablename