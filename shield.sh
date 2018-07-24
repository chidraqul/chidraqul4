#!/bin/bash
# Copyright 2018 ChillerDragon. All Rights Reserved.
# Get the full official release at:
# https://github.com/ChillerDragon/chidraqul4

aShield=()
HasShield=0

function SetShield {
    if [[ "${world[$1]}" == "_" ]]
    then
        world[$1]="|"
        aShield[$1]=1
    fi
}

function CollectShield {
    if [[ "${aShield[$1]}" == "1" ]]
    then
        HasShield=1
        SetLeftHand "|"
        SendChat "[+] collected shield |"
        aShield[$1]=0
    fi
}
