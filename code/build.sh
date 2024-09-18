#!/bin/bash

# Exit immediately if any command fails
set -e

# Print all executed commands to the terminal (for logging)
set -x

# Step 1: Clean the project (optional but recommended)
echo "Cleaning project..."
mvn clean

# Step 2: Compile the project
echo "Compiling project..."
mvn compile

# Step 3: Package the project (create a JAR or WAR file)
echo "Packaging project..."
mvn package

# Step 4: Run additional build steps (if needed)
# Example: If you need to run tests, you can include them here
echo "Running tests..."
mvn test

# If the build is successful, print a success message
echo "Build successful!"
