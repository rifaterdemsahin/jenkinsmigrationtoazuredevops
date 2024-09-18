#!/bin/bash

# Exit on any error
set -e

# Print commands
set -x

# Create a virtual environment and activate it
echo "Setting up virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Run tests using pytest (optional)
echo "Running tests..."
pytest

echo "Build successful!"
