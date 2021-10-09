echo "👦welcome to VENVstarterKit👦"
echo "select your Virtual environment manager: "
echo "anaconda [1]"
echo "pipenv   [2]"
echo "venv     [3]"
echo "poetry   [4]"
echo "exit     [0]"

read envType

if [ $envType = "0" ]
then 
    exit
fi

types=(anaconda pipenv venv poetry)

index=`expr $envType - 1`

tput setaf 2
echo "selected ➡️  ${types[index]}"
tput sgr0


sh ~/anacondaStarterKit/modules/${types[index]}/main.sh








