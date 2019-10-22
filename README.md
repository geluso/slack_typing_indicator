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
Make sure you're logged in via their web client in order to get tokens for
different workspaces to appear.

Add the token you get there to your `.bash_profile`

**.bash_profile**
```bash
export SLACK_API_TOKEN="xoxp-XXXXXXXXXX-XXXXXXXXXXXX-XXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" 
```

Modify the `interested_channels` array of strings in
**[bin/channeler.rb](https://github.com/geluso/slack_typing_indicator/blob/master/bin/channeler.rb#L17)**
to target the names of which channels you want to maintain typing presence in.

```ruby
interested_channels = [
  'seattle-web-071519',
  'seattle-web-080519',
  'seattle-web-082619',
  'seattle-random',
  'hot-nuggets',
  'all-about-code',
  'seattle-brogue',
]
```
