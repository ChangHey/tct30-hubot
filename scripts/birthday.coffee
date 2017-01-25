# 
# Description:
#   誕生日を祝うよ
#
# Commands:
#   
#

cronJob = require('cron').CronJob

module.exports = (robot) ->

  bdSay = (slackname, name, month, day) ->
    # 「秒」「分」「時」「日」「月」「曜日」
    # 月は0～11
    month2 = Number(month)-1
    cronTime = "0 0 9 #{day} #{month2} *"
    new cronJob(cronTime, () =>
      envelope = room: "<メッセージ流したいチャンネル>"
      say = """
      ```
      #{month} 月 #{day} 日は #{name} の誕生日！
      　　　 .｡☆.ﾟ。.。
      　　｡:☆・。ﾟ◇*.ﾟ｡
      　 ･◎.★ﾟ.＠☆｡:*･.
      　.ﾟ★.｡;｡☆.:*◎.ﾟ｡
      　 :*｡_☆◎｡_★*･_ﾟ
      　　＼ξ　＼　 ζ／
      　　　∧_∧＼ ξ
      　　 (`･ω･)／
      　　 /　 つ∀o　ｵﾒﾃﾞﾄｳ!!
      ```
      HAPPY BIRTHDAY! @#{slackname}
      """
      robot.send envelope, say
    , null, true
    )

  bdSay('i03nomura1y', 'nomさん', 12, 22)
  bdSay('koji', 'kojiさん', 2, 8)
  bdSay('allen', 'nishiyamaさん', 7, 24)
  bdSay('masaya', 'masayaさん', 7, 14)
  