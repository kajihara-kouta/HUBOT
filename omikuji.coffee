module.exports = (robot) ->
  robot.hear /おみくじ/, (msg) ->
    msg.send msg.random ["大吉", "中吉", "吉", "凶"]
