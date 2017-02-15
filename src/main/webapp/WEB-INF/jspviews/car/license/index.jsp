<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<html lang="en">
	<head>
	  <script src="${pageContext.request.contextPath}/js/plugins/layer/layer.js"></script>
	  <script src="http://ace.jeka.by/assets/js/bootstrap-datepicker.min.js"></script>
	  	<link rel="stylesheet" href="http://ace.jeka.by/assets/css/bootstrap-datepicker3.min.css" />
		<link rel="stylesheet" href="http://ace.jeka.by/assets/css/bootstrap-datetimepicker.min.css" />
	   <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
	
		<title></title>
     	<style type="text/css">
		   .error{
       color: red;
      }
      </style>
	</head>
	<body>
	
			<div class="main-content">
			  <input id='cid' type="hidden"/>
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active" targeturl='${pageContext.request.contextPath}/user/index'>驾驶证管理</li>
						</ul>
					</div>

				<div class="page-content">
						<div class="row">
							<div class="col-sm-12">
							 <div class="widget-box ">
								<div class="widget-header">
										<h4 class="widget-title lighter smaller">驾驶证列表</h4>
								</div>
	
								<div class="widget-body">
										<div class="widget-main ">
											<div class="page-header page-header-revise">
												<form role="form" class="form-inline">
													<div class="form-group">
														<div class="input-group">
															<input type="text"  id="_name"
																placeholder="驾驶证号" class="form-control ">
															<span class="input-group-btn">
																<button class="btn btn-purple btn-sm" id="_search" type="button">
																	<i class="icon-search icon-on-right "></i> 搜索
																</button>
															</span>
														</div>
														  <button class="btn btn-primary btn-sm" type="button" id='_new'>登记</button>
													</div>
												</form>
			                       			 </form>
											</div>

											<div class="table-responsive" >
						                         <table ID='dt_table_view' class="table table-striped table-bordered table-hover ">
							                            <thead>
							                                <tr>
																<th>驾驶证号</th>
																<th>姓名</th>
																<th>准假车型</th>
																<th>领证日期</th>
																<th>本周期扣分</th>
																<th>状态</th>
																<th>操作</th>
															</tr>
							                            </thead>
							                       		 <tbody>
							                            </tbody>
						                          </table>
						                          </div>
										</div>
									</div>
												
						</div>
						</div>
				</div>
				
				
				
				   <div id='_form' style="display: none;">
 						 <div class="row">
                            <div class="col-sm-12 ">
		                          <form id='form_' class="form-horizontal" action="" method="get">
		                           <input name='id' type="hidden"/>
		                           	<table class='table table-bordered'>
		                           		<thead>
		                           		<tr style="text-align: center;" ><td colspan="6" ><h3>驾驶证信息</h3></td></tr>
		                           		</thead>
		                           		<tbody>
		                           			<tr>
		                           				<td>驾驶证号</td>
		                           				<td> <input name='sn' type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>姓名</td>
		                           				<td> <input name='name' type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>准驾车型</td>
		                           				<td> 
		                           					<select  name="type" class='form-control'>
														<option  value="A1">A1</option>
														<option  value="A2">A2</option>
														<option  value="A3">A3</option>
														<option  value="B1">B1</option>
														<option  value="B2">B2</option>
														<option  value="C1">C1</option>
														<option  value="C2">C2</option>
														<option  value="C3">C3</option>
														<option  value="C4">C4</option>
													</select>
		                           				</td>
		                           			</tr>
		                           			<tr>
		                           				
		                           			<tr>
		                           				<td>领证日期</td>
		                           				<td> 
			                           				<div class="input-group">
															<input class="form-control date-picker" name='registerDate' type="text" data-date-format="yyyy-mm-dd" />
															<span class="input-group-addon">
																<i class="fa fa-calendar "></i>
															</span>
													</div>
		                           				
		                           				</td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>本周期扣分</td>
		                           				<td> <input name='score' type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>驾驶证状态</td>
		                           				<td> 
		                           				<select  name="state" class='form-control'>
														<option  value="正常">正常</option>
														<option  value="吊销">吊销</option>
													</select>
		                           				
		                           				</td>
		                           			</tr>
		                           			<tr>
		                           				<td colspan="2"> 
		                           					 <div class="col-sm-4 col-sm-offset-2">
		                                  			  		<button class="btn btn-primary" type="button" onclick="submit_form()">提交</button>
		                               				 </div>
		                           				</td>
		                           			</tr>
		                           		</tbody>
		                           	</table>
		                           	</form>
                            </div>
                        </div>
  			 </div>
   
				
				<!-- /.page-content -->
			</div><!-- /.main-content -->
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
		
			<script>
			

			   var form_=$("#form_").validate({
				    rules: {
				    	name: "required",
				    	registerDate:"required",
				    	sn: "required",
				    	score:{digits:true}
				    	
				    },
				    ignore:"",
				    messages: {
				    	name: "姓名码必须填写",
				    	registerDate: "日期必须填写",
				    	sn: "驾驶证必须填写",
				    		score:{digits:"必须是数字"}
				    }
				});
			   
			   
	 var table=null;
	    var tree;
	    function submit_form(){
	    	if(!form_.form()) return ;
	    	$.ajax({
	    		   type: "POST",
	    		   url:  $.common.getContextPath() + "/car/license/save",
	    		   data: $("form").serialize(),
	    		   success: function(msg){
	    		     if(msg.code==1){
	    		    	 toastr.success('操作成功');
	    		    	 window.location.reload();
	    		     }
	    		     layer.closeAll() ;
	    		   }
	    		});
	     }
	    
	    function fun_delete(id){
	    	layer.confirm('确定删除改驾驶证？', {
	    		  btn: ['确定','取消'] //按钮
	    		}, function(){
	    			$.ajax({
	    		 		   url:  $.common.getContextPath() + "/car/license/delete?id="+id,
	    		 		   success: function(msg){
	    		 		     if(msg.code==1){
	    		 		    	 toastr.success('操作成功');
	    		 		    	window.location.reload();
	    		 		     }else{
	    		 		    	 toastr.warning('操作失败'+msg.msg);
	    		 		     }
	    		 		     layer.closeAll() ;
	    		 		   }
	    		 	});
	    		}, function(){
	    			 layer.closeAll() ;
	    		});
	     }
	   
	    function fun_update(id){
	    	$.ajax({
	 		   url:  $.common.getContextPath() + "/car/license/get?id="+id,
	 		   success: function(msg){
	 		     if(msg.code==1){
	 		    	$("input[name='id']").val(msg.datas.id);
	 		    	$("input[name='sn']").val(msg.datas.sn);
	 		    	$("input[name='name']").val(msg.datas.name);
	 		    	$("input[name='score']").val(msg.datas.score);
	 		    	$("input[name='registerDate']").val(msg.datas.registerDate);
	 		    	layer.open({
	      			  type: 1,
	      			  skin: 'layui-layer-rim', 
	      			  content: $("#_form"),
	      			  area: "800px"
	      			});
	 		     }
	 		   }
	 		});
	     }
	   
	   
	    $(document).ready(function(){
	        	$("#_new").click(function(){
	        		$("input[name='id']").val("");
	        		$("input[name='sn']").val("");
	 		    	$("input[name='name']").val("");
	 				$("input[name='color']").val("");
	 				$("input[name='score']").val("");
	        		layer.open({
	        			  type: 1,
	        			  skin: 'layui-layer-rim', //加上边框
	        			  content: $("#_form"),
	        			  area: "900px"
	        			});
	        	});
	        	table=$('#dt_table_view').DataTable( {
	        		"dom": "rt<'row'<'col-sm-5'i><'col-sm-7'p>>",
		            "ajax": {
		                "url":  $.common.getContextPath() + "/car/license/list",
		                "type": "POST",
		                "dataSrc": "datas"
		              },
					"columns" : [{
						"data" : "sn"
					},{
						"data" : "name"
					},{
						"data" : "type"
					}, {
						"data" : "registerDate"
					},{
						"data" : "score",
					},{
						"data" : "state",
					},{
						"data" : "id",
					}] ,
					 "columnDefs": [
									
					                {
					                    "render": function ( data, type, row ) {
					                    	 return "<a tager='_blank' href='javascript:void(0)' onclick='fun_delete("+data+")'>删除 </a>"+
						                        	"<a tager='_blank' href='javascript:void(0)' onclick='fun_update("+data+")'>编辑 </a>";
					                    },
					                    "targets":6
					                },
					                {
					                    "render": function ( data, type, row ) {
					                    	 if(data!='正常'){
					                    		 return "<span class='label label-warning'>"+data+"</span>";
					                    	 }else{
					                    		 return "<span class='label label-success'>"+data+"</span>";
					                    	 }
					                    },
					                    "targets":5
					                },
					                {
					                    "render": function ( data, type, row ) {
					                    	return "<span class=' badge badge-info'>"+data+"</span>";
					                    },
					                    "targets":4
					                }
					               
					            ],
	        		"initComplete": function () {
	        			var api = this.api();
	        			$("#_search").on("click", function(){
	            		 	api.draw();
	        			} );
	        		} 
	        	 } ).on('preXhr.dt', function ( e, settings, data ) {
			        	data.value = $("#_name").val();
			        	data.columnname = "name";
			        	return true;
			     } ).on('xhr.dt', function ( e, settings, json, xhr ) {
			    		 $(".dataTables_processing").hide();	
			     } )
	        });
	    
	    
	    $(document).ready(function(){
	    	$(".nav-list li").removeClass("active");
	    	$(".submenu a[href='${pageContext.request.contextPath}/sys/item/index']").parent().addClass("active");
	    	$('.date-picker').datepicker({
				autoclose: true,
				todayHighlight: true
			})
			//show datepicker when clicking on the icon
			.next().on(ace.click_event, function(){
				$(this).prev().focus();
			});

	    	
	    });
    </script>
    
	</body>
</html>
