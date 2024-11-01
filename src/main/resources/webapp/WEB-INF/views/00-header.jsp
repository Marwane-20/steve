<%--

    SteVe - SteckdosenVerwaltung - https://github.com/steve-community/steve
    Copyright (C) 2013-2024 SteVe Community Team
    All Rights Reserved.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="owasp.encoder.jakarta" prefix="encode" %>

<%@ include file="00-context.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="${ctxPath}/static/images/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="${ctxPath}/static/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="${ctxPath}/static/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctxPath}/static/css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="${ctxPath}/static/css/jquery-ui-timepicker-addon.min.css">
    <script type="text/javascript" src="${ctxPath}/static/js/jquery-2.0.3.min.js" ></script>
    <script type="text/javascript" src="${ctxPath}/static/js/jquery-ui.min.js" ></script>
    <script type="text/javascript" src="${ctxPath}/static/js/jquery-ui-timepicker-addon.min.js" ></script>
    <script type="text/javascript" src="${ctxPath}/static/js/script.js" ></script>
    <script type="text/javascript" src="${ctxPath}/static/js/stupidtable.min.js" ></script>
    <title>SteVe - Steckdosenverwaltung</title>
</head>
<body>
<div class="main">
    <div class="top-banner">
        <div class="container">
            <a href="${ctxPath}/manager/home"><img src="${ctxPath}/static/images/logo2.png" height="80"></a>
        </div>
    </div>
    <div class="top-menu">
        <div class="container">
                <ul class="navigation">
                    <li><a href="${ctxPath}/manager/home"><fmt:message key="menu.home" /></a></li>
                    <li><a><fmt:message key="menu.data.management" /></a>
                        <ul>
                            <li><a href="${ctxPath}/manager/chargepoints"><fmt:message key="menu.charge.points" /></a></li>
                            <li><a href="${ctxPath}/manager/ocppTags"><fmt:message key="menu.ocpp.tags" /></a></li>
                            <li><a href="${ctxPath}/manager/users"><fmt:message key="menu.users" /></a></li>
                            <li><a href="${ctxPath}/manager/chargingProfiles"><fmt:message key="menu.charging.profiles" /></a></li>
                            <li><a href="${ctxPath}/manager/reservations"><fmt:message key="menu.reservations" /></a></li>
                            <li><a href="${ctxPath}/manager/transactions"><fmt:message key="menu.transactions" /></a></li>
                        </ul>
                    </li>
                    <li><a><fmt:message key="menu.operations" /></a>
                        <ul>
                            <li><a href="${ctxPath}/manager/operations/v1.2">OCPP v1.2</a></li>
                            <li><a href="${ctxPath}/manager/operations/v1.5">OCPP v1.5</a></li>
                            <li><a href="${ctxPath}/manager/operations/v1.6">OCPP v1.6</a></li>
                            <li><a href="${ctxPath}/manager/operations/tasks"><fmt:message key="menu.tasks" /></a></li>
                        </ul>
                    </li>
                    <li><a href="${ctxPath}/manager/settings"><fmt:message key="menu.settings" /></a></li>
                    <li><a href="${ctxPath}/manager/log"><fmt:message key="menu.log" /></a></li>
                    <li><a href="${ctxPath}/manager/about"><fmt:message key="menu.about" /></a></li>
                    <li><a href="${ctxPath}/manager/swagger-ui/index.html"><fmt:message key="menu.api" /></a></li>
                    <li><a href="${ctxPath}/manager/signout"><fmt:message key="menu.sign.out" /></a></li>
                </ul>
            </div>
        </div>
    <div class="main-wrapper">
