<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style type="text/css">
    font-weigth:bold
    </style>
    <script type="text/javascript">
        function validacion(){
            if(document.forms[0].isbn.value == "")
                alert("datos no validos");
            else
                documento.forms[0].submit();
        }
    </script>
    <body>
        <h1>Formulario Libro</h1>
        <form>
            ISNB: <input type="text" name="isbn"><br>
            Titulo: <input type="text" name="titulo"><br>
            Categoria: <input type="text" name="titulo"<br>
            <input type="button" value="Insertar" onclick="validacion()">
        </form>
        
    </body>
</html>
