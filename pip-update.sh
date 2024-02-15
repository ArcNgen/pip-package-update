#!/bin/bash

# Activate your Python environment if necessary
# source /path/to/your/environment/bin/activate

# Get a list of all installed packages
pip freeze | cut -d = -f 1 > packages.txt

# Loop over all packages and upgrade each one
while read package; do
    pip install --upgrade "$package"
done < packages.txt

# Clean up the package list file
rm packages.txt