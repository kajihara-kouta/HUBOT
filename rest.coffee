module.exports = (robot) ->
  robot.hear /休憩/i, (msg) ->
    msg.send "お疲れ様！"
  robot.hear /休憩/i, (msg) ->
    msg.send "お疲れ様！"
  robot.hear /休んでいいの/i, (msg) ->
    msg.send "今日は特別だよ！"
  robot.hear /ありがとう/i, (msg) ->
    msg.send "どういたしまして！"
  robot.hear /おなか減った/i, (msg) ->
    msg.send "肉まん食べたい！"
  robot.hear /焼肉/i, (msg) ->
    msg.send "やっぱり寿司でしょ！"
  robot.hear /胃潰瘍/i, (msg) ->
    msg.send "加入している保険を教えてください"
  robot.hear /日本生命/i, (msg) ->
    msg.send "いつ頃加入されたでしょうか？"
  robot.hear /2000年/i, (msg) ->
    msg.send "●●●円の保険金がおりそうです。詳細はこちら⇒http://xxxxxx"
