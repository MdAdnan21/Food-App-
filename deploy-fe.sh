#!/bin/bash

# Exit the script as soon as a command fails
set -e

# Print each command before it is executed (for debugging)
set -x

# Step 1: Install dependencies using pnpm
echo "Installing dependencies..."
pnpm install

# Step 2: Build the project
echo "Building the project..."
pnpm run build

# Step 3: Deploy the project
# Here, I'm assuming you're deploying to a platform like Vercel or Netlify
# Uncomment the deployment commands below depending on your platform:

# For Vercel:
echo "Deploying to Vercel..."
vercel --prod

# For Netlify:
# echo "Deploying to Netlify..."
# netlify deploy --prod

# Step 4: Any additional steps after the deployment
# For example, you can run tests or cleanup if necessary
# echo "Running tests..."
# pnpm run test

echo "Deployment completed successfully!"
