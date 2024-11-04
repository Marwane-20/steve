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
<form:form action="${ctxPath}/manager/operations/${opVersion}/SendLocalList" modelAttribute="params">
    <section><span><fmt:message key="form.chargePointsWithOcpp" /></span></section>
    <%@ include file="../00-cp-multiple.jsp" %>
    <section><span><fmt:message key="form.parameters" /></span></section>
    <table class="userInput sll">
        <tr>
            <td><fmt:message key="form.hash" />:</td>
            <td><i><fmt:message key="form.optionalOmitted" /></i></td>
        </tr>
        <tr>
            <td><fmt:message key="form.listVersion" />:</td>
            <td><form:input path="listVersion"/></td>
        </tr>
        <tr>
            <td><fmt:message key="form.updateType" />:</td>
            <td>
                <form:select path="updateType">
                    <form:options items="${updateType}" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td><fmt:message key="form.addUpdateList" />:</td>
            <td>
                <form:select path="addUpdateList" disabled="true" multiple="true">
                    <form:options items="${idTagList}" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td><fmt:message key="form.deleteList" />:</td>
            <td>
                <form:select path="deleteList" disabled="true" multiple="true">
                    <form:options items="${idTagList}" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td><fmt:message key="form.sendEmptyList" />?</td>
            <td><form:checkbox path="sendEmptyListWhenFull" id="sendEmptyListWhenFull"/></td>
        </tr>
        <tr>
            <td><i>
                <fmt:message key="form.emptyListInfo" />
            </i></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td><div class="submit-button"><input type="submit" value="<fmt:message key='form.perform' />"></div></td>
        </tr>
    </table>
</form:form>