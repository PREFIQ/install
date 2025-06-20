#!/bin/bash

echo ""
echo "🚀 Installing PREFIQ CLI..."

# Check for Node.js
if ! command -v node > /dev/null; then
  echo "❌ Node.js is not installed. Please install it first:"
  echo "   https://nodejs.org"
  exit 1
fi

# Install CLI globally
echo "📦 Installing prefiq-cli from npm..."
npm install -g prefiq-cli

# Check if CLI works
if command -v prefiq > /dev/null; then
  echo ""
  echo "✅ PREFIQ CLI installed successfully!"
  echo "👉 Run: prefiq create"
else
  echo "❌ Installation failed. Try running with sudo:"
  echo "   sudo npm install -g prefiq-cli"
fi
