#!/usr/bin/env bash


while getopts 'f:' OPTION; do
	case "$OPTION" in
		f)
			C=`echo "\033[36m"`
			font=$OPTARG
			sudo cp $font /usr/share/fonts/
			fc-cache -f -v
			
			for i in {1..10}
			do
				echo ''
			done

			R=`echo "\033[31m"`
			N=`echo "\033[m"`

			echo -e "${R}"
			echo "     | "
			echo "     v "
			echo -e "${N}"
			fc-list | grep $font
			;;
		*)
			echo "Use the flag -f and type the font"
	esac
done

