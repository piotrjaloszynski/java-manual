<%--
  Created by IntelliJ IDEA.
  User: jalos
  Date: 13.07.2016
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="deleteCompetitorActionURL" value="/deleteCompetitorAction"/>
<c:url var="competitoreditURL" value="/competitor-edit"/>
<c:url var="createCompetitorURL" value="/create-competitor"/>
<html>

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
<h1 align="center">Competitors</h1>
<table class="table table-striped table-bordered table-hover">
    <thead>
    <tr>
        <td>area</td>
        <td>brand</td>
        <td>capacity</td>
        <td>life expectancy</td>
        <c:forEach items="${competitorList}" var="smerf">
    <tr>
        <td>${smerf.area} </td>
        <td>${smerf.brand}</td>
        <td>${smerf.capacity}</td>
        <td>${smerf.lifeExpectancy}</td>
        <td>

            <form action="/deleteCompetitorAction" method="POST">
                <input type="hidden" name="id" value="${smerf.id}"/>
                <input type="submit" value="usun"/>
            </form>

            <c:url var="competitoreditURL" value="/competitor-edit"/>
            <form action="/competitor-edit" method="get">
                <input type="hidden" name="id" value="${smerf.id}"/>
                <input type="submit" value="edytuj competitora"/>
            </form>
        </td>
    </tr>
    </c:forEach>
    </tr>
    </thead>
</table>

<a href="${createCompetitorURL}">create-competitor</a>
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
