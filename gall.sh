function gall {
    git add .
    if [[ -z $1 ]]; then 
        commit_message=$(openssl rand -base64 12)
        git commit -m $commit_message
        git push
        echo "-----push avec un message aléatoire-----"
    else
        git commit -m "$1"
        git push
        if [[ -z $2 ]]; then
            echo "-----push sans submit-----"
        else
            git tag -m "$2"
            git push --follow-tags
        fi
    fi
}
