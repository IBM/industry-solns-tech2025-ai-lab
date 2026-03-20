#!/bin/bash

# Remove jupyter-notebook/NB-rhelai-instructlab-chatbot.ipynb from the entire repository history

# Check if git-filter-repo is installed
if ! command -v git-filter-repo &> /dev/null
then
    echo "git-filter-repo could not be found. Please install it to proceed."
    exit 1
fi

# Remove the specified file from history
git filter-repo --path jupyter-notebook/NB-rhelai-instructlab-chatbot.ipynb --invert-paths

# Force push the changes
git push origin --force