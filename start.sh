# Check for required environment variables and set defaults if missing
if [ -z "$MEGA_EMAIL" ]; then
  echo "MEGA_EMAIL not provided! Using default value."
  export MEGA_EMAIL="default@example.com"
fi

if [ -z "$MEGA_PASSWORD" ]; then
  echo "MEGA_PASSWORD not provided! Using default value."
  export MEGA_PASSWORD="defaultpassword"
fi

if [ -z "$BASE_URL" ]; then
  echo "BASE_URL not provided! Using default value."
  export BASE_URL="http://localhost:8080"
fi

# Start the application
python3 update.py && python3 -m bot
#!/bin/bash
