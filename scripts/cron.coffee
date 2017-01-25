# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronStart = new cronJob('0 30 7 * * *', () =>
    envelope = room: "#general"
    robot.send envelope, "ガシャンガシャン オハヨウゴザイマッスル"
  )
  cronStart.start()

