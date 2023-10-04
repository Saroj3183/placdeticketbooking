

	<html>
    <head>
        <link rel="stylesheet" type="text/css" href="icon\fontawesome-free-5.14.0-web\css\all.css">
        <link rel="stylesheet" type="text/css" href="homepage\home.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="homepage\b_to_t.css">
    <link rel="stylesheet" type="text/css" href="CSS\footer.css">
     <link rel="icon" type="image/png" href="image\favicon\4.ico"/>

    </head>
    <style type="text/css">
        .filed
        {
            width:300px;
        color: black;
        font-size: 20px;
        font-family: cursive;
        border-radius: 5px;
        border-style: double blue;
      
        }
            
    
    </style>
       
<body>
<?php include('database/config.php'); ?>
<a name="riz" ></a>
    <nav class="wrapper1">
        <ul class="links1">

            <li><a href="signup/signup.html" >Sign up</a></li>
            <li><a href="signin/signin.html"  >Sign in</a></li>
            <!--li><a href=""><p class="fa fa-user" align="center">welcome <?php //echo $_SESSION['username']; ?></p></li-->
        </ul>
                <form action="s1.php" method="post" style="float: right; margin-top:10px; margin-right:10px;">
                <input type="text"name="search" id="txtName" placeholder="search here." class="filed"/> <i class="fa fa-search"> </i><input  style="margin-left:15px;  
        color: black;
        font-size: 20px;
        font-family: cursive; border-radius: 10px;cursor: pointer;"type="submit" value="SEARCH"> </i></div>
                </form>
    </nav>
    
    <div class="wrapper">
        <nav>
            <h1>Best of Gujrat</h1>
            <!--p align="center">welcome <?php //echo $_SESSION['username']; ?></p-->
            <ul class="links">
                <li><a href="#">Home</a></li>
                <li><a href="city/city.php" >City</a>
                    <li><a href="place/ps1.php" >Types</a>
                    <!--ul class="dropdown">
                        <li class="submenulinks"><a href="nourth.html">Nourth</a>
                            <ul class="submenu1">
                                <li><a href=""></a>Jammu and Kashamir</li>
                                <li><a href=""></a>Himachal Pradesh</li>
                                <li><a href=""></a>Utter Pradesh</li>
                                <li><a href=""></a>Rajeshthan</li>
                            </ul>
                        </li>

                        <li class="submenulinks"><a href="south.html">South</a>
                            <ul class="submenu1">
                                <li><a href=""></a>Kerla</li>
                                <li><a href=""></a>Telgana</li>
                                <li><a href=""></a>Karnatak</li>
                            </ul>
                        </li>

                        <li class="submenulinks"><a href="east.html">East</a>
                            <ul class="submenu1">
                                <li><a href=""></a>West Bengal</li>
                                <li><a href=""></a>Sikkim</li>
                                <li><a href=""></a>Assum</li>
                            </ul>
                        </li>

                        <li class="submenulinks"><a href="west.html">West</a>
                            <ul class="submenu1">
                                <li><a href=""></a>Gujrat</li>
                                <li><a href=""></a>Madhyapradesh</li>
                                <li><a href=""></a>Goa</li>
                                <li><a href=""></a>Maharashtr</li>
                            </ul>
                        </li>
                    </ul-->
                </li>

                <!--li><a href="../box/box.html" target="_blacnk">International</a--> 
                  <!--ul class="dropdown">     
                    <li><a href="">Dubai</a></li>
                    <li><a href="">Maldive</a></li>
                    <li><a href="">Australia</a></li>
                    <li><a href="">Singapore</a></li>
                    <li><a href="">Hong Kong</a></li>
                    <li><a href="">Switzerland</a></li>
                </ul></li>
                <li><a href="" target="_blacnk">Holiday Ideas</a>
                    <ul class="dropdown">
                        <li><a href="heritage.html">Heritage</a>
                        <li><a href="hillstation.html">Hill Station</a>
                        <li><a href="beaches.html">Beaches</a>
                        <li><a href="beaches.html">Family Tour</a>
                        <li><a href="beaches.html">Frinds Tour</a>
                    </ul>
                </li-->

                <!--li><a href="../box/box3.html" target="_blacnk">Booking</a-->
                    <!--ul class="dropdown">
                        <li><a href="zoo.html" >Zoo</a></li>
                        <li><a href="park.html">Park</a></li>
                        <li><a href="musume.html">Musume</a></li>
                    </ul-->
                </li>   

    

                 <li><a href="g/gallery.php" >Gallery</a></li>
                <li><a href="ContactFrom/index1.php" >Contact Us</a></li>

                <!--li><a href="../aboutus/aboutproject.htm" target="_blacnk">About us</a></li-->
                <li><a href="Feedbackform/index.php">Feedback</a></li>
                
                  <!--li><a href="homepage/logout.php">Logout</a></li-->
            </ul>
        </nav>
    </div>

