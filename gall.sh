function gall {
    if [[ "$1" == "-h" || "$1" == "--help" ]]; then
        echo "Usage: gall [COMMIT_MESSAGE] [TAG_MESSAGE]"
        echo "  If no COMMIT_MESSAGE is provided, a random one will be generated."
        echo "  If no TAG_MESSAGE is provided, no tag will be created."
        return 0
    fi
    
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
}
