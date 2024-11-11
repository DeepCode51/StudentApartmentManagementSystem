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
    <title>宿舍楼</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="<%=basePath %>resource/layui/css/layui.css" >
</head>
<style>
    .imgs{display: none;}
    .picture{display: none;}
</style>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>宿舍楼</cite></a>
              <a><cite>宿舍楼详情</cite></a>
              <a><cite>修改宿舍楼信息</cite></a>
            </span>
    <a class="layui-btn layui-btn-warm" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新">
    <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form layui-form-pane" action="<%=basePath %>doupdate" >
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <!--<form class="layui-form layui-form-pane" action="" id="add">-->
                    <input type="hidden" name="id" value="${dorm.id }">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>宿舍楼名称
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="name" autocomplete="off" placeholder="宿舍楼名称"
                                   class="layui-input" lay-verify="required" value="${dorm.name }">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label"> 宿舍楼描述
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="remark" autocomplete="off" placeholder="宿舍楼描述"
                                   class="layui-input" lay-verify="required" value="${dorm.remark }">
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