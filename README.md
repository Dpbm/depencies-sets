# VENVstarterKit - A CLI to install all your dependencies on start your project

## How to install

1. Clone repo in your home directory
```bash
    git clone https://github.com/Dpbm/VENVstarterKit.git
```

2. Add execute permission to app
```bash
    cd VENVstarterKit
    chmod +x starter.sh
```
3. add to PATH
```bash
    bash --> echo 'export PATH="$HOME/VENVstarterKit:$PATH"' >> ~/.bash_profile
    zsh  --> echo 'export PATH="$HOME/VENVstarterKit:$PATH"' >> ~/.zshrc

    before restart your terminal or use source command

    bash --> source ~/.bash_profile
    zsh  --> source ~/.zshrc
```

All done, just enter in your project folder and run starter.sh

---
<br />

## How to create a module

1. Go to starter.sh and add a new echo line to your module and add your package manager name to types list. Ex:

```bash
    after:
        echo "anaconda [1]"
        echo "pipenv   [2]"
        echo "venv     [3]"
        echo "poetry   [4]"
        echo "exit     [0]"

        types=(anaconda pipenv venv poetry)

    before:
        echo "anaconda [1]"
        echo "pipenv   [2]"
        echo "venv     [3]"
        echo "poetry   [4]"
        echo "pip      [5]"
        echo "exit     [0]"

        types=(anaconda pipenv venv poetry pip)

```

2. add a folder to your module in modules folder (with the same name of you putted on starter.sh types list)

3. in this folder add main.sh file and add your commands like this

```bash
    # header to check if package manager is installed, you can use or not
    clear
    if [ ! $(which virtualenv) ]
    then
        echo "You need to install virtualenv and add to your path"
        exit
    fi

    # options to choice
    echo "what's your environment type?"
    echo "data science [0]"
    echo "math         [1]"
    echo "security     [2]"
    echo "web          [3]"
    echo "test         [4]"

    read envType

    types=(data math security web test) 

    # commands to install dependencies in the current project
    source bin/activate
    pip install -r ~/anacondaStarterKit/modules/pipenv/types/${types[$envType]}.txt
```


### Made with 🥰 by [Dpbm](https://github.com/Dpbm)

