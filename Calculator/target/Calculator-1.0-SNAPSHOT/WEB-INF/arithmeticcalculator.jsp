<%-- 
    Document   : arithmeticcalculator
    Created on : Jan. 17, 2022, 4:57:32 p.m.
    Author     : parso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
         <link href="Style/stylesheet.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        
        <div class="formDiv">
            <h1>Arithmetic Calculator</h1>
        <form action="arithmetic" method="POST">
            <label for="valueOne">First: </label>
            <input type="number" name="valueOne" id="valueOne" value=${valueOne}>
          
            <br>
            <br>
            <label for="valueTwo">Second: </label>
            <input type ="number" name="valueTwo" id="valueTwo" value=${valueTwo}>
            <br>
            <br>
            <button type="submit" name="add" id="add" value="add">+</button>
            <button type="submit" name="subtract" id="subtract" value="subtract">-</button>
            <button type="submit" name="multiply" id="multiply" value="multiply">*</button>
            <button type="submit" name="divide" id="divide" value="divide">%</button>
            </br>
         
        </form>
                 <p> Result:${message}</p>
            </br>
            <a href="age"> Age Calculator </a>
        </div>
    </body>
</html>
