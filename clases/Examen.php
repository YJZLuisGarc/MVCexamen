<?php
////clase
class Examen{
private $name;
    public  function mostrarPreguntas(){
        echo'<div class="table-responsive">';
        echo'<form action="./controllers/examen.php">';
            echo'<table class="table table-striped">';
            echo'<tr><td colspan="3">Test</td></tr>';
         ////echo'<input type="text" name="accion" value="">';
        $sql = "SELECT * FROM test ORDER BY RAND() LIMIT 0,10;";
        $query = mysql_query($sql)OR DIE ("Error en consulta".mysql_error());
        $cont = 0;
        for ($x=1; $x<11; $x++){
            $pregunta = mysql_result($query,$cont,'pregunta');
            $r1 = mysql_result($query,$cont,'opcion1');
            $r2 = mysql_result($query,$cont,'opcion2');
            $r3 = mysql_result($query,$cont,'opcion3');
            echo" <tr> <td>$x</td><td>$pregunta</td><td>
           <select name='respuesta$x' id='respuesta$x' required=''>
           <option value='$r1'>$r1</option>
           <option value='$r2'>$r2</option>
           <option value='$r3'>$r3</option>
           </select>
           </td></tr>
           ";
            $cont= $cont+1;
        }
        echo'
    <tr><td colspan="2"><center><input type="submit" value="enviar" name="enviar" id="enviar" class="btn btn-xs btn-primary"></td></tr>

        </table>
        </div>

        </form>';
    }
    public function actualizacalif($id1,$calif){
        $sqlz="insert into testdetalle(iduser,calif) values($id1,$calif)  ";
        $queryz = mysql_query($sqlz)or die("Error de consulta 2".mysql_error());
        print "<meta http-equiv='refresh' content='0;
		url=../inicio.php?url=usuarios'>";
        exit;

    }
    public function muestraCalif($id){
        echo"<div class='alert alert-success'>";
        $sqlz='Select * from testdetalle Where id="$id"';
        $queryz = mysql_query($sqlz)or die("Error de consulta 2".mysql_error());
        $result =mysql_result($queryz,0,'calif');
            echo" Tu calificacion es$result";
        echo"</div>";
    }
}