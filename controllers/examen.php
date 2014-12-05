<?php
/**
 * Created by PhpStorm.
 * User: Rogelio
 * Date: 13/10/14
 * Time: 02:01 PM
 */
////controlador
///error_reporting(0);
if(isset($_REQUEST['enviar'])){
    switch($_REQUEST['enviar']){
        case "enviar":
            require_once('../db/db.php');
            require_once('../clases/Examen.php');
            $cont=0;
            for($x=1; $x<10; $x++){
                $Resp= $_REQUEST["respuesta$x"];

                $sql="SELECT * FROM test";
                $query=mysql_query($sql) or die("Error");
                $num=mysql_num_rows($query);
                for($x1=0; $x1<$num;$x1++){
                    $respuesta=mysql_result($query,$x1,'respuesta');
                    ///echo"$Resp,$respuesta<br>";
                    if($Resp==$respuesta){

                        $cont ++;
                    }
                }
            }
            $sqlx = "Select calif From testdetalle LIMIT 0,1";
            $queryx = mysql_query($sqlx) OR DIE ("Error en consulta".mysql_error());
            $max = mysql_result($queryx,0,'calif');
            echo"$max,$cont";
            if($max<$cont){
                $ex = new Examen();
                $ex->actualizacalif($_COOKIE['idu'],$cont);
                echo"llega";
            }
            else{

                setCookie('calif',$cont,time()+10,'/');
                print "<meta http-equiv='refresh' content='0;
		         url=../inicio.php?url=usuarios'>";
            }
        break;
    }
}
else{
    $contenido = "..";
    $titulo="Examen Contesta Correctamente las preguntas";
    $variables = array('titulo'=>$titulo,'contenido'=>$contenido);
    view('examen',$variables);
}
?>