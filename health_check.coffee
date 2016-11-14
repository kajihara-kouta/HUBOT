request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /健康相談/i, (msg) ->
    options =
      url: "http://eonet.jp/health/healthcare/health66.html"
      timeout: 2000

    request options, (err, res, body) ->
      $ = cheerio.load body

      case1 = $('title').text()
      case2 = $('div.right_normal').text()
      case3 = $('h3.linettl pt00').text()
      case4 = $('p.mb20').text()
      case5 = $('li.mb10').text()
      msg.send "ケース1#{case1}"
      msg.send "ケース2#{case2}"
      msg.send "ケース3#{case3}"
      msg.send "ケース4#{case4}"
      msg.send "ケース5#{case5}"
