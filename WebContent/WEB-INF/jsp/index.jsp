<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    <title>学生公寓管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <script type="text/javascript" src="resource/lib/loading/okLoading.js"></script>
    <link rel="stylesheet" href="resource/css/main.css" media="all">
    <link rel="stylesheet" href="resource/css/font.css">
</head>
<style>
    .show_list{display: block;}
    .hide_lits{display: none;}
</style>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header header header-demo">
        <div class="layui-main">
            <div class="admin-logo-box">
                <a class="logo" href="" title="logo">学生公寓管理系统</a>
                <div class="larry-side-menu">

                    <img src="images/ss.png" alt="">
                </div>
            </div>

            <ul class="layui-nav" lay-filter="">
                <li class="layui-nav-item" id="time" style="margin-right: 50px;font-size: 16px;color: #2fb9d4;position: absolute;left: -250px;top: 0"></li>
                <li class="layui-nav-item"><img src="images/tx.jpg" class="layui-circle" style="border: 2px solid #A9B7B7;" width="35px" height="35px" alt=""></li>
                <li class="layui-nav-item"> <a href="javascript:;">${name }</a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd><a _href="<%=basePath %>one_set"  onclick="one_set('个人信息','one_set.html','1000','600')">个人信息</a>
                        </dd>
                        <dd><a href="<%=basePath %>login">切换帐号</a></dd>
                        <dd><a href="<%=basePath %>logout" >退出</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item x-index"><a href="#"></a></li>
            </ul>
        </div>
    </div>

    <!--左侧导航区域-->


    <div class="layui-side layui-bg-black x-side show_list" style="left:0px;" id="table1">
        <div style="height: 130px; width: 220px; ">
            <a class="img" title="我的头像" style="display: block;width: 80px;height: 80px;margin: 10px auto 10px;">
                <img src="./images/tx.jpg" class="userAvatar" style="display: block;width: 100%;height: 100%;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;border: 4px solid #44576b;box-sizing: border-box;">
            </a>
            <p style=" display: block;width: 100%;height: 25px;color: #ffffff;text-align: center;font-size: 12px;white-space: nowrap;line-height: 25px;overflow: hidden;">
                你好！<span class="name">${name }</span>, 欢迎回来
            </p>
        </div>
        <div class="layui-side-scroll">
<!--超级管理员  -->
<c:if test="${user.role_id==0 }">
            <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;" _href="welcome.html"> 
                <i class="layui-icon left-nav-li" lay-tips="首页">&#xe68e;</i>
                <cite>控制台</cite> </a></li>
                <li class="layui-nav-item"> 
                <a class="javascript:;" href="javascript:;"> 
                <i class="iconfont icon-dashaxiaoqudizhi01" style="top: 3px;">
                </i><cite>宿舍楼</cite> </a>
                    <dl class="layui-nav-child">
                        <dd > 
                        <a _href="<%=basePath %>sslList"> <cite>宿舍楼详情</cite> </a>
                        </dd>
                    </dl>
                </li>
               <li class="layui-nav-item">
							<a class="javascript:;" href="javascript:;">
							 <i class="layui-icon" style="top: 3px;">&#xe612;</i><cite>管理员</cite> </a>
							<dl class="layui-nav-child">
								<dd class="">
									<a  _href="<%=basePath %>adminList"> <cite>管理员详情</cite> </a>
								</dd>
							</dl>
						</li>
               <li class="layui-nav-item">
							<a class="javascript:;" href="javascript:;">
							 <i class="layui-icon " style="top: 3px;">&#xe770;</i>
							 <cite>学生信息</cite> </a>
							<dl class="layui-nav-child">
								<dd class="">
									<dd class="">
										<a  _href="<%=basePath %>StudentList"> <cite>学生信息详情</cite> </a>
									</dd>
								</dd>
							</dl>
						</li>
               <li class="layui-nav-item">
							<a class="javascript:;" href="javascript:;"> 
							<i class="layui-icon " style="top: 3px;">&#xe60e;</i>
							<cite>缺勤记录</cite> </a>
							<dl class="layui-nav-child">
								<dd class="">
									<dd class="">
										<a _href="<%=basePath %>QueQList"> <cite>缺勤记录详情</cite> </a>
									</dd>
								</dd>
							</dl>
						</li>
                <li class="layui-nav-item">
							<a class="javascript:;" href="javascript:;"> 
							<i class="layui-icon" style="top: 3px;">&#xe614;</i>
							<cite>系统设置</cite> </a>
							<dl class="layui-nav-child">
								<dd class="">
									<a href="<%=basePath%>UpdatePwd"> <cite>修改密码</cite> </a>
								</dd>
							</dl>
						</li>
            </ul>
           </c:if>
           <!-- 管理员 -->
