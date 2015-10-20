<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
	<title>ログイン</title>
</head>
<body bgcolor="#40AAEF">

<h1>事前にこちらのSQLを実行してユーザ情報をDBへ登録してください。</h1>

<code>
CREATE TABLE users ( name VARCHAR(255), password VARCHAR(255), authority VARCHAR(255) ); 
</code>
<br/><br/>

<code>
INSERT INTO users (name, password, authority) values ('admin', 'admin', 'ROLE_ADMIN'); 
</code>
<br/><br/>

<code>
INSERT INTO users (name, password, authority) values ('user', 'user', 'ROLE_USER'); 
</code>
<br/><br/>


<form name="f" action="<c:url value='j_spring_security_check'/>" method="post">
ログインID : <input type="text" name="username">
<br/>
ログインPW : <input type="password" name="password">
<br/>
<input type="submit" name="login" value="ログイン">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
</form>

</body>
</html>
