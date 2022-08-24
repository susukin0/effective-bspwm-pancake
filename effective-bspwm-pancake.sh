#!/usr/bin/env bash


which apt >/dev/null 2>&1
if [ $? -eq 0 ]; then
    which apt >/dev/null 2>&1
    if [ $? != 0 ]; then
        clear
        echo -e " __________________________________________________"
        echo -e "|                                                  |"
        echo -e "| welcome to custom bspwm installer   -susukin0    |"
        echo -e "|                                                  |"
        echo -e " __________________________________________________ "
        echo -e ""
        exit 1
        fi
else
        clear 
fi

egirl(){
which apt >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        sudo apt-get install mlocate libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-shape0-dev gcc make git polybar libc6-dev kitty
        git clone https://github.com/baskerville/bspwm.git
        git clone https://github.com/baskerville/sxhkd.git
        cd bspwm && make && sudo make install
        sudo cp contrib/freedesktop/bspwm.desktop /usr/share/xsessions/
        cd ../sxhkd && make && sudo make install
        cd
        cd .config/ 
        mv ~/effective-bspwm-pancake/bspwm ~/.config/
        mv ~/effective-bspwm-pancake/rofi ~/.config/
        mv ~/effective-bspwm-pancake/sxhkd ~/.config/
        mv ~/effective-bspwm-pancake/polybar ~/.config/
    
    
    fi

}

eboy(){





}

genderprompt() {
    echo -e "Would you like E-girl or E-boy theme? (return:none is for my lovely friends)"
    echo -e "1. : E-GIRL (RECOMMENDED)"
    echo -e "2. : E-BOY"
    read -p $'>_: ' dearestimsosorry
    if [[ "$dearestimsosorry" == "1" ]]; then
        egirl
    fi
    if [[ "$dearestimsosorry" == "2" ]]; then
        eboy
    fi
    if [[ "$dearestimsosorry" == "" ]]; then
        none
    fi
}
genderprompt
logoutbro() {

    
    echo -e "
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~ now you have to log out and select bspwm in login screen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    read -p $'[hit enter]' tten
    if [[ "$tten" == " " ]]; then
        echo -e "RUNNING ..."
        exit 0
    
    else
        echo -e "INVALID VALUE!"
        logoutbro
    fi
}
logoutbro
