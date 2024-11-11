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
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="resource/css/style.css" />
		<title>学生公寓管理登录页面</title>
	</head>
	<body>
	<form action="dologin">
		 <section>
        <!-- 背景颜色 -->
        <div class="color"></div>
        <div class="color"></div>
        <div class="color"></div>
        <div class="box">
            <!-- 背景圆 -->
            <div class="circle" style="--x:0"></div>
            <div class="circle" style="--x:1"></div>
            <div class="circle" style="--x:2"></div>
            <div class="circle" style="--x:3"></div>
            <div class="circle" style="--x:4"></div>
            <!-- 登录框 -->
            <div class="container">
                <div class="form">
                    <h2>欢迎登录</h2>
                    <form>
                        <div class="inputBox">
                            <input type="text" name="stu_code" placeholder="学号">

                        </div>
                        <div class="inputBox">
                            <input type="passWord" name="passWord" placeholder="密码">

                        </div>
                        <div class="inputBox">
                            <input type="submit" value="登录">
                        </div>
                        <p class="forget">忘记密码?<a href="#">
                                点击这里
                            </a></p>
                        <p class="forget">没有账户?<a href="<%=basePath %>zhuce">
                                注册
                            </a></p>
                    </form>
                </div>
            </div>
        </div>
    </section>
    </form>
</body>
</html>
