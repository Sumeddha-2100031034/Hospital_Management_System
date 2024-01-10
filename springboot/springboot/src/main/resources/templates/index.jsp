<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	
	*, *:before, *:after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  background: rgb(255, 255, 255);
}

.slider {
  overflow: hidden;
  position: relative;
  height: 100vh;
  color: #fff;
}
.slider__top-heading {
  z-index: 12;
  position: absolute;
  left: 0;
  top: 100px;
  width: 100%;
  text-align: center;
  font-size: 16px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  transition: all 0.5s 1s;
  transform: translateY(-30px);
  opacity: 0;
}
.slider.s--ready .slider__top-heading {
  transform: translateY(0);
  opacity: 1;
}
.slider__slides {
  position: relative;
  height: 100%;
}
.slider__slide {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
}
.slider__slide.s--active {
  pointer-events: auto;
}
.slider__slide-content {
  z-index: 6;
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  height: 100%;
  text-transform: uppercase;
  line-height: 1;
}
.slider__slide-subheading {
  margin-bottom: 20px;
  font-size: 24px;
  letter-spacing: 2px;
  transform: translateY(20px);
  opacity: 0;
  transition: 0.5s;
}
.slider__slide.s--active .slider__slide-subheading {
  transition-delay: 0.65s;
  opacity: 1;
  transform: translateY(0);
}
.slider__slide-heading {
  display: flex;
  margin-bottom: 20px;
  font-size: 60px;
  letter-spacing: 12px;
}
.slider__slide-heading span {
  display: block;
  opacity: 0;
  transform: translateY(-60px);
  transition: all 0.3333333333s;
}
.slider__slide.s--prev .slider__slide-heading span {
  transform: translateY(60px);
}
.slider__slide.s--active .slider__slide-heading span {
  opacity: 1;
  transform: translateY(0);
}
.slider__slide-heading span:nth-child(1) {
  transition-delay: 0s;
}
.slider__slide.s--active .slider__slide-heading span:nth-child(1) {
  transition-delay: 0.3333333333s;
}
.slider__slide-heading span:nth-child(2) {
  transition-delay: 0.1s;
}
.slider__slide.s--active .slider__slide-heading span:nth-child(2) {
  transition-delay: 0.4333333333s;
}
.slider__slide-heading span:nth-child(3) {
  transition-delay: 0.2s;
}
.slider__slide.s--active .slider__slide-heading span:nth-child(3) {
  transition-delay: 0.5333333333s;
}
.slider__slide-heading span:nth-child(4) {
  transition-delay: 0.3s;
}
.slider__slide.s--active .slider__slide-heading span:nth-child(4) {
  transition-delay: 0.6333333333s;
}
.slider__slide-heading span:nth-child(5) {
  transition-delay: 0.4s;
}
.slider__slide.s--active .slider__slide-heading span:nth-child(5) {
  transition-delay: 0.7333333333s;
}
.slider__slide-heading span:nth-child(6) {
  transition-delay: 0.5s;
}
.slider__slide.s--active .slider__slide-heading span:nth-child(6) {
  transition-delay: 0.8333333333s;
}
.slider__slide-heading span:nth-child(n+7) {
  transition-delay: 0.6s;
}
.slider__slide.s--active .slider__slide-heading span:nth-child(n+7) {
  transition-delay: 0.9333333333s;
}
.slider__slide-readmore {
  position: relative;
  font-size: 14px;
  text-transform: lowercase;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
  transform: translateY(-20px);
  cursor: pointer;
  opacity: 0;
  transition: 0.5s;
}
.slider__slide.s--active .slider__slide-readmore {
  transition-delay: 0.65s;
  opacity: 1;
  transform: translateY(0);
}
.slider__slide-readmore:before {
  content: "";
  position: absolute;
  left: -2px;
  top: -3px;
  width: calc(100% + 4px);
  height: calc(100% + 6px);
  background: rgba(255, 255, 255, 0.4);
  transform: scaleX(0.3);
  transform-origin: 0 50%;
  transition: transform 0.3s;
}
.slider__slide-readmore:hover:before {
  transform: scaleX(1);
}
.slider__slide-parts {
  position: absolute;
  left: 0;
  top: 0;
  display: flex;
  width: 100%;
  height: 100%;
}
.slider__slide-parts:after {
  content: "";
  z-index: 5;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.1);
}
.slider__slide-part {
  position: relative;
  width: 25%;
  height: 100%;
}
.slider__slide-part-inner {
  overflow: hidden;
  position: relative;
  width: 100%;
  height: 100%;
  background-size: 0 0;
  background-repeat: no-repeat;
  transition: transform 0.5s ease-in-out;
}
.slider__slide-part-inner:before {
  content: "";
  position: absolute;
  width: 100vw;
  height: 100%;
  background-image: inherit;
  background-size: cover;
  background-position: center center;
  transition: opacity 0.25s;
  opacity: 0;
}
.slider__slide-part:nth-child(1) .slider__slide-part-inner {
  z-index: 3;
  transition-delay: 0.24s;
  transform: translateX(-32.5%);
}
.slider__slide.s--active .slider__slide-part:nth-child(1) .slider__slide-part-inner {
  transition-delay: 0.28s;
}
.slider__slide-part:nth-child(1) .slider__slide-part-inner:before {
  left: 0vw;
  transition-delay: 0.365s;
}
.slider__slide.s--active .slider__slide-part:nth-child(1) .slider__slide-part-inner:before {
  transition-delay: 0.28s;
}
.slider__slide-part:nth-child(2) .slider__slide-part-inner {
  z-index: 2;
  transition-delay: 0.16s;
  transform: translateX(-65%);
}
.slider__slide.s--active .slider__slide-part:nth-child(2) .slider__slide-part-inner {
  transition-delay: 0.36s;
}
.slider__slide-part:nth-child(2) .slider__slide-part-inner:before {
  left: -25vw;
  transition-delay: 0.285s;
}
.slider__slide.s--active .slider__slide-part:nth-child(2) .slider__slide-part-inner:before {
  transition-delay: 0.36s;
}
.slider__slide-part:nth-child(3) .slider__slide-part-inner {
  z-index: 1;
  transition-delay: 0.08s;
  transform: translateX(-97.5%);
}
.slider__slide.s--active .slider__slide-part:nth-child(3) .slider__slide-part-inner {
  transition-delay: 0.44s;
}
.slider__slide-part:nth-child(3) .slider__slide-part-inner:before {
  left: -50vw;
  transition-delay: 0.205s;
}
.slider__slide.s--active .slider__slide-part:nth-child(3) .slider__slide-part-inner:before {
  transition-delay: 0.44s;
}
.slider__slide-part:nth-child(4) .slider__slide-part-inner {
  z-index: 0;
  transition-delay: 0s;
  transform: translateX(-130%);
}
.slider__slide.s--active .slider__slide-part:nth-child(4) .slider__slide-part-inner {
  transition-delay: 0.52s;
}
.slider__slide-part:nth-child(4) .slider__slide-part-inner:before {
  left: -75vw;
  transition-delay: 0.125s;
}
.slider__slide.s--active .slider__slide-part:nth-child(4) .slider__slide-part-inner:before {
  transition-delay: 0.52s;
}
.slider__slide.s--active .slider__slide-part-inner {
  transform: translateX(0);
  transition-timing-function: ease;
}
.slider__slide.s--active .slider__slide-part-inner:before {
  opacity: 1;
}
.slider__control {
  z-index: 100;
  position: absolute;
  left: 50px;
  top: 50%;
  width: 50px;
  height: 50px;
  margin-top: -25px;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.4);
  transform: translateX(-50px);
  opacity: 0;
  transition: all 0.5s 1s;
  cursor: pointer;
}
.slider__control:before {
  content: "";
  position: absolute;
  left: 50%;
  top: 50%;
  width: 20px;
  height: 20px;
  margin-left: -10px;
  margin-top: -10px;
  border: 2px solid #000;
  border-bottom: none;
  border-right: none;
  transform: translateX(5px) rotate(-45deg);
}
.slider__control--right {
  left: auto;
  right: 50px;
  transform: translateX(50px);
}
.slider__control--right:before {
  transform: translateX(-5px) rotate(135deg);
}
.slider.s--ready .slider__control {
  transform: translateX(0);
  opacity: 1;
}

