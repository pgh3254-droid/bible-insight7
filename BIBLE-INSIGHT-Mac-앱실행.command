#!/usr/bin/env bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
APP_URL="https://ais-pre-e74rt2lkgfusvuzdkh2buu-446168785562.asia-east1.run.app/?book=genesis&chapter=1&mode=read"
if [ -f "$SCRIPT_DIR/index.html" ]; then
  APP_URL="file://$SCRIPT_DIR/index.html"
fi
if [ -d "/Applications/Google Chrome.app" ]; then
  open -na "Google Chrome" --args --app="$APP_URL"
elif [ -d "/Applications/Microsoft Edge.app" ]; then
  open -na "Microsoft Edge" --args --app="$APP_URL"
else
  open "$APP_URL"
fi
