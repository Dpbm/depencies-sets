clear
if [ ! $(which virtualenv) ]
then
    echo "You need to install virtualenv and add to your path"
    exit
fi

echo "what's your environment type?"
echo "data science [0]"
echo "math         [1]"
echo "security     [2]"
echo "web          [3]"

read envType

types=(data math security web) 

source bin/activate
pip install -r ~/VENVstarterKit/modules/pipenv/types/${types[$envType]}.txt

