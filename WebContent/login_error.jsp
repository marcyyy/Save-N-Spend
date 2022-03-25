<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Save and Spend | Error</title>
    <link rel="icon" href="assets/imgs/logo.png">

    <!--CSS-->
   	<link rel=stylesheet href="assets/css/global_bootstrap.min.css">
    <link rel=stylesheet href="assets/css/global_style.css">
    <link rel=stylesheet href="assets/css/specific_login.css">
</head>



<body>
<nav class="background"><!--<img src="imgs/background.jpg" style="width:100%; height: 100%;">-->
<video id="video-bg" preload="auto" autoplay="true" loop="loop" muted="muted" width="1920px" height="1080px">
<source src="assets/imgs/video.mp4" type="video/mp4" width="1920px" height="1080px"></video></nav>
    <div class='loginTemplate'>
        <div class="lock-wrapper animated fadeInDown">
            <div class="lock-box text-center">
                <img src="assets/imgs/logo.png" alt="Save&Spend" style="width:150px;"/>
                <h1 style="color:#acacac;">Save and Spend</h1>
                <span class="locked">Please Log-in</span>
                <form class="page-login" id="loginForm" name="loginForm" method="post" action="login_filter.jsp" >
                    <div>
                        <input type="text" id="loginEmail" class="form-control loginEmail" name="email" placeholder="Email Address">
                    </div><font color = "orange"> <i>Oopps! Please try again</i></font>
                    <div>
                        <input type="password" id="loginPassword" class="form-control loginPassword" name="password" placeholder="Password">
                    </div> <font color = "orange"><i>Oopps! Please try again</i></font>
                    <div>
                    <select name="userl"class="select" required="required" >
	    			<option value="Administrator">Administrator</option>
					<option value="User Assistant">User Assistant</option>
					<option value="Client">Client</option><br></select>
					</div></br>
                    <div>
                        <a href="javascript:login();" target="_self"><input type="submit" name="Submit" value="Login to your account" class="btn btn-lg btn-primary block full-width m-b" /></a><br>
                        <span>
                            
                        </span>
                    </div>
                </form>
            </div>
        </div> 
    
</body>
</html>