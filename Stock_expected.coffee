#command @myhubot 株予想

request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.hear /株予想/, (msg) ->
    options =
      url: "http://info.finance.yahoo.co.jp/kabuyoso/"
      timeout: 2000

    request options, (err, res, body) ->
      $ = cheerio.load body
      
      percentageRed = $('em.percentageRed').eq(1).text()
      stock = $('h3.st02').eq(0).text()
      time = $('p strong').eq(0).text()
      msg.send "日本市場は#{time}"
      msg.send "この予想！自信あり！！"
      msg.send "勝率#{percentageRed}パーセント： #{stock}" 
