<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><deco:title default="Prototype-Layout" /></title>
        <meta name="description" content="GWTech Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link
            rel="icon"
            type="image/png"
            href="<core:url value="https://img.icons8.com/small/24/000000/barcode.png"/>"
            />
        <link
            rel="stylesheet"
            href="<core:url value="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css"/>"
            />
        <link rel="stylesheet" href="<core:url value="https://cdn.discordapp.com/attachments/950541467254943795/950800753096798218/prototype.css"/>" />
        
        
        <deco:head />
        <style>
            :root{
                --noise: url(<core:url value="https://media.discordapp.net/attachments/950542881825914921/950542966806704138/noise.png"/>);
                --noise-2: url(<core:url value="https://media.discordapp.net/attachments/950542881825914921/950542967033171998/noise2.png"/>);
                --main-color: #000000;
                --main-trans-color: #00000077;
                --sub-color: #f6aabe;
                --sub-trans: #f5aec131;
                --sub-trans-color: #f5aec1;
                --sub-light-color: #ffe8e8;
                --text-color: #fff;
                --text-grey: #8390a2;
                --text-trans-grey: #c7c7c710;
                --text-light-grey: #0000005b;
                --box-shadow: 0 0 80px rgba(0, 0, 0, 0.3);
                --trans: rgba(0, 0, 0, 0);
            }
            *:before, *:after {
                box-sizing: inherit;
            }
            input[type=checkbox] {
                --active: #f6aabe;
                --active-inner: #fff;
                --focus: 2px #f6aabe59;
                --border: #f6aabea2;
                --border-hover: #f6aabe;
                --background: #fff;
                --disabled: #f6f8ff;
                --disabled-inner: #e1e6f9;
                -webkit-appearance: none;
                -moz-appearance: none;
                height: 21px;
                outline: none;
                display: inline-block;
                vertical-align: top;
                position: relative;
                margin: 0;
                cursor: pointer;
                border: 1px solid var(--bc, var(--border));
                background: var(--b, var(--background));
                transition: background 0.3s, border-color 0.3s, box-shadow 0.2s;
            }

            input[type=checkbox]:after {
                content: "";
                display: block;
                left: 0;
                top: 0;
                position: absolute;
                transition: transform var(--d-t, 0.3s) var(--d-t-e, ease), opacity var(--d-o, 0.2s);
            }
            input[type=checkbox]:checked{
                --b: var(--active);
                --bc: var(--active);
                --d-o: 0.3s;
                --d-t: 0.6s;
                --d-t-e: cubic-bezier(0.2, 0.85, 0.32, 1.2);
            }
            input[type=checkbox]:disabled{
                --b: var(--disabled);
                cursor: not-allowed;
                opacity: 0.9;
            }
            input[type=checkbox]:disabled:checked{
                --b: var(--disabled-inner);
                --bc: var(--border);
            }
            input[type=checkbox]:disabled + label {
                cursor: not-allowed;
            }

            input[type=checkbox]:focus{
                box-shadow: 0 0 0 var(--focus);
            }
            input[type=checkbox] {
                width: 21px;
            }
            input[type=checkbox]:after{
                opacity: var(--o, 0);
            }
            input[type=checkbox]:checked{
                --o: 1;
            }
            input[type=checkbox] + label{
                font-size: 14px;
                line-height: 21px;
                display: inline-block;
                vertical-align: top;
                cursor: pointer;
                margin-left: 4px;
            }

            input[type=checkbox] {
                border-radius: 7px;
            }

            input[type=checkbox]:after {
                width: 5px;
                height: 9px;
                border: 2px solid var(--active-inner);
                border-top: 0;
                border-left: 0;
                left: 7px;

                top: 4px;
                transform: rotate(var(--r, 20deg));
            }
            input[type=checkbox]:checked {
                --r: 43deg;
            }

        </style>
    </head>

    <body>
        <%@ include file="/WEB-INF/views/ai/layouts/header.jsp"%>
        <deco:body />
        <%@ include file="/WEB-INF/views/ai/layouts/footer.jsp"%>
    </body>

</html>