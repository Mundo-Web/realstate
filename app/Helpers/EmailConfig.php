<?php

namespace App\Helpers;

use PHPMailer\PHPMailer\PHPMailer;
use App\Models\General;
class EmailConfig
{
    static  function config($name, $mensaje): PHPMailer
    {   
        $general = General::first();
        $mail = new PHPMailer(true);
        // $mail->SMTPDebug = SMTP::DEBUG_SERVER;
        $mail->isSMTP();
        $mail->Host = 'mail.mprealstate.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'info@mprealstate.com';
        $mail->Password = 'mprealstate2025';
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        $mail->Port = 465;
        $mail->Subject = '' . $name . ', '.$mensaje. '';
        $mail->CharSet = 'UTF-8';
        $mail->setFrom('info@mprealstate.com', 'MP Real State');
        $mail->addBCC($general->email, 'Atencion al cliente' );
        return $mail;
    }
}
