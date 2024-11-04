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
<form:form action="${ctxPath}/manager/operations/${opVersion}/DataTransfer" modelAttribute="params">
    <section><span><fmt:message key="form.chargePointsWithOcpp" /></span></section>
    <%@ include file="../00-cp-multiple.jsp" %>
    <section><span><fmt:message key="form.parameters" /></span></section>
    <table class="userInput">
        <tr>
            <td><fmt:message key="form.vendorId" /> (String):</td>
            <td><form:input path="vendorId" /></td>
        </tr>
        <tr>
            <td><fmt:message key="form.messageId" /> (String):</td>
            <td><form:input path="messageId" placeholder="<fmt:message key='form.optional' />" /></td>
        </tr>
        <tr>
            <td><fmt:message key="form.data" /> (Text):</td>
            <td><form:textarea path="data" placeholder="<fmt:message key='form.optional' />" /></td>
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