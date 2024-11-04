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
<form:form action="${ctxPath}/manager/operations/${opVersion}/ClearChargingProfile" modelAttribute="params">
    <section><span><fmt:message key="form.chargePointsWithOcpp" /></span></section>
    <%@ include file="../00-cp-multiple.jsp" %>
    <section><span><fmt:message key="form.parameters" /></span></section>
    <table class="userInput">
        <tr>
            <td><fmt:message key="form.filterType" />:</td>
            <td>
                <form:select path="filterType">
                    <form:options items="${filterType}" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td><fmt:message key="form.chargingProfileId" />:</td>
            <td>
                <form:select path="chargingProfilePk">
                    <form:options items="${profileList}" itemLabel="itemDescription" itemValue="chargingProfilePk" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td><fmt:message key="form.connectorId" /> (integer):</td>
            <td><form:input path="connectorId" placeholder="<fmt:message key='form.connectorIdPlaceholder' />" /></td>
        </tr>
        <tr>
            <td><fmt:message key="form.chargingProfilePurpose" />:</td>
            <td>
                <form:select path="chargingProfilePurpose">
                    <option value="" selected><fmt:message key="form.emptyOption" /></option>
                    <form:options items="${chargingProfilePurpose}" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td><fmt:message key="form.stackLevel" /> (integer):</td>
            <td><form:input path="stackLevel" /></td>
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
