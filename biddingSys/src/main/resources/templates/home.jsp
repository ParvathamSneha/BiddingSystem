
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <style>
  @import 'https://fonts.googleapis.com/css?family=Montserrat:300, 400, 700&display=swap';
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}
html {
	font-size: 10px;
	font-family: 'Montserrat', sans-serif;
	scroll-behavior: smooth;
}
a {
	text-decoration: none;
}
.container {
	min-height: 100vh;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}
img {
	height: 100%;
	width: 100%;
	object-fit: cover;
}
p {
	color: black;
	font-size: 1.4rem;
	margin-top: 5px;
	line-height: 2.5rem;
	font-weight: 300;
	letter-spacing: 0.05rem;
}
.section-title {
	font-size: 4rem;
	font-weight: 300;
	color: black;
	margin-bottom: 10px;
	text-transform: uppercase;
	letter-spacing: 0.2rem;
	text-align: center;
}
.section-title span {
	color: crimson;
}

.cta {
	display: inline-block;
	padding: 10px 30px;
	color: white;
	background-color: transparent;
	border: 2px solid crimson;
	font-size: 2rem;
	text-transform: uppercase;
	letter-spacing: 0.1rem;
	margin-top: 30px;
	transition: 0.3s ease;
	transition-property: background-color, color;
}
.cta:hover {
	color: white;
	background-color: crimson;
}
.brand h1 {
	font-size: 3rem;
	text-transform: uppercase;
	color: white;
}
.brand h1 span {
	color: crimson;
}

/* Header section */
#header {
	position: fixed;
	z-index: 1000;
	left: 0;
	top: 0;
	width: 100vw;
	height: auto;
}
#header .header {
	min-height: 8vh;
	background-color: rgba(31, 30, 30, 0.24);
	transition: 0.3s ease background-color;
}
#header .nav-bar {
	display: flex;
	align-items: center;
	justify-content: space-between;
	width: 100%;
	height: 100%;
	max-width: 1300px;
	padding: 0 10px;
}
#header .nav-list ul {
	list-style: none;
	position: absolute;
	background-color: rgb(31, 30, 30);
	width: 100vw;
	height: 100vh;
	left: 100%;
	top: 0;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	z-index: 1;
	overflow-x: hidden;
	transition: 0.5s ease left;
}
#header .nav-list ul.active {
	left: 0%;
}
#header .nav-list ul a {
	font-size: 2.5rem;
	font-weight: 500;
	letter-spacing: 0.2rem;
	text-decoration: none;
	color: white;
	text-transform: uppercase;
	padding: 20px;
	display: block;
}
#header .nav-list ul a::after {
	content: attr(data-after);
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%) scale(0);
	color: rgba(240, 248, 255, 0.021);
	font-size: 13rem;
	letter-spacing: 50px;
	z-index: -1;
	transition: 0.3s ease letter-spacing;
}
#header .nav-list ul li:hover a::after {
	transform: translate(-50%, -50%) scale(1);
	letter-spacing: initial;
}
#header .nav-list ul li:hover a {
	color: crimson;
}
#header .hamburger {
	height: 60px;
	width: 60px;
	display: inline-block;
	border: 3px solid white;
	border-radius: 50%;
	position: relative;
	display: flex;
	align-items: center;
	justify-content: center;
	z-index: 100;
	cursor: pointer;
	transform: scale(0.8);
	margin-right: 20px;
}
#header .hamburger:after {
	position: absolute;
	content: '';
	height: 100%;
	width: 100%;
	border-radius: 50%;
	border: 3px solid white;
	animation: hamburger_puls 1s ease infinite;
}
#header .hamburger .bar {
	height: 2px;
	width: 30px;
	position: relative;
	background-color: white;
	z-index: -1;
}
#header .hamburger .bar::after,
#header .hamburger .bar::before {
	content: '';
	position: absolute;
	height: 100%;
	width: 100%;
	left: 0;
	background-color: white;
	transition: 0.3s ease;
	transition-property: top, bottom;
}
#header .hamburger .bar::after {
	top: 8px;
}
#header .hamburger .bar::before {
	bottom: 8px;
}
#header .hamburger.active .bar::before {
	bottom: 0;
}
#header .hamburger.active .bar::after {
	top: 0;
}
/* End Header section */

/* Hero Section */
#hero {
	background-image: url(./img/hero-bg.png);
	background-size: cover;
	background-position: top center;
	position: relative;
	z-index: 1;
}
#hero::after {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	height: 100%;
	width: 100%;
	background-color: black;
	opacity: 0.7;
	z-index: -1;
}
#hero .hero {
	max-width: 1200px;
	margin: 0 auto;
	padding: 0 50px;
	justify-content: flex-start;
}
#hero h1 {
	display: block;
	width: fit-content;
	font-size: 4rem;
	position: relative;
	color: transparent;
	animation: text_reveal 0.5s ease forwards;
	animation-delay: 1s;
}
#hero h1:nth-child(1) {
	animation-delay: 1s;
}
#hero h1:nth-child(2) {
	animation-delay: 2s;
}
#hero h1:nth-child(3) {
	animation: text_reveal_name 0.5s ease forwards;
	animation-delay: 3s;
}
#hero h1 span {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 0;
	background-color: crimson;
	animation: text_reveal_box 1s ease;
	animation-delay: 0.5s;
}
#hero h1:nth-child(1) span {
	animation-delay: 0.5s;
}
#hero h1:nth-child(2) span {
	animation-delay: 1.5s;
}
#hero h1:nth-child(3) span {
	animation-delay: 2.5s;
}

/* End Hero Section */

