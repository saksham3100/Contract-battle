#!/bin/bash

# -------------------------
# THE HACKER CLI 🚀
# -------------------------
# Organizer Note: Update JUDGE_URL once you deploy the docker container!
JUDGE_URL="https://contract-battle-judge.onrender.com/submit"
REPO_OWNER="Rohan-droid7341"
REPO_NAME="Contract-battle"

# Ensure curl is installed
if ! command -v curl &> /dev/null; then
    echo "⚠️ Error: curl is required to transmit the payload."
    exit 1
fi

echo -n "Enter your Pilot Name (no spaces): "
read USERNAME

if [[ "$USERNAME" == *" "* ]] || [[ -z "$USERNAME" ]]; then
    echo "🛑 Aborting: Pilot Name is required and cannot contain spaces."
    exit 1
fi

if [ ! -f "src/Level1.sol" ]; then
    echo "🛑 Aborting: src/Level1.sol not found. Are you currently in the root directory?"
    exit 1
fi

echo "🚀 Bundling your Level 1 module..."

echo "📡 Transmitting module to Central Judge..."
RESPONSE=$(curl -s -X POST "$JUDGE_URL" \
    --data-urlencode "username=$USERNAME" \
    --data-urlencode "repoOwner=$REPO_OWNER" \
    --data-urlencode "repoName=$REPO_NAME" \
    --data-urlencode "code@src/Level1.sol")

# Verify transmission and evaluation
# The server will return lines like STATUS=SUCCESS, MESSAGE=..., LEVEL2=...
STATUS=$(echo "$RESPONSE" | grep "^STATUS=" | cut -d'=' -f2)

if [ "$STATUS" == "SUCCESS" ]; then
    echo "🟢 ACCESS GRANTED! You have passed the hidden evaluation."
    echo "📦 Extracting Level 2 payload..."
    
    BODY_B64=$(echo "$RESPONSE" | grep "^LEVEL2=" | cut -d'=' -f2)
    
    # Decode base64 depending on OS
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "$BODY_B64" | base64 --decode > src/Level2.sol
    else
        echo "$BODY_B64" | base64 -d > src/Level2.sol
    fi
    
    echo "✅ src/Level2.sol installed locally."
    echo "🏆 Check the official repository to see your name on the Galactic Leaderboard!"
    exit 0
else
    echo "🔴 ACCESS DENIED."
    MESSAGE=$(echo "$RESPONSE" | grep "^MESSAGE=" | cut -d'=' -f2-)
    echo "Reason: $MESSAGE"
    echo "Review your local logic carefully, run your own edge cases, and try again!"
    exit 1
fi
