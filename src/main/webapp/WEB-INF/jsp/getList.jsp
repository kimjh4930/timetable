<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <script type="text/javascript" src="/resources/js/common.js"></script> --%>
<c:forEach items="${subjectResultList}" var="subjectResult">
    <tr>
        <td>${subjectResult.subjectName}</td>
        <td>${subjectResult.grade}</td>
        <td>${subjectResult.credit}</td>
        <td>${subjectResult.professorName}</td>
        <td>${subjectResult.classTime}</td>
        <td>${subjectResult.classroom}</td>
    </tr>
</c:forEach>