var nodemailer = require("nodemailer");

//SMTPサーバーの設定

nodemailer.SMTP = {
    host: "smtp.gmail.com",
    port: 465,
    ssl: true,
    use_authentication: true,
    user: "kkjjhhrr0224@gmail.com",
    pass: "kota0224"
};

//メール情報の作成

var message = {
    sender: 'kkjjhhrr0224@gmail.com',
    to: 'kkjjhhrr0224@gmail.com',
    subject: "受付番号123-456789について",
    body: "受付番号123-456789にて梶原皓太さんより問合せがありました。\n受付内容についてはチャットを確認ください。\nケガによる支払い確認の問合せおよび口座変更受付となります\n対応よろしくお願いいたします。\nfrom ボット君より",
    debug: true,
    attachments:[
       {
            filename: '受付情報.jpg',
            filePath: '/var/www/upload/Reception_data.jpg'
       }
    ]
};

// メール送信のコールバック関数

var callback = function(error, success){
    if(error){
        console.log("Error occured");
        console.log(error.message);
        return;
    }

    if(success){
        console.log("Message sent successfully!");

    }else{
        console.log("Message failed, reschedule!");
    }
};

// メール送信

var mail;

try{

    mail = nodemailer.send_mail(message, callback);

}catch(e) {

    console.log("Caught Exception",e);

}
