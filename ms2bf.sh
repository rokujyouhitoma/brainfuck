#!/bin/sh

while read LINE; do
	N=1
	while : ; do
		CH=`echo $LINE | cut -c $N`
		N=$(($N + 1))
		if [ -z "$CH" ]; then
			break
		fi
		case $CH in
			��|��|��     ) echo '>' ;;
			��|��|��       ) echo '<' ;;
			��|��|��|�� ) echo '+' ;;
			��|��       ) echo '-' ;;
			��          ) echo '.' ;;
			��          ) echo ',' ;;
			��|��       ) echo '[' ;;
			��|��       ) echo ']' ;;
			*           ) ;;
		esac
		if echo $CH | lgrep '��|��|��'; then
			echo '>'
		fi
	done
done


