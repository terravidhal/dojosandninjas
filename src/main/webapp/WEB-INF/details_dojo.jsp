<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- New line below to use the JSP Standard Tag Library -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Dojos Details :</title>
            <!-- for Bootstrap CSS -->
            <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
            <!-- YOUR own local CSS -->
            <link rel="stylesheet" href="/css/style.css" />
        </head>

        <body>

            <div class="container-fluid">
                <h1 class="text-center text-primary" style="padding-top: 100px;">
                    <c:out value="${dojo.name}" />
                    Details :
                </h1>
                <table class="table table-striped border border-5 w-m">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Age</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="elt" items="${dojo.ninjas}">
                        <tr>
                            <td>
                                <c:out value="${elt.id}" />
                            </td>
                            <td>
                                <c:out value="${elt.firstName}" />
                            </td>
                            <td>
                                <c:out value="${elt.lastName}" />
                            </td>
                            <td>
                                <c:out value="${elt.age}" />
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="create ml-30">
                    <a href="/ninja/new">Create New Ninja</a>
                </div> 
                <div class="create ml-30">
                    <a href="/dojos">Back to All Dojos</a>
                </div>
            </div>


            <!-- link Js -->
            <script type="text/javascript" src="/js/main.js"></script>
            <!-- For any Bootstrap that uses jquery -->
            <script src="/webjars/jquery/jquery.min.js"></script>
            <!--For any Bootstrap that uses JS -->
            <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
        </body>

        </html>