
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
      body {
  padding: 0;
  margin: 0;
  font-family: 'Lato', sans-serif;
  color: #000;
}

.student-profile .card {
  border-radius: 10px;
}

.student-profile .card .card-header .profile_img {
  width: 150px;
  height: 150px;
  object-fit: cover;
  margin: 10px auto;
  border: 10px solid #ccc;
  border-radius: 50%;
}

.student-profile .card h3 {
  font-size: 20px;
  font-weight: 700;
}

.student-profile .card p {
  font-size: 16px;
  color: #000;
}

.student-profile .table th,
.student-profile .table td {
  font-size: 14px;
  padding: 5px 10px;
  color: #000;
}

@import url(https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,600);
@font-face {
	font-weight: normal;
	font-style: normal;
	font-family: 'codropsicons';
	src: url("../fonts/codropsicons/codropsicons.eot");
	src: url("../fonts/codropsicons/codropsicons.eot?#iefix") format("embedded-opentype"), url("../fonts/codropsicons/codropsicons.woff") format("woff"), url("../fonts/codropsicons/codropsicons.ttf") format("truetype"), url("../fonts/codropsicons/codropsicons.svg#codropsicons") format("svg");
}
*,
*:after,
*:before {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}
.cf:before,
.cf:after {
	content: '';
	display: table;
}
.cf:after {
	clear: both;
}
body {
	background: #3E8DA8;
	color: #37474f;
	font-weight: 400;
	font-size: 1em;
	font-family: 'Raleway', Arial, sans-serif;
}
.support {
	font-weight: bold;
	padding: 2em 0 0 0;
	font-size: 1.4em;
	color: #ee2563;
	display: none;
}
a {
	color: #7986cb;
	text-decoration: none;
	outline: none;
}
a:hover,
a:focus {
	color: #3f51b5;
}
.hidden {
	position: absolute;
	width: 0;
	height: 0;
	overflow: hidden;
	pointer-events: none;
}
.container {
	margin: 0 auto;
	text-align: center;
	overflow: hidden;
}
.content {
	padding: 2em 1em 5em;
	z-index: 1;
	max-width: 1000px;
	margin: 0 auto;
}
.content h2 {
	margin: 0 0 2em;
}
.content p {
	margin: 1em 0;
	padding: 0 0 2em;
	font-size: 0.85em;
}
.box {
	padding: 4.5em 0;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	-webkit-justify-content: center;
	justify-content: center;
}

/* Header */
.codrops-header {
	padding: 3em 190px 4em;
	letter-spacing: -1px;
}
.codrops-header h1 {
	font-weight: 200;
	font-size: 4em;
	line-height: 1;
	margin-bottom: 0;
}
.codrops-header h1 span {
	display: block;
	font-size: 40%;
	letter-spacing: 0;
	padding: 0.5em 0 1em 0;
	color: #A8B3B8;
}

/* Top Navigation Style */
.codrops-links {
	position: relative;
	display: inline-block;
	white-space: nowrap;
	font-size: 1.25em;
	text-align: center;
}
.codrops-links::after {
	position: absolute;
	top: 0;
	left: 50%;
	width: 1px;
	height: 100%;
	background: #BFCACF;
	content: '';
	-webkit-transform: rotate3d(0, 0, 1, 22.5deg);
	transform: rotate3d(0, 0, 1, 22.5deg);
}
.codrops-icon {
	display: inline-block;
	margin: 0.5em;
	padding: 0em 0;
	width: 1.5em;
	text-decoration: none;
}
.codrops-icon:before {
	margin: 0 5px;
	text-transform: none;
	font-weight: normal;
	font-style: normal;
	font-variant: normal;
	font-family: 'codropsicons';
	line-height: 1;
	speak: none;
	-webkit-font-smoothing: antialiased;
}
.codrops-icon span {
	display: none;
}
.codrops-icon--drop:before {
	content: "\e001";
}
.codrops-icon--prev:before {
	content: "\e004";
}

/* Related demos */
.content--related {
	text-align: center;
	font-weight: 600;
}
.media-item {
	display: inline-block;
	padding: 1em;
	margin: 1em 0 0 0;
	vertical-align: top;
	-webkit-transition: color 0.3s;
	transition: color 0.3s;
}
.media-item__img {
	opacity: 0.8;
	max-width: 100%;
	-webkit-transition: opacity 0.3s;
	transition: opacity 0.3s;
}
.media-item:hover .media-item__img,
.media-item:focus .media-item__img {
	opacity: 1;
}
.media-item__title {
	font-size: 0.85em;
	margin: 0;
	padding: 0.5em;
}
@media screen and (max-width:50em) {
	.codrops-header {
		padding: 3em 10% 4em;
	}
}
@media screen and (max-width:40em) {
	.codrops-header h1 {
		font-size: 2.8em;
	}
}

/* Box colors */
.bg-1 {
	background: #ECEFF1;
	color: #37474f;
}
.bg-2 {
	background: #7986cb;
	color: #ECEFF1;
}
.bg-3 {
	background: #37474f;
	color: #fff;
}

