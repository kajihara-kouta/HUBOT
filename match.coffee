module.exports = (robot) ->
  robot.respond /(.+)駅/, (msg) ->
    msg.send "#{msg.match[0]}"
    msg.send "#{msg.match[1]}"