.icon-link {
  z-index: 100;
  position: absolute;
  left: 5px;
  bottom: 5px;
  width: 32px;
}
.icon-link img {
  width: 100%;
  vertical-align: top;
}
.icon-link--twitter {
  left: auto;
  right: 5px;
}
</style>

<!--cards-->

<style>
	@import url("https://fonts.googleapis.com/css?family=Space+Mono");
.wrapper {
  display: flex;
  height: 40vh;
  align-items: center;
  box-sizing: border-box;
}

.card {
  margin: 0 3vw;
  width: 15vw;
  flex-shrink: 0;
  padding: 2vw;
  box-sizing: border-box;
  position: relative;
  border-radius: 3px;
  border: 2px solid #000;
  display: flex;
  justify-content: space-between;
  flex-direction: column;
  box-shadow: 4px 4px 0 rgba(0, 0, 0, 0.1);
}
.card-title {
  transition: 0.3s;
  text-align: center;
  font-family: "Space Mono", monospace;
  margin: 2vw 0 0;
  font-size: 1.2vw;
  opacity: 0;
  transform: scale(0.7);
}
.card:last-child:after {
  content: "";
  width: 6vw;
  position: absolute;
  height: 100%;
  right: -6vw;
  top: 0;
}
.card img {
  max-width: 70%;
  max-height: 50vh;
  opacity: 0;
  margin: auto;
  display: block;
  transition: 0.35s;
  transform: rotate(6deg) translate(0, 40px) scaleY(0.6);
}
.card.isVisible img {
  max-width: 100%;
  opacity: 1;
  transform: none;
}
.card.isVisible .card-title {
  opacity: 1;
  transform: none;
  transition-delay: 0.1s;
}
.card:first-child {
  margin-left: 6vw;
}
</style>

  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      background-color: #f9f9f9;
    }

    .container {
      width: 90%;
      max-width: 800px;
      margin: 20px auto;
      border: 2px solid #3E8DA8;
      border-radius: 10px;
      background-color: #fff;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      padding: 20px;
    }

    .header {
      background-color: #3E8DA8;
      padding: 20px;
      border-bottom: 2px solid #2A6D7C;
      border-radius: 10px 10px 0 0;
      color: white;
      text-align: center;
    }

    .header h1 {
      font-size: 28px;
      margin-bottom: 10px;
    }

    .content {
      display: flex;
      align-items: center;
      padding: 20px;
    }

    .image {
      width: 50%;
    }

    .image img {
      width: 100%;
      height: auto;
      border-radius: 10px;
    }

    .text {
      width: 50%;
      padding: 0 20px;
    }

    .text p {
      font-size: 16px;
      line-height: 1.6;
      margin-bottom: 10px;
    }

    .text ul {
      list-style-type: disc;
      padding-left: 20px;
      margin-bottom: 10px;
    }

    .text li {
      font-size: 16px;
      line-height: 1.6;
    }

    .button {
      display: inline-block;
      padding: 15px 30px;
      background-color: #3E8DA8;
      color: white;
      text-align: center;
      text-decoration: none;
      font-size: 18px;
      border-radius: 5px;
      transition: background-color 0.3s;
      border: none;
      cursor: pointer;
    }

    .button:hover {
      background-color: #1A4A55;
    }
  </style>