<br>
<div id="main">    

    <div id="name">
        <p align="center" >GUJRAT CITY NAME</p>
    </div>
    <br>

    <ul class="u1">
        <?php

$s="SELECT  * FROM home";
$result=mysqli_query($con,$s);
$r=mysqli_num_rows($result);
//echo $r;

while($data=mysqli_fetch_array($result))
{
  
    //echo "<tr><td style=' padding:5px;'><a href='..\place\place.php?catid=$data[0]'>$data[1]</a></td></tr>";


?>
    <li>
 <div id="up">
        <div class="parent" >
          <div class="child">
               <img src="adminpanel/cityimages/<?php echo $data['himage']?>" id="zoo">
                <span id="s1"><?php echo $data['hcity_name'];?></span>
            </div>
        </div>
        <div id="book">
            <div id="p1">
             <p><?php echo $data['hplace_name'];?><!--spna class="fa fa-user"> ZOO</spna--></p>
                <a href="city/city.php"><button id="button"><spna class="fa fa-book" id="r1"> Book</span></button></a>
            </div>
        </div>
 </div>
    </li>
<?php
}
?>

    <!--li>
 <div id="up">
        <div class="parent" >
          <div class="child">
               <img src="image/home/i5.jpg" id="zoo">
                <span id="s1">Gujrat</span>
            </div>
        </div>
        <div id="book">
            <div id="p1">
             <p>Satue of unity<spna class="fa fa-user"> ZOO</spna></p>
                <a href="../packages/gujrat.html"><button id="button"><spna class="fa fa-book" id="r1"> Book</span></button></a>
            </div>
        </div>
 </div>
    </li-->


    </ul>



</div>


<!--(down to top)-->
<div class="rizu">
 <a href="#riz" id="b1"><span class="fas fa-arrow-up"></span></a>
</div><br><br><br><br><br>




<body>
<!--start footer-->
<footer>

<!--Start main-content-->
 <div class="main-content">

<!--left box-->     
    <div class="left box">
     
            <h2>Creators</h2><!--hr color="red" style="border:1px solid red;"-->
                
                <div class="content">
                    
                    <div class="admin1">
                      <span class="fa fa-user"></span>
                      <span class="text">Rizvana Chharecha</span>
                    </div>
         
                    <div class="admin2">
                      <span class="fa fa-user"></span>
                      <span class="text">Arina Halvadiya</span>
                    </div>
                     
                    <div class="admin3">
                      <span class="fa fa-user"></span>
                      <span class="text">Saroj Thakor</span>
                    </div>
                </div>
    </div>
<!--close left box-->

    <div class="center box" >
<!--center box-->
                
                  <h2>Address</h2><!--hr color="red" style="border:1px solid red ;"-->
                
                <div class="content">
                    
                    <div class="place">
                      <span class="fas fa-map-marker-alt"></span>
                      <span class="text">GEC College, Rajkot</span>
                     </div>

                    <div class="phone">
                      <span class="fas fa-phone-alt"></span>
                      <span class="text">+91-4765432100</span>
                    </div>

                    <div class="email">
                      <span class="fas fa-envelope"></span>
                      <span class="text">abc@example.com</span> <div class="fllow">
                    </div>
                </div>
    </div> 
<!-- close Center box-->
    
</div>
<!--Right box-->
    <div class="right box">
             
             <h2>Explore our website</h2><!--hr color="red" style="border:1px solid red;"-->
            
            <div class="content">
                <p>
                    <a href="">Home</a><br>
                    <!--a href="">India Tour</a><br>
                    <a href="">International Tour</a--><br>
                    <a href="">About us</a><br><br>
                    <a href="ContactFrom/index1.php">Contact us</a><br>
                </p>
            </div>
        <br>
            
            <div class="follow">
                
                <h2>Follow us</h2><hr color="red">
                
                <a href="" id="f1" style="padding-left: 4px;"><span class="fab fa-facebook"></span></a>
                <a href="" id="f2" style="padding-left: 4px;"><span class="fab fa-instagram"></span></a>
                <a href="" id="f3" style="padding-left: 4px;"><span class="fab fa-twitter"></span></a>
                <a href="" id="f4" style="padding-left: 4px;"><span class="fab fa-whatsapp"></span></a>
                <!--a href="" id="f5" style="padding-left: 4px;"><span class="fab fa-youtube"></span></a-->
            </div>
    </div>
<!--Close right box-->

</div>
<!--close main-contate-->

<!--last-->
    <div id="last"> 
        <p><a href="">BestOfGujrat best website</a></p>        
    </div>
<!--close last-->

</footer>
<!--close footer-->



</body>
</html>