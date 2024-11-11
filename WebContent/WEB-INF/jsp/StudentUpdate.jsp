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
    <title>
        学生信息
    </title>
    <!-- <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no"> -->
    <link rel="stylesheet" href="<%=basePath %>resource/layui/css/layui.css" >
   <!--  <script type="text/javascript" src="resource/lib/loading/okLoading.js"></script> -->
</head>
<style>
    .imgs{display: none;}
    .picture{display: none;}
    
</style>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>学生信息</cite></a>
              <a><cite>修改学生信息</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form layui-form-pane" action="<%=basePath %>updateStudent" >
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <!--<form class="layui-form layui-form-pane" action="" id="add">-->
                    <input type="hidden" name="id" value="${student.id }">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>学生姓名
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="name" autocomplete="off" placeholder="学生姓名"
                                   class="layui-input" required="" lay-verify="required" value="${student.name } ">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>性别
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="sex" autocomplete="off" placeholder="性别"
                                   class="layui-input" lay-verify="required" value="${student.sex }">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>电话
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="tel" autocomplete="off" placeholder="电话"
                                   class="layui-input" lay-verify="required" value="${student.tel }">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>宿舍编号
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="dorm_Code" autocomplete="off" placeholder="宿舍编号"
                                   class="layui-input" lay-verify="required" value="${student.dorm_Code }">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>宿舍楼
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="dormBuildId" autocomplete="off" placeholder="宿舍楼"
                                   class="layui-input" lay-verify="required" value="${student.dormBuildId }">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <button class="layui-btn layui-btn-primary layui-border-green layui-btn-fluid" type="submit" >保存  </button>
                    </div>
                    <!--</form>-->
                    <div style="height:100px;"></div>
                </div>
            </div>

        </div>
    </form>
</div>
</body>
</html>