<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tags" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<tags:message code="label_student_id" var="label_student_id"/>
<tags:message code="label_student_first_name" var="label_student_first_name"/>
<tags:message code="label_student_last_name" var="label_student_last_name"/>

<tags:message code="student_edit_title" var="student_edit_title"/>

<tags:message code="welcome_user" var="welcome_user" arguments="${student.firstName}"/>

<html>
<head>
    <title>${student_edit_title}</title>
</head>
<body>
    <form:form modelAttribute="student">
        <table>
            <tr>
                <td>
                    <form:label path="id">${label_student_id}</form:label>
                </td>
                <td>
                    <form:input path="id"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="id">${label_student_first_name}</form:label>
                </td>
                <td>
                    <form:input path="firstName"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="id">${label_student_last_name}</form:label>
                </td>
                <td>
                    <form:input path="lastName"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <form:button id="saveButton">Save</form:button>
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>