<!--footer-->

<style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      background-color: #f0f0f0; /* Light gray background */
    }

    .footer-container {
      width: 100%;
      background-color: #3E8DA8; /* Blue background for footer */
      padding: 10px; /* Adjusted padding */
      text-align: center;
      color: white; /* White text color */
      border-top: 2px solid #3E8DA8; /* Slightly darker blue top border */
      position: relative; /* Not fixed */
    }

    .footer-container .copyright {
      font-size: 14px;
      margin-bottom: 5px; /* Adjusted margin */
    }

    .footer-container .social-icons a {
      margin: 0 10px; /* Adjusted margin */
      color: white; /* White icon color */
      font-size: 24px; /* Adjusted icon size */
      text-decoration: none;
      transition: color 0.3s;
    }

    .footer-container .social-icons a:hover {
      color: #3E8DA8; /* Lighter blue on hover */
    }
  </style>
</head>
<body>
<!-- partial:index.partial.html -->
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
        <li><a href="/branches">Branches</a></li>
        <li><a href="/aboutus">ABOUT US</a></li>
        <li><a href="/contact">CONTACT US</a></li>
        <li><a href="/profile">PROFILE</a></li>
        <li><a href="/home">LOGOUT</a></li>
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
<!-- partial -->
  <script  src="./script.js"></script>

