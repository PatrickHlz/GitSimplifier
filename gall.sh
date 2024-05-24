check_file_in_directory() {
    local file_name=".git"
    local directory="${2:-.}" # Current repository

    # Check the .git file in this repository
    if [[ -e "$directory/$file_name" ]]; then
        echo "Le fichier '$file_name' existe dans le répertoire '$directory'."
        return 0  # 0 if success
    else
        echo "Le fichier '$file_name' n'existe pas dans le répertoire '$directory'."
        return 1  # 1 fail
    fi
}


function gall {
    if [[ "$1" == "-h" || "$1" == "--help" ]]; then
        echo "Usage: gall [COMMIT_MESSAGE] [TAG_MESSAGE]"
        echo "  If no COMMIT_MESSAGE is provided, a random one will be generated."
        echo "  If no TAG_MESSAGE is provided, no tag will be created."
        return 0
    fi
    
    if check_file_in_directory; then 

        git add .

        if [[ -z "$1" ]]; then 
            commit_message=$(openssl rand -base64 12)
        else
            commit_message="$1"
        fi
        
        git commit -m "$commit_message"
        git push
        
        if [[ -z "$2" ]]; then
            echo "----- Push without tag -----"
        else
            git tag -ma "$2"
            git push --follow-tags
            echo "----- Tag created successfully -----" 
        fi
    else
        echo "this is not a Git repository"
    fi

    #test

    #git tag -ma "archi-" "$commit_message" #if the user wants to keep the commit message in the tag
    #git tag -ma "submit-" "$commit_message" #same
    #else
    #git tag -ma "archi-" "$2" #if the user wants to keep the commit message in the tag
    #git tag -ma "submit-" "$2" #same

    #option to change that with a variable *1  
}
