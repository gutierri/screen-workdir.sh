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
                        echo "Session is running... Close and try again."
                fi
        else
                $SCREEN $@
        fi
}

export screen
