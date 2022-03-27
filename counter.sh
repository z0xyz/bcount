#!/bin/bash

day=2
hour=6
minute=-20
second=-40
val=60

#for (( x=1 ; x<=$val ; x++ ))
#do 
	#clear
	#echo "$x"
	#sleep 1s
#done

#arguments=( $day $hour $min $second )


function printNumbers() {
    # Move the cursor the beginning of the line, then erase everything afterwards for clean printing
    function line_overwrite(){
        echo -ne "\r\033[0k$@"
    }
    local value=$1
    for (( index = 0; index < value; index++ )); do
        local string_value="The current value is ${index}"
        line_overwrite ${string_value}
        sleep 1s
    done
}
printNumbers 10

arguments=( day hour minute second )
for key in "${arguments[@]}"
do
	let value=$key
	if [ "${value}" -lt 0 ] 
	then
		#I want to print both exceptions together , for example 
		#Enter a positive value for minutes, seconds ... instead of 
		#Enter a positive value for minutes
		#Enter a positive value for seconds 
		echo "Enter a positive value for ${key}s!"
	fi
done

# Check the parameters being passed to command if they're valid or not, then calculate the amount of seconds
function positional_parameters(){
}

#if  [ "$hour" -le 24 ] && [ "$min" -le 0 ] && [ "min"  ]
	#I need to find a way to have multiple checks/conditionals
#then
	#echo 'Enter a proper value!'
	#break
#fi

# Give the user an option to see the time elapsed or just ascending order of seconds
