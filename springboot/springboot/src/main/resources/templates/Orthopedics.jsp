
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
 

.nav-pills > li > a {
   border-radius: 0;
}

#wrapper {
margin-top: 100px;
   padding-left: 0;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -o-transition: all 0.5s ease;
   transition: all 0.5s ease;
   overflow: hidden;
}

#wrapper.toggled {
   padding-left: 250px;
   overflow: hidden;
}

#sidebar-wrapper {
   z-index: 1000;
   position: absolute;
   left: 250px;
   width: 0;
   height: 100%;
   margin-left: -250px;
   overflow-y: auto;
   background: #3E8DA8;
   -webkit-transition: all 0.5s ease;
   -moz-transition: all 0.5s ease;
   -o-transition: all 0.5s ease;
   transition: all 0.5s ease;
}

#wrapper.toggled #sidebar-wrapper {
   width: 250px;
}

#page-content-wrapper {
   position: absolute;
   padding: 15px;
   width: 100%;
   overflow-x: hidden;
  
}

.xyz {
   min-width: 360px;
}

#wrapper.toggled #page-content-wrapper {
   position: relative;
   margin-right: 0px;
}

.fixed-brand {
   width: auto;
}
/* Sidebar Styles */

.sidebar-nav {
   position: absolute;
   top: 0;
   width: 250px;
   margin: 0;
   padding: 0;
   list-style: none;
   margin-top: 2px;
}

.sidebar-nav li {
   text-indent: 15px;
   line-height: 40px;
}

.sidebar-nav li a {
   display: block;
   text-decoration:none ;
   color: rgb(255, 255, 255);
}

.sidebar-nav li a:hover {
   text-decoration: none;
   color: #fff;
   background: rgba(255, 255, 255, 0.2);
   border-left: red 2px solid;
}

.sidebar-nav li a:active,
.sidebar-nav li a:focus {
   text-decoration: none;
}

.sidebar-nav > .sidebar-brand {
   height: 65px;
   font-size: 18px;
   line-height: 60px;
}

.sidebar-nav > .sidebar-brand a {
   color: #999999;
}

.sidebar-nav > .sidebar-brand a:hover {
   color: #fff;
   background: none;
}

.no-margin {
   margin: 0;
}

@media (min-width: 768px) {
   #wrapper {
      padding-left: 250px;
   }
   .fixed-brand {
      width: 250px;
   }
   #wrapper.toggled {
      padding-left: 0;
   }
   #sidebar-wrapper {
      width: 250px;
   }
   #wrapper.toggled #sidebar-wrapper {
      width: 250px;
   }
   #wrapper.toggled-2 #sidebar-wrapper {
      width: 50px;
   }
   #wrapper.toggled-2 #sidebar-wrapper:hover {
      width: 250px;
   }
   #page-content-wrapper {
      padding: 20px;
      position: relative;
      -webkit-transition: all 0.5s ease;
      -moz-transition: all 0.5s ease;
      -o-transition: all 0.5s ease;
      transition: all 0.5s ease;
   }
   #wrapper.toggled #page-content-wrapper {
      position: relative;
      margin-right: 0;
      padding-left: 250px;
   }
   #wrapper.toggled-2 #page-content-wrapper {
      position: relative;
      margin-right: 0;
      margin-left: -200px;
      -webkit-transition: all 0.5s ease;
      -moz-transition: all 0.5s ease;
      -o-transition: all 0.5s ease;
      transition: all 0.5s ease;
      width: auto;
   }
}

.xyz {
        font-size: 18px; /* Adjust the font size as needed */
        line-height: 1.5; /* Adjust the line height for better readability */
        color: #333; /* Set the text color */
        font-family: Arial, sans-serif; /* Choose a suitable font family */
        text-align: justify; /* Justify the text for a cleaner look */
    }

    .xyz img {
        max-width: 100%; /* Ensure images don't overflow their containers */
        height: auto; /* Maintain the aspect ratio of images */
        display: block; /* Remove any spacing below images */
        margin: 0 auto; /* Center align images within the container */
    }

</style>


</head>
<body>
<script>
$("#menu-toggle").click(function (e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});

