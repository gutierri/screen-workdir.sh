#!/usr/bin/env bash

SCREEN=$(which screen)

function screen(){
        if [[ "$1" = "-w" ]]; then
                shift
                if [ -z "$STY" ]; then
                        $SCREEN -S ${PWD##*/} $@
                else
                        $SCREEN -AdmS ${PWD##*/} bash
                        echo "Screen session ${PWD##*/} created!"
                fi
        else
                $SCREEN $@
        fi
}

export screen
