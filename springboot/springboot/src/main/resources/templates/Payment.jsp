<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Daily UI #007 | Settings</title>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.0.10/css/all.css'><link rel="stylesheet" href="./style.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
      text-align: center;
    }

    h1 {
      color: #333;
    }

    form {
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      display: inline-block;
      text-align: left;
    }

    fieldset {
      border: 1px solid #ddd;
      padding: 10px;
      margin: 10px 0;
    }

    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="number"],
    select,
    textarea {
      width: 100%;
      padding: 10px;
      margin: 5px 0;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    input[type="radio"],
    input[type="checkbox"] {
      margin-right: 5px;
    }

    button {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    button.reset {
      background-color: #f44336;
    }

    button:hover {
      background-color: #45a049;
    }

    button.reset:hover {
      background-color: #d32f2f;
    }
  </style>

</head>
<body>
  <h1>Payment Form</h1>
  <form action="/add_pay" method="post" th:object="${p2 }">
    <fieldset>
      <legend>Contact Information</legend>
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" placeholder="Enter Your Name">
      <br>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" placeholder="Enter Your Email">
      <br>
      <label>Gender:</label>
      <input type="radio" id="male" value="male" name="gender">
      <label for="male">Male</label>
      <input type="radio" id="female" value="female" name="gender">
      <label for="female">Female</label>
      <br>
      <label for="address">Address:</label>
      <textarea name="address" id="address" rows="5" cols="50">Enter address here</textarea>
      <br>
      <label for="pin">Pincode:</label>
      <input type="number" name="pin" id="pin" maxlength="6" placeholder="Enter postal pin">
    </fieldset>
    <fieldset>
      <legend>Payment Information</legend>
      <label for="cardtype">Card Type:</label>
      <select name="cardtype" id="cardtype">
        <option value="Visa">Visa</option>
        <option value="MasterCard">Master Card</option>
        <option value="Rupay">Rupay</option>
      </select>
      <br>
      <label for="cardnumber">Card Number:</label>
      <input type="text" name="cardnumber" id="cardnumber" maxlength="16" placeholder="Enter card number">
      <br>
      <label for="cvv">CVV:</label>
      <input type="number" name="cvv" id="cvv" maxlength="3" placeholder="CVV">
      <br>
      <label for="expiry">Expiry:</label>
      <input type="date" name="expiry" id="expiry">
      <br><br>
      <button type="submit">Pay Now</button>
      <button type="reset" class="reset">Reset</button>
    </fieldset>
  </form>
</body>
</html>
