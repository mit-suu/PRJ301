<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script>
        function validateForm() {
            let phone = document.getElementById("phone").value;
            let email = document.getElementById("email").value;
            let phonePattern = /^\d{10}$/;
            let emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

            if (!phonePattern.test(phone)) {
                alert("Phone number must be exactly 10 digits.");
                return false;
            }

            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address (e.g. example@mail.com).");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header text-center">
                        <h3>Update Profile</h3>
                    </div>
                    <div class="card-body">
                        <!-- Hiển thị thông báo lỗi hoặc thành công -->
                        <c:if test="${not empty ERROR}">
                            <div class="alert alert-danger" role="alert">
                                ${ERROR}
                            </div>
                        </c:if>
                        <c:if test="${not empty SUCCESS}">
                            <div class="alert alert-success" role="alert">
                                ${SUCCESS}
                            </div>
                        </c:if>

                        <form action="MainController" method="POST" onsubmit="return validateForm();">
                            <input type="hidden" name="btAction" value="UpdateProfile">

                            <div class="mb-3">
                                <label class="form-label">Full Name</label>
                                <input type="text" class="form-control" name="fullName" value="${sessionScope.USER.fullName}" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input type="email" id="email" class="form-control" name="email" value="${sessionScope.USER.email}" 
                                       required pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                                       title="Please enter a valid email address (e.g. example@mail.com)">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Phone</label>
                                <input type="text" id="phone" class="form-control" name="phone" value="${sessionScope.USER.phone}" 
                                       required pattern="^\d{10}$" title="Phone number must be exactly 10 digits">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address</label>
                                <input type="text" class="form-control" name="address" value="${sessionScope.USER.address}" required>
                            </div>
                            
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                        <a href="index.jsp" class="btn btn-link">Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
