#!/bin/bash

# Exit on any error
set -e

# Print commands (useful for logging in Jenkins)
set -x

# Step 1: Activate the virtual environment
# (Ensure the virtual environment was already created in the build process)
if [ -d "venv" ]; then
    echo "Activating virtual environment..."
    source venv/bin/activate
else
    echo "Error: Virtual environment not found! Please run the build process first."
    exit 1
fi

# Step 2: Install test dependencies (optional, if not already installed)
echo "Installing test dependencies..."
pip install -r requirements-test.txt

# Step 3: Run tests with pytest
echo "Running tests with pytest..."
pytest --junitxml=report.xml --cov=./ --cov-report=xml

# Step 4: Deactivate the virtual environment
echo "Deactivating virtual environment..."
deactivate

# If the tests are successful, print a success message
echo "All tests passed successfully!"
