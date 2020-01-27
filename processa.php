<?php

include_once ("conexao.php");

$nome = $_POST['nome'];
$email = $_POST['email'];
$profissao = $_POST['profissao'];

$sql = "insert into usuarios (nome,email,profissao) values ('$nome','$email','$profissao')";
$salvar = mysqli_query($conexao,$sql);

$linhas = mysqli_affected_rows($conexao);



mysqli_close($conexao);


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
            <h1> Confirmação de cadastro</h1>
            <hr><br><br>
            
            <?php
            if($linhas == 1){
                print "cadastro efetuado com sucesso!";
            }else{
                print "cadastro não efetuado.<br> já existe um usuario com esse email!";
            }
            ?>
            
        </section>
            
        </div>
        
    </body>
    
</html>
