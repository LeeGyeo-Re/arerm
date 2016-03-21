<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="no-js oldie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="no-js oldie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>

   <!--- basic page needs
   ================================================== -->
   <meta charset="utf-8">
	<title>arerm</title>
	<meta name="description" content="">  
	<meta name="author" content="">

   <!-- mobile specific metas
   ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta charset="utf-8">
 	<!-- CSS
   ================================================== -->
   <link rel="stylesheet" href="resources/css/base.css">
   <link rel="stylesheet" href="resources/css/vendor.min.css">
   <link rel="stylesheet" href="resources/css/main.css">     

   <!-- script
   ================================================== -->
	<script src="resources/js/modernizr.js"></script>

   <!-- favicons
	================================================== -->
	<link rel="shortcut icon" href="arerm.png" >

</head>

<body>

	<!-- header
   ================================================== -->
   <header id="main-header">

   	<div class="row">

	      <div class="logo">
	         <a href="./"></a>
	      </div>

	      <nav id="nav-wrap">         
	         
	         <a class="mobile-btn" href="#nav-wrap" title="Show navigation">
	         	<span class="menu-icon">Menu</span>
	         </a>
         	<a class="mobile-btn" href="#" title="Hide navigation">
         		<span class="menu-icon">Menu</span>
         	</a>            

	         <ul id="nav" class="nav">
	            <li><a class="smoothscroll" href="#arerm">Main.</a></li>
	            <li><a class="smoothscroll" href="#introduce">Introduce.</a></li>
		        <li class="current"><a class="smoothscroll" href="#portfolio">Product.</a></li>
	            <li><a class="smoothscroll" href="#contact">Contact.</a></li>
	            <li><a href="./list">List.</a></li>
	         </ul> <!-- end #nav -->

	      </nav> <!-- end #nav-wrap -->

	      <ul class="header-social">
	        	<li><a href="#"><i class="fa fa-facebook"></i></a></li>
	        	<li><a href="#"><i class="fa fa-twitter"></i></a></li>
	        	<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
	      </ul>      

	   </div>

   </header> <!-- end header -->


   <!-- homepage arerm
   ================================================== -->
   <section id="arerm">	
   	  
		<div class="row arerm-content">

			<div class="twelve columns arerm-container">

			   <!-- arerm-slider start-->
			   <div id="arerm-slider" class="flexslider">

				   <ul class="slides">

					   <!-- slide -->
					   <li>
						   <div class="flex-caption">
								<h1 class="">안녕하세요.
								</h1>	
								<h3 class="">(주)아름전자의 자동화기기는 고객이 원하고 생각하는 기능과 성능을 최선으로 지원하는 시스템이 되도록 항상 노력하고 있습니다.</h3>		
											   
							</div>						
					   </li>

					   <!-- slide -->
					   <li>						
							<div class="flex-caption">
								<h1 class="">아름전자입니다.</h1>

								<h3 class="">사회를 아름답고 자유롭게 지원하는 회사
								<br>창의적인 기술과 서비스로 고객의 행복을 지원하는 회사
								<br>다양하고 편리한 자동화시스템을 공급하는 회사
								<br>빠르고 용이한 제품의 설치 및 사용을 지원하는 회사가 되도록 최선을 다하겠습니다.
								<br>㈜아름전자의 Arerm Automation™ 	
								</h3>			   
							</div>					
					   </li>

					   				              

				   </ul>

			   </div> <!-- end arerm-slider -->				   

	      </div> <!-- end twelve columns-->

		</div> <!-- end row -->	

		<div id="more">
		      <a class="smoothscroll" href="#items">More About Us<i class="fa fa-angle-down"></i></a>
		</div> 	

   </section> <!-- end homepage arerm -->
