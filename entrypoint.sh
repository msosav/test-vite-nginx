#!/bin/sh

# Replace the placeholder with the actual environment variable value
if [ -n "$VITE_APP_ENV" ]; then
  find /usr/share/nginx/html -type f -name "*.js" -exec sed -i "s|import.meta.env.VITE_APP_ENV|$VITE_APP_ENV|g" {} \;
fi

# Start nginx
exec "$@"
