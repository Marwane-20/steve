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
    <c:if test="${not task.isFinished()}">
        <script>
            $(document).ready(
                setTimeout(function() {
                    window.location.reload(1);
                }, 5000));
        </script>
        <div class="info"><b><fmt:message key="task.info.label" /></b> <fmt:message key="task.info.message" /></div>
    </c:if>
    <center>
        <table id='details' class='cpd'>
            <thead>
                <tr>
                    <th><fmt:message key="task.details.title" /></th>
                    <th></th>
                </tr>
            </thead>
            <tr>
                <td><fmt:message key="task.operation.name" /></td>
                <td>${task.ocppVersion.value} / ${task.operationName}</td>
            </tr>
            <tr>
                <td><fmt:message key="task.origin" /></td>
                <td>${task.origin} (${task.caller})</td>
            </tr>
            <tr>
                <td><fmt:message key="task.start.timestamp" /></td>
                <td>${task.startTimestamp}</td>
            </tr>
            <tr>
                <td><fmt:message key="task.end.timestamp" /></td>
                <td>${task.endTimestamp}</td>
            </tr>
            <tr>
                <td><fmt:message key="task.charge.point.requests" /></td>
                <td>${task.resultMap.size()}</td>
            </tr>
            <tr>
                <td><fmt:message key="task.responses.count" /></td>
                <td>${task.responseCount}</td>
            </tr>
            <tr>
                <td><fmt:message key="task.errors.count" /></td>
                <td>${task.errorCount}</td>
            </tr>
        </table>
    </center>
    <br>
    <section><span><fmt:message key="task.result.title" /></span></section>
    <table class="res">
        <thead>
            <tr>
                <th><fmt:message key="task.chargebox.id" /></th>
                <th><fmt:message key="task.response" /></th>
                <th><fmt:message key="task.error" /></th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${task.resultMap}" var="result">
            <tr>
                <td>${result.key}</td>
                <td>
                    <c:choose>
                        <c:when test="${result.value.details == null}">
                            <encode:forHtml value="${result.value.response}" />
                        </c:when>
                        <c:otherwise>
                            <encode:forHtml value="${result.value.response}" /> (<a href="${ctxPath}/manager/operations/tasks/${taskId}/details/${result.key}/"><fmt:message key="task.details.link" /></a>)
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>${result.value.errorMessage}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<%@ include file="00-footer.jsp" %>
