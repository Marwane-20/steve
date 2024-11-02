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
<%@ include file="../00-header.jsp" %>
<div class="content">
    <div>
        <center>
            <table id="details" class="cpd">
                <thead>
                    <tr>
                        <th><fmt:message key="response.title" /></th>
                        <th></th>
                    </tr>
                </thead>
                <tr>
                    <td><fmt:message key="response.chargeBoxId" /></td>
                    <td>${chargeBoxId}</td>
                </tr>
                <tr>
                    <td><fmt:message key="response.connectorId" /></td>
                    <td>${response.connectorId}</td>
                </tr>
                <tr>
                    <td><fmt:message key="response.scheduleStart" /></td>
                    <td>${response.scheduleStart}</td>
                </tr>
                <tr>
                    <td><fmt:message key="response.duration" /></td>
                    <td>${response.chargingSchedule.duration}</td>
                </tr>
                <tr>
                    <td><fmt:message key="response.startSchedule" /></td>
                    <td>${response.chargingSchedule.startSchedule}</td>
                </tr>
                <tr>
                    <td><fmt:message key="response.chargingRateUnit" /></td>
                    <td>${response.chargingSchedule.chargingRateUnit}</td>
                </tr>
                <tr>
                    <td><fmt:message key="response.minChargingRate" /></td>
                    <td>${response.chargingSchedule.minChargingRate}</td>
                </tr>
            </table>
        </center>
        <br>
        <section>
            <span><fmt:message key="response.schedulePeriods" /></span>
        </section>
        <table class="res">
            <thead>
                <tr>
                    <th><fmt:message key="response.startPeriod" /></th>
                    <th><fmt:message key="response.powerLimit" /></th>
                    <th><fmt:message key="response.numberPhases" /></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${response.chargingSchedule.chargingSchedulePeriod}" var="element">
                    <tr>
                        <td>${element.startPeriod}</td>
                        <td>${element.limit}</td>
                        <td>${element.numberPhases}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%@ include file="../00-footer.jsp" %>
