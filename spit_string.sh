# !/bin/sh
# https://linuxhandbook.com/bash-split-string/
spit1(){
	channel_string="Ubuntu Linux Debian"
	IFS=' ' read -ra channel_array <<< "$channel_string"

	for channel in "${channel_array[@]}"
	do
		echo $channel
	done
}
spit2(){
	my_string="Ubuntu;Linux Mint;Debian;Arch;Fedora"  
	my_array=($(echo $my_string | tr ";" "\n"))
	#Print the split string
	for i in "${my_array[@]}"
	do
	    echo $i
	done
}

spit1
echo "--------"
spit2