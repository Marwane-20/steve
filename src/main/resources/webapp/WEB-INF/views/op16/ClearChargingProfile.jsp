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
<%@ include file="../00-op-bind-errors.jsp" %>
<script type="text/javascript">
    $(document).ready(function() {
        <%@ include file="../snippets/clearChargingProfile.js" %>
    });
</script>
<div class="content">
    <div class="left-menu">
        <ul>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/ChangeAvailability"><fmt:message key="menu.changeAvailability" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/ChangeConfiguration"><fmt:message key="menu.changeConfiguration" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/ClearCache"><fmt:message key="menu.clearCache" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/GetDiagnostics"><fmt:message key="menu.getDiagnostics" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/RemoteStartTransaction"><fmt:message key="menu.remoteStartTransaction" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/RemoteStopTransaction"><fmt:message key="menu.remoteStopTransaction" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/Reset"><fmt:message key="menu.reset" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/UnlockConnector"><fmt:message key="menu.unlockConnector" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/UpdateFirmware"><fmt:message key="menu.updateFirmware" /></a></li>
            <hr>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/ReserveNow"><fmt:message key="menu.reserveNow" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/CancelReservation"><fmt:message key="menu.cancelReservation" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/DataTransfer"><fmt:message key="menu.dataTransfer" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/GetConfiguration"><fmt:message key="menu.getConfiguration" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/GetLocalListVersion"><fmt:message key="menu.getLocalListVersion" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/SendLocalList"><fmt:message key="menu.sendLocalList" /></a></li>
            <hr>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/TriggerMessage"><fmt:message key="menu.triggerMessage" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/GetCompositeSchedule"><fmt:message key="menu.getCompositeSchedule" /></a></li>
            <li><a class="highlight" href="${ctxPath}/manager/operations/${opVersion}/ClearChargingProfile"><fmt:message key="menu.clearChargingProfile" /></a></li>
            <li><a href="${ctxPath}/manager/operations/${opVersion}/SetChargingProfile"><fmt:message key="menu.setChargingProfile" /></a></li>
        </ul>        
    </div>
    <div class="op16-content">
        <%@ include file="../op-forms/ClearChargingProfileForm.jsp" %>
    </div></div>
</div></div>
<%@ include file="../00-footer.jsp" %>