<?php

include_once("conexao.php");

$filtro = isset($_GET['filtro'])?$_GET['filtro']:"";


$sql = "select * from usuarios where profissao like '%$filtro%' order by nome";
$consulta = mysqli_query($conexao,$sql);
$registros = mysqli_num_rows($consulta);


?>

<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>Sistema de Cadastro</title>
        <link rel="stylesheet" href="_css/estilo.css">
    </head>
    
    <body>
        <div class="container">
        <nav>
        <ul class="menu">
            <a href="index.php"><li>cadastros</li></a>
            <a href="consultas.php"><li>consultas</li></a>
        </ul>    
        </nav>
            
        <section>
            <h1> Consultas</h1>
            <hr><br><br>
            
            <form method="get" action="">
                
            filtar por profissão <input type="text" name="filtro" class="campo" required autofocus;>
            <input type="submit" value="pesquisar" class="btn">
                
            </form>
            
            <?php
            
            
            print "Resultado da pesquisa com a palavra <strong> $filtro</strong>.<br><br>";
            print " $registros registros encontrados";
            print "<br><br>";
            
            while($exibirRegistros = mysqli_fetch_array($consulta)){
                
                $codigo = $exibirRegistros [0];
                $nome = $exibirRegistros [1];
                $email = $exibirRegistros [2];
                $profissao = $exibirRegistros [3];
                
                print "<article>";
                
                print "$codigo<br>";
                print "$nome<br>";
                print "$email<br>";
                print "$profissao";
                
                print "</article>";
            }
            
            mysqli_close($conexao);
            
            ?>
            
        </section>
            
        </div>
        
    </body>
    
</html>
