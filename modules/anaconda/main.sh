clear
echo "what's your environment name?"
read envName

if [ ! $(which conda) ]
then
    echo "You need to install anaconda and add to your path"
    exit
fi

conda activate $envName

echo "what's your environment type?"
echo "data science [0]"
echo "math         [1]"
echo "security     [2]"

read envType

types=(data math security)

sh ./modules/anaconda/types/${types[$envType]}.sh

