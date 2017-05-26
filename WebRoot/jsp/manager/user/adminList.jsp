<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>文理小跳蚤 </title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="<%=path%>/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="<%=path%>/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="<%=path%>/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="<%=path%>/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="<%=path%>/media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="<%=path%>/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="<%=path%>/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="<%=path%>/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES --> 

	<link href="<%=path%>/media/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>

	<link href="<%=path%>/media/css/daterangepicker.css" rel="stylesheet" type="text/css" />

	<link href="<%=path%>/media/css/fullcalendar.css" rel="stylesheet" type="text/css"/>

	<link href="<%=path%>/media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>

	<link href="<%=path%>/media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
	<link rel="stylesheet" type="text/css" href="<%=path%>/media/css/select2_metro.css" />
	<link rel="stylesheet" href="<%=path%>/media/css/DT_bootstrap.css" />
	<link href="<%=path%>/media/css/glyphicons.css" rel="stylesheet" />
	<link href="<%=path%>/media/css/halflings.css" rel="stylesheet" />
	
	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="<%=path%>/media/image/favicon.ico" />
	

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

	<!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		 <div class="navbar-inner">

                <div class="container">

                    <!-- BEGIN LOGO -->

                    <a class="brand" href="<%=path %>/"> <img src="<%=path%>/media/image/logo.png" alt="logo" /> </a>

                    <!-- END LOGO -->

                    <!-- BEGIN HORIZANTAL MENU -->

                    <!-- END HORIZANTAL MENU -->

                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->

                    <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse"> <img src="<%=path%>/media/image/menu-toggler.png" alt="" /> </a>

                    <!-- END RESPONSIVE MENU TOGGLER -->

                    <!-- BEGIN TOP NAVIGATION MENU -->

                    <ul class="nav pull-right">



                        <!-- BEGIN USER LOGIN DROPDOWN -->
                        <c:choose>
                        	<c:when test="${empty sessionScope.isLogin}">
	              				<li class="dropdown user">
	              				    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" src="<%=path%>/media/image/avatar1_small.jpg" /> <span class="username">游客您好</span> <i class="icon-angle-down"></i> </a> 
		                        	<ul class="dropdown-menu">
		                        		<li>
		                                    <a href="<%=path%>/user/toLogin"><i class="icon-user"></i> 登录/注册</a>
		                                </li>
		                                <li>
		                                    <a href="<%=path%>/toHelp"><i class="icon-question-sign"></i> 帮助</a>
		                                </li>
		                        	</ul>
		                        </li>          	
                        	</c:when>
                        	<c:otherwise>
								<li class="dropdown user">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" src="<%=path%>/media/image/avatar1_small.jpg" /> <span class="username">${isLogin.nickname }</span> <i class="icon-angle-down"></i> </a>
		                            <ul class="dropdown-menu">		
		                                <li>
		                                    <a href="<%=path%>/user/toPersonInfo?id=${isLogin.id}"><i class="icon-user"></i>个人中心</a>
		                                </li>		
		                                <li>
		                                    <a href="<%=path%>/blog/toMyBlog?id=${isLogin.id}"><i class="icon-stackexchange"></i> 我的发布</a>
		                                </li>		
		                                <li>
		                                    <a href="<%=path%>/message/toMyMessageList?id=${isLogin.id}"><i class="icon-comment"></i> 我的评论</a>
		                                </li>
		                                <li>
		                                    <a href="<%=path%>/message/toReplyMyMessageList?id=${isLogin.id}"><i class="icon-envelope"></i> 回复我的</a>
		                                </li>		
		
		                                <li class="divider"></li>
										<c:if test="${isLogin.isManager eq 1 || isLogin.isManager eq 2}">
			                                <li>
			                                    <a href="<%=path%>/toManagerIndex"><i class="icon-lock"></i> 后台管理</a>
			                                </li>																				
										</c:if>		
		                                <li>
		                                    <a href="<%=path%>/user/loginOut"><i class="icon-key"></i> 注销</a>
		                                </li>		
		           		                <li>
		                                    <a href="<%=path%>/toHelp"><i class="icon-question-sign"></i> 帮助</a>
		                                </li>  
		                            </ul>
                        		</li>                        	
                        	</c:otherwise>
                        </c:choose>
                        <!-- END USER LOGIN DROPDOWN -->
                    </ul>

                    <!-- END TOP NAVIGATION MENU -->

                </div>

            </div>

		<!-- END TOP NAVIGATION BAR -->

	</div>

	<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->

	<div class="page-container">

		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">

			<!-- BEGIN SIDEBAR MENU -->        
			<ul class="page-sidebar-menu">
				<li>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler hidden-phone"></div>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				</li>

				<li class="start ">
					<a href="<%=path%>/toManagerIndex">
						<i class="icon-home"></i> 
						<span class="title">首页</span>
						
					</a>
				</li>

				<li class="active ">
					<a href="javascript:;">
						<i class="icon-user"></i> 
						<span class="title">用户管理</span>
						<span class="arrow "></span>
						<span class="selected"></span>
					</a>
					<ul class="sub-menu">
						<li class="active ">
							<a href="<%=path%>/user/toAdminList">
							管理员管理</a>
						</li>
						<li >
							<a href="<%=path%>/user/toUserList">
							用户管理</a>
						</li>						
					</ul>
				</li>

				<li class="">
					<a href="javascript:;">
						<i class="icon-cogs"></i> 
						<span class="title">网站管理</span>
						<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="<%=path%>/indexPic/toIndexPicList">
							首页管理</a>
						</li>
						<li >
							<a href="<%=path%>/menu/toMenuList">
							板块管理</a>
						</li>
						<li >
							<a href="<%=path%>/menu/toSonMenuIndex">
							细类管理</a>
						</li>
					</ul>
				</li>

				<li class="">
					<a href="javascript:;">
						<i class="icon-table"></i> 
						<span class="title">交易信息管理</span>
						<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="<%=path%>/blog/toUncheckBlogList">
							交易信息审核</a>
						</li>
						<li >
							<a href="<%=path%>/blog/toManagerBlogList">
							交易信息管理</a>
						</li>
						<li >
							<a href="<%=path%>/message/toManagerMessageList">
							评论管理</a>
						</li>						
					</ul>
				</li>
				<li class="">
					<a href="javascript:;">
						<i class="icon-bar-chart"></i> 
						<span class="title">统计分析</span>
						<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li >
							<a href="<%=path%>/toUserAnalysis">
							用户信息统计</a>
						</li>
						<li >
							<a href="<%=path%>/toBlogAnalysis">
							交易信息统计</a>
						</li>
						<li >
							<a href="<%=path%>/toMessageAnalysis">
							评论信息统计</a>
						</li>											
					</ul>
				</li>				
			</ul>
			<!-- END SIDEBAR MENU -->

		</div>
		<!-- END SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content">

			<!-- BEGIN PAGE CONTAINER-->

			<div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->

				<div class="row-fluid">

					<div class="span12">						

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">

							管理员列表 

						</h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a href="<%=path%>/toManagerIndex">首页</a> 

								<i class="icon-angle-right"></i>

							</li>

							<li>

								<a href="#">用户管理</a>

								<i class="icon-angle-right"></i>

							</li>

							<li><a href="#">管理员管理</a></li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid">
					<div class="span12">
						<div class="portlet box light-grey">

							<div class="portlet-title">
								
								<div class="caption"><i class="icon-globe"></i>管理员列表</div>

								<input type="hidden" name="adminId" id="adminId" value="${isLogin.id }"/>
								<input type="hidden" name="adminNickname" id="adminNickname" value="${isLogin.nickname }"/>

								<c:if test="${isLogin.isManager eq 2 }">
								<div class="btn-group pull-right">

									<button onclick="location='<%=path %>/user/toUserEdit'" class="btn green">

									新增 <i class="icon-plus"></i>

									</button>

								</div>
								</c:if>

							</div>

							<div class="portlet-body">
								<table class="table table-striped table-bordered table-hover" id="adminList">

									<thead>
										<tr>
											<th width="10%">序号</th>
											<th width="10%">用户名</th>
											<th width="10%">姓名</th>
											<th width="23%">Email</th>
											<th width="22%">电话</th>
											<th width="10%">状态</th>
											<th width="15%">操作</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items="${adminList.beanList }" var="admin" varStatus="status" >										
											<tr class="odd gradeX">
												<td>${status.count} </td>
												<td>${admin.nickname}</td>
												<td>${admin.name}</td>
												<td>${admin.email}</td>
												<td>${admin.telephone}</td>
												<c:if test="${admin.isUse eq 0}">
													<td><span class="label label-success">已启用</span></td>
													<td>
														<a href="<%=path%>/user/toUserDetail?id=${admin.id}" class="btn mini purple  icn-only" title="查看"><i class="halflings-icon white user "></i></a>
														<c:if test="${isLogin.isManager eq 2 }">
															<a href="<%=path %>/user/toUserEdit?id=${admin.id}" class="btn mini blue icn-only" title="编辑"><i class="halflings-icon white pencil "></i></a>
															<a href="javascript:void(0);" onclick="forbidden('${admin.id}','${admin.nickname}')"  class="btn mini red icn-only" title="停用"><i class="halflings-icon white ban-circle"></i></a>																																										
														</c:if>
													</td>										
												</c:if>
												<c:if test="${admin.isUse eq 1}">
													<td><span class="label label-danger">已停用</span></td>
													<td>
														<a href="<%=path%>/user/toUserDetail?id=${admin.id}" class="btn mini purple icn-only" title="查看"><i class="halflings-icon white user "></i></a>
														<c:if test="${isLogin.isManager eq 2 }">
															<a href="<%=path %>/user/toUserEdit?id=${admin.id}" class="btn mini blue icn-only" title="编辑"><i class="halflings-icon white pencil "></i></a>
															<a href="javascript:void(0);" onclick="using('${admin.id}','${admin.nickname}')" class="btn mini red icn-only" title="启用"><i class="halflings-icon white ok-circle"></i></a>																											
														</c:if>
													</td>
												</c:if>

											</tr>
										</c:forEach>
									</tbody>
								</table>
								<%-- 分页 --%>
								<div class="pull-right">
									<div class="pagination">
									<ul>	
										<%-- 如果总页数大于1页，那么《显示出来！ --%>									
										<c:if test="${adminList.pc > 1 }">						
											<li>
						            			  <a href="<%=path%>/user/getAdminList?pc=${adminList.pc-1}" aria-label="Previous">
						            			    <span aria-hidden="true">&laquo;</span>
						              			  <span class="sr-only">上一页</span>
						             			 </a>
						           			 </li>
										</c:if>
										<c:choose>
											<%-- 如果总页数不足10页，那么把所有的页数都显示出来！ --%>
											<c:when test="${adminList.tp <= 10 }">
												<c:set var="begin" value="1" />
												<c:set var="end" value="${adminList.tp }" />
											</c:when>
											<c:otherwise>
												<%-- 当总页数>10时，通过公式计算出begin和end --%>
												<c:set var="begin" value="${adminList.pc-5 }" />
												<c:set var="end" value="${adminList.pc+4 }" />
												<%-- 头溢出 --%>
												<c:if test="${begin < 1 }">
													<c:set var="begin" value="1" />
													<c:set var="end" value="10" />
												</c:if>
												<%-- 尾溢出 --%>
												<c:if test="${end > adminList.tp }">
													<c:set var="begin" value="${adminList.tp - 9 }" />
													<c:set var="end" value="${adminList.tp }" />
												</c:if>
											</c:otherwise>
										</c:choose>
           								<%-- 循环遍历页码列表 --%>
										<c:forEach var="i" begin="${begin }" end="${end }">
											<c:choose>
												<c:when test="${i eq adminList.pc }">
													 <li><a>${i }</a></li>
												</c:when>
												<c:otherwise>
												 <li><a href="<%=path%>/user/getAdminList?pc=${i}">${i }</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>        
							            <c:if test="${adminList.pc < adminList.tp }">															
											<li>
					             			 <a href="<%=path%>/user/getAdminList?pc=${adminList.pc+1}" aria-label="Next">
					              			  <span aria-hidden="true">&raquo;</span>
					              			  <span class="sr-only">下一页</span>
					             			 </a>
					           				 </li>
										</c:if> 										
									</ul>
									</div>																
								</div>
								<%-- 分页结束 --%>								
							</div>
						</div>
					</div>
					
					
					<!-- 模态框（禁用用户） -->
					<div class="modal fade" id="forbiddenModal" tabindex="-1" role="dialog" aria-labelledby="forbiddenLabel" aria-hidden="true">
					    <div class="modal-dialog">
					        <div class="modal-content">
					            <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
					                <h4 class="modal-title" id="forbiddenLabel">禁用原因</h4>
					            </div>
					            <div class="modal-body">
									<form id="forbiddenForm" class="form-horizontal">
										<div class="row-fluid">
											<div class="control-group span10" >
												<label class="control-label">请输入禁用原因</label>		
												<div class="controls">	
													<input type="hidden" name="userId" id="frbiddenUserId" value=""/>
													<input type="hidden" name="userNickname" id="frbiddenUserNickname" value=""/> 	
													<input type="text" class="m-wrap span12" row="3" id="frbiddenReason" name="reason"  value="">
													<span class="help-block" style="color:red;" style="color:red;" id="frbiddenReason_help"></span>	
												</div>
											</div>									
										</div>
									</form>
								</div>
					            <div class="modal-footer">            
					                <button type="button " id="forbidden_submit" class="btn blue btn-primary">提交</button>
					            	<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					            </div>
					        </div><!-- /.modal-content -->
					    </div><!-- /.modal -->
					</div>
										
				</div>
				<!-- END PAGE CONTENT-->

			</div>

			<!-- END PAGE CONTAINER--> 

		</div>

		<!-- END PAGE -->    

	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

	<div class="footer">

		<div class="footer-inner">

			2017 &copy; 文理小跳蚤 by xjw 

		</div>

		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

		</div>

	</div>

	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="<%=path%>/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="<%=path%>/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="<%=path%>/media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="<%=path%>/media/js/excanvas.min.js"></script>

	<script src="<%=path%>/media/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="<%=path%>/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="<%=path%>/media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script src="<%=path%>/media/js/jquery.vmap.js" type="text/javascript"></script>   

	<script src="<%=path%>/media/js/jquery.vmap.russia.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.vmap.world.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.vmap.europe.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.vmap.germany.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.vmap.usa.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>  

	<script src="<%=path%>/media/js/jquery.flot.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.flot.resize.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.pulsate.min.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/date.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/daterangepicker.js" type="text/javascript"></script>     

	<script src="<%=path%>/media/js/jquery.gritter.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/fullcalendar.min.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.sparkline.min.js" type="text/javascript"></script>  
	<script type="text/javascript" src="<%=path%>/media/js/select2.min.js"></script>



	<script type="text/javascript" src="<%=path%>/media/js/DT_bootstrap.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="<%=path%>/media/js/app.js" type="text/javascript"></script>
	<script src="<%=path%>/media/js/manager/user/adminList.js" type="text/javascript"></script>  

  


	<!-- END PAGE LEVEL SCRIPTS -->  

	<script>

		jQuery(document).ready(function() {    

		   	App.init(); // initlayout and core plugins
			AdminList.init();
			
		});

	</script>

	<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>