<div id="app"></div>
<a href="https://dribbble.com/shots/3774469-T-R-A-V-E-L-E-R" target="_blank" class="icon-link">
  <img src="http://icons.iconarchive.com/icons/uiconstock/socialmedia/256/Dribbble-icon.png">
</a>
<a href="https://twitter.com/NikolayTalanov" target="_blank" class="icon-link icon-link--twitter">
  <img src="https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-128.png">
</a>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/react/15.6.1/react.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/react/15.6.1/react-dom.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/classnames/2.2.5/index.min.js'></script><script  src="./script.js"></script>
  <script  src="./courosel.js"></script>
<script>
class CitiesSlider extends React.Component {
	  constructor(props) {
	    super(props);

	    this.IMAGE_PARTS = 4;

	    this.changeTO = null;
	    this.AUTOCHANGE_TIME = 4000;

	    this.state = { activeSlide: -1, prevSlide: -1, sliderReady: false };
	  }

	  componentWillUnmount() {
	    window.clearTimeout(this.changeTO);
	  }

	  componentDidMount() {
	    this.runAutochangeTO();
	    setTimeout(() => {
	      this.setState({ activeSlide: 0, sliderReady: true });
	    }, 0);
	  }

	  runAutochangeTO() {
	    this.changeTO = setTimeout(() => {
	      this.changeSlides(1);
	      this.runAutochangeTO();
	    }, this.AUTOCHANGE_TIME);
	  }

	  changeSlides(change) {
	    window.clearTimeout(this.changeTO);
	    const { length } = this.props.slides;
	    const prevSlide = this.state.activeSlide;
	    let activeSlide = prevSlide + change;
	    if (activeSlide < 0) activeSlide = length - 1;
	    if (activeSlide >= length) activeSlide = 0;
	    this.setState({ activeSlide, prevSlide });
	  }

	  render() {
	    const { activeSlide, prevSlide, sliderReady } = this.state;
	    return /*#__PURE__*/(
	      React.createElement("div", { className: classNames('slider', { 's--ready': sliderReady }) }, /*#__PURE__*/
	      React.createElement("p", { className: "slider__top-heading" }, "Travelers"), /*#__PURE__*/
	      React.createElement("div", { className: "slider__slides" },
	      this.props.slides.map((slide, index) => /*#__PURE__*/
	      React.createElement("div", {
	        className: classNames('slider__slide', { 's--active': activeSlide === index, 's--prev': prevSlide === index }),
	        key: slide.city }, /*#__PURE__*/

	      React.createElement("div", { className: "slider__slide-content" }, /*#__PURE__*/
	      React.createElement("h3", { className: "slider__slide-subheading" }, slide.country || slide.city), /*#__PURE__*/
	      React.createElement("h2", { className: "slider__slide-heading" },
	      slide.city.split('').map(l => /*#__PURE__*/React.createElement("span", null, l))), /*#__PURE__*/

	      React.createElement("p", { className: "slider__slide-readmore" }, "read more")), /*#__PURE__*/

	      React.createElement("div", { className: "slider__slide-parts" },
	      [...Array(this.IMAGE_PARTS).fill()].map((x, i) => /*#__PURE__*/
	      React.createElement("div", { className: "slider__slide-part", key: i }, /*#__PURE__*/
	      React.createElement("div", { className: "slider__slide-part-inner", style: { backgroundImage: `url(${slide.img})` } }))))))), /*#__PURE__*/






	      React.createElement("div", { className: "slider__control", onClick: () => this.changeSlides(-1) }), /*#__PURE__*/
	      React.createElement("div", { className: "slider__control slider__control--right", onClick: () => this.changeSlides(1) })));


	  }}


	const slides = [
	{
	  city: 'Vijayawada',
	  country: 'Andhra',
	  img: 'https://www.asterhospitals.in/sites/default/files/2023-08/best-hospital-in-kollam.jpg'},

	{
	  city: 'Hyderabad',
	  country: 'Telangana',
	  img: 'https://www.breachcandyhospital.org/sites/default/files/gva-sliderlayer-upload/13.png' },

	{
	  city: 'Banglore',
	  country: 'Karnataka',
	  img: 'https://www.piramalrevanta.com/wp-content/uploads/2022/09/20220906-article-banner-01.jpg'},
	{
	  city: 'Delhi',
	  country: 'Delhi',
	  img: 'https://thumbs.dreamstime.com/b/doctor-explain-health-check-document-male-patient-medical-clinic-hospital-mental-health-health-doctor-concept-doctor-143145474.jpg' },

	];



	ReactDOM.render( /*#__PURE__*/React.createElement(CitiesSlider, { slides: slides }), document.querySelector('#app'));

