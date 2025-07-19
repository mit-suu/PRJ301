<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register - Bookstore</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="text-center">Register</h3>
                        </div>
                        <div class="card-body">
                            <% if (request.getAttribute("ERROR") != null) {%>
                            <div class="alert alert-danger" role="alert">
                                <%= request.getAttribute("ERROR")%>
                            </div>
                            <% } %>
                            <% if (request.getAttribute("SUCCESS") != null) { %>
    <div class="alert alert-success" role="alert">
        <%= request.getAttribute("SUCCESS") %>
    </div>
    <script>
        setTimeout(function () {
            window.location.href = 'login.jsp';
        }, 3000); // Chuyển hướng sau 3 giây
    </script>
<% } %>
                            <form action="MainController" method="POST">
                                <div class="mb-3">
                                    <label class="form-label">User ID</label>
                                    <input type="text" class="form-control" name="userID" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Password</label>
                                    <input type="password" class="form-control" name="password" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Full Name</label>
                                    <input type="text" class="form-control" name="fullName" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Email</label>
                                    <input type="email" class="form-control" name="email" required pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                                           title="Please enter a valid email address (e.g. example@mail.com)">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Phone</label>
                                    <input type="text" class="form-control" name="phone" required pattern="^\d{10}$"
                                           title="Phone number must be exactly 10 digits">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Address</label>
                                    <input type="text" class="form-control" name="address" required>
                                </div>
                                <div class="d-grid gap-2">
                                    <button type="submit" class="btn btn-primary" name="btAction" value="Register">Register</button>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-center">
                            <a href="login.jsp" class="btn btn-link">Back to Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>