<c:if test="${user.role_id==1 }">
            <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;" _href="welcome.html"> 
                <i class="layui-icon left-nav-li" lay-tips="首页">&#xe68e;</i>
                <cite>控制台</cite> </a></li>
                <li class="layui-nav-item"> 
                <a class="javascript:;" href="javascript:;"> 
                <i class="iconfont icon-dashaxiaoqudizhi01" style="top: 3px;">
                </i><cite>宿舍楼</cite> </a>
                    <dl class="layui-nav-child">
                        <dd > 
                        <a _href="<%=basePath %>sslList"> <cite>宿舍楼详情</cite> </a>
                        </dd>
                    </dl>
                </li>
               <li class="layui-nav-item">
							<a class="javascript:;" href="javascript:;">
							 <i class="layui-icon " style="top: 3px;">&#xe770;</i>
							 <cite>学生信息</cite> </a>
							<dl class="layui-nav-child">
								<dd class="">
									<dd class="">
										<a  _href="<%=basePath %>StudentList"> <cite>学生信息详情</cite> </a>
									</dd>
								</dd>
							</dl>
						</li>
               <li class="layui-nav-item">
							<a class="javascript:;" href="javascript:;"> 
							<i class="layui-icon " style="top: 3px;">&#xe60e;</i>
							<cite>缺勤记录</cite> </a>
							<dl class="layui-nav-child">
								<dd class="">
									<dd class="">
										<a _href="<%=basePath %>QueQList"> <cite>缺勤记录详情</cite> </a>
									</dd>
								</dd>
							</dl>
						</li>
                <li class="layui-nav-item">
							<a class="javascript:;" href="javascript:;"> 
							<i class="layui-icon" style="top: 3px;">&#xe614;</i>
							<cite>系统设置</cite> </a>
							<dl class="layui-nav-child">
								<dd class="">
									<a href="<%=basePath%>UpdatePwd"> <cite>修改密码</cite> </a>
								</dd>
							</dl>
						</li>
            </ul>
           </c:if>
   <!-- 学生 -->       
           <c:if test="${user.role_id==2 }">
           <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">
                <li class="layui-nav-item"> <a class="javascript:;" href="javascript:;" _href="welcome.html"> 
                <i class="layui-icon left-nav-li" lay-tips="首页">&#xe68e;</i>
                <cite>控制台</cite> </a></li>
               <li class="layui-nav-item">
							<a class="javascript:;" href="javascript:;"> 
							<i class="layui-icon " style="top: 3px;">&#xe60e;</i>
							<cite>缺勤记录</cite> </a>
							<dl class="layui-nav-child">
								<dd class="">
									<dd class="">
										<a _href="<%=basePath %>QueQList"> <cite>缺勤记录详情</cite> </a>
									</dd>
								</dd>
							</dl>
						</li>
                <li class="layui-nav-item">
							<a class="javascript:;" href="javascript:;"> 
							<i class="layui-icon" style="top: 3px;">&#xe614;</i>
							<cite>系统设置</cite> </a>
							<dl class="layui-nav-child">
								<dd class="">
									<a href="<%=basePath%>UpdatePwd"> <cite>修改密码</cite> </a>
								</dd>
							</dl>
						</li>
            </ul>
            </c:if>
        </div>
    </div>


    <div class="layui-side layui-bg-black x-side hide_lits" style="left:0px;" id="table2">
        <div style="height: 130px; width: 220px; ">
            <a class="img" title="我的头像" style="display: block;width: 80px;height: 80px;margin: 10px auto 10px;">
                <img src="./images/tx.jpg" class="userAvatar" style="display: block;width: 100%;height: 100%;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;border: 4px solid #44576b;box-sizing: border-box;">
            </a>
            <p style=" display: block;width: 100%;height: 25px;color: #ffffff;text-align: center;font-size: 12px;white-space: nowrap;line-height: 25px;overflow: hidden;">
                你好！<span class="userName">xiyuan</span>, 欢迎回来
            </p>
        </div>
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">
                <li class="layui-nav-item" style="height: 30px; text-align: center"> </li>
            </ul>
        </div>
    </div>


    <div class="layui-tab layui-tab-card site-demo-title x-main" lay-filter="x-tab" lay-allowclose="true" style="left: 220px;border-left: solid 2px #2299ee;">
        <ul class="layui-tab-title">
            <li class="layui-this"> 我的桌面 <i class="layui-icon layui-unselect layui-tab-close">ဆ</i> </li>
        </ul>
        <div class="layui-tab-content site-demo site-demo-body">
            <div class="layui-tab-item layui-show">
                <iframe frameborder="0" src="welcome.html" class="x-iframe"></iframe>
            </div>
        </div>
    </div>
    <div class="site-mobile-shade"> </div>
