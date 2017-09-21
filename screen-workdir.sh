#!/usr/bin/env bash


if [ -x "$(command -v /usr/bin/screen)" ];
then
	SCREEN=/usr/bin/screen
else
	SCREEN=/usr/local/bin/screen
fi

function screen(){
	if echo $@ | grep -q "^\-w"; then
		shift
		if [ -z "$STY" ]; then
			local local_path=$(pwd|rev|cut -d/ -f1|rev)
			bash -c "$SCREEN -S $local_path"
		else
			echo "Session it's running... Close try again."
		fi
	else
		bash -c "$SCREEN $@"
	fi
}

export screen
