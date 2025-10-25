#!/bin/bash

# Klyd Analytics Website Deployment Script
# This script helps deploy the website to various platforms

echo "🚀 Klyd Analytics Website Deployment"
echo "====================================="

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the project root."
    exit 1
fi

# Function to deploy to Vercel
deploy_vercel() {
    echo "📦 Deploying to Vercel..."
    
    # Check if Vercel CLI is installed
    if ! command -v vercel &> /dev/null; then
        echo "Installing Vercel CLI..."
        npm install -g vercel
    fi
    
    # Deploy to Vercel
    vercel --prod
    
    echo "✅ Deployed to Vercel successfully!"
    echo "🌐 Your site is now live!"
}

# Function to deploy to Netlify
deploy_netlify() {
    echo "📦 Deploying to Netlify..."
    
    # Check if Netlify CLI is installed
    if ! command -v netlify &> /dev/null; then
        echo "Installing Netlify CLI..."
        npm install -g netlify-cli
    fi
    
    # Deploy to Netlify
    netlify deploy --prod --dir .
    
    echo "✅ Deployed to Netlify successfully!"
    echo "🌐 Your site is now live!"
}

# Function to run performance tests
run_tests() {
    echo "🧪 Running performance tests..."
    
    # Start local server
    echo "Starting local server..."
    npx serve . -p 3000 &
    SERVER_PID=$!
    
    # Wait for server to start
    sleep 3
    
    # Run Lighthouse
    echo "Running Lighthouse audit..."
    npx lighthouse http://localhost:3000 --output=html --output-path=./lighthouse-report.html --chrome-flags="--headless"
    
    # Stop server
    kill $SERVER_PID
    
    echo "✅ Performance tests completed!"
    echo "📊 Check lighthouse-report.html for results"
}

# Function to optimize images
optimize_images() {
    echo "🖼️ Optimizing images..."
    
    # Check if imagemin is available
    if ! command -v imagemin &> /dev/null; then
        echo "Installing imagemin..."
        npm install -g imagemin imagemin-webp
    fi
    
    # Optimize images (if any exist)
    if [ -d "images" ]; then
        imagemin images/* --out-dir=images/optimized
        echo "✅ Images optimized!"
    else
        echo "ℹ️ No images directory found"
    fi
}

# Function to validate HTML
validate_html() {
    echo "🔍 Validating HTML..."
    
    # Check if html-validate is available
    if ! command -v html-validate &> /dev/null; then
        echo "Installing html-validate..."
        npm install -g html-validate
    fi
    
    # Validate HTML
    html-validate index.html
    
    echo "✅ HTML validation completed!"
}

# Main menu
echo ""
echo "Choose deployment option:"
echo "1) Deploy to Vercel"
echo "2) Deploy to Netlify"
echo "3) Run performance tests"
echo "4) Optimize images"
echo "5) Validate HTML"
echo "6) All of the above"
echo "7) Exit"
echo ""

read -p "Enter your choice (1-7): " choice

case $choice in
    1)
        deploy_vercel
        ;;
    2)
        deploy_netlify
        ;;
    3)
        run_tests
        ;;
    4)
        optimize_images
        ;;
    5)
        validate_html
        ;;
    6)
        echo "🚀 Running full deployment pipeline..."
        validate_html
        optimize_images
        run_tests
        echo ""
        echo "Choose deployment platform:"
        echo "1) Vercel"
        echo "2) Netlify"
        read -p "Enter choice (1-2): " platform
        case $platform in
            1) deploy_vercel ;;
            2) deploy_netlify ;;
            *) echo "Invalid choice" ;;
        esac
        ;;
    7)
        echo "👋 Goodbye!"
        exit 0
        ;;
    *)
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac

echo ""
echo "🎉 Deployment process completed!"
echo "📧 For support, contact: hello@klydanalytics.com"
