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
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="resource/css/main.css" media="all">
    <script type="text/javascript" src="resource/lib/loading/okLoading.js"></script>
   

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
              <a><cite>添加学生</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form layui-form-pane" action="<%=basePath %>insertStudent" >
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

            <div class="layui-tab-content" >
                <div class="layui-tab-item layui-show">
                    <!--<form class="layui-form layui-form-pane" action="" id="add">-->
                    <input type="hidden" name="id" value="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class='x-red'>*</span>学生名字
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="name" autocomplete="off" placeholder="学生名字"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">学生性别
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="sex" autocomplete="off" placeholder="学生性别"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                   <div class="layui-form-item">
                        <label class="layui-form-label">学生电话
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="tel" autocomplete="off" placeholder="学生电话"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                 <div class="layui-form-item">
                        <label class="layui-form-label">学号
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="stu_code" autocomplete="off" placeholder="学号"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">密码
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="passWord" autocomplete="off" placeholder="密码"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">宿舍编号
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="dorm_Code" autocomplete="off" placeholder="宿舍编号"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">宿舍楼
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="dormBuildId" autocomplete="off" placeholder="宿舍楼"
                                   class="layui-input" lay-verify="required" value="">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">  
                        <span class='x-red'>*</span>属性
                        </label>
                        <div class="layui-input-block">
                            <input type="text" name="role_id" autocomplete="off" placeholder="默认为2"
                                   class="layui-input" lay-verify="required" value="2">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <button class="layui-btn" type="submit" >  保存  </button>
                    </div>
                    <div style="height:100px;"></div>
                </div>
            </div>

        </div>
    </form>
</div>
<script src="resource/lib/layui/layui.js" charset="utf-8"></script>
<script src="resource/js/x-layui.js" charset="utf-8"></script>

<script>
    layui.use(['element','layer','form'], function(){
        $ = layui.jquery;//jquery
        lement = layui.element();//面包导航
        layer = layui.layer;//弹出层
        form = layui.form();
        okLoading.close($);

        //监听提交
        form.on('submit(add)', function(data){
            var community_name=$("input[name='name']").val();
            var developers=$("input[name='developers']").val();
            var property=$("input[name='property']").val();
            if(name==""){
                layer.msg('宿舍楼名称不能为空',{icon:5,time:2000});return false;
            }
         
            var data=data.field;
            $.ajax({
                type:"post",
                url:"/xiyuan/community/add.html",
                data:data,
                dataType:"json",
                success:function(data)
                {
                    //alert(1);
                    if(data.status==1)
                    {
                        layer.msg(data.info, {icon: 6,time:2000},function () {
                            window.parent.location.reload();
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        return false;

                    }
                    else{
                        layer.msg(data.info,{icon:5,time:2000});return false;
                    }
                }

            });

        });

    })
</script>


</body>
</html>