</div>

<script src="resource/lib/layui/layui.js" charset="utf-8"></script>
<script src="resource/js/main.js"></script>
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/x-layui.js" charset="utf-8"></script>

<script>
    $(".daohang").click(function(){
        var table = $(this).attr("ids");
        var ids = $(".show_list").attr("id");
        $("#"+ids+"").addClass("hide_lits");
        $("#"+ids+"").removeClass("show_list");
        $(""+table+"").removeClass("hide_lits");
        $(""+table+"").addClass("show_list");
    })


</script>
<script>
    layui.use(['laydate','element','laypage','layer'], function(){
        $ = layui.jquery;//jquery
        laydate = layui.laydate;//日期插件
        lement = layui.element();//面包导航
        laypage = layui.laypage;//分页
        layer = layui.layer;//弹出层
        okLoading.close($)
        //以上模块根据需要引入

    });
    /**
     * 退出登陆
     * 2019年8月17日19:43:15
     */
    function logout() {

        $.ajax({
            type:"post",
            url:"xxxxx",
            data:{e:1},
            dataType:"json",
            success:function (data) {
                if(data.status==1){
                    layer.msg(data.info,{icon:1,time:1000});
                    setTimeout("window.location.href='xxxx'",2000);return false;
                    return false;
                }else{
                    layer.msg(data.info,{icon:5,time:2000});return false;
                }
            }

        })
        return false;
    }

    function one_set(title,url,w,h){
        x_admin_show(title,url,w,h);
    }
</script>
<script>
    //顶部时间
    function getTime(){
        var myDate = new Date();
        var myYear = myDate.getFullYear(); //获取完整的年份(4位,1970-????)
        var myMonth = myDate.getMonth()+1; //获取当前月份(0-11,0代表1月)
        var myToday = myDate.getDate(); //获取当前日(1-31)
        var myDay = myDate.getDay(); //获取当前星期X(0-6,0代表星期天)
        var myHour = myDate.getHours(); //获取当前小时数(0-23)
        var myMinute = myDate.getMinutes(); //获取当前分钟数(0-59)
        var mySecond = myDate.getSeconds(); //获取当前秒数(0-59)
        var week = ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'];
        var nowTime;

        nowTime = myYear+'-'+fillZero(myMonth)+'-'+fillZero(myToday)+'&nbsp;&nbsp;'+week[myDay]+'&nbsp;&nbsp;'+fillZero(myHour)+':'+fillZero(myMinute)+':'+fillZero(mySecond);
        //console.log(nowTime);
        $('#time').html(nowTime);
    };
    function fillZero(str){
        var realNum;
        if(str<10){
            realNum	= '0'+str;
        }else{
            realNum	= str;
        }
        return realNum;
    }
    setInterval(getTime,1000);
</script>
<script>
    window.onload=function () {
        var click=document.getElementById('new-nav');
        var news=document.getElementById('news');
        click.addEventListener('mousemove',function () {
            news.style.display='block';
        });
        click.addEventListener('mouseout',function () {
            news.style.display='none';
        });

        var gonggao=document.getElementById('gonggao');
        var gonggaos=document.getElementById('gonggaos');
        gonggao.addEventListener('mousemove',function () {
            gonggaos.style.display='block';
        });
        gonggao.addEventListener('mouseout',function () {
            gonggaos.style.display='none';
        });
    }
</script>
</body>
</html>
</html>