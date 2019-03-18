<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>登陆页面</title>
    <link rel="stylesheet" type="text/css" href="static/css/login.css">
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".name input").focus(function(){
                $(this).prev("i").css({"background-image":"url(static/img/user2.png)"});
            });
            $(".name input").blur(function(){
                $(this).prev("i").css({"background-image":"url(static/img/user1.png)"});
            });
            $(".password input").focus(function(){
                $(this).prev("i").css({"background-image":"url(static/img/password2.png)"});
            });
            $(".password input").blur(function(){
                $(this).prev("i").css({"background-image":"url(static/img/password1.png)"});
            });
        });
    </script>
    <script>
        $(function () {
            var error = "${error}";
            if (error!=""&&error!=null){
                $("#error").html(error);
            }
        })
    </script>
</head>
<body>
    <div class="container">
        <div class="wrap">
            <header><em>Logo</em><span>╳╳╳技术有限公司</span></header>
            <article>
                <section>
                    <aside>
                        <em>
                            <img src="static/img/user.png">
                        </em>
                        <div id="error"></div>
                         <form action="user/login.do" method="post">
                            <p class="name"><i></i><input type="text" name="unameAndTel" class="userName" placeholder="请输入用户名或手机号"></p>
                            <p class="password"><i></i><input type="password" name="pwd" class="pwd" placeholder="请输入密码"></p>
                            <input type="submit" value="登录">
                             <%--<button>登录</button>--%>
                            <%--<p class="remember"><input type="checkbox" name="remember">记住密码</p>--%>
                            <p class="regist"><span>没有账号?</span><a href="jump/register.do">立即注册</a></p>
                            <div class="clear"></div>
                        </form>
                    </aside>
                   
                </section>               
            </article>
            <footer>
            </footer>
        </div>
    </div>
</body>
</html>