$("#menu-toggle-2").click(function (e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled-2");
    $('#menu ul').hide();
});

function initMenu() {
    $('#menu ul').hide();
    $('#menu ul').children('.current').parent().show();
    $('#menu li a').click(function () {
        var checkElement = $(this).next();
        if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
            return false;
        }
        if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
            $('#menu ul:visible').slideUp('normal');
            checkElement.slideDown('normal');
            return false;
        }
    });
}

$(document).ready(function () {
    initMenu();
});
</script>
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
            <li><a href="/diseases">Diseases and Conditions</a></li>
            <li><a href="/procedures">Tests and Procedures</a></li>
            <li><a href="#">Medical Glossary Decoded</a></li>
          </ul>
        </li>
        <li><a href="/branches">Branches</a></li>
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
   <div id="wrapper">
      <!-- Sidebar -->
      <div id="sidebar-wrapper">
         <ul class="sidebar-nav nav-pills nav-stacked" id="menu">
            <li class="active" >
				
               <a href="#" ><span class="fa-stack fa-lg pull-left"><i class="fa fa-dashboard fa-stack-1x "></i></span> Diseases And Conditions</a>
               <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                 
                  <li style="font-size:20px"><a href="/heart">Heart</a></li>
                  <li style="font-size:20px"><a href="/orthopedics">Orthopedics</a></li>
                  <li style="font-size:20px"><a href="/spine">Spine</a></li>
                  <li style="font-size:20px"><a href="#">Neurology </a></li>
                  <li style="font-size:20px"><a href="#">Gastroenterology</a></li>
                  <li style="font-size:20px"><a href="#">Cancer Center</a></li>
                 
               </ul>
            </li>
         </ul>
      </div>
      <h1 class = "h1"  >   Aster Institutes Of Orthopedics Expertise </h1>
      <div id="page-content-wrapper">
         <div class="container-fluid xyz">
            <div class="row">
               <div class="col-lg-12">
				   
				   <img src="data:image/jpeg;base64,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" width="100%">				   
                  <br>
                  <br>
                  
                  <p1 class="xyz">
					 The Institutes are at the forefront in offering the latest in 
Orthopedic treatments
 and Orthopedic surgical advancements in India on par with the best centres in the world.<br>

Our Orthopedicians trained at the top centres worldwide, bring with them the latest and best techniques and work in our facilities that have the latest cutting edge technology in terms of equipments, operating rooms, recovery areas and advanced Physical therapy facilities.<br>

We have dedicated & well equipped Orthopedic surgery complexes with laminar flow & various modern equipment like image intensifier, operating microscope, computer navigation system, top of the line arthroscopy system etc.

The Aster Institutes of Orthopedics has successfully performed over 340,828 orthopaedic surgeries.
				  </p1>
				  <h1 class="xyz"> Highlights</h1>
				  <p1 class="xyz">
					  Aster Hospitals offers key & best orthopedic surgeries and procedures in India. We perform bone and joint replacement surgeries which include the most current Arthroscopic and Reconstructive techniques. Joint replacements including hip resurfacing and knee replacement surgery [primary, complex primary & revision replacements] are being done in large numbers with excellent outcomes.<br>
Shoulder surgeries and the most delicate hand micro surgeries are all performed with great precision and expertise.<br>
Aster Hospitals is also a pioneer in Articular cartilage Implantation (ACI). Cartilage regeneration surgery, including micro-fracturing, mosaic-plasty are all performed. The Aster Cartilage School is leveraging developments in Orthobiologicals and growth factors to herald a new age of regenerative medicine.<br>
Our orthopedic surgeons will check for common orthopedic diseases and conditions of the patient and provide treatment based on the observation.<br>
There are dedicated units for Traumatology which involves treatment for dislocations and fractures with very minimal down time for the patient.<br>
Orthopedic Oncology for treating bone cancers is also a key specialisation of our hospitals.<br>
				  </p1>
               </div>
            </div>
         </div>
      </div>
      <!-- /#page-content-wrapper -->
   </div>
   <!-- /#wrapper -->
   <!-- jQuery -->
</body>
</html>