/* Common button styles */
.button {
	float: left;
	min-width: 150px;
	max-width: 250px;
	display: block;
	margin: 1em;
	padding: 1em 2em;
	border: none;
	background: none;
	color: inherit;
	vertical-align: middle;
	position: relative;
	z-index: 1;
	-webkit-backface-visibility: hidden;
	-moz-osx-font-smoothing: grayscale;
}
.button:focus {
	outline: none;
}
.button > span {
	vertical-align: middle;
}

/* Text color adjustments (we could stick to the "inherit" but that does not work well in Safari) */
.bg-1 .button {
	color: #37474f;
	border-color: #37474f;
}
.bg-2 .button {
	color: #ECEFF1;
	border-color: #ECEFF1;
}
.bg-3 .button {
	color: #fff;
	border-color: #fff;
}

/* Sizes */
.button--size-s {
	font-size: 14px;
}
.button--size-m {
	font-size: 16px;
}
.button--size-l {
	font-size: 18px;
}

/* Typography and Roundedness */
.button--text-upper {
	letter-spacing: 2px;
	text-transform: uppercase;
}
.button--text-thin {
	font-weight: 300;
}
.button--text-medium {
	font-weight: 500;
}
.button--text-thick {
	font-weight: 600;
}
.button--round-s {
	border-radius: 5px;
}
.button--round-m {
	border-radius: 15px;
}
.button--round-l {
	border-radius: 40px;
}

/* Borders */
.button--border-thin {
	border: 1px solid;
}
.button--border-medium {
	border: 2px solid;
}
.button--border-thick {
	border: 3px solid;
}

/* Individual button styles */

/* Winona */
.button--winona {
	overflow: hidden;
	padding: 0;
	-webkit-transition: border-color 0.3s, background-color 0.3s;
	transition: border-color 0.3s, background-color 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}
.button--winona::after {
	content: attr(data-text);
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	opacity: 0;
	color: #3f51b5;
	-webkit-transform: translate3d(0, 25%, 0);
	transform: translate3d(0, 25%, 0);
}
.button--winona > span {
	display: block;
}
.button--winona.button--inverted {
	color: #7986cb;
}
.button--winona.button--inverted:after {
	color: #fff;
}
.button--winona::after,
.button--winona > span {
	padding: 1em 2em;
	-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
	transition: transform 0.3s, opacity 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}
.button--winona:hover {
	border-color: #3f51b5;
	background-color: rgba(63, 81, 181, 0.1);
}
.button--winona.button--inverted:hover {
	border-color: #21333C;
	background-color: #21333C;
}
.button--winona:hover::after {
	opacity: 1;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}
.button--winona:hover > span {
	opacity: 0;
	-webkit-transform: translate3d(0, -25%, 0);
	transform: translate3d(0, -25%, 0);
}

h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}
body{
 background-color: #3E8DA8;
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}

/* demo styles */

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}

.back{
margin-top: 20px;
margin-left: 1350px;
padding: 10px;
	 border-radius: 10px;
	 color: black;
	 background-color: transparent;
	 box-shadow: 2px 2px;
}
      </style>
</head>
<body>
      <form action="/index">
  <button class="back"><b>GO BACK</b></button>
  </form>
      <div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent text-center">
            <img class="profile_img" src="data:image/png;base64,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" alt=""></img>
            <h3>SUMEDDHA</h3>
          </div>
          <div class="card-body">
            <p class="mb-0"><strong class="pr-1">Patient ID:  </strong>2100031034</p>
            <p class="mb-0"><strong class="pr-1">DOB:  </strong>19-03-2004</p>
            <p class="mb-0"><strong class="pr-1">Mobile:  </strong>7416517727</p>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
          </div>
          <div class="card-body pt-0">
            <table class="table table-bordered">
              <tr>
                <th width="30%">Last Appointment</th>
                <td width="2%">:</td>
                <td>20-10-2023 : 9:30 AM</td>
              </tr>
              <tr>
                <th width="30%">Department	</th>
                <td width="2%">:</td>
                <td>Cardiology</td>
              </tr>
              <tr>
                <th width="30%">Gender</th>
                <td width="2%">:</td>
                <td>Female</td>
              </tr>
              <tr>
                <th width="30%">Doctor Name</th>
                <td width="2%">:</td>
                <td>	Ankit Jain</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<br>
<br>
<br>
 
  <h1>MEDICINES HISTORY</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>MEDICINE NAME</th>
          <th>MEDICINE QUANTITY</th>
          <th>DRUG</th>
          <th>Bought on</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
          <td>Aceclo MR</td>
          <td>2 </td>
          <td>Aceclofenac Hypochloride Muscle relief</td>
          <td>20.10.21</td>
        </tr>
        <tr>
          <td>Dolo 650</td>
          <td>4</td>
          <td>Dicofenac and Paracetamol 650mg</td>
          <td>20.10.21</td>
        </tr>
        <tr>
			<td>Cetro</td>
			<td>2</td>
			<td>Cetrizine Hypochloride</td>
			<td>20.10.21</td>
		  </tr>
		  <tr>
			<td>Keto B</td>
			<td>1</td>
			<td>kETOCONAZOLE SHAMPOO</td>
			<td>20.110.21</td>
		  </tr>
<!-- partial -->
      </tbody>
      </table>
      </div>
      </section>
      </body>
</html>