<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    
    <title>用户登陆页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/head.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!----webfonts---->
<link href='http://fonts.googleapis.com/css?family=Exo+2:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
 <!----details-product-slider--->
				<!-- Include the Etalage files -->
					<link rel="stylesheet" href="css/etalage.css">
					<script src="js/jquery.etalage.min.js"></script>
				<!-- Include the Etalage files -->
				<script>
						jQuery(document).ready(function($){
			
							$('#etalage').etalage({
								thumb_image_width: 300,
								thumb_image_height: 400,
								
								show_hint: true,
								click_callback: function(image_anchor, instance_id){
									alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
								}
							});
							// This is for the dropdown list example:
							$('.dropdownlist').change(function(){
								etalage_show( $(this).find('option:selected').attr('class') );
							});

					});
				</script>
				<!----//details-product-slider--->	
</head>
<div class="header">
		<div class="headerinner">
			<ul class="headernav">
				<li class="logo">
					<img src="${pageContext.request.contextPath}/img/logo.png" alt="" />
				</li>
				<li><a href="http://localhost:8848/IS/t99.jsp">首页</a></li>
				<li><a href="#" >精彩活动</a></li>
				<li><a href="person.jsp">个人中心</a></li>
				<li><a href="#" >意见反馈</a></li>
				<li><a href="#" >关于</a></li>
				<li class="search">
				<a class="search_pic"></a>
				</li>
				<li class="list">
					<a></a>
				</li>
			</ul>
			<!-- 搜索 -->
			<form action="">
				<div class="search_main">
					<button class="search_btn" type="submit"></button>
					<input class="search_text" type="text" placeholder="搜索">
					<span class="close_btn"></span>
				</div>
			</form>
			<!-- 会员登录 -->
			<div class="member">
				<p>会员中心</p>
				<ul>
					<li>
						<img src="img/huiyuan1.png" alt="">
						<a href="http://localhost:8848/IS/log.jsp">登录</a>
					</li>
					<li>
						<img src="img/huiyuan1.png" alt="">
						<a href="http://localhost:8848/IS/M60.jsp">新会员注册</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
<script>
$(function(){
	/*搜索*/
	$(".search_pic").click(function(){
		$(".headernav").fadeOut(500);
		$(".search_main").fadeIn(1000);
	});
	$(".search_main .close_btn").click(function(){
		$(".search_main").fadeOut(500);
		$(".headernav").fadeIn(1000);
	});
	/*登录*/
	$(".list a").click(function(){
		$(".member").slideToggle(500);
	});

});
</script>
  
<div class="head">

<div class="main">
		<div class="container">
		  
		   <div class="row content">
		   	<div class="col-md-3 content_top">
<br>
		   	   <div class="category_box">
		   	  	<h3 >分类</h3>
		   	     <ul class="category">
			   	  	<li><a href="#">快餐饮料</a></li>
			   	  	<li><a href="#">风味小吃</a></li>
			   	  	<li><a href="#">异国料理</a></li>
			   	  	<li><a href="#">果蔬生鲜</a></li>
			   	  	<li><a href="#">商店超市</a></li>
			   	  	<li><a href="#">医药健康</a></li>
			   	  	<li><a href="#">下午茶</a></li>
			   	  	<li><a href="#">夜宵</a></li>
			   	  	
		   	     </ul>
		   	   </div>
		   	   <ul class="product_reviews">
		   	   	<h3><i class="arrow"> </i><span>热门餐品</span></h3>
		   	   	<li>
		   	   		<ul class="review1">
		   	   			<li class="review1_img"><img src="img/pic1.jpg" class="img-responsive" alt=""/></li>
		   	   			<li class="review1_desc"><h3><a href="#">超值炸鸡2-3人豪华套餐</a></h3><p>2017.12.11</p></li>
		   	   			<div class="clearfix"> </div>
		   	   		</ul>
		   	   	</li>
		   	   	<li>
		   	   		<ul class="review1">
		   	   			<li class="review1_img"><img src="img/pic2.jpg" class="img-responsive" alt=""/></li>
		   	   			<li class="review1_desc"><h3><a href="#">烤腿+炸腿的便当</a></h3><p>2017.12.11</p></li>
		   	   			<div class="clearfix"> </div>
		   	   		</ul>
		   	   	</li>
		   	   	<li>
		   	   		<ul class="review1">
		   	   			<li class="review1_img"><img src="img/pic3.jpg" class="img-responsive" alt=""/></li>
		   	   			<li class="review1_desc"><h3><a href="#">干锅牛蛙大份</a></h3><p>2017.12.11</p></li>
		   	   			<div class="clearfix"> </div>
		   	   		</ul>
		   	   	</li>
		   	    <div class="but">
			       <a href="#">更多选择<i class="but_arrow"> </i></a>
			    </div>
		   	   </ul>

		   	</div>
		   	


		   	    <div class="single_right">
