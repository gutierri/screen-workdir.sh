#!/usr/bin/env bash


if [ -x "$(command -v /usr/bin/screen)" ];
then
        SCREEN=/usr/bin/screen
else
        SCREEN=/usr/local/bin/screen
fi

function screen(){
        if [[ "$1" = "-w" ]]; then
                shift
                if [ -z "$STY" ]; then
                        $SCREEN -S ${PWD##*/}
                else
                        $SCREEN -AdmS ${PWD##*/} bash
                        echo "Screen session ${PWD##*/} created!"
                fi
        else
                $SCREEN $@
        fi
}

export screen
