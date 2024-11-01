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
<div class="content">
    <section><span><fmt:message key="about.steve" /></span></section>
    <c:if test="${releaseReport.moreRecent}">
        <div class="info">
            <fmt:message key="new.version.available" /> (${releaseReport.githubVersion})!
            <a target="_blank" href="${releaseReport.htmlUrl}"><fmt:message key="release.info" /></a> -
            <a target="_blank" href="${releaseReport.downloadUrl}"><fmt:message key="download" /></a>
        </div>
    </c:if>
    <table class="userInputFullPage">
        <tr><td><fmt:message key="version" />:</td><td>${version}</td></tr>
        <tr><td><fmt:message key="database.version" />:</td><td>${db.version}</td></tr>
        <tr><td><fmt:message key="last.database.update" />:</td><td>${db.updateTimestamp}</td></tr>
        <tr><td><fmt:message key="log.file" />:</td><td>${logFile}</td></tr>
        <tr><td><fmt:message key="github.page" />:</td><td><a href="https://github.com/steve-community/steve">https://github.com/steve-community/steve</a></td></tr>
        <tr><td><fmt:message key="system.time" />:</td><td>${systemTime}</td></tr>
        <tr><td><fmt:message key="system.time.zone" />:</td><td>${systemTimeZone}</td></tr>
    </table>
    <section><span><fmt:message key="endpoint.info" /></span></section>
    <table class="userInputFullPage">
        <tr>
            <td>${endpointInfo.ocppSoap.info}:</td>
            <td><c:forEach items="${endpointInfo.ocppSoap.data}" var="i">${i}<br></c:forEach></td>
        </tr>
        <tr>
            <td>${endpointInfo.ocppWebSocket.info}:</td>
            <td><c:forEach items="${endpointInfo.ocppWebSocket.data}" var="i">${i}<br></c:forEach></td>
        </tr>
    </table>
</div>
<%@ include file="00-footer.jsp" %>