#!/bin/bash

# Using function to handle each preamble, final message (including key) and each questions in sequential order
preamble()
{
echo "Hi, this is awkward, but you have been attacked by a Riddleware"
sleep 1
echo "Normally we need payment by BTC (bitcoin), but since Ransomware is unethical, You may prove if you are worthy!"
sleep 1
echo "Your document(s) have been encrypted by a key only we know."
sleep 1
echo "Solve enough question, and we will decrypt it for you"
sleep 1
echo ""
echo "=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+"
}

self_destruct()
{
echo "Mjolnir have served its purpose now"
sleep 2.5
echo "Inititating a 10-second self-destruct sequence"
sleep 2.5
i=10
while [ $i -gt 0 ]
do 
	echo $i
	sleep 1
	((i--))
	clear
done

echo "Mjolnir exist no longer"
sleep 2
rm mjolnir.sh
clear	
}	

final_flag()
{
echo "Congratulations on solving all the questions, You are indeed worthy!"
echo "Decrypting process initiated"

for file in ./*
	do
		data=$(cat $file | base64 -d | tr '[E-ZA-De-za-d]' '[A-Za-z]')
		echo $data > $file
	done
echo "Decrypting process completed"
}

question_1()
{
echo ""
echo "In the next world war, in a jackkniffed juggernaut, I am born again"
sleep 0.5
echo "In the neon sign, scrolling up and down, I am born again"
sleep 0.5
echo "In an interstellar burst, I'm back to save the universe"
sleep 0.5
echo "whoami?"
read answer
lowercase_answer=$answer
if [[ $lowercase_answer == *airbag* ]]; then # As long as user input contain the string, it is correct. These steps are to remove case-insensitivity and plural (eg. extra 's')
	echo "Correct Answer. Move on to the next question"
else
	echo "Wrong Answer. Please try again"
	question_1 # If wrong, the the script will loop back to the latest unsolved question
fi
}

question_2()
{
echo ""
echo "I slide through the wasteland that's my world"
sleep 0.5
echo "My hunger takes your life preyed on to keep me alive "
sleep 0.5
echo "Mercy's all that you need, mercy's empty in me"
sleep 0.5
echo "whoami?"
read answer
lowercase_answer=$answer
if [[ $lowercase_answer == *sidewinder* ]]; then # As long as user input contain the string, it is correct. These steps are to remove case-insensitivity and plural (eg. extra 's')
	echo "Correct Answer. Move on to the next question"
else
	echo "Wrong Answer. Please try again"
	question_2 # If wrong, the the script will loop back to the latest unsolved question
fi
}

question_3()
{
echo ""
echo "Burn like a slave, churn like a cog"
sleep 0.5
echo "You are caged in simulations"
sleep 0.5
echo "I evolve, Push you aside and render you obsolete"
sleep 0.5
echo "whoami?"
read answer
lowercase_answer=$answer
if [[ $lowercase_answer == *algorithm* ]]; then # As long as user input contain the string, it is correct. These steps are to remove case-insensitivity and plural (eg. extra 's')
	echo "Correct Answer. Move on to the next question"
else
	echo "Wrong Answer. Please try again"
	question_3 # If wrong, the the script will loop back to the latest unsolved question
fi
}

question_4()
{
echo ""
echo "Won't walk the Earth a spectre"
sleep 0.5
echo "Won't hold my tongue from lashing out"
sleep 0.5
echo "This is my writ of honor, Drawn by the blood that I have shed"
sleep 0.5
echo "whoami?"
read answer
lowercase_answer=$answer
if [[ $lowercase_answer == *shogun* ]]; then # As long as user input contain the string, it is correct. These steps are to remove case-insensitivity and plural (eg. extra 's')
	echo "Correct Answer. Move on to the next question"
else
	echo "Wrong Answer. Please try again"
	question_4 # If wrong, the the script will loop back to the latest unsolved question
fi
}

question_5()
{
echo ""
echo "I'm tired of being what you want me to be"
sleep 0.5
echo "Feeling so faithless"
sleep 0.5
echo "Loss under the surface"
sleep 0.5
echo "whoami?"
read answer
lowercase_answer=$answer
if [[ $lowercase_answer == *numb* ]]; then # As long as user input contain the string, it is correct. These steps are to remove case-insensitivity and plural (eg. extra 's')
	echo "Correct Answer"
else
	echo "Wrong Answer. Please try again"
	question_5 # If wrong, the the script will loop back to the latest unsolved question
fi
}

# Listing of stages in order
preamble
sleep 1
question_1
sleep 1
question_2
sleep 1
question_3
sleep 1
question_4
sleep 1
question_5
sleep 1
final_flag && self_destruct
