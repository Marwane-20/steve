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
<form:form action="${ctxPath}/manager/operations/${opVersion}/ChangeConfiguration" modelAttribute="params">
    <section><span><fmt:message key="form.chargePointsWithOcpp" /></span></section>
    <%@ include file="../00-cp-multiple.jsp" %>
    <section><span><fmt:message key="form.parameters" /></span></section>
    <table class="userInput">
        <tr>
            <td><fmt:message key="form.keyType" /></td>
            <td>
                <form:select path="keyType">
                    <form:options items="${type}" itemLabel="value" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td><fmt:message key="form.configurationKey" /></td>
            <td>
                <form:select path="confKey">
                    <form:options items="${ocppConfKeys}" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td><fmt:message key="form.customConfigurationKey" /></td>
            <td><form:input path="customConfKey" /></td>
        </tr>
        <tr>
            <td><fmt:message key="form.value" /></td>
            <td><form:input path="value" /></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <div class="submit-button">
                    <input type="submit" value="<fmt:message key='form.perform' />" />
                </div>
            </td>
        </tr>
    </table>
</form:form>