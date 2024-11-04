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
<form:form action="${ctxPath}/manager/operations/${opVersion}/ReserveNow" modelAttribute="params">
    <section><span><fmt:message key="form.chargePointsWithOcpp" /></span></section>
    <%@ include file="../00-cp-single.jsp" %>
    <section><span><fmt:message key="form.parameters" /></span></section>
    <table class="userInput">
        <tr>
            <td><fmt:message key="form.connectorId" />:</td>
            <td><form:select path="connectorId" disabled="true" /></td>
        </tr>
        <tr>
            <td><fmt:message key="form.expiryDateTime" />:</td>
            <td>
                <form:input path="expiry" cssClass="dateTimePicker" />
            </td>
        </tr>
        <tr>
            <td><fmt:message key="form.ocppIdTag" />:</td>
            <td>
                <form:select path="idTag">
                    <form:options items="${idTagList}" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><div class="submit-button"><input type="submit" value="<fmt:message key='form.perform' />"></div></td>
        </tr>
    </table>
</form:form>