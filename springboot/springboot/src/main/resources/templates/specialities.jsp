<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      margin: 0;
      padding: 20px;
    }

    .cards-list {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      max-width: 1200px;
      margin: 0 auto;
    }

    .card {
      width: 200px;
      height: 200px;
      background-color: white;
      border-radius: 20px;
      margin: 20px;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 20px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s;
    }

    .card:hover {
      transform: scale(1.05);
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .card .card_image img {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      object-fit: cover;
    }

    .card .card_title {
      text-align: center;
      margin-top: 10px;
      font-weight: bold;
      font-size: 18px;
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
<script>
   // search-box open close js code
let navbar = document.querySelector(".navbar");
let searchBox = document.querySelector(".search-box .bx-search");
// let searchBoxCancel = document.querySelector(".search-box .bx-x");

searchBox.addEventListener("click", ()=>{
  navbar.classList.toggle("showInput");
  if(navbar.classList.contains("showInput")){
    searchBox.classList.replace("bx-search" ,"bx-x");
  }else {
    searchBox.classList.replace("bx-x" ,"bx-search");
  }
});

// sidebar open close js code
let navLinks = document.querySelector(".nav-links");
let menuOpenBtn = document.querySelector(".navbar .bx-menu");
let menuCloseBtn = document.querySelector(".nav-links .bx-x");
menuOpenBtn.onclick = function() {
navLinks.style.left = "0";
}
menuCloseBtn.onclick = function() {
navLinks.style.left = "-100%";
}


// sidebar submenu open close js code
let htmlcssArrow = document.querySelector(".htmlcss-arrow");
htmlcssArrow.onclick = function() {
 navLinks.classList.toggle("show1");
}
let moreArrow = document.querySelector(".more-arrow");
moreArrow.onclick = function() {
 navLinks.classList.toggle("show2");
}
let jsArrow = document.querySelector(".js-arrow");
jsArrow.onclick = function() {
 navLinks.classList.toggle("show3");
}
</script>
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
  <br>
  <br>
  <br>
  <br>
  <br>
  <h1 style="text-align: center;">Specialties</h1>
  <div class="cards-list">
    <div class="card">
      <div class="card_image"> <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/cardiology_icon.svg" alt="Cardiology Image" /> </div>
      <div class="card_title">
      <a href="https://en.wikipedia.org/wiki/Cardiology" style="text-decoration: none; color: black;">
        Cardiology
        </a>
      </div>
    </div>
  
    <div class="card">
      <div class="card_image"> <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/neurology.svg" alt="Neurology Image" /> </div>
      <div class="card_title">
      <a href="https://en.wikipedia.org/wiki/Neurology" style="text-decoration: none; color: black;">
        Neurology
        </a>
      </div>
    </div>
  
    <div class="card">
      <div class="card_image"> <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/gastroenterology.svg" alt="Gastroenterology Image" /> </div>
      <div class="card_title">
      <a href="https://en.wikipedia.org/wiki/Neurology" style="text-decoration: none; color: black;">
        Gastroenterology
      </div>
    </div>
  
    <div class="card">
      <div class="card_image"> <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/orthopaedic.svg" alt="Orthopaedic Image" /> </div>
      <div class="card_title">
      <a href="https://en.wikipedia.org/wiki/Orthopedic_surgery" style="text-decoration: none; color: black;">
        Orthopaedic
        </a>
      </div>
    </div>
  
    <div class="card">
      <div class="card_image"> <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/oncology_icon.svg" alt="Oncology Image" /> </div>
      <div class="card_title">
      <a href="https://en.wikipedia.org/wiki/Oncology" style="text-decoration: none; color: black;">
        Oncology
        </a>
      </div>
    </div>
  
    <div class="card">
      <div class="card_image"> <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/gynecology.svg" alt="Gynecology Image" /> </div>
      <div class="card_title">
      <a href="https://en.wikipedia.org/wiki/Gynaecology" style="text-decoration: none; color: black;">
        Gynecology
        </a>
      </div>
    </div>
  
    <div class="card">
      <div class="card_image"> <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/pulmonology.svg" alt="Pulmonology Image" /> </div>
      <div class="card_title">
      <a href="https://en.wikipedia.org/wiki/Pulmonology" style="text-decoration: none; color: black;">
        Pulmonology
        </a>
      </div>
    </div>
  
    <div class="card">
      <div class="card_image"> <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/rheumatology.svg" alt="Rheumatology Image" /> </div>
      <div class="card_title">
      <a href="https://en.wikipedia.org/wiki/Rheumatology" style="text-decoration: none; color: black;">
        Rheumatology
        </a>
      </div>
    </div>
    <div class="card">
      <div class="card_image"> <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/dermatology.svg" /> </div>
      <div class="card_title">
      <a href="https://en.wikipedia.org/wiki/Dermotology" style="text-decoration: none; color: black;">
        Dermotology
        </a>
      </div>
    </div>
    <div class="card">
      <div class="card_image"> <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/plasticsurgery.svg" alt="Rheumatology Image" /> </div>
      <div class="card_title">
      <a href="https://en.wikipedia.org/wiki/Plastic_surgery" style="text-decoration: none; color: black;">
        Plastic Surgery
        </a>
      </div>
    </div>
  </div>
</body>
</html>