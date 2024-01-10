
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .error-container {
            text-align: center;
        }

        .error-code {
            font-size: 6rem;
            color: #e74c3c;
        }

        .error-message {
            font-size: 1.5rem;
            margin-top: -10px;
        }

        .back-button {
            margin-top: 20px;
        }
    </style>
</head>
<body>
 <div class="error-container">
        <div class="error-code">404</div>
        <div class="error-message">Page Not Found</div>
        <a href="/home" class="back-button">Back to Home</a>
    </div>
</body>
</html>