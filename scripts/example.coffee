# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

  
module.exports = (robot) ->

#  robot.hear /badger/i, (res) ->
#    res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"
  
  robot.hear /(.*)疲れた(.*)/i, (msg) ->
    msg.send msg.random ["お疲れ様です.ゆっくり休んでください(੭ु´･ω･`)੭ु⁾⁾", "弱気になったとき、まず一ヵ月後の自分を想像してみる。それが自分の好きな姿だとしたら、そのために何をするべきかを考える。そうすれば、少なくともその日までは目的意識を保ち続けることができるby修造", "独りで苦しんでるんだろう 辛いだろう？ 暗いんだろう？ じゃあエースをねらえを歌ってみろよ！！！by修造", "みんな！！竹になろうよ 竹ってさあ台風が来てもしなやかじゃない。台風負けないんだよ雪が来てもね　おもいっきりそれを跳ね除ける！！力強さがあるんだよそう、みんな！！！竹になろう！！！バンブー！！！by修造", "僕が偉そうに話してることは全て、これまで僕ができなかったこと by修造"]

  robot.hear /(.*)帰りたい(.*)/i, (msg) ->
    msg.send msg.random ["もう...いいんだ...もう休め！！", "どうした。文句があるなら、自分でプレーしろ！by修造", "人は完璧を求める。しかし、完璧だと思った時から全てがやり直しになるby修造", "じゃんけんの必勝法は、強く握り締めたグーを出すことby修造", "苦しいか？ 笑え！！by修造"]

  robot.hear /(.+)から選んで/, (msg) ->
    items = msg.match[1].split(/[　・、\s]+/)
    item = msg.random items
    msg.reply "#{item}にしましょう！！"

  robot.hear /オレがHubot/i, (msg) ->
    if msg.message.user.name is "slackbot"
      msg.send msg.random ["私が本物です", "( ;∀;)ﾜﾀｼﾊｺｺﾆｲﾙﾖｰ", ".....", "......ﾁｯ", "|дﾟ)ｺﾗｺﾗｺﾗｰ"]

  robot.hear /hatebu (.*)/i, (msg) ->
      url = msg.match[1]
      msg.http("http://api.b.st-hatena.com/entry.count?url="+url)
      .get() (err, res, body) ->
        msg.send "There are #{JSON.parse(body)}."

  