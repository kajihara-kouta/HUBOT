<html>
<head><title>index.php</title></head>
<body>
<?php
  $time = date("西暦Y年n月j日　Ah:i");
  print($time);
?>
<br>
<?php
header('Content-Type: text/html; charset=UTF-8');
echo "<h1>uploadディレクトリ</h1>";
if ($dir = opendir("/var/www/upload/")) {
    while (($file = readdir($dir)) !== false) {
        if ($file != "." && $file != "..") {
            echo "$file\n";
            echo "<img src=upload/$file width=150 height=200><br>\n";
        }
    }
    closedir($dir);
}
?>
</body>
</html>
