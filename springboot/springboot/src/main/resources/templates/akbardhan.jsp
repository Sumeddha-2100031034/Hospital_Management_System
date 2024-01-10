
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
    /* Define the body style */
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 20px; /* Add some margin to the body */
    }

    /* Define the card container style */
    .card-container {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      margin-top: 5%;
    }

    /* Define the card style */
    .card {
      background-color: #ffffff;
      color: #333333;
      padding: 20px;
      font-family: Roboto, sans-serif; /* Use a different font family */
      border: 1px solid #0a2a5f;
      width: 300px;
      margin: 10px;
      display: flex;
      flex-direction: column;
      align-items: center;
      border-radius: 15px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s;
    }

    /* Define the card hover style */
    .card:hover {
      transform: translateY(-10px);
    }

    /* Define the card picture style */
    .card img {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      object-fit: cover;
      margin-bottom: 20px;
      transition: transform 0.3s, filter 0.3s; /* Add transitions for hover effects */
    }

    /* Define the card picture hover style */
    .card img:hover {
      transform: scale(1.1); /* Scale up the image on hover */
      filter: brightness(1.2); /* Add a brightness filter on hover */
    }

    /* Define the card name style */
    .card h1 {
      font-size: 24px;
      margin: 0;
      margin-bottom: 10px;
      text-align: center;
    }

    /* Define the card details style */
    .card p {
      font-size: 18px;
      margin: 0;
      margin-bottom: 5px;
      text-align: center;
    }

    /* Define the button style */
    .card button {
      width: 100%;
      padding: 12px;
      border: none;
      outline: none;
      background-color: #0a2a5f; 
      color: white; 
      font-size: 18px; 
      border-radius: 5px; 
      cursor: pointer; 
      transition: background-color 0.3s; 
      
     /* Use a linear gradient for the button background color */ 
     background-image : linear-gradient(to right, #0a2a5f, #357b91); 
         
     }
    
     /* Define the button hover style */ 
     .card button:hover { 
       background-color : #357b91 ; /* Use a lighter blue color on hover */ 
     } 
   </style>
   <script>
     function bookAppointment(doctorName) {
       alert(`Confirm Appointment with ${doctorName}!`);
     }
   </script>
   
   <!-- navbar css -->
   
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
   
     <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        #container {
            width: 80%;
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        #header {
            text-align: center;
            background-color: #007BFF;
            color: #fff;
            padding: 10px;
            border-radius: 5px 5px 0 0;
        }

        #searchContainer {
            display: flex;
            align-items: center;
            padding: 15px;
        }

        #searchIcon {
            padding: 10px;
            color: #007BFF;
        }

        #searchInput {
            flex: 1;
            border: none;
            padding: 10px;
            border-bottom: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            font-size: 16px;
        }

        #results {
            display: none;
            border: 1px solid #ccc;
            border-top: none;
            max-height: 150px;
            overflow-y: auto;
        }

        #results a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: #333;
            transition: background-color 0.2s;
        }

        #results a:hover {
            background-color: #f0f0f0;
        }
        .search-container {
    display: flex;
    align-items: center;
    margin: 10px 0;
}

/* Style for the search input */
#searchInput {
    flex: 1;
    border: none;
    padding: 10px;
    border-bottom: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
    font-size: 16px;
}

/* Style for the dropdown button */
.dropbtn {
    background-color: #007BFF;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    outline: none;
}

/* Style for the dropdown content (hidden by default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Style for dropdown items */
.dropdown-content a {
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    transition: background-color 0.2s;
    color: #333;
}

/* Style for dropdown items on hover */
.dropdown-content a:hover {
    background-color: #f0f0f0;
}

/* Show the dropdown when the button is clicked */
.dropdown:hover .dropdown-content {
    display: block;
}
        
    </style>
   
</head>
<body>
<nav>
  <div class="navbar">
    <i class='bx bx-menu'></i>
    <div class="logo"><a href="#">Aster</a></div>
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
            <li><a href="#">Find a Doctor</a></li>
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
        <div id="searchContainer" class="search-container">
    <!-- Search Input -->
    <input type="text" id="searchInput" placeholder="Search items">
     <span id="searchIcon">🔍</span>
</div>

<!-- Search Results Dropdown -->
<div class="dropdown">
    <div class="dropdown-content" id="results">
        <!-- Results will be displayed here as dropdown items -->
        
    </div>
