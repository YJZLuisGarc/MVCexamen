<?php
/**
 * Created by PhpStorm.
 * User: Rogelio
 * Date: 16/10/14
 * Time: 08:08 PM
 */
$titulo = "Resultado";
$contenido = "Este es tu resultado";
$usuario = $_COOKIE['user'];
$exa = new Examen();
$variables =
    array('titulo'=>$titulo,'contenido'=>$contenido,'nombre'=>$usuario,'resul'=>$exa->muestraCalif($_COOKIE['idu']));
view('usuarios',$variables);



