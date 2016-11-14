module.exports = (robot) ->
  robot.hear /(.+)各種変更/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "いずれの情報の変更でしょうか"
    msg.send "1.住所変更　2.電話番号変更 3.口座変更 4.その他変更"

  robot.hear /(.+)住所変更/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "新しい住所を入力してください"
    msg.send "免許書・パスポート等の住所の分かるものを送付してください"
    msg.send "こちら　http://52.198.191.77/camera.php のリンクより画像をアップしてください"
    msg.send "内容入力が完了しましたら『入力完了』と入力ください"
    msg.send "その他、各種問合せを実施する場合は、『トップへ戻る』を入力してください"

  robot.hear /(.+)電話番号変更/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "入力完了しましたら以下の内容をコピペして送付してください"
    msg.send "内容入力が完了しましたら『入力完了』と入力ください"
    msg.send "その他、各種問合せを実施する場合は、『トップへ戻る』を入力してください"

  robot.hear /(.+)口座変更/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "キャッシュカード等の口座の分かるものを送付してください"
    msg.send "こちら　http://52.198.191.77/camera.php のリンクより画像をアップしてください"
    msg.send "内容入力が完了しましたら『入力完了』と入力ください"
    msg.send "その他、各種問合せを実施する場合は、『トップへ戻る』を入力してください"

  robot.hear /(.+)その他変更/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "その他の変更につきましては当窓口でお伺いすることが出来ません"
    msg.send "恐れ入りますが、以下のURLから変更いただくか、担当営業までご連絡ください"
    msg.send "URL: https://www.nissay.co.jp/keiyaku/senyo/login"
