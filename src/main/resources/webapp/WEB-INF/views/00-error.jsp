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
<%@ include file="00-header.jsp" %>
<div class="error">
    <h3><fmt:message key="error.title" /></h3>
    <p>${exception}</p>
    <c:if test="${not empty exception.cause}">
        <h3><fmt:message key="error.reason" /></h3>
        <p>${exception.cause}</p>
    </c:if>
    <br>
    <p>
        <fmt:message key="error.go.back" /> <a href="javascript:window.history.back()"><fmt:message key="error.link.back" /></a>
        <fmt:message key="error.more.detail" /> <a href="${ctxPath}/manager/log"><fmt:message key="error.link.view.log" /></a>
    </p>
</div>
<%@ include file="00-footer.jsp" %>