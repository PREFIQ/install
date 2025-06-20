#!/bin/bash

echo "🔧 Installing PREFIQ CLI..."

if ! command -v node > /dev/null; then
  echo "❌ Node.js is not installed. Please install Node.js and npm."
  exit 1
fi

echo "📦 Installing from npm..."
npm install -g prefiq-cli

if command -v prefiq > /dev/null; then
  echo "✅ PREFIQ CLI installed!"
  echo "👉 Run: prefiq create"
else
  echo "❌ Installation failed. Try running with sudo or check your npm permissions."
fi