/* Services Section */
#services .services {
	flex-direction: column;
	text-align: center;
	max-width: 1500px;
	margin: 0 auto;
	padding: 100px 0;
}
#services .service-top {
	max-width: 500px;
	margin: 0 auto;
}
#services .service-bottom {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-wrap: wrap;
	margin-top: 50px;
}
#services .service-item {
	flex-basis: 80%;
	display: flex;
	align-items: flex-start;
	justify-content: center;
	flex-direction: column;
	padding: 30px;
	border-radius: 10px;
	background-image: url(./img/img-1.png);
	background-size: cover;
	margin: 10px 5%;
	position: relative;
	z-index: 1;
	overflow: hidden;
}
#services .service-item::after {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	height: 100%;
	width: 100%;
	background-image: linear-gradient(60deg, #29323c 0%, #485563 100%);
	opacity: 0.9;
	z-index: -1;
}
#services .service-bottom .icon {
	height: 80px;
	width: 80px;
	margin-bottom: 20px;
}
#services .service-item h2 {
	font-size: 2rem;
	color: white;
	margin-bottom: 10px;
	text-transform: uppercase;
}
#services .service-item p {
	color: white;
	text-align: left;
}
/* End Services Section */

/* Projects section */
#projects .projects {
	flex-direction: column;
	max-width: 1200px;
	margin: 0 auto;
	padding: 100px 0;
}
#projects .projects-header h1 {
	margin-bottom: 50px;
}
#projects .all-projects {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}
#projects .project-item {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	width: 80%;
	margin: 20px auto;
	overflow: hidden;
	border-radius: 10px;
}
#projects .project-info {
	padding: 30px;
	flex-basis: 50%;
	height: 100%;
	display: flex;
	align-items: flex-start;
	justify-content: center;
	flex-direction: column;
	background-image: linear-gradient(60deg, #29323c 0%, #485563 100%);
	color: white;
}
#projects .project-info h1 {
	font-size: 4rem;
	font-weight: 500;
}
#projects .project-info h2 {
	font-size: 1.8rem;
	font-weight: 500;
	margin-top: 10px;
}
#projects .project-info p {
	color: white;
}
#projects .project-img {
	flex-basis: 50%;
	height: 70px;
	overflow: hidden;
	position: relative;
}
#projects .project-img:after {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	height: 0%;
	width: 50%;
	background-image: linear-gradient(60deg, #29323c 0%, #485563 100%);
	opacity: 0.7;
}
#projects .project-img img {
	transition: 0.2s ease transform;
}
#projects .project-item:hover .project-img img {
	transform: scale(1.1);
}
/* End Projects section */

/* About Section */
#about .about {
	flex-direction: column-reverse;
	text-align: center;
	max-width: 1200px;
	margin: 0 auto;
	padding: 100px 20px;
}
#about .col-left {
	width: 250px;
	height: 360px;
}
#about .col-right {
	width: 100%;
}
#about .col-right h2 {
	font-size: 1.8rem;
	font-weight: 500;
	letter-spacing: 0.2rem;
	margin-bottom: 10px;
}
#about .col-right p {
	margin-bottom: 20px;
}
#about .col-right .cta {
	color: black;
	margin-bottom: 50px;
	padding: 10px 20px;
	font-size: 2rem;
}
#about .col-left .about-img {
	height: 100%;
	width: 100%;
	position: relative;
	border: 10px solid white;
}
#about .col-left .about-img::after {
	content: '';
	position: absolute;
	left: -33px;
	top: 19px;
	height: 98%;
	width: 98%;
	border: 7px solid crimson;
	z-index: -1;
}
/* End About Section */

/* contact Section */
#contact .contact {
	flex-direction: column;
	max-width: 1200px;
	margin: 0 auto;
	width: 90%;
}
#contact .contact-items {
	/* max-width: 400px; */
	width: 100%;
}
#contact .contact-item {
	width: 80%;
	padding: 20px;
	text-align: center;
	border-radius: 10px;
	padding: 30px;
	margin: 30px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	box-shadow: 0px 0px 18px 0 #0000002c;
	transition: 0.3s ease box-shadow;
}
#contact .contact-item:hover {
	box-shadow: 0px 0px 5px 0 #0000002c;
}
#contact .icon {
	width: 70px;
	margin: 0 auto;
	margin-bottom: 10px;
}
#contact .contact-info h1 {
	font-size: 2.5rem;
	font-weight: 500;
	margin-bottom: 5px;
}
#contact .contact-info h2 {
	font-size: 1.3rem;
	line-height: 2rem;
	font-weight: 500;
}
/*End contact Section */

/* Footer */
#footer {
	background-image: linear-gradient(60deg, #29323c 0%, #485563 100%);
}
#footer .footer {
	min-height: 200px;
	flex-direction: column;
	padding-top: 50px;
	padding-bottom: 10px;
}
#footer h2 {
	color: white;
	font-weight: 500;
	font-size: 1.8rem;
	letter-spacing: 0.1rem;
	margin-top: 10px;
	margin-bottom: 10px;
}
#footer .social-icon {
	display: flex;
	margin-bottom: 30px;
}
#footer .social-item {
	height: 50px;
	width: 50px;
	margin: 0 5px;
}
#footer .social-item img {
	filter: grayscale(1);
	transition: 0.3s ease filter;
}
#footer .social-item:hover img {
	filter: grayscale(0);
}
#footer p {
	color: white;
	font-size: 1.3rem;
}
/* End Footer */

