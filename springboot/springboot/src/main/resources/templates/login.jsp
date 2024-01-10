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
	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    
}
html,
body {
    width: 100%;
    height: 100%;
    font-size: 14px;
    background-image: url('https://rescribe.in/blog/wp-content/uploads/2020/10/image-3.jpg');
    background-size: cover; /* This property scales the image to cover the entire viewport */
    background-repeat: no-repeat;
   
}
.login-page-cont {
        position: relative;
        height: 100%;
        width: 100%;
    }

    .forms-cont {
        position: absolute;
        width: 500px;
        height: 500px;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        -webkit-transform: translate(-50%, -50%);
        perspective: 1000px;
        -webkit-perspective: 1000px;
    }

    .register-form,
    .login-form {
        background-color: #fff;
        box-shadow: -8px 5px 15px -8px rgba(0, 0, 0, 0.2);
        border-radius: 50%;
        width: 100%;
        height: 100%;
        padding: 15px 50px;
        text-align: center;
        position: absolute;
        left: 0;
        top: 0;
        transform: rotateY(0);
        -webkit-transform: rotateY(0);
        transition: all 1s cubic-bezier(0.3, 0.49, 0.51, 1.23);
        -webkit-transition: all 1s cubic-bezier(0.3, 0.49, 0.51, 1.23);
        z-index: 1;
    }

    .register-form {
        transform: rotateY(-180deg);
        -webkit-transform: rotateY(-180deg);
        z-index: 0;
    }

    .forms-cont.signin .register-form {
        transform: rotateY(0);
        -webkit-transform: rotateY(0);
        z-index: 1;
    }

    .forms-cont.signin .login-form {
        transform: rotateY(180deg);
        -webkit-transform: rotateY(180deg);
        z-index: 0;
    }

    .register-form form,
    .login-form form {
        position: absolute;
        left: 50%;
        top: 48%;
        transform: translate(-50%, -50%);
        -webkit-transform: translate(-50%, -50%);
        min-width: 80%;
    }

    .auth-logo {
        text-align: center;
        margin-bottom: 35px;
    }

    .auth-logo img {
        max-width: 70px;
        max-height: 70px;
        user-select: none;
        -webkit-user-drag: none;
    }

    .form-inputs .form-group {
        margin-bottom: 25px;
    }

    /* .form-inputs .form-group.form-check {
        margin-bottom: 22px;
    } */

    .form-inputs .form-group .input-label {
        color: #008498;
        font-weight: 600;
        font-size: 16px;
        margin-bottom: 3px;
    }

    .form-inputs .form-group .form-control {
        height: 40px;
        font-size: 16px;
        font-weight: 600;
        border-radius: 25px;
        line-height: 40px;
        text-align: center;
    }

    .form-inputs .form-group .form-control::placeholder {
        color: #c5c5c5;
        font-weight: 300;
    }

    .remember-check-box {
        color: #808080;
        display: inline-block;
        position: relative;
        padding-left: 20px;
        font-size: 16px;
        margin: 0;
    }

    .remember-check-box .form-check-input {
        margin: 0;
        width: 0;
        height: 0;
        opacity: 0;
    }

    .remember-check-box label {
        cursor: pointer;
    }

    .remember-check-box .check-box {
        position: absolute;
        border: 3px solid #008498;
        border-radius: 5px;
        width: 15px;
        height: 15px;
        margin: 0;
        left: 0;
        top: 5px;
    }

    .remember-check-box .check-box:before {
        content: "\f00c";
        color: #008498;
        position: absolute;
        left: -1px;
        top: -1px;
        font-size: 12px;
        visibility: hidden;
        opacity: 0;
        transition: all 0.2s ease-in-out;
        -webkit-transition: all 0.2s ease-in-out;
    }

    .remember-check-box .form-check-input[type=checkbox]:checked+.check-box::before {
        visibility: visible;
        opacity: 1;
    }

    .form-inputs .btn-block {
        border-radius: 25px;
        width: 65%;
        margin: 0 auto;
        height: 40px;
    }

    /* .register-form .auth-logo {
        margin-bottom: 16px;
    } 

    .register-form .form-inputs .form-group {
        margin-bottom: 8px;
    }*/

    .signin-btn {
        color: #9E9E9E;
        display: inline-block;
        position: absolute;
        padding: 5px;
        box-shadow: none !important;
        font-size: 14px;
        font-weight: 600;
      white-space: nowrap;
        top: 50%;
        left: 100%;
        transform: translate(10px, -50%);
        -webkit-transform: translate(10px, -50%);
    }

    .signin-btn:hover {
        color: #008498;
    }

    .signin-btn:active {
        transform: translate(10px, -50%) scale(0.9);
        -webkit-transform: translate(10px, -50%) scale(0.9);
    }
