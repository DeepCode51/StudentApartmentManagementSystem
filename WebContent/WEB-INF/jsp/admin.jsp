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
        宿舍楼列表
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="resource/css/main.css" media="all">
    <!-- <script type="text/javascript" src="resource/lib/loading/okLoading.js"></script> -->
    <link rel="stylesheet" href="resource/css/bootstrap.css">
</head>
<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>管理员</cite></a>
              <a><cite>管理员详情</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <form class="layui-form x-center" action="" style="width:80%">
        <div class="layui-form-pane" style="margin-top: 15px;">
            <div class="layui-form-item">
                <div class="layui-input-inline">
                    <input type="text" name="dormBuildId"  placeholder="请输入宿舍楼名称" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                </div>
            </div>
        </div>
    </form>
    <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon">&#xe640;</i>批量删除</button>
        <button class="layui-btn" 
        onclick="location.href='<%=basePath%>findadminAdd'"
        onclick="admin_add('添加','communityadd.html','1000','600')">
        <i class="layui-icon">&#xe608;</i>添加</button>
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>
            <th> <input type="checkbox" id="all" value="全选" onclick="all_check()"></th>
            <th> ID</th>
             <th> 姓名</th>
            <th>  性别</th>
            <th>  电话</th>
            <th>账号</th>
            <th>密码</th>
            <th>  管理的宿舍楼</th>
            <th>  操作</th>
        </tr>
        </thead>
        <tbody id="x-img">
       
        <c:forEach items="${list }" var="a">
         <tr>
            <td><input type="checkbox" value="1" name="ic"> </td>
             <td>${a.id }</td>
             <td>${a.name }</td>
            <td>${a.sex }</td>
             <td>${a.tel }</td>
             <td>${a.stu_code }</td>
             <td>${a.passWord }</td>
              <td>${a.dormBuildId}</td>
             <td class="td-manage">
                 <a  href="<%=basePath%>findAdminById/${a.id}" 
                 onclick="community_edit('编辑','communityadd.html','2','1000','600')"
                   class="ml-5" style="text-decoration:none">
                    <i class="layui-icon">&#xe642;</i>
                </a>
                
                <a  href="<%=basePath%>deleteAdmin/${a.id}">
                    <i class="layui-icon">&#xe640;</i>
                </a> 
            </td>
            
        </tr>
         </c:forEach>
        </tbody>
    </table>

    <div id="page"></div>
</div>
<!-- <script src="lib/layui/layui.js" charset="utf-8"></script>
<script src="js/x-layui.js" charset="utf-8"></script> -->
<script>
    /* layui.use(['laydate','element','laypage','layer'], function(){
        $ = layui.jquery;//jquery
        laydate = layui.laydate;//日期插件
        lement = layui.element();//面包导航
        laypage = layui.laypage;//分页
        layer = layui.layer;//弹出层
        okLoading.close($);
        //以上模块根据需要引入

        /*laypage({
          cont: 'page'
          ,pages: 100
          ,first: 1
          ,last: 100
          ,prev: '<em><</em>'
          ,next: '<em>></em>'
        }); 
        layer.ready(function(){ //为了layer.ext.js加载完毕再执行
            layer.photos({
                photos: '#x-img'
                //,shift: 5 //0-6的选择，指定弹出图片动画类型，默认随机
            });
        });
      

        document.getElementById('LAY_demorange_s').onclick = function(){
            start.elem = this;
            laydate(start);
        }
        document.getElementById('LAY_demorange_e').onclick = function(){
            end.elem = this
            laydate(end);
        }

    }); */

    //批量删除提交
    function delAll () {
        layer.confirm('确认要删除吗？',function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
        });
    }
    /*添加*/
    function admin_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }


    //编辑
    function community_edit (title,url,id,w,h) {
        url = url+"?id="+id;
        x_admin_show(title,url,w,h);
    }
    /*删除*/
    function admin_del(obj,id){
        layer.confirm('确认要删除吗？',{icon:3,title:'提示信息'},function(index){
            $.ajax({
                type:"post",
                url:"/xiyuan/banner/banner_del.html",
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