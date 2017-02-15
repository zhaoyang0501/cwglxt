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
</head>
<body>

<!-- Wrapper Start -->
<div id="wrapper">


<!-- Header
================================================== -->

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
	<div class="fourteen columns">
		<div id="page-title">
			<h2>违章查询</h2>
			<div id="bolded-line"></div>
		</div>
	</div>
</div>

<div class="container">
<c:if test="${tip!=null }">
	<div class="sixteen columns">
		<div class="notification success  closeable" style="margin: 5px 0 25px 0;">
			<p>${tip}</p>
		</div>
	</div>
</c:if>
</div>

<div class="container">

	<div  class='row'>
		<form method="post" action="${pageContext.request.contextPath}/web/queryIllegal">
						<div class="THREE  columns">
					      <input class="u-full-width" type="text" placeholder="车牌号码" name='carum'>
					    </div>
					    <div class="six columns">
					      <input  class='button color medium' type="submit"  value="查询">
					    </div>
		</form>
	</div>
	
	<div class='row' >
		  <div class="sixteen columns">
			<table class="standard-table">
					<tbody><tr>
						<th>车牌号码</th>
						<th>违章日期</th>
						<th>扣分</th>
						<th>罚款</th>
						<th>违法地点</th>
						<th>违法行为</th>
						<th>处理状态</th>
					</tr>
					<c:forEach var="bean" items="${lists }">
									<tr>
										<td>${bean.carnum }</td>
										<td>${bean.produceDate }</td>
										<td>${bean.score }</td>
										<td>${bean.cash }</td>
										<td>${bean.addr }</td>
										<td>${bean.remark }</td>
										<td>${bean.state }</td>
									</tr>
					</c:forEach>
				  </tbody>
				</table>
			</div>	
		</div>
	
	
</div>


</div>
<!-- Wrapper / End -->
	<%@include file="./foot.jsp" %>


</body>
</html>