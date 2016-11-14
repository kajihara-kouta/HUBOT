module.exports = (robot) ->
  robot.hear /疲れた/i, (msg) ->
    msg.send "あとちょっと、頑張って!!"