/* Keyframes */
@keyframes hamburger_puls {
	0% {
		opacity: 1;
		transform: scale(1);
	}
	100% {
		opacity: 0;
		transform: scale(1.4);
	}
}
@keyframes text_reveal_box {
	50% {
		width: 100%;
		left: 0;
	}
	100% {
		width: 0;
		left: 100%;
	}
}
@keyframes text_reveal {
	100% {
		color: white;
	}
}
@keyframes text_reveal_name {
	100% {
		color: crimson;
		font-weight: 500;
	}
}
/* End Keyframes */

/* Media Query For Tablet */
@media only screen and (min-width: 768px) {
	.cta {
		font-size: 2.5rem;
		padding: 20px 60px;
	}
	h1.section-title {
		font-size: 6rem;
	}

	/* Hero */
	#hero h1 {
		font-size: 7rem;
	}
	/* End Hero */

	/* Services Section */
	#services .service-bottom .service-item {
		flex-basis: 45%;
		margin: 2.5%;
	}
	/* End Services Section */

	/* Project */
	#projects .project-item {
		flex-direction: row;
	}
	#projects .project-item:nth-child(even) {
		flex-direction: row-reverse;
	}
	#projects .project-item {
		height: 400px;
		margin: 0;
		width: 100%;
		border-radius: 0;
	}
	#projects .all-projects .project-info {
		height: 100%;
	}
	#projects .all-projects .project-img {
		height: 100%;
	}
	/* End Project */

	/* About */
	#about .about {
		flex-direction: row;
	}
	#about .col-left {
		width: 600px;
		height: 400px;
		padding-left: 60px;
	}
	#about .about .col-left .about-img::after {
		left: -45px;
		top: 34px;
		height: 98%;
		width: 98%;
		border: 10px solid crimson;
	}
	#about .col-right {
		text-align: left;
		padding: 30px;
	}
	#about .col-right h1 {
		text-align: left;
	}
	/* End About */

	/* contact  */
	#contact .contact {
		flex-direction: column;
		padding: 100px 0;
		align-items: center;
		justify-content: center;
		min-width: 20vh;
	}
	#contact .contact-items {
		width: 100%;
		display: flex;
		flex-direction: row;
		justify-content: space-evenly;
		margin: 0;
	}
	#contact .contact-item {
		width: 30%;
		margin: 0;
		flex-direction: row;
	}
	#contact .contact-item .icon {
		height: 100px;
		width: 100px;
	}
	#contact .contact-item .icon img {
		object-fit: contain;
	}
	#contact .contact-item .contact-info {
		width: 100%;
		text-align: left;
		padding-left: 20px;
	}
	/* End contact  */
}
/* End Media Query For Tablet */

/* Media Query For Desktop */
@media only screen and (min-width: 1200px) {
	/* header */
	#header .hamburger {
		display: none;
	}
	#header .nav-list ul {
		position: initial;
		display: block;
		height: auto;
		width: fit-content;
		background-color: transparent;
	}
	#header .nav-list ul li {
		display: inline-block;
	}
	#header .nav-list ul li a {
		font-size: 1.8rem;
	}
	#header .nav-list ul a:after {
		display: none;
	}
	/* End header */

	#services .service-bottom .service-item {
		flex-basis: 22%;
		margin: 1.5%;
	}
}
/* End  Media Query For Desktop */</style>
  <title>My Website</title>
</head>

