<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
 
 	background-image:url('imgs/background.jpg');
 	background-size:cover;
 	background-repeat:no-repeat;
 	color:white;
 }
 </style>
</head>
<body>
<%
	if(session.getAttribute("name")==null)
	{
		out.println("<script>alert('请先登录');window.location.href='login.html'</script>");
		return;
	}
	Object user=session.getAttribute("name");
%>
<a>你来啦~<%out.println(user);%></a>
<a>当前在线人数：<%out.println(application.getAttribute("onlinecount"));%></a><!-- 必须先判断是否为空！！！！！！！！！！！！！！！！！！！ -->
<br/>
<form action="logout">
<table>
<tr>
<td>
<a href="chatingframe.jsp"><input type="button" value="进去看看"></a>
</td>
<td>
<input type="submit" value=" 不看不看 ">
</td>
</table>
</form>
上传p过的头像：
<form action="uploadimg" name="form2" id="form2" enctype="multipart/form-data" method="post">
<p><input type="file" name="choosefiles"><input type="submit" value="上传" accept="image/*"></p>
</form>
</body>
</html>