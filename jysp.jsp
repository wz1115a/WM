<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    
    <title>�û���½ҳ��</title>
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
				<li><a href="http://localhost:8848/IS/t99.jsp">��ҳ</a></li>
				<li><a href="#" >���ʻ</a></li>
				<li><a href="person.jsp">��������</a></li>
				<li><a href="#" >�������</a></li>
				<li><a href="#" >����</a></li>
				<li class="search">
				<a class="search_pic"></a>
				</li>
				<li class="list">
					<a></a>
				</li>
			</ul>
			<!-- ���� -->
			<form action="">
				<div class="search_main">
					<button class="search_btn" type="submit"></button>
					<input class="search_text" type="text" placeholder="����">
					<span class="close_btn"></span>
				</div>
			</form>
			<!-- ��Ա��¼ -->
			<div class="member">
				<p>��Ա����</p>
				<ul>
					<li>
						<img src="img/huiyuan1.png" alt="">
						<a href="http://localhost:8848/IS/log.jsp">��¼</a>
					</li>
					<li>
						<img src="img/huiyuan1.png" alt="">
						<a href="http://localhost:8848/IS/M60.jsp">�»�Աע��</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
<script>
$(function(){
	/*����*/
	$(".search_pic").click(function(){
		$(".headernav").fadeOut(500);
		$(".search_main").fadeIn(1000);
	});
	$(".search_main .close_btn").click(function(){
		$(".search_main").fadeOut(500);
		$(".headernav").fadeIn(1000);
	});
	/*��¼*/
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
		   	  	<h3 >����</h3>
		   	     <ul class="category">
			   	  	<li><a href="#">�������</a></li>
			   	  	<li><a href="#">��ζС��</a></li>
			   	  	<li><a href="#">�������</a></li>
			   	  	<li><a href="#">��������</a></li>
			   	  	<li><a href="#">�̵곬��</a></li>
			   	  	<li><a href="#">ҽҩ����</a></li>
			   	  	<li><a href="#">�����</a></li>
			   	  	<li><a href="#">ҹ��</a></li>
			   	  	
		   	     </ul>
		   	   </div>
		   	   <ul class="product_reviews">
		   	   	<h3><i class="arrow"> </i><span>���Ų�Ʒ</span></h3>
		   	   	<li>
		   	   		<ul class="review1">
		   	   			<li class="review1_img"><img src="img/pic1.jpg" class="img-responsive" alt=""/></li>
		   	   			<li class="review1_desc"><h3><a href="#">��ֵը��2-3�˺����ײ�</a></h3><p>2017.12.11</p></li>
		   	   			<div class="clearfix"> </div>
		   	   		</ul>
		   	   	</li>
		   	   	<li>
		   	   		<ul class="review1">
		   	   			<li class="review1_img"><img src="img/pic2.jpg" class="img-responsive" alt=""/></li>
		   	   			<li class="review1_desc"><h3><a href="#">����+ը�ȵı㵱</a></h3><p>2017.12.11</p></li>
		   	   			<div class="clearfix"> </div>
		   	   		</ul>
		   	   	</li>
		   	   	<li>
		   	   		<ul class="review1">
		   	   			<li class="review1_img"><img src="img/pic3.jpg" class="img-responsive" alt=""/></li>
		   	   			<li class="review1_desc"><h3><a href="#">�ɹ�ţ�ܴ��</a></h3><p>2017.12.11</p></li>
		   	   			<div class="clearfix"> </div>
		   	   		</ul>
		   	   	</li>
		   	    <div class="but">
			       <a href="#">����ѡ��<i class="but_arrow"> </i></a>
			    </div>
		   	   </ul>

		   	</div>
		   	
<div class="col-md-9">
		   	   <ul class="feature">
		   	   	 <h3><i class="arrow"> </i><span>�����Ƽ�</span></h3>
		   	   </ul>
		   	   <ul class="feature_grid">
				 <li class="grid1"><img src="img/f1.jpg" class="img-responsive" alt=""/>
				 	<p>DSͯ����˾�ײ�</p>
				 	<div class="price">�۸�:
					  <span class="actual">25.00</span>
					</div>
				    <div class="but1">
			          <a href="DD.jsp">��������</a>
			        </div>
				 </li>		   	   	
				 <li class="grid1"><img src="img/f2.jpg" class="img-responsive" alt=""/>
				 	<p>��Ȼ����+�����̲�</p>
				 	<div class="price">�۸�:
					  <span class="actual">30.00</span>
					</div>
				    <div class="but1">
			          <a href="DD.jsp">��������</a>
			        </div>
				 </li>		   	
				 <li class="grid2"><img src="img/f3.jpg" class="img-responsive" alt=""/>
				 	<p>���˲�B</p>
				 	<div class="price">�۸�:
					  <span class="actual">35.00</span>
					</div>
				    <div class="but1">
			          <a href="DD.jsp">��������</a>
			        </div>
				 </li>		   	
				 <div class="clearfix"> </div>
		   	   </ul>

<ul class="feature">
		   	   	 <h3><i class="arrow"> </i><span>�˵�</span></h3>
		   	   </ul>
<ul class="product_img">

	         	<li class="product_left"><img src="img/pic8.jpg" class="img-responsive" alt=""/>
	         		<p>֥ʿ�h����+���ʺ��</p>
	         	</li>
	         	<li class="product_right">
	         		<h3>2017.12.14</h3>
	         		<h4><a href="#">������ˬ��һ����ʳ���� </a></h4>
	         		<span class="model"><strong>���� : </strong>302��</span><br>
	         		
	         		<div class="product_price">�۸�:
					  <span class="actual"> 9.90</span>
					</div>
					<div class="but1">
				 <% String a=null;   %>
			          <a href="DD.jsp?a=1" > ��������</a>
			        </div>
	         	</li>
	         	<div class="clearfix"> </div>
	            
	         </ul>
	         <ul class="product_img">
	         	<li class="product_left"><img src="img/pic7.jpg" class="img-responsive" alt=""/>
	         		<p>�¶�������h��</p>
	         	</li>
	         	<li class="product_right">
	         		<h3>2017.12.14</h3>
	         		<h4><a href="#">֥ʿ�ں�ζ�������� </a></h4>
	         		<span class="model"><strong>���� : </strong>53��</span><br>
	         		<div class="product_price">�۸�:
					  <span class="actual">28.00</span>
					</div>
					<div class="but1">
			          <a href="DD.jsp?a=2">��������</a>
			        </div>
	         	</li>
	         	<div class="clearfix"> </div>
	            
	            
	         </ul>
	         <ul class="product_img">
	         	<li class="product_left"><img src="img/pic9.jpg" class="img-responsive" alt=""/>
	         		<p>���ʟh��</p>
	         	</li>
	         	<li class="product_right">
	         		<h3>2017.12.14</h3>
	         		<h4><a href="#">���߱ر��ײͣ�����߳� </a></h4>
	         		<span class="model"><strong>���� : </strong>13��</span><br>
	         		<div class="product_price">�۸�:
					  <span class="actual">29.00</span>
					</div>
					<div class="but1">
			          <a href="DD.jsp?a=3">��������</a>
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
				  <li><a href="#" class="previous">��һҳ></a></li>
				  <li><a href="#" class="next">βҳ>></a></li>

		       </ul>
		    </div>
		   </div>
		</div>
	</div>
	

		   
		  
	   </div>
	</div>		   
		  

</body>
</html>
