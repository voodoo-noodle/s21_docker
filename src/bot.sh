#!/bin/bash

STAGE_TYPE=$1
BOT_TOKEN="6359482389:AAFvuani7l7PuRs1SXsye7AnO5hEDZl0ico"
CHAT_ID="272733305"
TIME="10"

URL="https://api.telegram.org/bot$BOT_TOKEN/sendMessage"
TEXT="Deploy status: $1%0A%0AProject:+$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s --max-time $TIME -d "chat_id=$CHAT_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null