<h2>收货地址</h2>
<div class="contact-form">
<div>
						    	
						    	<span><input name="adress" type="text" class="textbox"></span>
						    </div>

</div>

 <%  
              String x1="1"; String x2="2"; String x3="3";
              String s=request.getParameter("a");  
              //s= java.net.URLDecoder.decode(s, "UTF-8"); 
       %>


<br>
<% if(s.equals(x1))out.println("<img src='img/pic8.jpg' class='img-responsive' alt=''/>");
if(s.equals(x2))out.println("<img src='img/pic7.jpg' class='img-responsive' alt=''/>");
if(s.equals(x3))out.println("<img src='img/pic9.jpg' class='img-responsive' alt=''/>");%>
				                

				        	<h3><%if(s.equals(x1))out.print("芝士焗土豆+柠檬红茶");
				        	if(s.equals(x2))out.print("奥尔良鸡肉焗饭");
				        	if(s.equals(x3))out.print("海鲜焗饭");
				        	%> </h3>
				        	
				        	<div class="price_single">
<h3>合计</h3>
							  <span class="reducedfrom"><% if(s.equals(x1))out.print("25.00");
							  if(s.equals(x2))out.print("28.00");
							  if(s.equals(x3))out.print("29.00");
							  %></span>
							  <span class="actual1"><% if(s.equals(x1))out.print("9.90");
							  if(s.equals(x2))out.print("12.12");
							  if(s.equals(x3))out.print("9.00");
							  %></span>
							</div>
				        	
							<div class="btn_form">
							   <form>
								 <input type="submit" value="支付" title="">
							  </form>
							</div>
							<ul class="add-to-links">
    			              <li><a href="#">支付方式</a></li>
    			            </ul>
							<div class="col-xs-12  col-sm-6  col-md-4">
				              <div class="banners--small  banners--small--social">
				                <a href="#" class="social"><i class="zocial-facebook"> </i>
				                <span class="banners--small--text"> 微信</span>
				                <div class="clearfix"> </div>
				                </a>
				              </div>
            				</div>
                            <div class="col-xs-12  col-sm-6  col-md-4">
				              <div class="banners--small  banners--small--social">
				                <a href="#" class="social"><i class="zocial-twitter"> </i>
				                <span class="banners--small--text"> 支付宝</span>
				                <div class="clearfix"> </div>
				                </a>
				              </div>
            				</div>
                            <div class="col-xs-12  col-sm-6  col-md-4">
				              <div class="banners--small  banners--small--social">
				                <a href="#" class="social"><i class="zocial-pin"> </i>
				                <span class="banners--small--text">银行卡</span>
				                <div class="clearfix"> </div>
				                </a>
				              </div>
            			   </div>
           </div>
		   <div class="clearfix"> </div>
		   <!----product-rewies---->
			<div class="product-reviwes">
				<!--vertical Tabs-script-->
				<!---responsive-tabs---->
					<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
					<script type="text/javascript">
						$(document).ready(function () {
							 $('#horizontalTab').easyResponsiveTabs({
									type: 'default', //Types: default, vertical, accordion           
									width: 'auto', //auto or any width like 600px
									fit: true,   // 100% fit in a container
									closed: 'accordion', // Start closed if in accordion view
									activate: function(event) { // Callback function if tab is switched
									var $tab = $(this);
									var $info = $('#tabInfo');
									var $name = $('span', $info);
										$name.text($tab.text());
										$info.show();
									}
								});
													
							 $('#verticalTab').easyResponsiveTabs({
									type: 'vertical',
									width: 'auto',
									fit: true
								 });
						 });
					</script>
				<!---//responsive-tabs---->
				<!--//vertical Tabs-script-->
				<!--vertical Tabs-->
        		
		      
		   </div>    
		</div>
	  </div>
	 </div>
	</div>



			   
		    </div>
		   </div>
		</div>
	</div>
	

		   
		  
	   </div>
	</div>		   
		  

</body>
</html>
