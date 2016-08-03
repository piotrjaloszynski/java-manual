<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="createUserUrl" value="/create-user"/>
<c:url var="deleteUserActionURL" value="/deleteUserAction"/>
<c:url var="usereditActionURL" value="/user-edit"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="Main.css">
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body style="background-color:lightgrey;">
<jsp:include page="menu.jsp"/>
<h1 align="center">Users</h1>
<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <td>department:</td>
            <td>email:</td>
            <td>last name:</td>
            <td>name:</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${UserList}" var="user">
            <tr>
                <td>${user.department}</td>
                <td>${user.email}</td>
                <td>${user.lastName}</td>
                <td>${user.name}</td>
                <td>
                    <form action="${deleteUserActionURL}" method="POST">
                        <input type="hidden" name="id" value="${user.id}"/>
                        <input type="submit" value="usun"/>
                    </form>
                    <form action="${usereditActionURL}" method="get">
                        <input type="hidden" name="id" value="${user.id}"/>
                        <input type="submit" value="edytuj uzytkownia"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<a href="${createUserUrl}">create-user</a><br>

<p>Please enter your comment:</p>
<form action="" method="POST">

        <textarea name="Komentarz" cols="50" rows="10"
                  placeholder="Please enter your comments for your line manager."></textarea>
    <br/><br/><br/>
    <p>Please enter your email:
        <textarea name="Komentarz" cols="0,5" rows="1"> </textarea>
        <input type="submit" value="Submit"/>
        <input type="reset" value="Clear"/>

</form>
</body>
</html>
