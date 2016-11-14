module.exports = (robot) ->
  robot.hear /(.+)お楽しみ/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "現在お楽しみ機能を拡張中です・・・"
    msg.send "1.地図情報 2.株関係 3.占い機能 4.画像検索"

  robot.hear /(.+)地図情報/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "where is 場所と入力してください。"

  robot.hear /(.+)株関係/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "株予想と入力してください。"

  robot.hear /(.+)占い機能/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "おみくじと入力ください。"

  robot.hear /(.+)画像検索/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "photozou 画像名と入力してください"

