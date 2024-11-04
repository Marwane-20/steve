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
<form:form action="${ctxPath}/manager/operations/${opVersion}/GetConfiguration" modelAttribute="params">
    <section><span><fmt:message key="form.chargePointsWithOcpp" /></span></section>
    <%@ include file="../00-cp-multiple.jsp" %>
    <section><span><fmt:message key="form.parameters" /></span></section>
    <table class="userInput">
        <tr>
            <td style="vertical-align:top">
                <input type="button" value="<fmt:message key='form.selectAll' />" onClick="selectAll(document.getElementById('confKeyList'))">
                <input type="button" value="<fmt:message key='form.selectNone' />" onClick="selectNone(document.getElementById('confKeyList'))">
                <div class="info">
                    <b><fmt:message key="form.info" />:</b> <fmt:message key="form.infoDescription" />
                </div>
            </td>
            <td>
                <form:select path="confKeyList" multiple="true" size="14">
                    <c:forEach items="${ocppConfKeys}" var="k">
                        <option value="${k.getKey()}" label="${k.getValue()}" title="${k.getValue()}"></option>
                    </c:forEach>
                </form:select>
            </td>
        </tr>
        <tr>
            <td><fmt:message key="form.customConfigKeys" />:</td>
            <td><form:input path="commaSeparatedCustomConfKeys" placeholder="<fmt:message key='form.optionalCommaSeparatedList' />" /></td>
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