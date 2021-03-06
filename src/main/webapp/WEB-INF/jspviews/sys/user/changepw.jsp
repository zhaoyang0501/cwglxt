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
							<li class="active" targeturl='${pageContext.request.contextPath}/user/index'>员工管理</li>
						</ul>
					</div>

				<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<form  id='_form' class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/sys/user/changepw" >
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">原始密码 </label>

										<div class="col-sm-9">
											<input type="password" name='oldpw'placeholder="原始密码 " class="col-xs-10 col-sm-5">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 新密码</label>

										<div class="col-sm-9">
											<input type="password" name='newpw'  placeholder="新密码" class="col-xs-10 col-sm-5">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1"> 新密码确认</label>

										<div class="col-sm-9">
											<input type="password" name='newpwa' placeholder="新密码确认"  class="col-xs-10 col-sm-5">
										</div>
									</div>
									
									
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="submit">
												<i class="ace-icon fa fa-check bigger-110"></i>
												提交
											</button>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												取消
											</button>
										</div>
									</div>
								</form>
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
