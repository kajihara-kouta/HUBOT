request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /stock (.*)/i, (msg) ->
    code = msg.match[1]
    options =
      url: 'http://stocks.finance.yahoo.co.jp/stocks/detail/?code=' + code
      timeout: 2000

    request options, (err, res, body) ->
      $ = cheerio.load body
      company_name = $('th.symbol h1').text()
      current_price = $('td.stoksPrice').eq(1).text()
      msg.send "#{company_name}: #{current_price}円"
