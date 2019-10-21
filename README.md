# Slack Typing Indicator
Maintains a constant presence of "User is typing..." in whatever Slack
channels are defined.

![Demo](./assets/take2.gif)

[Video Demo](./assets/typing_typer_demo.mp4)

Review [HISTORY.md](./HISTORY.md) for a review of novel commands used here.
Posted for posterity.

## Install

```
bundle install
rake channels
```

Requires exporting environment variable `SLACK_API_TOKEN`.

Visit [Slack's website to generate tokens](https://api.slack.com/custom-integrations/legacy-tokens).

Add the token you get there to your `.bash_profile`

**.bash_profile**
```bash
export SLACK_API_TOKEN="xoxp-XXXXXXXXXX-XXXXXXXXXXXX-XXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" 
```
