<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%
if(request.getSession().getAttribute("user")==null)
//response.sendRedirect("login");
%>  
    
<div id="header">
		<!-- Logo -->
		<div class="sixteen columns">
			<div id="logo">
				<a href="#"><img src="http://b.hiphotos.baidu.com/baike/w%3D268%3Bg%3D0/sign=0ed0618340a7d933bfa8e3759570b62e/5882b2b7d0a20cf430cea54874094b36adaf99ce.jpg" alt="logo"  style="height: 114px" /></a>
				<div id="tagline">车务管理系统、违章查询、驾驶证查询、车辆查询，快加入我们吧！</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="sixteen columns">
		<div id="navigation">
			<ul id="nav">
				<c:if test="${sessionScope.webuser!=null }">
					<li ><a href="">欢迎您:${sessionScope.webuser.chinesename }</a></li>
				</c:if>
				<li><a href="${pageContext.request.contextPath}/web/car">车辆查询</a></li>
				<li><a href="${pageContext.request.contextPath}/web/illegal">违章查询</a></li>
				<li><a href="${pageContext.request.contextPath}/web/license">驾驶证查询</a></li>
				<li><a href="${pageContext.request.contextPath}/web/exam">在线考试</a></li>
				<li><a href="${pageContext.request.contextPath}/web/myanswer">个人中心</a></li>
				
				<c:if test="${sessionScope.webuser!=null }">
					<li style="float: right"><a href="${pageContext.request.contextPath}/web/loginout">退出</a></li>
				</c:if>
				<c:if test="${sessionScope.webuser==null }">
					<li style="float: right"><a href="${pageContext.request.contextPath}/web/login">登录</a></li>
				</c:if>
			</ul>
		</div> 
		<div class="clear"></div>
	</div>