<!-- Introduce
   ================================================== -->
   
   <section id="introduce">
   <div class="row introduce">

      	<div class="twelve columns">

      		<h1>Our Company<span>.</span></h1>
			<hr></hr>
	                     

	       <p>(주)아름전자는 Arerm IoT Platform™과 관련 응용시스템 및 부품을 상품으로 공급합니다. Sensor, Controller, Actuator, Network, Server 등을 이용하여 원하는 IoT및 자동화 응용기기를 빠르고 효율적으로 구축할 수 있도록 지원합니다.</p>             
			<div class="intro-wrap">
				<img src = "resources/images/arerm/intro.png" class = "intro"></img>
			</div>
			<p>(주)아름전자는 IoT & Automation Platform을 구축하고, 다양한 Sensor Modules, Control Units, Actuator Modules, Server Computer, Network & I/O, Emulation Entry Tool 등이 결합하여 다양한 IoT 및 자동화장치를 구축할 수 있도록 지원합니다.</p>
			<div class="intro-wrap">
				<img src = "resources/images/arerm/img_reintro3.jpg" class = "intro"></img>
			</div>
	      </div>

      </div> 
   </section>

   <!-- portfolio
   ================================================== -->
   <section id="portfolio">

    

      <div class="row items" id = "items">
		<h1>Our Projects<span>.</span></h1>
		<hr></hr>
         <!-- portfolio-wrapper -->
         <div id="portfolio-wrapper" class="bgrid-third s-bgrid-third tab-bgrid-half">

            <div class="bgrid folio-item">
               <div class="item-wrap">
                  <a href="#modal-01">
	                  <img src="resources/images/arerm/img_ararmSmart.jpg" alt="factory">
                     <div class="overlay"></div>                       
                     <div class="portfolio-item-meta">
     					      <h5>Factory Automations</h5>
                        <p>Automatical system</p>
     					   </div> 
                     <div class="link-icon"><i class="fa fa-plus"></i></div>
                  </a>
               </div>
        		</div> <!-- item end -->

            <div class="bgrid folio-item">
               <div class="item-wrap">
                  <a href="#modal-02">
                     <img src="resources/images/arerm/img_home.jpg" alt="Home Automations">
                     <div class="overlay">
                      <div class="portfolio-item-meta">
          					   <h5>Home Automations</h5>
                           <p>Automatical system</p>
          					</div>
                     </div>
                     <div class="link-icon"><i class="fa fa-plus"></i></div>
                  </a>
               </div>
         	</div> <!-- item end -->

            <div class="bgrid folio-item">
               <div class="item-wrap">
                  <a href="#modal-03">
                     <img src="resources/images/arerm/img_argri.jpg" alt="Agriculture Automations">                        
                     <div class="overlay">
                      <div class="portfolio-item-meta">
          					   <h5>Agriculture Automations</h5>
                           <p>Automatical system</p>
          					</div>
                     </div>
                     <div class="link-icon"><i class="fa fa-plus"></i></div>
                  </a>
               </div>
         	</div> <!-- item end -->

            <div class="bgrid folio-item">
               <div class="item-wrap">
                  <a href="#modal-04">
                     <img src="resources/images/arerm/environment.gif"alt="Environmental Cleanup Automations">
                     <div class="overlay">
                      <div class="portfolio-item-meta">
          					   <h5>Environmental Cleanup Automations</h5>
                           <p>Automatical system</p>
          					</div>
                     </div>
                     <div class="link-icon"><i class="fa fa-plus"></i></div>
                  </a>
               </div>
         	</div> <!-- item end -->

            <div class="bgrid folio-item">
               <div class="item-wrap">
                  <a href="#modal-05">
                   <img src="resources/images/arerm/sequrity.gif" alt="Security Automations">
                     <div class="overlay">
                      <div class="portfolio-item-meta">
          					   <h5>Security Automations</h5>
                           <p>Automatical system</p>
          					</div>
                     </div>
                     <div class="link-icon"><i class="fa fa-plus"></i></div>
                  </a>
               </div>
         	</div> <!-- item end -->

            <div class="bgrid folio-item">
               <div class="item-wrap">
                  <a href="#modal-06">
                     <img src="resources/images/arerm/imgIoT.jpg" alt="IoT Applications">
                     <div class="overlay">
                      <div class="portfolio-item-meta">
          					   <h5>IoT Applications</h5>
                           <p>Automatical system</p>
          					</div>
                     </div>
                     <div class="link-icon"><i class="fa fa-plus"></i></div>
                  </a>
               </div>
         	</div> <!-- item end -->


         </div> <!-- end portfolio-wrapper -->
         

         <!-- modal popup
	   	========================================================= -->
         <div id="modal-01" class="popup-modal mfp-hide">

		      <div class="media">
	      		<img src="resources/images/arerm/img_ararmSmart.jpg" alt="Factory" />
	      	</div>

		      <div class="description-box">
			      <h4>Factory Automations</h4>
			      <p>ArermSmart-FA-100 시스템은 생산현장에서 각종 Sensors를 이용하여 환경과 조건을 점검하고, 측정된 수치를 근거로 각종 Actuators를 정해진 제작공정으로 진행하게 하는 자동으로 제어장치이다.</p>
               <span class="categories">Automatical system</span>
		      </div>

            <div class="link-box group">
            	<a href="oldpage/factory.html">Details</a>
            	<a href="#" class="popup-modal-dismiss">Close</a>         
            </div>

	      </div><!-- modal-01 end -->

         <div id="modal-02" class="popup-modal mfp-hide">

		      <div class="media">
	      		<img src="resources/images/arerm/img_home.jpg" alt="Home" />
	      	</div>

		      <div class="description-box">
			      <h4>Home Automations</h4>
			      <p>ArermSmart-HA-100 시스템은 각종 Sensors를 이용하여 환경과 조건을 점검하고, 측정된 수치를 근거로 가정의 여러 가전 및 전기제품 정해진 기능으로 진행하게 하는 자동으로 제어장치이다.</p>
               <span class="categories">Autometical system</span>
		      </div>

            <div class="link-box">            	
               <a href="oldpage/homeAut.html">Details</a>
		         <a href="#" class="popup-modal-dismiss">Close</a>
            </div>

	      </div><!-- modal-02 end -->

         <div id="modal-03" class="popup-modal mfp-hide">

		      <div class="media">
	      		<img src="resources/images/arerm/img_argri.jpg" alt="" />
	      	</div>

		      <div class="description-box">
			      <h4>Agriculture Automations</h4>
			      <p>ArermSmart-AH-100 시스템은 각종 Sensors를 이용하여 환경과 조건을 점검하고, 측정된 수치를 근거로 농, 축산 농가의 여러 업무들을 정해진 기능으로 진행하게 하는 자동제어장치이다.</p>
               <span class="categories">Autometical system</span>
		      </div>

            <div class="link-box">
               <a href="oldpage/Agri.html">Details</a>
		         <a href="#" class="popup-modal-dismiss">Close</a>
            </div>

	      </div><!-- modal-03 end -->

			<div id="modal-04" class="popup-modal mfp-hide">

		      <div class="media">
	      		<img src="resources/images/arerm/environment.gif" alt="" />
	      	</div>

		      <div class="description-box">
			      <h4>Environmental Cleanup Automations</h4>
			      <p>ArermSmart-CleanAutoH2O-100 시스템은 각종 Sensors를 이용하여 폐수처리장의 상태를 측정하고, 측정된 수치를 근거로 각종 Actuators를 통하여 폐수처리공정을 자동으로 처리함으로써, 원하는 수준의 환경으로 수질을 개선시키는 제어장치이다.</p>
               <span class="categories">Autometical system</span>
		      </div>

            <div class="link-box">
               <a href="oldpage/environment.html">Details</a>
		         <a href="#" class="popup-modal-dismiss">Close</a>
            </div>

	      </div><!-- modal-04 end -->

	      <div id="modal-05" class="popup-modal slider mfp-hide">	

	      	<div class="media">
	      		<img src="resources/images/arerm/sequrity.gif" alt="" />
	      	</div>      	

		      <div class="description-box">
			      <h4>Security Automations</h4>		      

			      <p>ArermSmart-SA-100 시스템은 각종 Sensor와 보안장치를 이용하여 일정공간의 방범 방제를 자동으로 수행하는 자동 제어장치이다.</p>

			      <div class="categories">Autometical system</div>
               
		      </div>

            <div class="link-box">
               <a href="oldpage/sequrity.html">Details</a>
		         <a href="#" class="popup-modal-dismiss">Close</a>
            </div>		      

	      </div><!-- modal-05 end -->

	      <div id="modal-06" class="popup-modal mfp-hide">

		      <div class="media">
	      		<img src="resources/images/arerm/imgIoT.jpg" alt="" />
	      	</div>	

		      <div class="description-box">
			      <h4>IoT Applications</h4>			      

			      <p>ArermSmart-IoT-100 시스템은 각종 사물을 통한 자동제어 환경을 지원하는 자동제어장치이다.</p>

			      <div class="categories">Autometical system</div>
               
		      </div>

            <div class="link-box">
               <a href="oldpage/iot.html">Details</a>
		         <a href="#" class="popup-modal-dismiss">Close</a>
            </div>

	      </div><!-- modal-06 end -->

	    

      </div>  <!-- end row -->

   </section> <!-- end portfolio -->


   


   <!-- contact
   ================================================== -->
   <section id="contact">

   	<div class="row section-head">

   		<div class="twelve columns">

	         <h1>Get In Touch With Us<span>.</span></h1>

	         <hr />	        

	      </div>

      </div> <!-- end section-head -->

      <div class="row">
      	
      	<div id="contact-form" class="six columns tab-whole left">

            <!-- form -->
            <form name="contactForm" id="contactForm" method="post" action=""  >
      			<fieldset>

                  <div class="group">
 						   <input name="contactName" type="text" id="contactName" placeholder="Name" value="" minLength="2" required />
                  </div>
                  <div>
	      			   <input name="contactEmail" type="email" id="contactEmail" placeholder="Email" value="" required />
	               </div>
                  <div>
	     				   <input name="contactSubject" type="text" id="contactSubject" placeholder="Subject"  value="" />
	               </div>                       
                  <div>
	                 	<textarea name="contactMessage"  id="contactMessage" placeholder="message" rows="10" cols="50" required ></textarea>
	               </div>                      
                  <div>
                     <button class="submitform">Submit</button>
                     <div id="submit-loader">
                        <div class="text-loader">Sending...</div>                             
       				      <div class="s-loader">
								  	<div class="bounce1"></div>
								  	<div class="bounce2"></div>
								  	<div class="bounce3"></div>
								</div>
							</div>
                  </div>

      			</fieldset>
      		</form> <!-- Form End -->

            <!-- contact-warning -->
            <div id="message-warning"></div>
            <!-- contact-success -->
      		<div id="message-success">
               <i class="icon-ok"></i>Your message was sent, thank you!<br />
      		</div>

         </div>

         <div class="six columns tab-whole right">

            <p class="lead">문의사항이 있으실 경우 이곳으로 문의바랍니다 

	         <h3 class="address">Come Visit</h3>

	         <p>
            305-764<br>  
            대전광역시 유성구 대학로 99<br>
            충남대학교 산학연 교육연구관 707호
            </p>

            <h3>Contact Numbers:</h3>
			   <p>Phone: (000) 555 1212<br>
			   	Mobile: (000) 555 0100<br>
			     	Fax: (000) 555 0101
			   </p>
               	
         </div>     	

      </div> <!-- end row -->     

   </section>  <!-- end contact -->


   <!-- Footer
   ================================================== -->
   <footer>

      <div class="row">  

      	<div class="twelve columns content group">
      		
				<ul class="social-links">
               <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
               <li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
               <li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>               
               <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
               <li><a href="#"><i class="fa fa-vimeo-square"></i></a></li>
               <li><a href="#"><i class="fa fa-flickr"></i></a></li>               
               <li><a href="#"><i class="fa fa-skype"></i></a></li>
            </ul>

            <hr />

            <div class="info">

            	<div class="footer-logo"></div>

	           	        

	         </div>

      	</div>           

         <ul class="copyright">
         	<li>&copy; Copyright 2015 KREO.</li> 
         	<li>Design by <a href="http://www.styleshout.com/">Styleshout.</a>.</li>
         </ul>

         <div id="go-top">
            <a class="smoothscroll" title="Back to Top" href="#arerm">Back to Top<i class="fa fa-angle-up"></i></a>
         </div>

      </div> <!-- end row -->

   </footer> <!-- end footer -->

   <div id="preloader"> 
    	<div id="loader"></div>
   </div> 



   <!-- Java Script
   ================================================== --> 
   <script src="resources/js/jquery-1.11.3.min.js"></script>
   <script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
   <script src="resources/js/jquery.flexslider-min.js"></script>
   <script src="resources/js/jquery.waypoints.min.js"></script>
   <script src="resources/js/jquery.validate.min.js"></script>
   <script src="resources/js/jquery.fittext.js"></script>
   <script src="resources/js/jquery.placeholder.min.js"></script>
   <script src="resources/js/jquery.magnific-popup.min.js"></script>  
   <script src="resources/js/main.js"></script>

</body>

</html>