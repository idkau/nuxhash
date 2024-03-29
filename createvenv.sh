#!/bin/bash

# Use the first argument as the name of the virtual environment directory, default to 'venv' if not provided
VENV_DIR=${1:-venv}

# Check if the virtual environment directory already exists
if [ -d "$VENV_DIR" ]; then
    echo "A virtual environment named '$VENV_DIR' already exists."
else
    # Create the virtual environment
    python3 -m venv $VENV_DIR
    echo "Virtual environment '$VENV_DIR' created."

    # Activate the virtual environment
    echo "To activate the virtual environment, run:"
    echo "source $VENV_DIR/bin/activate"
    
    # Reminder to deactivate
    echo "To deactivate the virtual environment, simply run: deactivate"
fi 
