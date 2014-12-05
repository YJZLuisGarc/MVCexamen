<?php
    if (isset($_GET['idusuario']) AND isset($_GET['usuario'])){
        $iduser = $_GET['idusuario'];
        $user = $_GET['usuario'];

            setCookie('idu',$iduser,time()+7200,'/');
            setCookie('acceso',1,time()+7200,'/');////tiempo de cookie
            setCookie('user',$user,time()+7200,'/');////tiempo de cookie
            session_start();
            $_SESSION['idu']=$iduser;
            $_SESSION['acceso']=1;
            print"<meta http-equiv='refresh' content='0;
		    url=inicio.php'>";
            exit;
            }
    else{
        $msg='el usuario o password no son correctos';
        print "<meta http-equiv='refresh' content='0; url=index.php?msg=$msg'>";
        exit;
    }
