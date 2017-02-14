<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title> - Free Theme s& Templates</title>

<!-- Mobile Specific
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front/css/boxed.css" id="layout">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front/css/colors/green.css" id="colors">

<!-- Java Script
================================================== -->
<script src="${pageContext.request.contextPath}/front/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/front/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/front/js/selectnav.js"></script>
<script src="${pageContext.request.contextPath}/front/js/flexslider.js"></script>
<script src="${pageContext.request.contextPath}/front/js/twitter.js"></script>
<script src="${pageContext.request.contextPath}/front/js/tooltip.js"></script>
<script src="${pageContext.request.contextPath}/front/js/effects.js"></script>
<script src="${pageContext.request.contextPath}/front/js/fancybox.js"></script>
<script src="${pageContext.request.contextPath}/front/js/carousel.js"></script>
<script src="${pageContext.request.contextPath}/front/js/isotope.js"></script>

<!-- Styles Switcher
================================================== -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/front/css/switcher.css">
<script src="${pageContext.request.contextPath}/front/js/switcher.js"></script>

</head>
<body>

<!-- Wrapper Start -->
<div id="wrapper">

<!-- 960 Container -->
<div class="container ie-dropdown-fix">
	<!-- Header -->
		<%@include file="./head.jsp" %>
	<!-- Header / End -->
	
</div>
<!-- 960 Container / End -->

<!-- Content
================================================== -->
<div class="container">
	<div class="sixteen columns">
		<div id="page-title">
			<h2>科目1在线考试</h2>
			<div id="bolded-line"></div>
		</div>

	</div>
</div>

<div class="container">
<c:if test="${tip!=null }">
	<div class="sixteen columns">
		<div class="notification error  closeable" style="margin: 5px 0 25px 0;">
			<p>${tip}</p>
		</div>
	</div>
</c:if>


	<!-- Contact Form -->
	<div class="sixteen columns " >
		<!-- Form -->
		<div id="contact-form">
			<form action="${pageContext.request.contextPath}/web/submitExam/1" method="post" novalidate="novalidate">
								
								<c:forEach items="${exams }" var="bean" varStatus="i">
								
								<div class="aw-item">
									<h4>${i.index+1}.${bean.title }</h4>
											<div class="radio">
											  <label>
											    <input type="radio" name="${bean.id }" value="A" aria-required="true">
											   		A: ${bean.optiona }
											  </label>
											</div>
										
											<div class="radio">
											  <label>
											    <input  type="radio" name="${bean.id }" value="B" aria-required="true">
											   		B: ${bean.optionb }
											  </label>
											</div>
										
											<div class="radio">
											  <label>
											    <input type="radio" name="${bean.id }" value="C" aria-required="true">
											   		C:${bean.optionc }
											  </label>
											</div>
										
											<div class="radio">
											  <label>
											    <input  type="radio" name="${bean.id }" value="D" aria-required="true">
											   		D: ${bean.optiond }
											  </label>
											</div>
								</div>
								</c:forEach>
								
								<div class="field">
										<input  class='button color medium' type="submit"  value="交卷">
								</div>
						</form>
		</div>
</div>
</div>


</div>
<!-- Wrapper / End -->

	<%@include file="./foot.jsp" %>

</body>
</html>