</div>

        </form>
</nav>
<script>
        const searchInput = document.getElementById("searchInput");
        const resultsDiv = document.getElementById("results");

        // Close search results when clicking outside the search input
        document.addEventListener("click", function (event) {
            if (event.target !== searchInput) {
                resultsDiv.style.display = "none";
            }
        });

        // Sample data (you can fetch data from an API or a database)
        const items = ["All","Dr. Ajay Bahadur", "Dr. Akhilesh Jain", "Dr A K Bardhan", "Dr A Sreenivas Kumar", "Dr A Ashesh Kumar", "Dr Anuradha Sridhar", "Dr Arvind Sukumaran", "Dr B V A Ranga Reddy"];

        searchInput.addEventListener("input", function () {
            const searchValue = searchInput.value.toLowerCase();
            const filteredItems = items.filter(item => item.toLowerCase().includes(searchValue));

            displayResults(filteredItems);
        });

        function displayResults(filteredItems) {
            resultsDiv.innerHTML = "";
            if (filteredItems.length === 0) {
                resultsDiv.style.display = "none";
                return;
            }

            filteredItems.forEach(item => {
            	if (item === 'All') {
            		const link = document.createElement("a");
                     link.href = "/book_appointment"; // You can set a link URL here if needed
                     link.textContent = item;
                     resultsDiv.appendChild(link);
                }
            	if (item === 'Dr. Ajay Bahadur') {
            		const link = document.createElement("a");
                     link.href = "/ajaybahadur"; // You can set a link URL here if needed
                     link.textContent = item;
                     resultsDiv.appendChild(link);
                } 
            	else if (item === 'Dr. Akhilesh Jain') {
            		const link = document.createElement("a");
                    link.href = "/akileshjain"; // You can set a link URL here if needed
                    link.textContent = item;
                    resultsDiv.appendChild(link);
                } 
            	else if (item === 'Dr A K Bardhan') {
            		const link = document.createElement("a");
                    link.href = "/akbardhan"; // You can set a link URL here if needed
                    link.textContent = item;
                    resultsDiv.appendChild(link);
                } 
            	else if (item === 'Dr A Sreenivas Kumar') {
            		const link = document.createElement("a");
                    link.href = "/sreenivaskumar"; // You can set a link URL here if needed
                    link.textContent = item;
                    resultsDiv.appendChild(link);
                } 
            	else if (item === 'Dr A Asehsh Kumar') {
            		const link = document.createElement("a");
                    link.href = "/book_appointment"; // You can set a link URL here if needed
                    link.textContent = item;
                    resultsDiv.appendChild(link);
                } 
            	else if (item === 'Dr Anuradha Sridhar') {
            		const link = document.createElement("a");
                    link.href = "/book_appointment"; // You can set a link URL here if needed
                    link.textContent = item;
                    resultsDiv.appendChild(link);
                } 
            	else if (item === 'Dr Arvind Sukumaran') {
            		const link = document.createElement("a");
                    link.href = "/book_appointment"; // You can set a link URL here if needed
                    link.textContent = item;
                    resultsDiv.appendChild(link);
                } 
            	else if (item === 'Dr B V A Ranga Reddy') {
            		const link = document.createElement("a");
                    link.href = "/book_appointment"; // You can set a link URL here if needed
                    link.textContent = item;
                    resultsDiv.appendChild(link);
                } 
               
            });

            resultsDiv.style.display = "block";
        }
    </script>
<br>
<br>
<br>
<br>


   <div class="card">
      <!-- Create a card picture -->
      <img src="https://cdn.askapollo.com/live/images/doctors/cardiology/dr-a-k-bardhan-cardiology-in-kolkata.png" alt="Doctor">
      <!-- Create a card name -->
      <h1>Dr A K Bardhan</h1>
      <!-- Create a card details -->
      <p>Gastroenterology</p>
      <p>5 years of experience</p>
      <p>Vijay Nagar, Indore</p>
      <p>Mon-Sat, 11 AM - 4 PM</p>
      <!-- Create a button to book an appointment -->
      <a href="/appointment">
      <button onclick="bookAppointment('Dr A K Bardhan')">Book an Appointment</button>
      </a>
    </div>
    

     <!-- Add more card elements as needed -->
   </div>
 </body>
</html>