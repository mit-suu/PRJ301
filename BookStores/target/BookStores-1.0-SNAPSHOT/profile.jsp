<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header text-center">
                        <h3>My Profile</h3>
                    </div>
                    <div class="card-body">
                        <c:if test="${not empty ERROR}">
                            <div class="alert alert-danger">${ERROR}</div>
                        </c:if>
                        <c:if test="${not empty SUCCESS}">
                            <div class="alert alert-success">${SUCCESS}</div>
                        </c:if>

                        <table class="table table-bordered">
                            <tr>
                                <th>User ID:</th>
                                <td>${sessionScope.USER.userID}</td>
                            </tr>
                            <tr>
                                <th>Full Name:</th>
                                <td>${sessionScope.USER.fullName}</td>
                            </tr>
                            <tr>
                                <th>Email:</th>
                                <td>${sessionScope.USER.email}</td>
                            </tr>
                            <tr>
                                <th>Phone:</th>
                                <td>${sessionScope.USER.phone}</td>
                            </tr>
                            <tr>
                                <th>Address:</th>
                                <td>${sessionScope.USER.address}</td>
                            </tr>
                            <tr>
                                <th>Role:</th>
                                <td>${sessionScope.USER.role}</td>
                            </tr>
                        </table>
                    </div>
                    <div class="card-footer text-center">
                        <a href="update_profile.jsp" class="btn btn-primary">Update Profile</a>
                        <a href="index.jsp" class="btn btn-secondary">Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
