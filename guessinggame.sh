count_files() {
ls -1 | wc -l
}

success=0
while [ $success == 0 ] 
do 
  read -p "Guess the number of files in the current directory? : " user_input
  echo User entered $user_input 
  answer=$( count_files user_input )
  echo Answer is $answer
  if [ $user_input -eq $answer ]
  then
    echo "Congratulations ! you won !!".
    success=1
  elif [ $user_input -lt $answer ]
  then
    echo "Your guess is too low..Play again"
  else
    echo "Your guess is too high..Play again"
  fi
done
