#!/bin/bash

stars=$(printf "%-30s" "*")

echo "${stars// /**}"
echo '		1 --- For download mp3'
echo '		2 --- For downlaod video'
echo "${stars// /**}"
echo ''
echo 'Please enter your choice: '
read option

option1() {
	echo "Please paste your first url:"
	read YT_URL
	youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0 $YT_URL

}

option2() {
	echo "Please pase your second url:"
	read YT_URL
	youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 $YT_URL
}

case $option in
    	1)	option1 ;;
		2)	option2 ;;
	*) echo		"Please chose your option"
esac
