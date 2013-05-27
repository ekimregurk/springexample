<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tags" uri="http://www.springframework.org/tags" %>

<tags:message code="label_student_id" var="label_student_id"/>
<tags:message code="label_student_first_name" var="label_student_first_name"/>
<tags:message code="label_student_last_name" var="label_student_last_name"/>

<tags:message code="student_title" var="student_title"/>

<tags:message code="welcome_user" var="welcome_user" arguments="${student.firstName}"/>

<html>
<head>
    <title>${student_title}</title>
</head>
<body>
    <h1>${welcome_user}</h1>

    <table>
        <tr>
            <th>
                ${label_student_id}
            </th>
            <th>
                ${label_student_first_name}
            </th>
            <th>
                ${label_student_last_name}
            </th>
        </tr>
        <tr>
            <td>
                ${student.id}
            </td>
            <td>
                ${student.firstName}
            </td>
            <td>
                ${student.lastName}
            </td>
        </tr>
    </table>
</body>
</html>