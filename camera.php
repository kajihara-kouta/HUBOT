<!DOCTYPE html>
<html lang="ja">
  <head>
  <meta charset="utf-8" />
    <title>ファイルアップロードサイト</title>
    <meta name="viewport" content="width=device-width">
   <h1>アップロードサイト</h1>
   <style>
   h1 {
	padding: 1em;
	border: 3px solid #ccc;
	border-radius: 3em .7em 2em .7em/.7em 2em .7em 3em;
      }
   h2 {
	padding: .5em .75em;
	background-color: #f6f6f6;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
      }
   h3 {
	position: relative;
	padding: 1em 4em 1em 1em;
	-webkit-background: linear-gradient(-155deg, rgba(0, 0, 0, 0) 1.5em, #f6f6f6 0%);
	background: linear-gradient(-155deg, rgba(0, 0, 0, 0) 1.5em, #f6f6f6 0%);
	border-radius: 6px;
}
   h3::after {
	position: absolute;
	top: 0;
	right: 0;
	content: '';
	width: 1.65507em;
	height: 3.5493em;
	background: -webkit-linear-gradient(to left bottom, rgba(0, 0, 0, 0) 50%, rgba(0, 0, 0, .1) 0%, rgba(0, 0, 0, .2));
	background: linear-gradient(to left bottom, rgba(0, 0, 0, 0) 50%, rgba(0, 0, 0, .1) 0%, rgba(0, 0, 0, .2));
	border-bottom-left-radius: 6px;
	box-shadow: -.2em .2em .3em -.1em rgba(0, 0, 0, .15);
	-webkit-transform: translateY(-1.89424em) rotate(-40deg);
	transform: translateY(-1.89424em) rotate(-40deg);
	-webkit-transform-origin: bottom right;
	transform-origin: bottom right;
}
   h4 {
	padding: .75em 1em;
	border: 1px solid #ccc;
	border-top: 3px solid #3498db;
	background: -webkit-linear-gradient(top, #fff 0%, #f0f0f0 100%);
	background: linear-gradient(to bottom, #fff 0%, #f0f0f0 100%);
	box-shadow: 0 -1px 0 rgba(255, 255, 255, 1) inset;
      }
   h5 {
	position: relative;
	padding: 0 .5em .5em 1.7em;
	border-bottom: 1px solid #ccc;
      }
   h5::after {
	position: absolute;
	top: .4em;
	left: .4em;
	z-index: 2;
	content: '';
	width: 12px;
	height: 12px;
	background-color: #ccc;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
      }
   </style>
<h3>1.支払い確認：各種診断書</h3>
<h3>2.住所変更：免許書</h3>
<h3>3.口座変更：銀行カード</h3>
<?php
header('Content-Type: text/html; charset=UTF-8');
// 許可する拡張子
$array = array("jpg", "jpeg", "JPG", "png", "PNG", "gif");
// ファイルがアップロードされたものなら処理をする
if (is_uploaded_file(@$_FILES["upfile"]["tmp_name"])) {
    // ファイルの拡張子を取得する
    $finfo = pathinfo($_FILES["upfile"]["name"]);
    $ext = $finfo["extension"];
    // 拡張子チェック
    if (in_array($ext, $array)) {
        // 日時取得
        $time = date("Ynj_Ah:i");
        // テンポラリファイルを保存ディレクトリにコピー
        copy($_FILES["upfile"]["tmp_name"],"/var/www/upload/$time.$ext");
        echo "<p>ファイルアップロード完了</br>";
        // echo "<p>/upload/$time.jpg</br>";
        // リサイズ
        // 目的の画像から幅、高さを取得し,縮小値を計算します。
        list($width, $height) = getimagesize("/var/www/upload/$time.jpg");
        $new_width = $width * 0.1;
        $new_height = $height * 0.1;
        // 画像を読み込み再サンプリングして縮小します。
        $image_p = imagecreatetruecolor($new_width, $new_height);
        $image = imagecreatefromjpeg("/var/www/upload/$time.jpg");
        imagecopyresampled($image_p, $image, 0, 0, 0, 0, $new_width, $new_height, $width, $height);
        // 出力
        imagejpeg($image_p, "/var/www/upload/$time.jpg", 100);
    }
    else {
        echo "<p>許可されない拡張子です：".$ext;
        echo "<p>ファイル名：".$_FILES["upfile"]["name"];
    }
}
?>
<form action="./camera.php" method="post" enctype="multipart/form-data">
<div-div>
  <input type="file" name="upfile" accept="image/*">
  <input type="submit" value="アップロードする">
</div-div>
</form>
</body>
<h5>頂いた情報は本目的以外に使用いたしません</h5>
<h5>如何なる場合も第三者へ開示または提供いたしません</h5>
</html>
