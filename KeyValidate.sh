#!/bin/bash

# Function to validate API keys based on the format
validate_api_key() {
    api_key=$1
    
    # Define regex patterns for different API keys
    stripe_regex="^sk_live_[0-9a-zA-Z]{24}$"
    sendgrid_regex="^SG\.[a-zA-Z0-9_-]{22}\.[a-zA-Z0-9_-]{22}$"
    google_api_regex="^AIza[0-9A-Za-z\-_]{35}$"
    google_captcha_regex="^[a-zA-Z0-9_]{39,}$"
    github_regex="^ghp_[A-Za-z0-9_]{36}$"
    aws_access_key_regex="^AKIA[0-9A-Z]{16}$"
    mailgun_regex="^key-[0-9a-zA-Z]{32}$"
    slack_bot_token_regex="^xoxb-[0-9]{12}-[0-9]{12}-[a-zA-Z0-9]{24}$"
    twilio_auth_token_regex="^[a-f0-9]{32}$"
    twilio_sid_regex="^AC[a-f0-9]{32}$"
    mongodb_uri_regex="^mongodb\+srv:\/\/.*:(.*)@.*$"
    square_access_token_regex="^sq0atp-[0-9A-Za-z\-_]{22}$"
    gitlab_pat_regex="^glpat-[0-9a-zA-Z\-_]{20,}$"
    aws_s3_uri_regex="^s3:\/\/[A-Za-z0-9\-_]+:[A-Za-z0-9\-_]+@.*$"
    telegram_bot_token_regex="^\d{8,10}:[a-zA-Z0-9_-]{35}$"
    discord_token_regex="^[MN][A-Za-z\d]{23}\.[\w-]{6}\.[\w-]{27}$"
    firebase_admin_sdk_regex="^-----BEGIN PRIVATE KEY-----[\s\S]*?-----END PRIVATE KEY-----$"
    jwt_private_key_regex="^-----BEGIN (RSA|EC|DSA)? PRIVATE KEY-----[\s\S]*?-----END (RSA|EC|DSA)? PRIVATE KEY-----$"
    twitter_consumer_key_secret_regex="^[a-zA-Z0-9]{25,}$"
    oauth_client_secret_regex="^[0-9a-zA-Z]{32,}$"
    heroku_api_key_regex="^[0-9a-f]{32}$"  # Added regex for Heroku API key
    
    # Validate the API key based on regex patterns
    if [[ $api_key =~ $stripe_regex ]]; then
        echo "[+] Valid Stripe Live Secret Key."
    elif [[ $api_key =~ $sendgrid_regex ]]; then
        echo "[+] Valid SendGrid API Key."
    elif [[ $api_key =~ $google_api_regex ]]; then
        echo "[+] Valid Google API Key."
    elif [[ $api_key =~ $google_captcha_regex ]]; then
        echo "[+] Valid Google Captcha Key."
    elif [[ $api_key =~ $github_regex ]]; then
        echo "[+] Valid GitHub Personal Access Token."
    elif [[ $api_key =~ $aws_access_key_regex ]]; then
        echo "[+] Valid AWS Access Key ID."
    elif [[ $api_key =~ $mailgun_regex ]]; then
        echo "[+] Valid Mailgun API Key."
    elif [[ $api_key =~ $slack_bot_token_regex ]]; then
        echo "[+] Valid Slack Bot Token."
    elif [[ $api_key =~ $twilio_auth_token_regex ]]; then
        echo "[+] Valid Twilio Auth Token."
    elif [[ $api_key =~ $twilio_sid_regex ]]; then
        echo "[+] Valid Twilio SID."
    elif [[ $api_key =~ $mongodb_uri_regex ]]; then
        echo "[+] Valid MongoDB URI."
    elif [[ $api_key =~ $square_access_token_regex ]]; then
        echo "[+] Valid Square Access Token."
    elif [[ $api_key =~ $gitlab_pat_regex ]]; then
        echo "[+] Valid GitLab Personal Access Token."
    elif [[ $api_key =~ $aws_s3_uri_regex ]]; then
        echo "[+] Valid AWS S3 URI with credentials."
    elif [[ $api_key =~ $telegram_bot_token_regex ]]; then
        echo "[+] Valid Telegram Bot Token."
    elif [[ $api_key =~ $discord_token_regex ]]; then
        echo "[+] Valid Discord Token."
    elif [[ $api_key =~ $firebase_admin_sdk_regex ]]; then
        echo "[+] Valid Firebase Admin SDK Key."
    elif [[ $api_key =~ $jwt_private_key_regex ]]; then
        echo "[+] Valid JWT Private Key."
    elif [[ $api_key =~ $twitter_consumer_key_secret_regex ]]; then
        echo "[+] Valid Twitter Consumer Key/Secret."
    elif [[ $api_key =~ $oauth_client_secret_regex ]]; then
        echo "[+] Valid OAuth Client Secret."
    elif [[ $api_key =~ $heroku_api_key_regex ]]; then  # Validate Heroku API key
        echo "[+] Valid Heroku API Key."
    else
        echo "[-] Invalid API Key. Please check the format and try again."
    fi
}

# Take API key input from the user
read -p "Enter the API key to validate: " api_key

# Call the validation function
validate_api_key $api_key
