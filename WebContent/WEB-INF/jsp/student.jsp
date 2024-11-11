<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        学生列表
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="resource/css/main.css" media="all">
    <link rel="stylesheet" href="resource/css/bootstrap.css">
</head>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>学生信息管理</cite></a>
              <a><cite>学生信息列表</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form x-center" action="" style="width:800px">
        <div class="layui-form-pane" style="margin-top: 15px;">
            <div class="layui-form-item">
               
                <div class="layui-input-inline">
                    <input type="text" name="dormBuildId"  placeholder="宿舍楼" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                </div>
            </div>
        </div>
    </form>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()">
            <i class="layui-icon">&#xe640;</i>批量删除
        </button>
        <button class="layui-btn" 
        onclick="location.href='<%=basePath%>findStudentAdd'"
        onclick="personnel_add('添加成员','personnel_add.html','1000','600')">
            <i class="layui-icon">&#xe608;</i>添加
        </button>
       
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>
            <th>
                <input type="checkbox" id="all" value="全选" onclick="all_check()">
            </th>
            <th>  ID </th>
            <th>  学号 </th>
            <th>  姓名  </th>
            <th>  性别 </th>
            <th> 宿舍楼</th>
            <th>寝室编号</th>
            <th>电话 </th>
            <th> 操作</th>
        </tr>
        </thead>
        <tbody id="x-img">
        <c:forEach items="${list}" var="user">
        <tr>
            <th>
                <input type="checkbox" name="ic" value="1">
            </th>
            <td>${user.id }</td>
            <td>${user.stu_code }</td>
            <td>${user.name }</td>
            <td>${user.sex }</td>
            <td>${user.dormBuildId }</td>
            <td>${user.dorm_Code }</td>
            <td>${user.tel } </td>
            <td class="td-manage">
                <a title="编辑" href="<%=basePath%>findStudentById/${user.id}">
                    <i class="layui-icon">&#xe642;</i>
                </a>
                <a title="删除" href="<%=basePath%>deleteStudent/${user.id}"  
                onclick="personnel_del(this,'4')"
                   style="text-decoration:none">
                    <i class="layui-icon">&#xe640;</i>
                </a>
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>

   
</div>
<script>
 

    //批量删除提交
    function delAll () {
        layer.confirm('确认要删除吗？',function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
        });
    }

    function question_show (argument) {
        layer.msg('可以跳到前台具体问题页面',{icon:1,time:1000});
    }
    /*添加*/
    function personnel_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
    //编辑
    function personnel_edit (title,url,id,w,h) {
        url = url+"?id="+id;
        x_admin_show(title,url,w,h);
    }

    /*删除*/
    function personnel_del(obj,id){
        layer.confirm('确认要删除吗？',{icon:3,title:'提示信息'},function(index){
            $.ajax({
                type:"post",
                url:"xxx",
                data:{id:id},
                dataType:"json",
                success:function(data){
                    //console.log(data);
                    if(data.status==1){
                        //发异步删除数据
                        $(obj).parents("tr").remove();
                        layer.msg(data.info,{icon:6,time:1000});
                        setTimeout(function(){
                            window.location.reload();
                        },1000);return false;
                    } else{
                        layer.msg(data.info,{icon:5,time:1000});return false;
                    }
                }
            });
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }
</script>
<script type="text/javascript">
var ic={};
var all;
window.onload = function(){
	ic=document.getElementsByName("ic");
	all=document.getElementById("all");
}
function all_check(){
	if(all.checked){
		for (var i = 0; i < ic.length ; i++) {
			ic[i].checked=true;
		}
	}else{
		for (var i = 0; i < ic.length ; i++) {
			ic[i].checked=false;
		}
	}
}
function single_check(){
	var flag=0;
	for (var i = 0; i < ic.length ; i++) {
		if (ic[i].checked==true) {
				flag++;
		}
	}
	if(flag==ic.length){
		all.checked=true;
	}else{
		all.checked=false;
	}
}
</script>
</body>
</html>