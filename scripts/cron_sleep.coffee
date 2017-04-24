# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) -> 
  cronStop = new cronJob('0 59 23 * * *', () =>
    envelope = room: "#general"
#    robot.send envelope, "オヤスミナサイ　ﾌﾟﾂｰﾝ"
  )
  cronStop.start()
