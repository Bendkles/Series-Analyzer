function Valid() {

    if [[ $# -gt 0 ]] 
    then
        if [[ $@ =~ ^[1-9][0-9]*([[:space:]]+[1-9][0-9]*){2,}$ ]]
        then
            return 0
        else
            while [[ i=0 ]]
            do 
            read -p "Please enter at least 3 positive numbers: " num
            if [[ $num =~ ^[1-9][0-9]*([[:space:]]+[1-9][0-9]*){2,}$ ]]
            then 
                return 0
            else
                i=0
            fi
            done
        fi
fi
}


function options() {
  echo "Select your choice from the list:"
  select choice in a b c d e
  do
    case $choice in
      a) Valid ;;
      b) Order_Display ;;
      c) Sort_Order ;;
      d) Max_Order ;;
      e) Min_Order ;;
      *) echo "Enter valid choice " ;;
    esac
  done
}

# Example functions
function Valid() {
  echo "You selected Valid"
}

function Order_Display() {
  echo "You selected Order_Display"
}

function Sort_Order() {
  echo "You selected Sort_Order"
}

function Max_Order() {
  echo "You selected Max_Order"
}

function Min_Order() {
  echo "You selected Min_Order"
}

options
