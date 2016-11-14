module.exports = (robot) ->
  robot.hear /(.+)支払い/, (msg) ->
    msg.send "#{msg.match[0]}ですね"
    msg.send "お怪我や病気でしょうか"
    msg.send "1-1.ケガ　1-2.病気"

  robot.hear /1-1/, (msg) ->
    msg.send "#{msg.match[0]}ケガですね"
    msg.send "入院の有無もしくは入院期間について教えてください"
    msg.send "2-1.入院なし　2-2.2日間～4日間　2-3.5日～23日　2-4．24日以上"

  robot.hear /1-2/, (msg) ->
    msg.send "#{msg.match[0]}病気ですね"
    msg.send "入院の有無もしくは入院期間について教えてください"
    msg.send "2-1.入院なし　2-2.2日間～4日間　2-3.5日～23日　2-4．24日以上"

  robot.hear /2-1/, (msg) ->
    msg.send "#{msg.match[0]}入院なしですね"
    msg.send "手術の有無について教えてください"
    msg.send "3-1.手術あり　3-2.手術なし"

  robot.hear /2-2/, (msg) ->
    msg.send "#{msg.match[0]}2日間～4日間ですね"
    msg.send "手術の有無について教えてください"
    msg.send "3-1.手術あり　3-2.手術なし"

  robot.hear /2-3/, (msg) ->
    msg.send "#{msg.match[0]}5日～23日ですね"
    msg.send "手術の有無について教えてください"
    msg.send "3-1.手術あり　3-2.手術なし"

  robot.hear /2-4/, (msg) ->
    msg.send "#{msg.match[0]}24日以上ですね"
    msg.send "手術の有無について教えてください"
    msg.send "3-1.手術あり　3-2.手術なし"

  robot.hear /3-1/, (msg) ->
    msg.send "#{msg.match[0]}手術ありですね"
    msg.send "１．病気の種類や体の状態について教えて教えてください"
    msg.send "２．今後のやり取りについて電話・メール・チャットをお選びください"
    msg.send "３．こちらのリンクより診断書のアップをお願いいたします。⇒http://52.198
.191.77/camera.php"
    msg.send "内容入力が完了しましたら「入力完了」と入力ください"
    msg.send "その他、各種問合せを実施する場合は、『トップへ戻る』を入力してくだ
さい"

  robot.hear /3-2/, (msg) ->
    msg.send "#{msg.match[0]}手術なしですね"
    msg.send "１．病気の種類や体の状態について教えて教えてください"
    msg.send "２．今後のやり取りについて電話・メール･チャットをお選びください"
    msg.send "３．こちらのリンクより診断書のアップをお願いいたします。⇒http://52.198
.191.77/camera.php"
    msg.send "内容入力が完了しましたら『入力完了』と入力ください"
    msg.send "その他、各種問合せを実施する場合は、『トップへ戻る』を入力してくだ
さい"

  robot.hear /トップへ戻る/,(msg) ->
    msg.send "#{msg.message.user.name}さん！"
    msg.send "本日はどのようなご用件でしょうか？"
    msg.send "1.支払い確認 2.各種変更 3.お楽しみ機能"
