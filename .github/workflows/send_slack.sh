name: Slack Send workflow
on: [workflow_dispatch]
jobs:
  SlackSendMsg:
    name: SlackSendMsg Job
    runs-on: ubuntu-latest
    steps:
      - name: checkout the code
        uses: actions/checkout@v3
      - name: build
        run: |
          pwd
          ls -lrtR
          bash send_slack.sh
