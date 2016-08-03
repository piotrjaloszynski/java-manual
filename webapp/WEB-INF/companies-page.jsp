<%--
  Created by IntelliJ IDEA.
  User: jalos
  Date: 12.07.2016
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="createCompanyUrl"  value="/create-company"/>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="Main.css">
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</head>

<body style="background-color:lightgrey;">
<jsp:include page="menu.jsp"/>
<h1 align="center">Company</h1>
<table class="table table-striped table-bordered table-hover">
    <thead>
    <tr>
        <th>
           name:
        </th>
        <th>
            tax Id:
        </th>
        <th>
            address:
        </th>
        <td>
          Number Of employees:
        </td>
        <th>
            industry:
        </th>
        </thead>
    </tr>
    <c:forEach items="${CompanyList}" var="czosnek">
        <tr>
        <td>${czosnek.name}</td>
        <td>${czosnek.taxId}</td>
        <td>${czosnek.address}</td>
        <td>${czosnek.numberOfEmployees}</td>
        <td>${czosnek.industry}</td>
            <td>
                <form action="/deleteCompanyAction" method="POST">
                    <input type="hidden" name="id" value="${czosnek.id}"/>
                    <input type="submit" value="usun"/>
                </form>
                <form action="/company-edit" method="get">
                    <input type="hidden" name="id" value="${czosnek.id}" />
                    <input type="submit" value="edytuj company"/>
                </form>
            </td>


        </tr>
        </c:forEach>

    </table>
<!-- JAK TO BEDZIE WYGLADAC NA STRONIE -->

<a href="${createCompanyUrl}">create-company</a><br>
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
