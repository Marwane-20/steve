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
<spring:hasBindErrors name="settingsForm">
    <div class="error">
        <ul>
            <c:forEach var="error" items="${errors.allErrors}">
                <li>${error.defaultMessage}</li>
            </c:forEach>
        </ul>
    </div>
</spring:hasBindErrors>
<div class="content">
    <form:form action="${ctxPath}/manager/settings" modelAttribute="settingsForm">

    <section><span><fmt:message key="ocpp.settings" /></span></section>
    <table class="userInputFullPage">
        <tr>
            <td><fmt:message key="heartbeat.interval" />:</td>
            <td>
                <form:input path="heartbeat"/>
            </td>
        </tr>
        <tr>
            <td><i>
                <fmt:message key="heartbeat.interval.description" />
            </i></td>
            <td></td>
        </tr>
        <tr>
            <td><fmt:message key="expiration" />:</td>
            <td>
                <form:input path="expiration"/>
            </td>
        </tr>
        <tr>
            <td><i>
                <fmt:message key="expiration.description" />
            </i></td>
            <td></td>
        </tr>
    </table>

    <br>

    <section>
        <span>
            <fmt:message key="mail.notification.setting" />
            <a class="tooltip" href="#">
                <img src="${ctxPath}/static/images/info.png" style="vertical-align:middle">
                <span><fmt:message key="mail.notification.tooltip" /></span>
            </a>
        </span>
    </section>
    <table class="userInputFullPage">
        <tr>
            <td><fmt:message key="enable.notifications" />?:</td>
            <td><form:checkbox path="enabled"/></td>
        </tr>
        <tr>
            <td><fmt:message key="protocol" />:</td>
            <td><form:input path="protocol"/></td>
        </tr>
        <tr>
            <td><fmt:message key="host" />:</td>
            <td><form:input path="host"/></td>
        </tr>
        <tr>
            <td><fmt:message key="port" />:</td>
            <td><form:input path="port"/></td>
        </tr>
        <tr>
            <td><fmt:message key="from" />:</td>
            <td><form:input path="from"/></td>
        </tr>
        <tr>
            <td><fmt:message key="username" />:</td>
            <td><form:input path="username"/></td>
        </tr>
        <tr>
            <td><fmt:message key="password" />:</td>
            <td><form:input path="password"/></td>
        </tr>
        <tr>
            <td><fmt:message key="recipients" />:</td>
            <td><form:textarea path="recipients"/></td>
        </tr>
        <tr>
            <td><fmt:message key="notify.when" />...</td>
            <td>
                <form:checkboxes items="${features}" path="enabledFeatures"
                                 itemLabel="text" delimiter="<br/>"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td id="add_space">
                <input type="submit" name="change" value="<fmt:message key='change' />">
                <input type="submit" name="testMail" value="<fmt:message key='send.test.mail' />">
            </td>
        </tr>
    </table>

</form:form>
</div>
<%@ include file="00-footer.jsp" %>