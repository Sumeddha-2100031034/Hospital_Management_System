
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

 <style>
    /* Define the form style */
    .form {
      background-color: #f9f9f9; /* Light gray background color */
      color: #333; /* Dark text color */
      padding: 30px; /* Add some padding */
      font-family: 'Arial', sans-serif; /* Use a sans-serif font */
      border: 1px solid #ccc; /* Add a light gray border */
      width: 400px; /* Set the width of the form */
      margin: 0 auto; /* Center the form */
      border-radius: 15px; /* Add some border radius */
      margin-top: 110px;
    }

    /* Define the form header style */
    .form-header {
      background-color: #3E8DA8; /* Dark blue background color */
      color: white; /* White text color */
      padding: 15px; /* Add some padding */
      font-size: 24px; /* Use a large font size for the header text */
      border-top-left-radius: 15px; /* Add some border radius to the top left corner */
      border-top-right-radius: 15px; /* Add some border radius to the top right corner */
      text-align: center; /* Center the text */
    }

    /* Define the form label style */
    .form label {
      display: block; /* Display the label as a block element */
      margin-top: 10px; /* Add some margin above the label */
      margin-bottom: 5px; /* Add some margin below the label */
      font-weight: bold; /* Use a bold font weight for the label text */
    }

    /* Define the form input style */
    .form input {
      display: block; /* Display the input as a block element */
      width: calc(100% - 22px); /* Set the width of the input to fill the container minus padding and border */
      padding: 10px; /* Add some padding */
      border: 1px solid #ccc; /* Add a light gray border */
      outline: none; /* Remove outline */
      border-radius: 5px; /* Add some border radius */
      margin-bottom: 10px; /* Add some margin below the input */
      box-sizing: border-box; /* Include padding and border in the element's total width and height */
    }

    /* Define the form select style */
    .form select {
      width: calc(100% - 22px); /* Set the width of the select to fill the container minus padding and border */
    }

    /* Define the form checkbox style */
    .form input[type=checkbox] {
      display: inline-block; /* Display the checkbox as an inline-block element */
      width: auto; /* Set the width of the checkbox to fit its content */
      margin-top: 5px; /* Add some margin above the checkbox */
      margin-bottom: 10px; /* Add some margin below the checkbox */
    }

    /* Define the form button style */
    .form button {
      width: calc(100% - 22px); /* Set the width of the button to fill the container minus padding and border */
      padding: 10px; /* Add some padding */
      border: none; /* Remove border */
      outline: none; /* Remove outline */
      background-color: #0a2a5f; /* Dark blue background color */
      color: white; /* White text color */
      font-size: 18px; /* Use a medium font size for the button text */
      border-radius: 5px; /* Add some border radius */
      cursor: pointer; /* Change the cursor to a pointer on hover */
      transition: background-color 0.3s; /* Add a transition effect for the background color */
      box-sizing: border-box; /* Include padding and border in the element's total width and height */
    }

    /* Define the form button hover style */
    .form button:hover {
      background-color: #357b91; /* Use a lighter blue color on hover */
    }
  </style>

<style>
	  /* Googlefont Poppins CDN Link */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  min-height: 100vh;
}
nav{
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  height: 70px;
  background: #3E8DA8;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
  z-index: 99;
}
nav .navbar{
  height: 100%;
  max-width: 1250px;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: auto;
  /* background: red; */
  padding: 0 50px;
}
.navbar .logo a{
  font-size: 30px;
  color: #fff;
  text-decoration: none;
  font-weight: 600;
}
nav .navbar .nav-links{
  line-height: 70px;
  height: 100%;
}
nav .navbar .links{
  display: flex;
}
nav .navbar .links li{
  position: relative;
  display: flex;
  align-items: center;
  justify-content: space-between;
  list-style: none;
  padding: 0 14px;
}
nav .navbar .links li a{
  height: 100%;
  text-decoration: none;
  white-space: nowrap;
  color: #fff;
  font-size: 15px;
  font-weight: 500;
}
.links li:hover .htmlcss-arrow,
.links li:hover .js-arrow{
  transform: rotate(180deg);
  }

