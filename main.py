import os
import slack

client = slack.WebClient(token=os.environ['SLACK_API_TOKEN'])

import pdb; pdb.set_trace()
response = client.chat_postMessage(
    channel='#random',
    text="lol")

assert response["ok"]
assert response["message"]["text"] == "Hello world!"
