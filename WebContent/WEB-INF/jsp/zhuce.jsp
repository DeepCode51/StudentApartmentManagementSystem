<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <link rel="stylesheet" href="<%=basePath %>resource/layui/css/layui.css" >
  <title>系统注册</title>
</head>
<body>
<div class="x-body">
<center><h1>欢迎注册</h1></center>
    <form class="layui-form layui-form-pane" action="<%=basePath %>dozhuce" >
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <!--<form class="layui-form layui-form-pane" action="" id="add">-->
                    <input type="hidden" name="id" value="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" autocomplete="off" placeholder="名称"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">学号</label>
                        <div class="layui-input-block">
                            <input type="text" name="stu_code" autocomplete="off" placeholder="学号"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">密码</label>
                        <div class="layui-input-block">
                            <input type="text" name="passWord" autocomplete="off" placeholder="密码"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                      <div class="layui-form-item">
                        <label class="layui-form-label">注册类型</label>
                        <div class="layui-input-block">
                            <input type="text" name="role_id" autocomplete="off" placeholder="管理员输入‘1’,学生输入‘2’"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                       <button class="layui-btn layui-btn-primary layui-border-green layui-btn-fluid" type="submit" >
                       注册  </button>
                    </div>
                    <div style="height:100px;"></div>
                </div>
            </div>

        </div>
    </form>
</div>


</body>
</html>