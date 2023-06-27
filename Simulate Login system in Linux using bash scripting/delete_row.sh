myfiledb=`ls DataBases`
echo "list of DataBases"
echo $myfiledb

read -p "Enter DB Name :" dbname 
myfile=`ls DataBases/$dbname`
echo "list of tables"
echo $myfile

read -p "Enter Table Name :" tablename

read -p "Enter data that you want delete: " delrow
cat DataBases/$dbname/$tablename | $(echo -n grep -v $delrow) > DataBases/$dbname/$tablename
echo "row deleted successfully"