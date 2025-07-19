<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error - Bookstore</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-5">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Error</h3>
                </div>
                <div class="card-body">
                    <p class="lead">An error has occurred:</p>
                    <div class="alert alert-danger">
                        <%= request.getAttribute("ERROR") != null ? request.getAttribute("ERROR") : "Unknown error" %>
                    </div>
                    <div class="mt-4">
                        <a href="MainController?btAction=Search" class="btn btn-primary">Go to Homepage</a>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>