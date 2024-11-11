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
        管理员
    </title>
     <!-- <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <!--  <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no"> -->
     <link rel="stylesheet" href="<%=basePath %>resource/layui/css/layui.css" >
    <!-- <script type="text/javascript" src="resource/lib/loading/okLoading.js"></script> -->
</head>
<style>
    .imgs{display: none;}
    .picture{display: none;}
</style>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>管理员</cite></a>
              <a><cite>管理员详情</cite></a>
              <a><cite>修改管理员信息</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form layui-form-pane" action="<%=basePath %>updateRecord" >
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <!--<form class="layui-form layui-form-pane" action="" id="add">-->
                    <input type="hidden" name="id" value="${records.id }">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>名字
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="student_name" autocomplete="off" placeholder="名字"
                                   class="layui-input" lay-verify="required" value="${records.student_name }">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">缺勤时间
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="date" autocomplete="off" placeholder="缺勤时间"
                                   class="layui-input" lay-verify="required" value="${records.date}">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">备注
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="remark" autocomplete="off" placeholder="备注"
                                   class="layui-input" lay-verify="required" value="${records.remark}">
                        </div>
                    </div>    
                    <div class="layui-form-item">
                        <button class="layui-btn layui-btn-primary layui-border-green layui-btn-fluid" type="submit" >保存  </button>
                    </div>
                    <div style="height:100px;"></div>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>