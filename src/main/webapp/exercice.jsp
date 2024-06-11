<%@ page import="org.example.exercice3j2ee.entity.Personne" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="personneList" type="java.util.ArrayList<org.example.exercice3j2ee.entity.Personne>" scope="request" />
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Index</title>
    <%@include file="bootstrap.html"%>
</head>
<body>
<h1> Exercice 3 </h1>
<br/>

<div class="container mt-5">
    <h2 class="mb-4">Tableau Bootstrap</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Age</th>
        </tr>
        </thead>
        <tbody>
        <% for (Personne personne : personneList) { %>
        <tr>
            <td><%= personne.getNom() %></td>
            <td><%= personne.getPrenom() %></td>
            <td><%= personne.getAge() %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>