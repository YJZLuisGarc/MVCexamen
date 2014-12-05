<?php
function view($plantilla,$variables=array()){
    extract($variables);
    require_once('views/'.$plantilla.'.tpl.php');
 }
   function controller($nombre){
   if(empty($nombre))
       $nombre ='examen';
       $archivo = "controllers/$nombre.php";
       if (file_exists($archivo))
           require_once($archivo);
       else
               echo"Error Archivo no encontrado";
   }