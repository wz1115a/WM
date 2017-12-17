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
  
  <body>

<div class="head">

<div class="main">
		<div class="container">
		   <div class="banner">
			 <img src="img/logo.jpg" class="img-responsive" alt=""/>
		   </div>
		   <div class="row content">
		   	<div class="col-md-3 content_top">
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
		   	
<div class="col-md-9">
		   	   <ul class="feature">
		   	   	 <h3><i class="arrow"> </i><span>今日推荐</span></h3>
		   	   </ul>
		   	   <ul class="feature_grid">
				 <li class="grid1"><img src="img/f1.jpg" class="img-responsive" alt=""/>
				 	<p>DS童话寿司套餐</p>
				 	<div class="price">价格:
					  <span class="actual">25.00</span>
					</div>
				    <div class="but1">
			          <a href="DD.jsp">立即购买</a>
			        </div>
				 </li>		   	   	
				 <li class="grid1"><img src="img/f2.jpg" class="img-responsive" alt=""/>
				 	<p>孜然大鸡排+茉香绿茶</p>
				 	<div class="price">价格:
					  <span class="actual">30.00</span>
					</div>
				    <div class="but1">
			          <a href="DD.jsp">立即购买</a>
			        </div>
				 </li>		   	
				 <li class="grid2"><img src="img/f3.jpg" class="img-responsive" alt=""/>
				 	<p>单人餐B</p>
				 	<div class="price">价格:
					  <span class="actual">35.00</span>
					</div>
				    <div class="but1">
			          <a href="DD.jsp">立即购买</a>
			        </div>
				 </li>		   	
				 <div class="clearfix"> </div>
		   	   </ul>

<ul class="feature">
		   	   	 <h3><i class="arrow"> </i><span>菜单</span></h3>
		   	   </ul>
<ul class="product_img">

	         	<li class="product_left"><img src="img/pic8.jpg" class="img-responsive" alt=""/>
	         		<p>芝士焗土豆+柠檬红茶</p>
	         	</li>
	         	<li class="product_right">
	         		<h3>2017.12.14</h3>
	         		<h4><a href="#">夏天最爽的一道主食搭配 </a></h4>
	         		<span class="model"><strong>月售 : </strong>302份</span><br>
	         		
	         		<div class="product_price">价格:
					  <span class="actual"> 9.90</span>
					</div>
					<div class="but1">
				 <% String a=null;   %>
			          <a href="DD.jsp?a=1" > 立即购买</a>
			        </div>
	         	</li>
	         	<div class="clearfix"> </div>
	            
	         </ul>
	         <ul class="product_img">
	         	<li class="product_left"><img src="img/pic7.jpg" class="img-responsive" alt=""/>
	         		<p>奥尔良鸡肉焗饭</p>
	         	</li>
	         	<li class="product_right">
	         		<h3>2017.12.14</h3>
	         		<h4><a href="#">芝士融合味道棒极了 </a></h4>
	         		<span class="model"><strong>月售 : </strong>53份</span><br>
	         		<div class="product_price">价格:
					  <span class="actual">28.00</span>
					</div>
					<div class="but1">
			          <a href="DD.jsp?a=2">立即购买</a>
			        </div>
	         	</li>
	         	<div class="clearfix"> </div>
	            
	            
	         </ul>
	         <ul class="product_img">
	         	<li class="product_left"><img src="img/pic9.jpg" class="img-responsive" alt=""/>
	         		<p>海鲜焗饭</p>
	         	</li>
	         	<li class="product_right">
	         		<h3>2017.12.14</h3>
	         		<h4><a href="#">王者必备套餐，边玩边吃 </a></h4>
	         		<span class="model"><strong>月售 : </strong>13份</span><br>
	         		<div class="product_price">价格:
					  <span class="actual">29.00</span>
					</div>
					<div class="but1">
			          <a href="DD.jsp?a=3">立即购买</a>
			        </div>
	         	</li>
	         	<div class="clearfix"> </div>
	            
	         </ul>
	      </div>
	  </div>
	 </div>
	</div>
	</div>
		   	    
			   <ul class="dc_pagination dc_paginationA dc_paginationA06">

				  <li><a href="#"class="current">1</a></li>
				  <li><a href="#">2</a></li>
				  <li><a href="#">3</a></li>
				  <li><a href="#">4</a></li>
				  <li><a href="#">5</a></li>
				  <li><a href="#">...</a></li>
				  <li><a href="#">19</a></li>
				  <li><a href="#">20</a></li>
				  <li><a href="#" class="previous">下一页></a></li>
				  <li><a href="#" class="next">尾页>></a></li>

		       </ul>
		    </div>
		   </div>
		</div>
	</div>
	

		   
		  
	   </div>
	</div>		   
		  

</body>
</html>
