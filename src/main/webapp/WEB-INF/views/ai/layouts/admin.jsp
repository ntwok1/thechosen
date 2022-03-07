<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><deco:title default="Prototype-Layout" /></title>
        <meta name="description" content="GWTech Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>

    <body>
        <%@ include file="/WEB-INF/views/ai/layouts/header.jsp"%>
        <deco:body />
        <%@ include file="/WEB-INF/views/ai/layouts/footer.jsp"%>
    </body>
    
</html>