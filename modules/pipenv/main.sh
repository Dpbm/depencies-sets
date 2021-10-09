clear
if [ ! $(which pipenv) ]
then
    echo "You need to install pipenv and add to your path"
    exit
fi

echo "what's your environment type?"
echo "data science [0]"
echo "math         [1]"
echo "security     [2]"
echo "web          [3]"

read envType

types=(data math security web)

pipenv shell

pipenv install -r ~/VENVstarterKit/modules/pipenv/types/${types[$envType]}.txt

