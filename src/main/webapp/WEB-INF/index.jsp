<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- New line below to use the JSP Standard Tag Library -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>All Dojos :</title>
            <!-- for Bootstrap CSS -->
            <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
            <!-- YOUR own local CSS -->
            <link rel="stylesheet" href="/css/style.css" />
        </head>

        <body>

            <div class="container-fluid">
                <h1 class="text-center text-primary" style="padding-top: 100px;">
                    All Dojos :</h1>
                <table class="table table-striped border border-5 w-m">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="elt" items="${dojos}">
                            <tr>
                                <td>
                                    <c:out value="${elt.id}" />
                                </td>
                                <td>
                                    <a href="/dojo/${elt.id}">
                                        <c:out value="${elt.name}" />
                                    </a>
                                </td>
                                <td>
                                    <a href="/dojo/${elt.id}">
                                       See Ninjas
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>    
                    </tbody>
                </table> 
            </div>
            <div class="create ml-30">
                <a href="/dojo/new">Create New Dojo</a>
            </div>
            <div class="create ml-30">
                <a href="/ninja/new">Create New Ninja</a>
            </div>

            <!-- link Js -->
            <script type="text/javascript" src="/js/main.js"></script>
            <!-- For any Bootstrap that uses jquery -->
            <script src="/webjars/jquery/jquery.min.js"></script>
            <!--For any Bootstrap that uses JS -->
            <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
        </body>

        </html>