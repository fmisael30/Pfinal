<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<title>App Starter HTML CSS Website Template</title>
<!--
App Starter Template
http://www.templatemo.com/tm-492-app-starter
-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/font-awesome.min.css">

<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/owl.carousel.css">

<link href='https://fonts.googleapis.com/css?family=Unica+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,700' rel='stylesheet' type='text/css'>

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">

</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">


<!-- PRE LOADER -->

<div class="preloader">
     <div class="sk-spinner sk-spinner-pulse"></div>
</div>



<!-- Navigation Section -->

<div class="navbar navbar-default navbar-fixed-top">
	<div class="container">

		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="index.html" class="navbar-brand"><span>U</span> Song</a>
		</div>

		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">				
				<li><a href="spark.tamplate.freemarker/login.ftl">Sign In</a></li>
				<li><a href="spark.tamplate.freemarker/upload.ftl" class="smoothScroll">Upload</a></li>
				<li><a href="spark.tamplate.freemarker/My-Uploads.ftl" class="smoothScroll">My Uploads</a></li>
                <li><a href="spark.tamplate.freemarker/.ftl" class="smoothScroll">Try Premium</a></li>
        		<li><a href="spark.tamplate.freemarker/sign-up.ftl">Sign Up</a></li>
        		</ul>
		</div>

	</div>
</div>


<!-- Upload Section -->

<div class="fh5co-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 animate-box">
					<h3>Let's Upload the Disc</h3>
					<form action="upload" metho="post">
						<div class="row form-group">
							<div class="col-md-6">
								<!-- <label for="fname">Song's Name</label> -->
								<input type="text" id="fname" class="form-control" placeholder="Song's Name">
							</div>
							<div class="col-md-6">
								<!-- <label for="lname"></label> -->
								<input type="text" id="lname" class="form-control" placeholder="Artist">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="email">Feat.</label> -->
								<input type="text" id="email" class="form-control" placeholder="Featuring (Opcional)">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="subject">Launch Date</label> -->
								<input type="text" id="subject" class="form-control" placeholder="Launch Date">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="message">Country</label> -->
								<input type="text" id="subject" class="form-control" placeholder="Country">
							</div>
						</div>
						
						<img src="img/team-img3.jpg"><br>
						<h4>... Here is the album's image</h4>
						
						<div class="form-group">
							<input type="submit" value="Upload Disc" class="btn btn-primary">
						</div>

					</form>		
				</div>
				
				
				
<!-- Info Section -->
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<div class="fh5co-contact-info">
						<h3>Contact Information</h3>
						<ul>
							<li class="address">57 East 7th Street, <br> Suite 230 Seattle St 98101</li>
							<li class="phone"><a href="tel://1234567920">+ 1235 2355 98</a></li>
							<li class="email"><a href="mailto:info@yoursite.com">info@usong.com</a></li>
						</ul>
					</div>

				</div>
			</div>
			
		</div>
	</div>

<!-- Footer Section -->

<footer>
	<div class="container">
		<div class="row">

               <div class="col-md-8 col-sm-6">
                    <div class="wow fadeInUp footer-copyright" data-wow-delay="0.4s">
                         <p>Copyright &copy; 2018 Usong
                         <span>||</span> 
							All Rights Reserved</p>
                    </div>
               </div>

			<div class="col-md-4 col-sm-6">
				<ul class="wow fadeInUp social-icon" data-wow-delay="0.8s">
                         <li><a href="#" class="fa fa-facebook"></a></li>
                         <li><a href="#" class="fa fa-twitter"></a></li>
                         <li><a href="#" class="fa fa-google-plus"></a></li>
                         <li><a href="#" class="fa fa-dribbble"></a></li>
                         <li><a href="#" class="fa fa-linkedin"></a></li>
                    </ul>
               </div>
			
		</div>
	</div>
</footer>

<!-- Modal Sign Up -->

<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
      <div class="modal-content modal-popup">
          <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
               <h2 class="modal-title">Sign Up</h2>
          </div>

               <form action="#" method="post">
                    <input name="name" type="text" class="form-control" id="name" placeholder="Your Full Name" required>
                 	<input name="email" type="email" class="form-control" id="email" placeholder="Email Address" required> 
					<span></span>
					`<select id="sex" name="sex">
                        <option value="" selected="selected">Sex</option>
                        <option value="hombre">Man</option>
                        <option value="mujer">Woman</option>
                        <option value="otro">Other</option>
                    </select> 
					<br>
                 	<input name="password" class="form-control" id="password" placeholder="Password" required>
					<select id="day" name="day">
                        <option value="" selected="selected">Day</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option> 
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                    </select> 
					
					<span> - </span>
					
					<select id="month" name="month">
                        <option value="" selected="selected">Month</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select> 
					
					<span> - </span>
					
					<select id="day" name="day">
                        <option value="" selected="selected">Year</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993">1993</option>
                        <option value="1992">1992</option>
                        <option value="1990">1990</option>
                        <option value="1989">1989</option>
                        <option value="1988">1988</option>
                        <option value="1987">1987</option>
                        <option value="1986">1986</option>
                        <option value="1985">1985</option>
                        <option value="1984">1984</option>
                        <option value="1983">1983</option>
                        <option value="1982">1982</option>
                        <option value="1981">1981</option>
                        <option value="1980">1980</option>
                        <option value="1979">1979</option>
                        <option value="1978">1978</option>
                    </select> 
					
					
                    <input name="submit" type="submit" class="form-control" id="submit" value="Sign Me">
               </form>
          </div>
     </div>
</div>


<!-- Modal Sign In -->

<div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
      <div class="modal-content modal-popup">
          <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
               <h2 class="modal-title">Sign In</h2>
          </div>

               <form action="#sign-in" method="post">
                 	<input name="email" type="email" class="form-control" id="email" placeholder="Email Address" required>
					<input name="password" class="form-control" id="password" placeholder="Password" required>
                    <input name="submit" type="submit" class="form-control" id="submit" value="Sign Me">
               </form>
          </div>
     </div>
</div>

<!-- Back top -->

<a href="#" class="go-top"><i class="fa fa-angle-up"></i></a>


<!-- SCRIPTS -->

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/magnific-popup-options.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/smoothscroll.js"></script>
<script type="text/javascript" src="js/wow.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>

</body>
</html>