dicemes1 = [
  "えいっ!",
  "コロコロ..",
  "いい目でてね〜"
]
dicemes2 = [
  "だよっ",
  "だねっ！",
  "だったよ！"
]

module.exports = (robot) ->
  robot.hear /(サイコロ|ダイス)/, (msg) ->
    msg.send report msg, roll 2, 6

report = (msg, results) ->
  msg1 = msg.random dicemes1
  msg2 = msg.random dicemes2
  "#{msg1} #{results.join('と')} #{msg2}"

roll = (dice, sides) ->
  rollOne(sides) for i in [0...dice]

rollOne = (sides) ->
  1 + Math.floor(Math.random() * sides)