</script>

<!--cards-->

<div class="wrapper">
  <div class="card" onclick="book_appointment">
    <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/bookappt_icon.svg" />
		<a href="/book_appointment" style="text-decoration: none; color: black;">
			<h2 class="card-title">Book Appointment</h2>
		</a>
  </div>
  </form>
  <div class="card">
    <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/consultonline_icon.svg" />
    <a href="/buy_medicine" style="text-decoration: none; color: black;">
    <h2 class="card-title">Buy Medicine</h2>
    </a>
  </div>
  <div class="card">
    <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/buymedicines_icon.svg" />
    <h2 class="card-title">Consult Online</h2>
  </div>
  <div class="card">
    <img src="https://www.apollohospitals.com/wp-content/themes/apollohospitals/assets-v3/images/finddoctor_icon.svg" />
    <h2 class="card-title">View Health Record</h2>
  </div>
</div>
<script src="./card_js.js"></script>

<script >
const cards = document.querySelectorAll(".card");

function isElementInViewport(el) {
  const rect = el.getBoundingClientRect();
  return (
    rect.top >= 0 &&
    rect.left >= 0 &&
    rect.bottom <= (
    window.innerHeight || document.documentElement.clientHeight) &&
    rect.right <= (window.innerWidth || document.documentElement.clientWidth));

}

function isCardVisible() {
  for (card of cards) {
    isElementInViewport(card) ?
    card.classList.add("isVisible") :
    card.classList.remove("isVisible");
  }
}

function book_appointment() {
      window.location.href = "https://www.apollo247.com/?utm_campaign=BAA_Home_Banner&utm_source=Apollo_Hospitals&utm_medium=Organic"; // Replace with the URL you want to redirect to
    }
document.addEventListener("DOMContentLoaded", isCardVisible);
window.addEventListener("scroll", isCardVisible);
window.addEventListener("resize", isCardVisible);
</script>
<!--box-->

<div class="container">
    <div class="header">
      <h1>Get proactive - Be ProHealth!</h1>
    </div>
    <div class="content">
      <div class="image">
        <img src="https://cdn.apollohospitals.com/dev-apollohospitals/2023/05/ProHealth.jpg" alt="Hospital Management System">
      </div>
      <div class="text">
        <p>ProHealth is a personalized proactive health program that brings cutting-edge diagnostics with risk analysis, doctor-curated health packages, and preventive health check-ups.</p>
        <ul>
          <li>Know your health status with advanced tests and reports</li>
          <li>Get customized health plans based on your needs and goals</li>
          <li>Stay healthy and fit with regular follow-ups and guidance</li>
        </ul>
        <a href="https://www.askapollo.com/apollo-prohealth?utm_source=apollohospitals_sticky_button&utm_medium=owned_media&utm_campaign=pro_health_sticky_button" class="button">Book ProHealth now!</a>
      </div>
    </div>
  </div>


<!--footer-->

<<div class="footer-container">
    <div class="copyright">� 2023 Aster</div>
    <div class="social-icons">
      <a href="#" target="_blank"><i class='bx bxl-facebook'></i></a>
      <a href="#" target="_blank"><i class='bx bxl-twitter'></i></a>
      <a href="#" target="_blank"><i class='bx bxl-linkedin'></i></a>
      <a href="#" target="_blank"><i class='bx bxl-instagram'></i></a>
    </div>
  </div>
</body>
</html>