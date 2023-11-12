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
            <title>Create Dojos :</title>
            <!-- for Bootstrap CSS -->
            <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
            <!-- YOUR own local CSS -->
            <link rel="stylesheet" href="/css/style.css" />
        </head>

        <body>
            <div class="container-fluid text-center p-5" style="justify-content: center;width: 50%;">
                <h1 class="text-center text-primary" style="padding-top: 100px;">
                    Create new dojo!</h1>
               <div class="omikuji border-1">
                        <form:form action="/process_dojo" method="POST" modelAttribute="dojoAttr" class="form_this">
                            <div class="form-group">
                                <form:label path="name">Name  : </form:label>
                                <form:errors path="name"/>
                                <form:input class="form-control" path="name"/>
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