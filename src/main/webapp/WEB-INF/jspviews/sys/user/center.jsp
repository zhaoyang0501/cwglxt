<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<html lang="en">
	<head>
		<title></title>
		 <script src="${pageContext.request.contextPath}/js/plugins/layer/layer.js"></script>
         <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
        
		<style type="text/css">
		   .error{
       color: red;
      }
      </style>
	</head>
			<div class="main-content">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active" targeturl='${pageContext.request.contextPath}/user/index'>个人资料</li>
						</ul>
					</div>

				<div class="page-content">
					<div class="row">
                            <div class="col-sm-12 b-r">
		                           	<table class='table table-bordered'>
		                           		<thead>
		                           		<tr style="text-align: center;" ><td colspan="6" ><h3>个人资料<h3></h3></td></tr>
		                           		</thead>
		                           		<tbody>
		                           			<tr>
		                           				<td>用户名</td>
		                           				<td>${user.username }</td>
		                           			</tr>
		                           			<tr>
		                           				<td>电话</td>
		                           				<td>${user.tel }</td>
		                           			</tr>
		                           			<tr>
		                           				<td>备注</td>
		                           				<td>${user.remark }</td>
		                           			</tr>
		                           			<tr>
		                           				<td>邮箱</td>
		                           				<td>${user.email }</td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td colspan="6"> 
		                           					 <div class="col-sm-4 col-sm-offset-2">
		                                  			  		<button class="btn btn-primary" type="submit">确认</button>
		                               				 </div>
		                           				</td>
		                           			</tr>
		                           		</tbody>
		                           	</table> 
                            </div>
                        </div>
				
			<!-- /.page-content -->
			</div><!-- /.main-content -->
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

	<script>

$("#_form").validate({
    rules: {
    	oldpw: "required",
    	
    	 newpw: {
            required: true,
            minlength: 6
          },
    	
          newpwa: {
            equalTo: "input[name='newpw']"
          },
    },
    ignore:"",
    messages: {
    	oldpw: "原始密码必须填写",
    	newpw:{
    		required:"新密码必须填写",
    		minlength:"密码至少6位",
    	},
    	newpwa: {
    		equalTo:"两次密码不一致",
    	}
    }
});

$(document).ready(function(){
	<c:if test="${response!=null}">

	<c:if test="${response.code=='1'}">
	  toastr.success('${response.msg}');
	 </c:if>
	 
	 <c:if test="${response.code!='1'}">
	  toastr.warning('${response.msg}');
	 </c:if>
	</c:if>
});

    </script>
    	</body>
</html>
