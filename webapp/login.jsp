<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 300px;
            padding: 15px;
            /*background-color: white;*/
            margin: 0 auto;
            margin-top: 100px;
            border: 1px solid black;
            border-radius: 40px;
        }
        .container input[type="text"], .container input[type="password"] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
          
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .container button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        
    </style>
    
</head>
<form action="customerlist.html">
<body>
    <div class="container">
        <label for="uname"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="uname" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>

       <input type="button" value="Login" style="background:chocolate"
				onclick="window.location.href='list-student.jsp'; return false;"
				class="add-student-button" />
<br>
    </div>
</body>
</form>
</html>