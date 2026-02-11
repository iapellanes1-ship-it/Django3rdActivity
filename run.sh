#!/bin/bash
# Quick Start Script for Django Website (Linux/macOS)

echo "============================================"
echo "Django Navigation Website - Quick Start"
echo "============================================"
echo ""

cd "$(dirname "$0")"

# Check if venv exists
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
    echo "Virtual environment created!"
fi

# Activate venv
echo "Activating virtual environment..."
source venv/bin/activate

# Install dependencies
echo "Installing Django..."
pip install -r requirements.txt

# Run migrations
echo "Running migrations..."
python manage.py migrate

# Start server
echo ""
echo "============================================"
echo "Server starting at http://127.0.0.1:8000/"
echo "============================================"
echo ""
echo "Press CTRL+C to stop the server"
echo ""
python manage.py runserver
