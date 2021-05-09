function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please make your guess.."
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is less then the true number please make a guess again! "
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater then the actual number please make the guess again! "
        else
            echo " Congratulations, Correct guess, You won the game!"
        break;
        fi
    done
}
echo "How many files are in the current directory?"
guess
