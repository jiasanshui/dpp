<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>注册页面</title>
    <link rel="stylesheet" type="text/css" href="static/css/regist.css">
    <script type="text/javascript" src="static/js/jquery.min.js"></script>
</head>
<body>
    <div class="wrapper">
        <article>
            <h1><em>Logo</em><span>刁小妹毕业设计1111111</span></h1>
            <div class="main">
                <form action="user/add.do" method="post">
                    <div class="tel">
                        <input type="tel" name="tel" placeholder="手机号"><%--<em>由11个字符组成！</em>--%>
                    </div>
                    <div class="userName">
                        <input type="text" name="userName" placeholder="用户名"><%--<em>由5-8个字符组成！</em>--%>
                    </div>
                    <div class="password">
                        <input type="password" name="password" placeholder="密码"><%--<em>使用字母、数字、符号两种及以上的组合，8-12个字符</em>--%>
                    </div>
                    <div class="againpwd">
                        <input type="password" placeholder="再次输入密码"><%--<em>两次密码不一致</em>--%>
                    </div>
                    <input type="submit" value="注册">
                </form>
            </div>
        </article>
        <footer>
            <ul>
                <li><a href="#">联系我们</a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">人才招聘</a></li>
                <li><a href="#">友情链接</a></li>
                <li><a href="#">公司地址</a></li>
                <li><a href="#">关注我们</a></li>
            </ul>
            <p>本网站版权归╳╳╳技术有限公司所有，未经许可，不得转载。</p>
        </footer>
    </div>
</body>
</html>
