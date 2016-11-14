module.exports = (robot) ->
  robot.enter (msg) ->
    msg.send "#{msg.message.user.name}さん！"
    msg.send "本日はどのようなご用件でしょうか？"
    msg.send "1.支払い確認 2.各種変更 3.お楽しみ機能"
