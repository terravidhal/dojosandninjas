<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- New line below to use the JSP Standard Tag Library -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- New line below to use the JSP Standard Tag Library : Form -->
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <!-- gestion ds erreurs -->
    <%@ page isErrorPage="true" %> 
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Create Ninjas :</title>
            <!-- for Bootstrap CSS -->
            <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
            <!-- YOUR own local CSS -->
            <link rel="stylesheet" href="/css/style.css" />
        </head>

        <body>
            <div class="container-fluid text-center p-5" style="justify-content: center;width: 50%;">
                <h1 class="text-center text-primary" style="padding-top: 100px;">
                    Create new ninja!</h1>
               <div class="omikuji border-1">
                        <form:form action="/process_ninja" method="POST" modelAttribute="ninjaAttr" class="form_this">
                            <div class="form-group">
                                <form:label path="dojo">Dojos :</form:label> 
                                <form:errors path="dojo"/>
                                <form:select class="form-control" path="dojo">
                                    <c:forEach var="elt" items="${dojos}"> 
                                        <form:option value="${elt}"><c:out value="${elt.name}"/></form:option>
                                    </c:forEach>
                                </form:select>
                            </div>
                            <div class="form-group">
                                <form:label path="firstName">First Name :</form:label>
                                <form:errors path="firstName"/>
                                <form:input class="form-control"  path="firstName"/> 
                            </div>
                            <div class="form-group">
                                <form:label path="lastName">Last Name :</form:label>
                                <form:errors path="lastName"/>
                                <form:input class="form-control"  path="lastName"/> 
                            </div>
                            <div class="form-group">
                                <form:label path="age">Age :</form:label>
                                <form:errors path="age"/>
                                <form:input class="form-control" type="number"  path="age"/> 
                            </div>
                            <button type="submit" class="btn btn-primary my-2">Create</button>
                        </form:form>
                </div> 
            </div>
            <div class="back st">
                <a href="/dojos">Back to All Dojos</a>
            </div>

            <!-- link Js -->
            <script type="text/javascript" src="/js/main.js"></script>
            <!-- For any Bootstrap that uses jquery -->
            <script src="/webjars/jquery/jquery.min.js"></script>
            <!--For any Bootstrap that uses JS -->
            <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
        </body>

        </html>