</style>
<script  src="./log.js"></script>
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



<div class="login-page-cont">
    <div class="forms-cont" id="signInSection">
        <div class="login-form">
            <form class="form-inputs" action="/check" method="post"  th:object="${sp3}" name="loginForm">
                <p class="auth-logo">
                    <img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0id2luZG93cy0xMjUyIj8+DQo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+DQo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iNDkyLjA2OXB4IiBoZWlnaHQ9IjQ5Mi4wNjlweCIgdmlld0JveD0iMCAwIDQ5Mi4wNjkgNDkyLjA2OSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDkyLjA2OSA0OTIuMDY5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8ZyBmaWxsPSIjMDA4NDk4Ij4NCgk8cGF0aCBkPSJNMjY4LjY1NiwxNDQuMjdjMC02Mi42OTctNTAuOTk4LTExMy42OTktMTEzLjY5OC0xMTMuNjk5QzkyLjI1MywzMC41NzEsNDEuMjYsODEuNTczLDQxLjI2LDE0NC4yN3Y1Ny4yNSAgICAgQzE1LjczNSwyMjkuMTQ3LDAsMjY1Ljk2MiwwLDMwNi41Mzd2MTI1LjUwOGMwLDE2LjI2NiwxMy4xODksMjkuNDU0LDI5LjQ3MiwyOS40NTRoMjUwLjk4NyAgICAgYzE2LjI2NiwwLDI5LjQ1NC0xMy4xODgsMjkuNDU0LTI5LjQ1NHYtMTI1LjVjMC00MC41ODMtMTUuNzM1LTc3LjQwNy00MS4yNTYtMTA1LjAzNEwyNjguNjU2LDE0NC4yN0wyNjguNjU2LDE0NC4yN3ogICAgICBNMTc2Ljg1MiwzMTcuMDQ5djM1Ljk0OWMwLDEyLjA5NS05LjgwNSwyMS44OTgtMjEuODk0LDIxLjg5OGMtMTIuMDk0LDAtMjEuODk4LTkuODA1LTIxLjg5OC0yMS44OTh2LTM1Ljk0OSAgICAgYy04LjkxNi02LjY5MS0xNC43NjUtMTcuMjUyLTE0Ljc2NS0yOS4yNTZjMC0yMC4yNDIsMTYuNDEzLTM2LjY0OSwzNi42NjQtMzYuNjQ5czM2LjY2NCwxNi40MDcsMzYuNjY0LDM2LjY0OSAgICAgQzE5MS42MjEsMjk5Ljc5NywxODUuNzY3LDMxMC4zNTYsMTc2Ljg1MiwzMTcuMDQ5eiBNMjE5LjEyNywxNjUuNjI1Yy0xOS41NzMtOC45MzQtNDEuMjYtMTQuMDM4LTY0LjE2OS0xNC4wMzggICAgIGMtMjIuOTEzLDAtNDQuNTk2LDUuMTA0LTY0LjE2OCwxNC4wMzhWMTQ0LjI3YzAtMzUuMzg0LDI4Ljc3NS02NC4xNjksNjQuMTY4LTY0LjE2OWMzNS4zODksMCw2NC4xNjksMjguNzg1LDY0LjE2OSw2NC4xNjkgICAgIFYxNjUuNjI1TDIxOS4xMjcsMTY1LjYyNXoiLz4NCgk8cGF0aCBkPSJNNDA5LjMyNiw4Ni40NTdjLTQ1LjY5MSwwLTgyLjc0MSwzNy4wNDUtODIuNzQxLDgyLjc1NGMwLDMyLjQ4MywxOC44NzcsNjAuMjk4LDQ2LjEwOSw3My44NDd2MTM3LjQzMyAgICAgYzAsMjguMTM0LDIyLjgxMiw1MC45NDgsNTAuOTQ3LDUwLjk0OGMxMi4zMTcsMCwyMi4zMTQtOS45NzksMjIuMzE0LTIyLjI5OFYyNDMuMDU4YzI3LjIxNC0xMy41NDQsNDYuMTEzLTQxLjM2Myw0Ni4xMTMtNzMuODQ3ICAgICBDNDkyLjA3MSwxMjMuNTAyLDQ1NS4wMTgsODYuNDU3LDQwOS4zMjYsODYuNDU3eiBNNDA5LjMyNiwxNTQuNDk2Yy0xMC43MzgsMC0xOS40NDMtOC43MDUtMTkuNDQzLTE5LjQzNCAgICAgYzAtMTAuNzI5LDguNzA1LTE5LjQzOCwxOS40NDMtMTkuNDM4czE5LjQ0Miw4LjcwOSwxOS40NDIsMTkuNDM4UzQyMC4wNjQsMTU0LjQ5Niw0MDkuMzI2LDE1NC40OTZ6Ii8+DQo8L2c+DQo8IS0tIENvZGUgaW5qZWN0ZWQgYnkgbGl2ZS1zZXJ2ZXIgLS0+CjxzY3JpcHQgdHlwZT0idGV4dC9qYXZhc2NyaXB0Ij4KCS8vIDwhW0NEQVRBWyAgPC0tIEZvciBTVkcgc3VwcG9ydAoJaWYgKCdXZWJTb2NrZXQnIGluIHdpbmRvdykgewoJCShmdW5jdGlvbiAoKSB7CgkJCWZ1bmN0aW9uIHJlZnJlc2hDU1MoKSB7CgkJCQl2YXIgc2hlZXRzID0gW10uc2xpY2UuY2FsbChkb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgibGluayIpKTsKCQkJCXZhciBoZWFkID0gZG9jdW1lbnQuZ2V0RWxlbWVudHNCeVRhZ05hbWUoImhlYWQiKVswXTsKCQkJCWZvciAodmFyIGkgPSAwOyBpIDwgc2hlZXRzLmxlbmd0aDsgKytpKSB7CgkJCQkJdmFyIGVsZW0gPSBzaGVldHNbaV07CgkJCQkJdmFyIHBhcmVudCA9IGVsZW0ucGFyZW50RWxlbWVudCB8fCBoZWFkOwoJCQkJCXBhcmVudC5yZW1vdmVDaGlsZChlbGVtKTsKCQkJCQl2YXIgcmVsID0gZWxlbS5yZWw7CgkJCQkJaWYgKGVsZW0uaHJlZiAmJiB0eXBlb2YgcmVsICE9ICJzdHJpbmciIHx8IHJlbC5sZW5ndGggPT0gMCB8fCByZWwudG9Mb3dlckNhc2UoKSA9PSAic3R5bGVzaGVldCIpIHsKCQkJCQkJdmFyIHVybCA9IGVsZW0uaHJlZi5yZXBsYWNlKC8oJnxcPylfY2FjaGVPdmVycmlkZT1cZCsvLCAnJyk7CgkJCQkJCWVsZW0uaHJlZiA9IHVybCArICh1cmwuaW5kZXhPZignPycpID49IDAgPyAnJicgOiAnPycpICsgJ19jYWNoZU92ZXJyaWRlPScgKyAobmV3IERhdGUoKS52YWx1ZU9mKCkpOwoJCQkJCX0KCQkJCQlwYXJlbnQuYXBwZW5kQ2hpbGQoZWxlbSk7CgkJCQl9CgkJCX0KCQkJdmFyIHByb3RvY29sID0gd2luZG93LmxvY2F0aW9uLnByb3RvY29sID09PSAnaHR0cDonID8gJ3dzOi8vJyA6ICd3c3M6Ly8nOwoJCQl2YXIgYWRkcmVzcyA9IHByb3RvY29sICsgd2luZG93LmxvY2F0aW9uLmhvc3QgKyB3aW5kb3cubG9jYXRpb24ucGF0aG5hbWUgKyAnL3dzJzsKCQkJdmFyIHNvY2tldCA9IG5ldyBXZWJTb2NrZXQoYWRkcmVzcyk7CgkJCXNvY2tldC5vbm1lc3NhZ2UgPSBmdW5jdGlvbiAobXNnKSB7CgkJCQlpZiAobXNnLmRhdGEgPT0gJ3JlbG9hZCcpIHdpbmRvdy5sb2NhdGlvbi5yZWxvYWQoKTsKCQkJCWVsc2UgaWYgKG1zZy5kYXRhID09ICdyZWZyZXNoY3NzJykgcmVmcmVzaENTUygpOwoJCQl9OwoJCQlpZiAoc2Vzc2lvblN0b3JhZ2UgJiYgIXNlc3Npb25TdG9yYWdlLmdldEl0ZW0oJ0lzVGhpc0ZpcnN0VGltZV9Mb2dfRnJvbV9MaXZlU2VydmVyJykpIHsKCQkJCWNvbnNvbGUubG9nKCdMaXZlIHJlbG9hZCBlbmFibGVkLicpOwoJCQkJc2Vzc2lvblN0b3JhZ2Uuc2V0SXRlbSgnSXNUaGlzRmlyc3RUaW1lX0xvZ19Gcm9tX0xpdmVTZXJ2ZXInLCB0cnVlKTsKCQkJfQoJCX0pKCk7Cgl9CgllbHNlIHsKCQljb25zb2xlLmVycm9yKCdVcGdyYWRlIHlvdXIgYnJvd3Nlci4gVGhpcyBCcm93c2VyIGlzIE5PVCBzdXBwb3J0ZWQgV2ViU29ja2V0IGZvciBMaXZlLVJlbG9hZGluZy4nKTsKCX0KCS8vIF1dPgo8L3NjcmlwdD48L3N2Zz4=" alt="Icon" />
                </p>
                <div class="form-group">
                    <label class="input-label" for="inputEmail"><i class="fas fa-user"></i> Email</label>
                    <input type="email" class="form-control" name="email" id="email"
                        placeholder="example@gmail.com" />
                </div>
                <div class="form-group">
                    <label class="input-label" for="inputPassword"><i class="fas fa-key"></i> Password</label>
                    <input type="password" class="form-control" name="pwd" id="pwd"
                        placeholder="example@123" />
                </div>
                <div class="form-group form-check">
                    <p class="remember-check-box">
                        <input type="checkbox" class="form-check-input" name="remember" id="inputRemember" />
                        <label class="check-box fas fa-check" for="inputRemember"></label>
                        <label class="form-check-label" for="inputRemember">Remember me</label>
                    </p>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </form>
        </div>

        <div class="register-form">
            <form class="form-inputs"  name="signInForm">
                <p class="auth-logo">
                    <img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0id2luZG93cy0xMjUyIj8+DQo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+DQo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9HcmFwaGljcy9TVkcvMS4xL0RURC9zdmcxMS5kdGQiPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iNDM4LjU0MnB4IiBoZWlnaHQ9IjQzOC41NDJweCIgdmlld0JveD0iMCAwIDQzOC41NDIgNDM4LjU0MiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDM4LjU0MiA0MzguNTQyOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQoJPGcgZmlsbD0iIzAwODQ5OCI+DQoJCTxwYXRoIGQ9Ik00MTQuNDEsNjAuNjc2Yy0xNi4wODQtMTYuMDgzLTM1LjQ0Ni0yNC4xMjUtNTguMTAyLTI0LjEyNWgtOTEuMzU3Yy0yLjQ3OCwwLTQuNDI5LDAuNjE0LTUuODUzLDEuODU1ICAgIGMtMS40MzEsMS4yMzctMi4zODIsMy4wOTMtMi44NTQsNS41NjhjLTAuNDc5LDIuNDc0LTAuNzYsNC43MDktMC44NTMsNi43MDdjLTAuMDk2LDEuOTk3LTAuMDUxLDQuNTIxLDAuMTQ0LDcuNTY1ICAgIGMwLjE4NiwzLjA0NiwwLjI4MSw0Ljk0OSwwLjI4MSw1LjcxM2MwLjU3MSwxLjUyNCwwLjc2NywyLjgxLDAuNTcxLDMuODU1Yy0wLjE5MSwxLjA0MywwLjQ3NiwxLjkwMywxLjk5OCwyLjU2OCAgICBjMS41MiwwLjY2NiwyLjI3OSwxLjE5MSwyLjI3OSwxLjU2OWMwLDAuMzc4LDEuMDk2LDAuNjYyLDMuMjg1LDAuODU1YzIuMTksMC4xOTIsMy4yODksMC4yODQsMy4yODksMC4yODRoMy43MTNoMy4xNDJoODIuMjI4ICAgIGMxMi41NiwwLDIzLjMxMiw0LjQ3MSwzMi4yNTgsMTMuNDIyYzguOTUyLDguOTQ1LDEzLjQyMiwxOS42OTYsMTMuNDIyLDMyLjI2MVYzMTkuNzdjMCwxMi41NjMtNC40NywyMy4zMTItMTMuNDIyLDMyLjI1OCAgICBjLTguOTQ1LDguOTQ4LTE5LjY5OCwxMy40MjEtMzIuMjU4LDEzLjQyMWgtOTEuMzU3Yy0yLjQ3OCwwLTQuNDM2LDAuNjItNS44NTMsMS44NTVjLTEuNDMsMS4yNDItMi4zODIsMy4wOTQtMi44NTcsNS41NjQgICAgYy0wLjQ3NiwyLjQ3OC0wLjc2Myw0LjcxNi0wLjg1NSw2LjcxNGMtMC4wOTIsMS45OTUtMC4wNTEsNC41MTgsMC4xNDQsNy41NjNjMC4xOTUsMy4wNDYsMC4yODgsNC45NDgsMC4yODgsNS43MDggICAgYzAsMi40NzgsMC44OTYsNC42MTMsMi43MDcsNi40MjdjMS44MSwxLjgwNywzLjk0OSwyLjcxLDYuNDI3LDIuNzFoOTEuMzU3YzIyLjY0OCwwLDQyLjAxOC04LjA0Miw1OC4wOTUtMjQuMTMzICAgIGMxNi4wODQtMTYuMDc3LDI0LjEyNi0zNS40NDYsMjQuMTI2LTU4LjA5NVYxMTguNzY5QzQzOC41MzMsOTYuMTE4LDQzMC40OTEsNzYuNzU0LDQxNC40MSw2MC42NzZ6Ii8+DQoJCTxwYXRoIGQ9Ik0zMzguMDQ3LDIxOS4yN2MwLTQuOTQ4LTEuODEzLTkuMjMzLTUuNDI3LTEyLjg1TDE3Ny4zMDIsNTEuMTAxYy0zLjYxNi0zLjYxMi03Ljg5NS01LjQyNC0xMi44NDctNS40MjQgICAgYy00Ljk1MiwwLTkuMjMzLDEuODEyLTEyLjg1LDUuNDI0Yy0zLjYxNSwzLjYxNy01LjQyNCw3LjkwNC01LjQyNCwxMi44NXY4Mi4yMjZIMTguMjc0Yy00Ljk1MiwwLTkuMjM1LDEuODEyLTEyLjg1MSw1LjQyNCAgICBDMS44MDcsMTU1LjIxOSwwLDE1OS41MDMsMCwxNjQuNDUydjEwOS42MzVjMCw0Ljk0OSwxLjgwNyw5LjIzMyw1LjQyNCwxMi44NDhjMy42MTksMy42MSw3LjkwMiw1LjQyNywxMi44NTEsNS40MjdoMTI3LjkwNiAgICB2ODIuMjI1YzAsNC45NDUsMS44MDksOS4yMzMsNS40MjQsMTIuODQ3YzMuNjIxLDMuNjE3LDcuOTAyLDUuNDI4LDEyLjg1LDUuNDI4YzQuOTQ5LDAsOS4yMzEtMS44MTEsMTIuODQ3LTUuNDI4bDE1NS4zMTgtMTU1LjMxMiAgICBDMzM2LjIzNCwyMjguNTAxLDMzOC4wNDcsMjI0LjIxNiwzMzguMDQ3LDIxOS4yN3oiLz4NCgk8L2c+DQo8IS0tIENvZGUgaW5qZWN0ZWQgYnkgbGl2ZS1zZXJ2ZXIgLS0+CjxzY3JpcHQgdHlwZT0idGV4dC9qYXZhc2NyaXB0Ij4KCS8vIDwhW0NEQVRBWyAgPC0tIEZvciBTVkcgc3VwcG9ydAoJaWYgKCdXZWJTb2NrZXQnIGluIHdpbmRvdykgewoJCShmdW5jdGlvbiAoKSB7CgkJCWZ1bmN0aW9uIHJlZnJlc2hDU1MoKSB7CgkJCQl2YXIgc2hlZXRzID0gW10uc2xpY2UuY2FsbChkb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgibGluayIpKTsKCQkJCXZhciBoZWFkID0gZG9jdW1lbnQuZ2V0RWxlbWVudHNCeVRhZ05hbWUoImhlYWQiKVswXTsKCQkJCWZvciAodmFyIGkgPSAwOyBpIDwgc2hlZXRzLmxlbmd0aDsgKytpKSB7CgkJCQkJdmFyIGVsZW0gPSBzaGVldHNbaV07CgkJCQkJdmFyIHBhcmVudCA9IGVsZW0ucGFyZW50RWxlbWVudCB8fCBoZWFkOwoJCQkJCXBhcmVudC5yZW1vdmVDaGlsZChlbGVtKTsKCQkJCQl2YXIgcmVsID0gZWxlbS5yZWw7CgkJCQkJaWYgKGVsZW0uaHJlZiAmJiB0eXBlb2YgcmVsICE9ICJzdHJpbmciIHx8IHJlbC5sZW5ndGggPT0gMCB8fCByZWwudG9Mb3dlckNhc2UoKSA9PSAic3R5bGVzaGVldCIpIHsKCQkJCQkJdmFyIHVybCA9IGVsZW0uaHJlZi5yZXBsYWNlKC8oJnxcPylfY2FjaGVPdmVycmlkZT1cZCsvLCAnJyk7CgkJCQkJCWVsZW0uaHJlZiA9IHVybCArICh1cmwuaW5kZXhPZignPycpID49IDAgPyAnJicgOiAnPycpICsgJ19jYWNoZU92ZXJyaWRlPScgKyAobmV3IERhdGUoKS52YWx1ZU9mKCkpOwoJCQkJCX0KCQkJCQlwYXJlbnQuYXBwZW5kQ2hpbGQoZWxlbSk7CgkJCQl9CgkJCX0KCQkJdmFyIHByb3RvY29sID0gd2luZG93LmxvY2F0aW9uLnByb3RvY29sID09PSAnaHR0cDonID8gJ3dzOi8vJyA6ICd3c3M6Ly8nOwoJCQl2YXIgYWRkcmVzcyA9IHByb3RvY29sICsgd2luZG93LmxvY2F0aW9uLmhvc3QgKyB3aW5kb3cubG9jYXRpb24ucGF0aG5hbWUgKyAnL3dzJzsKCQkJdmFyIHNvY2tldCA9IG5ldyBXZWJTb2NrZXQoYWRkcmVzcyk7CgkJCXNvY2tldC5vbm1lc3NhZ2UgPSBmdW5jdGlvbiAobXNnKSB7CgkJCQlpZiAobXNnLmRhdGEgPT0gJ3JlbG9hZCcpIHdpbmRvdy5sb2NhdGlvbi5yZWxvYWQoKTsKCQkJCWVsc2UgaWYgKG1zZy5kYXRhID09ICdyZWZyZXNoY3NzJykgcmVmcmVzaENTUygpOwoJCQl9OwoJCQlpZiAoc2Vzc2lvblN0b3JhZ2UgJiYgIXNlc3Npb25TdG9yYWdlLmdldEl0ZW0oJ0lzVGhpc0ZpcnN0VGltZV9Mb2dfRnJvbV9MaXZlU2VydmVyJykpIHsKCQkJCWNvbnNvbGUubG9nKCdMaXZlIHJlbG9hZCBlbmFibGVkLicpOwoJCQkJc2Vzc2lvblN0b3JhZ2Uuc2V0SXRlbSgnSXNUaGlzRmlyc3RUaW1lX0xvZ19Gcm9tX0xpdmVTZXJ2ZXInLCB0cnVlKTsKCQkJfQoJCX0pKCk7Cgl9CgllbHNlIHsKCQljb25zb2xlLmVycm9yKCdVcGdyYWRlIHlvdXIgYnJvd3Nlci4gVGhpcyBCcm93c2VyIGlzIE5PVCBzdXBwb3J0ZWQgV2ViU29ja2V0IGZvciBMaXZlLVJlbG9hZGluZy4nKTsKCX0KCS8vIF1dPgo8L3NjcmlwdD48L3N2Zz4=" alt="Icon" />
                </p>
                <div class="form-group">
                    <label class="input-label" for="signInEmail"><i class="fas fa-user"></i> Email*</label>
                    <input type="email" class="form-control" name="signEmail" id="signInEmail"
                        placeholder="example@gmail.com"/>
                </div>
                <div class="form-group">
                    <label class="input-label" for="crtePassword"><i class="fas fa-key"></i> Create Password*</label>
                    <input type="password" class="form-control" name="crtePass" id="crtePassword"
                        placeholder="example@123" />
                </div>
                <div class="form-group">
                    <label class="input-label" for="confirmPassword"><i class="fas fa-check-double"></i> Confirm
                        Password*</label>
                    <input type="password" class="form-control" name="confirmPassword" id="confirmPassword"
                        placeholder="example@123" />
                </div>
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </form>
        </div>
<a href="/signup">
        <button type="button" class="btn signin-btn" id="goToSignInSection">
            <span id="login"></span>
            <span id="signIn">Sign-up</span>
          <i class="fas fa-hand-point-right"></i>
        </button>
        </a>
    </div>
</div>


</body>
</html>