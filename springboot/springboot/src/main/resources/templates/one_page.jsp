
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
<style>
	*,
*::after,
*::before {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  font-size: 62.5%;
}

body {
  --background-color: hsl(180, 20%, 90%);

  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;

  min-height: 100vh;
  padding: 2rem;

  color: rgb(128, 0, 255);
  background: var(--background-color);
  text-align: center;
}

h1 {
  font-size: 3.2rem;
  padding-top: 2rem;
}

h1+p {
  font-size: 1.8rem;
  padding: 2rem 0 3rem;
 }

.main {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
}

.wrap {
  margin: 2rem;

  transform-style: preserve-3d;
  transform: perspective(100rem);

  cursor: pointer;
}

.container {
  --rX: 0;
  --rY: 0;
  --bX: 50%;
  --bY: 80%;

  width: 30rem;
  height: 36rem;
  border: 1px solid var(--background-color);
  border-radius: 1.6rem;
  padding: 4rem;
  
  display: flex;
  align-items: flex-end;

  position: relative;
  transform: rotateX(calc(var(--rX) * 1deg)) rotateY(calc(var(--rY) * 1deg));

  
  background-position: var(--bX) var(--bY);
  background-size: 75rem auto;
  box-shadow: 0 0 3rem .5rem hsla(0, 0%, 0%, .2);

  transition: transform .6s 1s;
}

.container::before,
.container::after {
  content: "";

  width: 2rem;
  height: 100%;
  border: 1px solid #fff;

  position: absolute;
  z-index: 2;

  opacity: .3;
  transition: .3s;
}

.container::before {
  top: 2rem;
  right: 2rem;

  border-bottom-width: 0;
  border-left-width: 0;
}

.container::after {
  bottom: 2rem;
  left: 2rem;

  border-top-width: 0;
  border-right-width: 0;
}

.container--active {
  transition: none;
}

.container--1{
	background-size: 110%;
	background-image: url("https://img.freepik.com/premium-vector/cartoon-male-doctor-holding-clipboard_29190-4660.jpg");
}

.container--2 {
	background-image: url("https://sunainanursingbureau.in/uploaded-files/page-images/image03.jpg");
	background-size: 150%;
}

.container--3 {
	background: url("https://png.pngtree.com/png-clipart/20200225/original/pngtree-beautiful-admin-roles-glyph-vector-icon-png-image_5291981.jpg");
    background-size: 110%;
}

.container p {
  color: rgb(0, 0, 0);
  font-size: 2.2rem;
}

.wrap:hover .container::before,
.wrap:hover .container::after {
  width: calc(100% - 4rem);
  height: calc(100% - 4rem);
}

.abs-site-link {
  position: fixed;
  bottom: 20px;
  left: 20px;
  color: rgb(128, 0, 255);
  font-size: 1.6rem;
}

</style>
</style>
</head>
<body>

<h1>Aster Hospital</h1>


<section class="main">

  <div class="wrap wrap--1">
    <div class="container container--1" >
      <p>    DOCTOR</p>
    </div>
  </div>

  <div class="wrap wrap--2">
  <a href="/login">
    <div class="container container--2">
      <p>PATIENT</p>
    </div>
  </a>
</div>


  <div class="wrap wrap--3">
    <div class="container container--3">
      <p>    ADMIN</p>
    </div>
  </div>

</section>

<script  src="./homej.js"></script>
<script>
//by
//abubakersaeed.netlify.com | @AbubakerSaeed96
//============================================

//Inspiration:
//Tilt.js: https://gijsroge.github.io/tilt.js/
//Andy Merskin's parallax depth cards pen: https://codepen.io/andymerskin/full/XNMWvQ/

//Thank You for Viewing

class parallaxTiltEffect {

constructor({element, tiltEffect}) {

 this.element = element;
 this.container = this.element.querySelector(".container");
 this.size = [300, 360];
 [this.w, this.h] = this.size;

 this.tiltEffect = tiltEffect;

 this.mouseOnComponent = false;

 this.handleMouseMove = this.handleMouseMove.bind(this);
 this.handleMouseEnter = this.handleMouseEnter.bind(this);
 this.handleMouseLeave = this.handleMouseLeave.bind(this);
 this.defaultStates = this.defaultStates.bind(this);
 this.setProperty = this.setProperty.bind(this);
 this.init = this.init.bind(this);

 this.init();
}

handleMouseMove(event) {
 const {offsetX, offsetY} = event;

 let X;
 let Y;

 if (this.tiltEffect === "reverse") {
   X = ((offsetX - (this.w/2)) / 3) / 3;
   Y = (-(offsetY - (this.h/2)) / 3) / 3;
 }

 else if (this.tiltEffect === "normal") {
   X = (-(offsetX - (this.w/2)) / 3) / 3;
   Y = ((offsetY - (this.h/2)) / 3) / 3;
 }

 this.setProperty('--rY', X.toFixed(2));
 this.setProperty('--rX', Y.toFixed(2));

 this.setProperty('--bY', (80 - (X/4).toFixed(2)) + '%');
 this.setProperty('--bX', (50 - (Y/4).toFixed(2)) + '%');
}

handleMouseEnter() {
 this.mouseOnComponent = true;
 this.container.classList.add("container--active");
}

handleMouseLeave() {
 this.mouseOnComponent = false;
 this.defaultStates();
}

defaultStates() {
 this.container.classList.remove("container--active");
 this.setProperty('--rY', 0);
 this.setProperty('--rX', 0);
 this.setProperty('--bY', '80%');
 this.setProperty('--bX', '50%');
}

setProperty(p, v) {
 return this.container.style.setProperty(p, v);
}

init() {
 this.element.addEventListener('mousemove', this.handleMouseMove);
 this.element.addEventListener('mouseenter', this.handleMouseEnter);
 this.element.addEventListener('mouseleave', this.handleMouseLeave);
}

}

const $ = e => document.querySelector(e);

const wrap1 = new parallaxTiltEffect({
element: $('.wrap--1'),
tiltEffect: 'reverse'
});

const wrap2 = new parallaxTiltEffect({
element: $('.wrap--2'),
tiltEffect: 'normal'
});

const wrap3 = new parallaxTiltEffect({
element: $('.wrap--3'),
tiltEffect: 'reverse'
});
</script>
</body>
</html>