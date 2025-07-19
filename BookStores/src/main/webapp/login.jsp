<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - Bookstore</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="text-center">Login</h3>
                        </div>
                        <div class="card-body">
                            <%
                                // Lấy Cookie để hiển thị dữ liệu Remember Me
                                String savedUserID = "";
                                String savedPassword = "";
                                boolean rememberMeChecked = false;

                                Cookie[] cookies = request.getCookies();
                                if (cookies != null) {
                                    for (Cookie cookie : cookies) {
                                        if (cookie.getName().equals("user_name")) {
                                            savedUserID = cookie.getValue();
                                            rememberMeChecked = true; // Có Cookie tức là Remember Me đã được chọn
                                        }
                                        if (cookie.getName().equals("user_pass")) {
                                            savedPassword = cookie.getValue();
                                        }
                                    }
                                }
                            %>

                            <% if (request.getAttribute("ERROR") != null) {%>
                            <div class="alert alert-danger" role="alert">
                                <%= request.getAttribute("ERROR")%>
                            </div>
                            <% } %>

                            <% if (session.getAttribute("SUCCESS") != null) {%>
                            <div class="alert alert-success" role="alert">
                                <%= session.getAttribute("SUCCESS")%>
                            </div>
                            <% session.removeAttribute("SUCCESS"); %> 
                            <% }%>

                            <form action="MainController" method="POST">
                                <div class="mb-3">
                                    <label for="userID" class="form-label">User ID</label>
                                    <input type="text" class="form-control" id="userID" name="userID" required 
                                           value="<%= savedUserID%>">
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="password" name="password" required 
                                           value="<%= savedPassword%>">
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="rememberMe" name="rememberMe"
                                           <%= rememberMeChecked ? "checked" : ""%> >
                                    <label class="form-check-label" for="rememberMe">Remember Me</label>
                                </div>
                                <div class="d-grid gap-2 mt-3">
                                    <button type="submit" class="btn btn-primary" name="btAction" value="Login">Login</button>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-center">
                            <a href="MainController?btAction=Search" class="btn btn-link">Continue as Guest</a><br>
                            <div class="d-flex justify-content-center align-items-center mt-3">
                                <p class="mb-0">You don't have an account?</p>
                                <a href="register.jsp" class="btn btn-link ms-2">Register Here</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>