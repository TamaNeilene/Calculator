
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
        <link href="Style/stylesheet.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div class="formDiv">
        <h1>Age Calculator</h1>
        
        <form action="age" method="POST">
            <label for="age">
                Enter your age:
            </label>
            <input type="number" name="age" id="age">
            <br>
            <br>
            
            <button type="submit" name="B" id="B"> Age Next Birthday </button>
            
        </form>
        <p>${message}</p>
        
        <a href="arithmetic"> Arithmetic Calculator </a>
        
        </div>
    </body>
</html>
