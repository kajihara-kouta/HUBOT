child_process = require('child_process')
module.exports = (robot) ->
  robot.hear /入力完了/, (msg) ->
    child_process.exec "sh /opt/myhubot/shell/sample.sh"
    msg.send("受付番号123-456789で受付完了いたしました!")
    msg.send("後程担当の●●よりご連絡させて頂きます！")
    msg.send("ご連絡がない場合は、03-5714-5658までご連絡ください")
