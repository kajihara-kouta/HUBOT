request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /為替/i, (msg) ->
    options =
      url: "http://info.finance.yahoo.co.jp/fx/convert/?a=1&s=USD&t=JPY"
      timeout: 2000

    request options, (err, res, body) ->
      $ = cheerio.load body
      Doller = $('td.from').text()
      current_price = $('td.newest').text()
      msg.send "#{Doller}$: #{current_price}円"
