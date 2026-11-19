#!/bin/bash
cd "$(dirname "$0")"
echo "=================================================="
echo "🚀 Starting SD Associates CRM..."
echo "=================================================="
# Open browser automatically after 1 second
(sleep 1 && open "http://localhost:4000") &
node backend/server.js
