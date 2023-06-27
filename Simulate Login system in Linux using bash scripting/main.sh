select mymain in create_db_user delete_db_user create_new_db delete_db  create_db_table insert_row select_data delete_row
do 
	case $mymain in 
		create_db_user )	
			
			bash create_db_user.sh
			;;
		delete_db_user )
			
			bash delete_db_user
			;;
		create_new_db )   bash create_new_db.sh
			;;

		delete_db )
				bash delete_db.sh
			;;
			
			create_db_table )
				bash create_db_table.sh
			;;
			insert_row )
				bash insert_row.sh
			;;
			select_data )
				bash select_data.sh
			;;
			
			delete_row )
				bash delete_row.sh
			;;
			
		* ) echo "what is $REPLY";
			exit
			;;
	esac

done