<body>
  <!-- Header -->
  <section id="header">
    <div class="header container">
      <div class="nav-bar">
        <div class="brand">
          <a href="#hero">
            <h1>OBS</h1>
          </a>
        </div>
        <div class="nav-list">
          <div class="hamburger">
            <div class="bar"></div>
          </div>
          <ul>
            <li><a href="#hero" data-after="Home">Home</a></li>
            <li><a href="Livebidding" data-after="Livebidding">Live Bidding</a></li>
            <li><a href="biddinghistory" data-after="biddinghistory">Bidding History</a></li>
            <li><a href="#about" data-after="About">About</a></li>
            <li><a href="#contact" data-after="Contact">Contact</a></li>
            <li><a href="feedback" data-after="feedback">Feedback</a></li>
            <li><a href="login" data-after="login">Login</a></li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <!-- End Header -->


  <!-- Hero Section  -->
  <section id="hero">
    <div class="hero container">
      <div>
        <h1>Hello, <span></span></h1>
        <h1>Welcome to  <span></span></h1>
        <h1>Online Bidding System(OBS) <span></span></h1>
       
      </div>
    </div>
  </section>
  <!-- End Hero Section  -->

  <!-- Service Section -->
  <section id="services">
    <div class="services container">
      <div class="service-top">
        <h1 class="section-title">LIV<span>EAUCT</span>ION</h1>
        <p>It's easy to become so lost in details that we lose sight of our core job: to think strategically and use these new opportunities to drive growth for our organizations.</p>
      </div>
      <div class="service-bottom">
        <div class="service-item">
          <div class="icon"><img src="data:image/jpeg;base64,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" /></div>
          <h2>Apple Tag</h2>
          <p>As of my last knowledge update in September 2021, Apple had announced a device called the "Apple AirTag." The Apple AirTag is a small, coin-sized tracking device designed to help users locate and keep track of personal belongings, such as keys, wallets, bags, or even pets. </p>
        </div>
        <div class="service-item">
          <div class="icon"><img src="https://i.pinimg.com/originals/08/68/f7/0868f7e4b3d7be8d191cd469bc71934d.jpg" /></div>
          <h2>Audi Quattro</h2>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis debitis rerum, magni voluptatem sed
            architecto placeat beatae tenetur officia quod</p>
        </div>
        <div class="service-item">
          <div class="icon"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ8QKQS5h0l-wRSll4tQdEZNHl0GOfAJo0Rw&usqp=CAU" /></div>
          <h2>Smart Trump Card</h2>
          <p>Smart Trump Card is a collectible smart card that will enable you to make purchases online from sites like Amazon, Walmart, Ebay and other shopping sites. This card will save you money.   </p>
        </div>
        <div class="service-item">
          <div class="icon"><img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgVFRUYGBgYGBgYGRkYGRgaGRoaGBgcHBgaGBgcIy4lHB4rHxgYJjgmKy80NTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHzYrJCs0NDQ0NDQ0NDQ0NDY0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAAAQIDBAUGB//EAEMQAAEDAgMEBgYHBwQCAwAAAAEAAhEDIQQSMQVBUXEGIjJhgZETQlKhsdEUU3KSweHwByNigqLC8RUzlNKTsnODtP/EABgBAAMBAQAAAAAAAAAAAAAAAAABAgME/8QAJREAAgIBBQACAwADAAAAAAAAAAECESEDEjFBURMiBGFxMpGh/9oADAMBAAIRAxEAPwDxlCEIGKlSJUgBKkCVAAlSIQMVCEIAVKkSoAVAQEqAQIQE6EDOs/Z5SmrVf7FOPvuH/VQbfdJfoesdVf8A2ejq4k/ws+LllbaMh3P8VK5YPg557pTWpzimt1VC7HEJEsIhA6GolKQkIQGRJSSlhCAyJmSSnJEBkbKJTkiAGygpSkTJEQhCBAhCEACEIQAoQkShAxUIQkAqEICBipUiVAAEoSBOCAAJQkCUIGhwSoASwpGdj0APVxA7mf3LJ22IBvMmxWl0BdDsQOLGnyc75rN2289YTIk680Llg+DAcms1Tikp6qiex6ROISQpLoaghOhIQgdDEJxCRUKhqROKRACFIlKRBLEKRKUhQJiIQhMkEIQgDTrYCwLSDIBjQ307iqL6JaYNj32XVMrUnBoMtIDWzEg5YvmHLfEJj8CYlpa9vMO0GgWK1GuTVxXRyhSLdxOz2zYFs7u0AZjTXhpxVHE4ItB4jvtH6IWimmQ4sohKkQqEKEqRKkAqEJUDFShIlCAFCc0JAE9oSZSFASwlASgKbKo6foF/u1Bxp/BzfmqO3mQXc/xV7oNaq8/wR5kfJQdIRdx4lC5JkcwUlEXUz6RUdEX8FT4EuR5CSFIQmkKTShpCQp0IhAEZSEKSEmVOx0RpE8tTSECaGFInFIVRDGlNKcU0pksEIQgkEIQgDQ9G8GL6d559yYar2nMHEGYkW79Rqtp2NoOIINgHSDOpLSAJ4AO9ypE0nMd1gCXNgG5gNub31WSk+0buK6ZC3bFSIdDhBF7GDqJCSvjw6erE555uj5JGYEHRzTbQefzHgpP9KcdDA7436Rx1T+qJSkZKVaR2W/hP4ganjHem/QXt1YVW+PpKiyglWrTwMyMusEWIIkW/BN2pggxlN7RGYOBH8TTMjwcFKmm6G9NpWZqVNTgrJFCUJAnBAxzVK1RtUrQpZSFATgErWrsej3Q9zyH4nqs1FP13fb9kd2vJZuSXJaVlvohswtoelI7ZMfZFgfHXxVXauyi86wOGq7pzGgAZRDRAAsAOEcFSxLGawJWa1HY3FM82rbHe3UGDosp+Fc0yQvVX02G3G25YG0sBTJ1gum0fqVUdVvkXxnEFqYWraxOy4JykcisyrSLTBEFWpWOivCISlCYCQlLUFMcUDGlROKc5MJVohsQlIUhKSU6IcgKVjCTABJ0gX7k2Vu7Lw3o2fSHEiLMh2UgkWcSOsAZMAQTBIMAobpE1bK2L2eaeZj7PYQ06BrXRLmk73NuDA1Gtr5cLa2djKfpJqCJ7JcXlgcLNL4dmA4FplsA9YSClTZha/JUEOddkXaby5pcIiPaAMxaxBSTrkGr4MVC06mx3gxmadN/dceGnghVaFTFNNuhaLefjcJDh2mLEcv0VEZJJS5yFln06MeEwwbeJ9/4KzQwo+sIFt7h46qmyueCeMQdQpe4pbfC+zCuuW1b97zv1BsVr4SrlDczmOI35i0md0lukkacFgYXFQ9hdcC5G4wfeup/1ahVY9rm+jJylhdB7ME9aDGiw1d2FVmsdpafgqhbnLGAAFxAqTOpns8+cdy5PpLi2OIphpa+m5zXXBbYAWjUzK1MNtPIXMIBZBzccrRmJEa2lcdVqFzi46uJJ5kyU/wAfTe7dLrgy1pJKl2MCcEgShdhyjgnBNCe1A0PapGBMaFIFLNInadEtlBobWeJe7sT6rfa+0eO4Ltqbw1YHR6TSYYtlbHktHEVI3wudxbdstyVYLFbEWudf1ZZdbEDSecqDF48DfZYeK2q2NUlBi3I0KlaHSCYm096V2LBEEzrHPgsKrtZuk2hQO2gDcER+pVbGG5GvXyu0t3fGOCzsXSa4Fp8Com7UY3WP1+iq1XHtcNY79Y71ai0JyRQqsgwdyimFZc/PJVeo1UF9kb6ijFUgzY9xFkOTcpKtJESkzY2fiA3K91Om5gzS0sbexEE66xvWViHNzHLpJiQPCYGq6foxsdzw5jwW+kol9AuByvfnyC8GwdMwJsuWoUpPdBJ8BKiLTb/Q5XSIi4lXNoYVzDcQBlbyJaHR/Uk2fRa6vTY8EtNVrXAalpcA4DwldhtCi6oKlRjKLW5nGHEh59MxxDqh9VzRL50aDc5VUpU0iYq07OLwGH9JUYy/We1ttYJAJHgru2sa15AaBAMgjQCAIA4CMo/hYzgtfA7GNKuM3aLXABo7LiySIBzAQSOsAY3b1z20KOVwAJLcoIJblmbnnDi4SeCFJSeBOLSKS6PC1Q6ixzruafRkWGZrS1wJJ35XZBNobwlc4uk2FmFCo6A5gqNzNdo4GlVJB8m+QTlwEeTIxVQl0zubqbxlET4IUVaqCZIMw0a7g0Ae4BCKHYoqd3vKsMbLZ57xuExprCYcO/ex33StXZNSmwRVDhFRpiHdnI4ONhGpbaJUvjBojNbRkSDr+vinjDnitDCBgpNkdbM8QRutH6/NX8P6ObgLKc2h0YjMK7u9/wA1apYJ5uRMHjH4LoMPSok+W9a2GwdA+tFv18Fzy12ui0mcpicLUcwhrYJGUmdx7Wg36eJWP/oVbg37w/FerUtm0C2Q8+X581ZZsSgdX/BRH8txwkKUNztnkP8AoeI9ieTmfNR1dlVmtLnU3BrdTa143Fe1M6O0Pbn9aKOrsJkFuaWlpBm4g2MhWvzX2iPiR4cFI1FRmVzmzOVxbPGDEwlYu8zQ9oUm48kxqsUWAmDwPuEqW6Lim3SPUOjFU/RqbY7LPFV9rOcbaHu7la6MUy+i0MGjM2oHVgbzzCZtPCOd6zPF7B8Ss1JJhTONx2h/XuWDiAeK6jGbPdvfSH/20/8AssbEbNd7dP8A8tP/ALLRSXpLizEyoC0HbLf7VL/ys/7IGyXn16PjVZ809y9FtfhQASLVbsZ31tCf/lb+CUbCeZipRJAJhryTA1gQjfH0e2XhUwTeqef4IrMUmzxLTz/AJ1Zqhv7FpfVGa8KzgKGcuHBpd90gn3A+ajqNV/o9SLn1ABph6zvJhj3kKm/qTWT17ohgg0YB7iXNfQqMyuu1r2imZbOk+jmOIJ3rhNrbBbRxtak1rvRMY8Z4kBzqOduYgW1F7aL1Lo5gj9G2daMrnE8nUqn5KDGbLZV2i4Pc0tFNn7okhz84qMe4BrhbKGyS09kQQuJSccl8ngr6TmVZIMgF40PVLS5ruUQbrQw+0sodWe55qEjKAXBrwz0ZDXuDg4NiCIPqAKXb7Gte0+kDnfRgHFhvnBczI65khgaDpYaWhZO0cuWnDpJYCdLHK1sW7mjvXaqdEPFmozpE15Y2pTa1rXZmlpcQ07uoZAbOrWZSRvm6zsVtVzyYsCHAgku7RJcRPOOICy0K1FLgz3MF0OFeW4J9ozveSfs+iDB45qvkVzy39qDJh6TJNwwndcNdUP8A+kD+RDBGI58oSZkJgJcJ2cjeVMwDKZ8FLDYdyt5n5qbHRV+kO9op4xLuKnYGHNw6sa+Klp0GlsgyYuOFyI7+z70NrtBT9K7dovG9WKe26rd48Qfmn4bDMJAmZBPy+XitDDbKpODwHiWzY8BNxbl71nJwXKLSk+yszpPWHDzIU7OllQeqPvEJ+D2TSc4APBDp1OlpkcdFZb0fpAPAeHObmywReJgi/DKfNZS+HuJSUvSJnTJ49U/f/JWGdNqrT2D3gn8lVwew6ZMF4uCR3Re/dA+Ch29hGU2NDS1xa4sJAvcA2PAFjvvlSo6MpUkD3JW2ZGKqB73uaIDnucAdQHOJAPmkaogpGrqM0StV3Z7QXtDtDIMcMpVJqtYN+V7SNxCmSwzSDppnqXQEzSYDoWAHwc2R7l21UCNO9cP0A/26Z8D95sLtqzSc2XXeeG5oHvd/lcupyWuDJxjBBlvukrIxDGb2tEGLxv7/ABWzjHVIiBw3GO/iTf8ApGma2M+m8y5zRLQSxkyASNSfdPM74GL/AKaJlNzG5oytmJNrwTvG6YU9OgOA8lAygWEZesSeu48rkDjoANAI4QRtSreWbrad2p4xPjI0AJT/AKUiw5gANhPCLnhbwWTtwD0RdFxEd14PuJHiVfa2oJMCSbkxfx1iwA4B3EXzdsOf6N+aB2Y09pv68PKoL7IHwzh9mjqO+1/aE6sFLsKlmYT/ABf2haLsADuXZKVNmKVpHN1GrrOgWF6uKqEAD0TaINu1VqNJid4awqKlsYOiBJO5dfsnCMw7GUhD3F2dwt23CAO8gSB3krPU1PrSDad1gRk+h0yexQfUdzDWMEnnUPkuTr49r9usLWuOSjDRaHZWVHSZuO0R5KzW2m/OXhwJyBkiIhpLiAIiM536hoXK4LEOdtJ723LKTy50gnMRldB/nKyUm/8ARKicXjsZ+8qOAu70rRJAgPaWkiBfV4uTZ24iVkV4LWkNiBBMzJjhu0K09pPALhAu4nvjNMeaoBkte3LdpnhEOi48SF2weDORRQhC0Myxg6BqPazTMQJ4Am5PcBJ8Ff6Q4kPqwNGg24Fzi8t4WLsvgFHspoaH1HR1WljQTEueId/Rn8SFn1HEkk6kyfFLlj6GIQhMQ+O+3ilyd4/XgrAYC2YuAbzAEd2/d5hRU6LnGBqRIm0juSsqhopniPMKQNIuC21u0EtOl1gCfWDTBB10g6FXm4JpZUI7TDMybgQSI00J3bkm65BKzPDHDQi9u0PLVOo5wZbrzCQNtqlDhxKGxpE9BlVhLmtE8ZBjlfVPpmqwzlMzznndRZ++B4KwxjCCCHZyQG3bl0MgiOOW8hQ36ikv2QNfVaSQ14PI2TKznuABa7edDvJXT4TY1B4a8vBzhnVZDchO59nEXEaLVp7Bo03OcQx8WLHNgQQ2SyXZ5BvmgRMSsX+RCL4z/C1pSfZ56E9qs7Ww3o6r27pkcj3qq0rpTtWjKqdEzSpqPaHOPNVwVIx0EHhdJopOnZ61+zx00aY+z/7D5LvXMie9eb/s5xILGiezryaQSfivSnu4cFx63+RrF4MrGA7o8VgYwOE2Ov5ldBjKbjcGOd9yyMTTeT2hyjcudmiZhUS8HfeTGt8th5wP5fFaNMPgfiP1ZOFIgDrAEjrGLngm1WOsc8aaTumfj7kPJSGvn/Cxttg5HeHxC1gYsSTp7tVQ2tGQibktAH8w/CfJVD/JBLg4zo2f3Z+3/a1brGlxAG9YPR0xTP2v7WrVZjWECm1wBdJe7fGgaOdye4jiV1ajyzOLqKN2lXZTaGs6ziL1JgC+jO7v/wArXp1PRNAsajgctv8AbbEZj/EROXgJPBS9F9nMp0X4hzGvLCWMa4iJgaDeS5zWDhmPBdWNkikyW0W1qpMve/KS5zu0RmNhOg3CAuba5ZJc+jyvaW1C1uVjtdYF4Bt1t3gs/onjo+kPLZILRJ1LCS5wn+Ron+Jel9JNhUzh31XBlJ7ATDR1S0GwLTOV26QTdebbCw4Gz8VWmCKwpg/aa2fHrHyK1S+rVeE3kwNpFjnF2XUAcv4gBvSVXtbkrtb1XEsqNtcmC+3C4I/JVcWBeDZUBUs4cedr6966YrBDZqbdwgY7dBAc0tILSHCWkEW0WK1hJAFySAO8nRXMj3BtOLkS2TqCJAHO0eSdsUuFemWgFwcCM0xIvu4R7lcU4rJDyy5tljaLW0mGR1pdxIdlee8Zm5f5FhLW29Tioeu14b1A5pkOjtFsSIzE79/eslUuBPkEIQmIuUHjKQfDy/NNpunLG7UTyAsVE0mLA96G0X7mu8AUqKsnqOguIg9lwPeDGnmtDC1AXOB9ZvdfUTwvKyvo7/Yf90qYMqTJY42jQ/JJq1Q06ZFTqC0jRK+oCZDQL7p96HYOoBJa6OMHhN+G/wAiohTP6KeBWyYVOIC6LZ+Gwt5qtqHK7I1zHASIJJAdqRYCeOq5ltBx0HvClbhXkQAPMTb/AColG1V0UpNdHcUGYQXc3K4TlLJbDXNggh7iD2iL8ElGpQY391EtOUOzBwIeJLS5rMpNhYlcpQo12gtBEHUEtdyN5jmpBhsQ4iXSBuzdXutouZ6K7l/02Wp+izt452l5iQ5otuDg6x8m+9YYK262ArOZkyt7QcSHawCGj3n3Ku3YdWb5Rv7XctoSjGNWZyTbtGeCngrQobAqucGjLLjA61pPG1loM6G4omMgBBIOtiACRYawRZN6kFyxJS8N39nOKLA5wAMEiDpBsV1eM2uGCcjuTatRo8ADbkuM6GsNM1GPEOa9zXDgQSD8CtvaVTqpOEZOwTaRXxXSYAn93U8MTVWNielI+rqf8mp8lRxrrrCxj0/ij4Lezcd0ob9XU/5NVIekrfq6n/JrLly5Oa5P4ohvkdA7pA36p2u/EVj+KQ9IQDLaLQbiXPe8iRBjNosGU0lP44+Bvkbey62Sk/uLj/SFQw+KLHZu78IUuDf1COJPvAWe83KSim3ZTdJHdbN6TvGHcC6ctSk+N/Ve5/kS1v3QtKj+0CrQeSCHtc3QyYc4ybmDm1964jB0W/Razw8B7ajAWHVzXTlc3jBzTzatTpDsvCtZno4jM7qj0fVfJLGuLg5pENuZmSHCLzKxelFSKTbRJ0i6X1cS7rPMAZsuY5ZFwA1ptzme9QvrvbQGDa+nlqYh73EOJaXNa1gJdrlgOPNcu5m9K49UdxcI5wtlppKkQ5PtGzj8G1oNQ4ihVzg2D6pfJsHZS0EETbMTpvVSgKVnPOYNd1myWuc2GgAAiI7VxfWYtOWSnNbJiQOdgr245J3Zwjbe5hLmxDWOq5Bm6wabsgwMxBvJ1CuNZSPo6zQ1zvRkPa4y11UOdGZoHsAuO42435ndr8OSsUXQ7K11iYzXAjQE929JxGpCYvEl7nF2WSSSQ1rZMm9hYX0004KorGLw2R0ZmusDLTIvuniq6tcEO7yCEIQI0tm05qtZI61hOmb1fAmBycVar4YNdEyAQO/I6C08wHMv3lZgqlrmubYtIIPeDI+C1toVs5eeLZA5PdA8mt+6Fm7tGuBowoio0lxdTlzRlcYHaBM2aNZnVSY3DMPo6rmuyugOkugyJBDiBbUQCYgXTKdUmpM9pjSZL26W1YR5m0X51KjwaQa6OqeqYGbLmI4zEnSN2qFYnR02yKNN0scTIJY03BiYbrHt0dR6z9xTG4HDF7YFiA8lpbkDSAZMmQOsN2jTIsVn4HFAOc7Q5GFt9SGz/Y37qs1MW1rgPUBc31wbFwDZbu6osfGwWdPcXeCavhqVN7mkC0wXRJE2dlae4843XCnpvpCOqwxEQBMzaZt4nd4LG2rXY5jHAuzBrWt1ILQ0TJNxGm/8VktxB4/FPZayJypnbMxGHBlwAGkEGO/qgcf1qtD6dhwOw3lmuRzmd/v8vPPpRJmZ5zClbij3Dl+X6us5aFjUzvf9abA7MXiMoiw3R3f4soau1Rlyl3Cxa12lhaOG9cWzFX/wfLgpG4oC4t+ah6BSkdNs/a9VuIZ6INz5so6oHb6ridJsSfBd1j9ouZVMR1mhwIAEPY4QTPc55jlqYB8l2djxTr03uAc1j2uIMxAdrbhr4XBXb7U2uwlmUgiHtBHW9Rx7T3CbTcnfvKx1dJqUaXTKi00zMwlacTiXDR1Z7xye4uHxCubQdae5YeyqwNWqdxf8dPctbGVJYu6KpIxZzmNesTEuWpjn6rFrvkrREMhKe1MTgmIUlCCmoAt4d8DxUdcSZ801roQXpVk0w40RtKmZV3KEqVtGwOZtzEZr77mbRb3hDVkptD3PEaqEOGUjvBVr6DLWuDhLps45dDFidU8UHtDQJBI3bwLg25nzSTRTTZmFC0sZhWgj1Z4va+eRY2OCr1KQABnf8t0CN91SdkOLRVTmugyh7CDBEJqZJexmIBAFnWEOy5S2YJbY9aNJMqihCEqAEIQgCaoLKdz7RPquH/sqznk6wi54eYU0W2XGVJc257EdWJ96Y6qfRkTYuNpMkzM8FXDTxHml9F3t808CyWKdaIv6oFvsuG7mpamIvIdEOJvJMmTbzPkqjaX8TfNKaE+s3zCWLHmiTHYkOyhvZaIA4fqAqYcrQwo9oeYUrcEze8eYRaQqbKIcl9IVpNwDPa/qCmGzmcQf5knOI1BmQXkpA8raZg6e9o+9PulWG4Olwb5KXqx8K+N+nPB3FW3Y0mLxGndaPhZbrMIzc1vkVo4aiwDstHjf4yFD1V4XHTfpg7HxrWlxcYla79oMLe0FV2lsh1V2ZhYLRq+SN0kiFSPRvEDQNPJzfxVxlF5siUWmQY2sDMFZj4Wo7o/iB6g+8z5qM7CxH1f9TPmrUl6Q0/DMKWVfOxa/1Z+835oGxq/sf1M+adr0VPwokpFojYtb2Wjm5vzTxsSpvLBzd8gluXo6fhSp0S4SOSR9EjcV0uCwzWNDXOZI4HXvMpXtZ7TfMLN6mTVRwcxVeMrWgREyeJKgXTPYzeWe5QOo0juZ4OCa1P0S4fsycB/uMkSA5pIiZAMkRyldfT2ex7K1TqU4LslPPL8zWgNaGk31bNgDpaJWE2jTBDmuDSDIIfBBGhBGie6NfTOkmT+83xrqlJ2xxTRm7TADyG9mAQBBgG+osddVSlatTCMJk1AT3uHxUf0Nntt+8FakqIcXZnKWRliIIJvNiOEcVaODZ9Y3zHzR9DZ9Y3zHzVbkLayghXjg2fWN8wmnCt9tvmEWG1lNCt/RW+23zSotBtZTRKEJkhKEIQAIlCEACJQhAAhCEACEIQAJUiEAKEqEJDBCEIGIhCECEQhCYgQhCABCEIAEIQgAQhCABCEIAEIQgAQhCAP/2Q==" /></div>
          <h2>200-year-old bottle of wine</h2>
          <p>The sweet South African vino  — a blend of “ripe and raisined” red muscadel and pontac — was slated to be sent in 1821 to the island of St. Helena, where Napoleon had been living in exile, according to the Cape Fine & Rare Wine Auction house in Stellenbosch, South Africa.</p>
        </div>
      </div>
    </div>
  </section>
  <!-- End Service Section -->

  <!-- Projects Section -->
  <section id="projects">
    <div class="projects container">
      <div class="projects-header">
        <h1 class="section-title">Recent <span>Bids</span></h1>
      </div>
      <div class="all-projects">
        <div class="project-item">
          <div class="project-info">
            <h1>Bid 1</h1>
            <h2></h2>
            <p>1909 E92 NADJA CARAMELS RUBE ELLIS SGC 5.5 EX+
               SGC Population 1 Of 2 - Just Two Graded Higher</p>
          </div>
          <div class="project-img">
            <img src="https://dilxwvfkfup17.cloudfront.net/eyJpdiI6IllJbW14M2o2TDlRalhQcWJESmdSekE9PSIsInZhbHVlIjoicjNpaG0ra011eUt5N3l4dDV2ZTJVaWJXMWpHVW9BcmVJckplbVV2bkZId0l3SDg0SmowUThycUlINFZlRnR3SStLeWdlL01BWEgzemdva0orQ2RQNnc9PSIsIm1hYyI6ImU1Zjk5YTVhY2Y5ZTMyYTY2YTI4OGEyMDI0NmQ0ODgwN2E4MDY3MzIwYjdkZDEwMDlmMGQxMjExM2E1ZjlhN2EiLCJ0YWciOiIifQ==" alt="img">
          </div>
        </div>
        <div class="project-item">
          <div class="project-info">
            <h1>Bid 2</h1>
            <h2></h2>
            <p>2000-S SILVER 25C MASSACHUSTETTS NGC PF69 UCAM
                $7 / CURRENT BID</p>
          </div>
          <div class="project-img">
            <img src="https://dilxwvfkfup17.cloudfront.net/eyJpdiI6IjFrWWFpM3dQZFRKblJ6SDlQRTVBVUE9PSIsInZhbHVlIjoiUzZFamZJdDRwdUFoSkRvUzBFRmRDR3ZDNWRkYzVtd3lFYktXRTM1Zk1VTFNmdkw2QjRKblArMDYvSlVrc05PUmdTMXdja2NWNFdsS1lzU2FxdGtPS1E9PSIsIm1hYyI6ImE2NmYyMTAwNzZlZjBlNGM0MjQ5M2Q1ZTJmMGNjNDE0MzRlNTRlNDA2ZjlkMTJiYTg2YWU4ZDJkZmFmZjA0NDIiLCJ0YWciOiIifQ==" alt="img">
          </div>
        </div>
        <div class="project-item">
          <div class="project-info">
            <h1>Bid 3</h1>
            <h2></h2>
            <p>ADVENTURE COMICS #361 (D.C., 1967) CGC 4.5 OFF-WHITE TO WHITE PAGES
              $6 / CURRENT BID</p>
          </div>
          <div class="project-img">
            <img src="https://dilxwvfkfup17.cloudfront.net/eyJpdiI6IkNzVDZ3b2Q0VHd2S25iMHJkQ1Fvamc9PSIsInZhbHVlIjoiWGl6ZEFla2pGZ0JuNzBGblR2eG9jVE9IYTd2NkNkdzAyQVFQRFMrR3hpYTdnVUpCUVpuYyt2Wk9qenJqYnRFTE8yc3piSFVsdEdNRHFmK1VWTXV3TFE9PSIsIm1hYyI6IjdjNWFhOWU0YTk3YjFiM2ZkZTljYzQ2MjI2OWRhMmU2OTFiZTQ0OTQ1OWYyNTY3NTNlMzRlYWZiMjg1ZTJiYTUiLCJ0YWciOiIifQ==" alt="img">
          </div>
        </div>
        
        <
        </div>
      </div>
    </div>
  </section>
  <!-- End Projects Section -->

  <!-- About Section -->
  <section id="about">
    <div class="about container">
      <div class="col-left">
        <div class="about-img">
          <img src="download.png" alt="img">
        </div>
      </div>
      <div class="col-right">
        <h1 class="section-title">Abo <span>ut</span></h1>
        <h2>Online bidding System</h2>
        <p>This online bidding system is a web-based platform that allows users to participate in auctions or bidding processes over the internet. It has gained popularity in various industries, including e-commerce, real estate, art, and more. Here are some key aspects of online bidding systems:</p>
        
      </div>
    </div>
  </section>
  <!-- End About Section -->

  <!-- Contact Section -->
  <section id="contact">
    <div class="contact container">
      <div>
        <h1 class="section-title">Contact <span>info</span></h1>
      </div>
      <div class="contact-items">
        <div class="contact-item">
          <div class="icon"><img src="https://img.icons8.com/bubbles/100/000000/phone.png" /></div>
          <div class="contact-info">
            <h1>Phone</h1>
            <h2>+91 9345687456</h2>
            <h2>+91 789388964</h2>
          </div>
        </div>
        <div class="contact-item">
          <div class="icon"><img src="https://img.icons8.com/bubbles/100/000000/new-post.png" /></div>
          <div class="contact-info">
            <h1>Email</h1>
            <h2>krishna@gmail.com</h2>
            <h2>harsha@gmail.com</h2>
            <h2>charan@gmail.com</h2>
          </div>
        </div>
        <div class="contact-item">
          <div class="icon"><img src="https://img.icons8.com/bubbles/100/000000/map-marker.png" /></div>
          <div class="contact-info">
            <h1>Address</h1>
            <h2>KL University,vadesswaram ,vijyawada</h2>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Contact Section -->

  <!-- Footer -->
  <section id="footer">
    <div class="footer container">
      <div class="brand">
        <h1>KriCHar</h1>
      </div>
      <h2>The best coder.</h2>
      <div class="social-icon">
        <div class="social-item">
          <a href="#"><img src="https://img.icons8.com/facebook" /></a>
        </div>
        <div class="social-item">
          <a href="#"><img src="https://img.icons8.com/instagram" /></a>
        </div>
        <div class="social-item">
          <a href="https://t.me/Harssha_vardhan"><img src="https://img.icons8.com/telegram" /></a>
        </div>
      </div>
      <p>Copyright � 2023 . All rights reserved By CHK..</p>
    </div>
  </section>
  <!-- End Footer -->
  <script src="./app.js"></script>
</body>

</html>