nav .navbar .links li .arrow{
  /* background: red; */
  height: 100%;
  width: 22px;
  line-height: 70px;
  text-align: center;
  display: inline-block;
  color: #fff;
  transition: all 0.3s ease;
}
nav .navbar .links li .sub-menu{
  position: absolute;
  top: 70px;
  left: 0;
  line-height: 40px;
  background: #3E8DA8;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
  border-radius: 0 0 4px 4px;
  display: none;
  z-index: 2;
}
nav .navbar .links li:hover .htmlCss-sub-menu,
nav .navbar .links li:hover .js-sub-menu{
  display: block;
}
.navbar .links li .sub-menu li{
  padding: 0 22px;
  border-bottom: 1px solid rgba(255,255,255,0.1);
}
.navbar .links li .sub-menu a{
  color: #fff;
  font-size: 15px;
  font-weight: 500;
}
.navbar .links li .sub-menu .more-arrow{
  line-height: 50px;
}
.navbar .links li .htmlCss-more-sub-menu{
  /* line-height: 40px; */
}
.navbar .links li .sub-menu .more-sub-menu{
  position: absolute;
  top: 0;
  left: 100%;
  border-radius: 0 4px 4px 4px;
  z-index: 1;
  display: none;
}
.links li .sub-menu .more:hover .more-sub-menu{
  display: block;
}
.navbar .search-box{
  position: relative;
   height: 40px;
  width: 40px;
}
.navbar .search-box i{
  position: absolute;
  height: 100%;
  width: 100%;
  line-height: 40px;
  text-align: center;
  font-size: 22px;
  color: #fff;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
}
.navbar .search-box .input-box{
  position: absolute;
  right: calc(100% - 40px);
  top: 80px;
  height: 60px;
  width: 300px;
  background: #3E8DA8;
  border-radius: 6px;
  opacity: 0;
  pointer-events: none;
  transition: all 0.4s ease;
}
.navbar.showInput .search-box .input-box{
  top: 65px;
  opacity: 1;
  pointer-events: auto;
  background: #3E8DA8;
}
.search-box .input-box::before{
  content: '';
  position: absolute;
  height: 20px;
  width: 20px;
  background: #3E8DA8;
  right: 10px;
  top: -6px;
  transform: rotate(45deg);
}
.search-box .input-box input{
  position: absolute;
  top: 50%;
  left: 50%;
  border-radius: 4px;
  transform: translate(-50%, -50%);
  height: 35px;
  width: 280px;
  outline: none;
  padding: 0 15px;
  font-size: 16px;
  border: none;
}
.navbar .nav-links .sidebar-logo{
  display: none;
}
.navbar .bx-menu{
  display: none;
}
@media (max-width:920px) {
  nav .navbar{
    max-width: 100%;
    padding: 0 25px;
  }

  nav .navbar .logo a{
    font-size: 27px;
  }
  nav .navbar .links li{
    padding: 0 10px;
    white-space: nowrap;
  }
  nav .navbar .links li a{
    font-size: 15px;
  }
}
@media (max-width:800px){
  nav{
    /* position: relative; */
  }
  .navbar .bx-menu{
    display: block;
  }
  nav .navbar .nav-links{
    position: fixed;
    top: 0;
    left: -100%;
    display: block;
    max-width: 270px;
    width: 100%;
    background:  #3E8DA8;
    line-height: 40px;
    padding: 20px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    transition: all 0.5s ease;
    z-index: 1000;
  }
  .navbar .nav-links .sidebar-logo{
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .sidebar-logo .logo-name{
    font-size: 25px;
    color: #fff;
  }
    .sidebar-logo  i,
    .navbar .bx-menu{
      font-size: 25px;
      color: #fff;
    }
  nav .navbar .links{
    display: block;
    margin-top: 20px;
  }
  nav .navbar .links li .arrow{
    line-height: 40px;
  }
nav .navbar .links li{
    display: block;
  }
nav .navbar .links li .sub-menu{
  position: relative;
  top: 0;
  box-shadow: none;
  display: none;
}
nav .navbar .links li .sub-menu li{
  border-bottom: none;

}
.navbar .links li .sub-menu .more-sub-menu{
  display: none;
  position: relative;
  left: 0;
}
.navbar .links li .sub-menu .more-sub-menu li{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.links li:hover .htmlcss-arrow,
.links li:hover .js-arrow{
  transform: rotate(0deg);
  }
  .navbar .links li .sub-menu .more-sub-menu{
    display: none;
  }
  .navbar .links li .sub-menu .more span{
    /* background: red; */
    display: flex;
    align-items: center;
    /* justify-content: space-between; */
  }

  .links li .sub-menu .more:hover .more-sub-menu{
    display: none;
  }
  nav .navbar .links li:hover .htmlCss-sub-menu,
  nav .navbar .links li:hover .js-sub-menu{
    display: none;
  }
.navbar .nav-links.show1 .links .htmlCss-sub-menu,
  .navbar .nav-links.show3 .links .js-sub-menu,
  .navbar .nav-links.show2 .links .more .more-sub-menu{
      display: block;
    }
    .navbar .nav-links.show1 .links .htmlcss-arrow,
    .navbar .nav-links.show3 .links .js-arrow{
        transform: rotate(180deg);
}
    .navbar .nav-links.show2 .links .more-arrow{
      transform: rotate(90deg);
    }
}
@media (max-width:370px){
  nav .navbar .nav-links{
  max-width: 100%;
} 
}
  </style>

</head>
<body>

<nav>
  <div class="navbar">
    <i class='bx bx-menu'></i>
    <div class="logo"><a href="/home">Aster</a></div>
    <div class="nav-links">
      <div class="sidebar-logo">
        <span class="logo-name">Aster</span>
        <i class='bx bx-x' ></i>
      </div>
      <ul class="links">
        <li><a href="/specialities">CenterOfExcellence</a></li>
        <li>
          <a href="#">PatientCare</a>
          <i class='bx bxs-chevron-down htmlcss-arrow arrow  '></i>
          <ul class="htmlCss-sub-menu sub-menu">
            <li><a href="/book_appointment">Find a Doctor</a></li>
            <li><a href="#">Pay Online</a></li>
            <li><a href="#">Medical Feed</a></li>
            <li class="more">
              <span><a href="#">LifeStyle</a>
                <i class='bx bxs-chevron-right arrow more-arrow'></i>
              </span>
              <ul class="more-sub-menu sub-menu">
                <li><a href="#">Our Doctors Talk</a></li>
                <li><a href="https://ur.life/">UR life</a></li>
                <li><a href="#">Health Library</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li>
          <a href="#">HealthInformation</a>
          <i class='bx bxs-chevron-down js-arrow arrow '></i>
          <ul class="js-sub-menu sub-menu">
            <li><a href="CenterOfExcellence.html">Diseases and Conditions</a></li>
            <li><a href="#">Tests and Procedures</a></li>
            <li><a href="#">Medical Glossary Decoded</a></li>
          </ul>
        </li>
        <li><a href="/aboutus">ABOUT US</a></li>
        <li><a href="/contact">CONTACT US</a></li>
        <li><a href="/login">LOGIN</a></li>
      </ul>
    </div>
    <form>
    <div class="search-box">
      <i class='bx bx-search'></i>
      <div class="input-box">
        <input type="text" placeholder="Search...">
      </div>
    </div>
    </form>
  </div>
</nav>

  <!-- Create a form element -->
  <form class="form" action="https://buy.stripe.com/test_14keXo0y1dK70wM3cc" th:object="${app2}">
    <!-- Create a form header -->
    <div class="form-header">
      Book Appointment
    </div>
    <!-- Create a form field for first name -->
    <label for="first-name">First Name</label>
    <input type="text" id="fn" name="fn" placeholder="Enter your first name">
    <!-- Create a form field for last name -->
    <label for="last-name">Last Name</label>
    <input type="text" id="ln" name="ln" placeholder="Enter your last name">
    <!-- Create a form field for phone -->
    <label for="phone">Phone</label>
    <input type="tel" id="phone" name="phone" placeholder="Enter your phone number">
    <!-- Create a form field for email -->
    <label for="email">Email</label>
    <input type="email" id="mail" name="mail" placeholder="Enter your email address">
    <!-- Create a form field for date of birth -->
    <label for="dob">Date of Birth</label>
    <input type="date" id="dob" name="dob">
    <!-- Create a form field for gender -->
    <label for="gender">Gender</label>
    <select id="gender" name="gender">
      <option value="">Select your gender</option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
      <option value="Other">Other</option>
    </select>
    <!-- Create a form field for appointment date and time -->
    <label for="date">Appointment Date and Time</label>
    <input type="datetime-local" id="app_dt" name="app_dt">
    <!-- Create a form field for doctor's name -->
    <label for="doctor">Doctor's Name</label>
    <input type="text" id="doctor" >
    <!-- Create a form field for terms and conditions -->
    <input type="checkbox" id="terms">
    <label for="terms">I agree to the terms and conditions.</label>
    <!-- Create a button to confirm the appointment -->
    <input type="submit" value="Confirm Appointment">
  </form>
</body>
</html>