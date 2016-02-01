#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/config.sh

property="${xfce_properties["$2"]}";
screen_path="$(xfconf-query -c xfce4-desktop -p ${property})";

case $1 in
	-d|--delete)
	rm "${screen_path}";
	;;

	-l|--list)
	ls "${screen_path}";
	;;

	*)
	;;
esac