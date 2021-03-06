<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta http-equiv ="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Emerging Five</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="resource/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="resource/vendors/iconfonts/puse-icons-feather/feather.css">
  <link rel="stylesheet" href="resource/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="resource/vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="resource/css/style.css">
  <link rel="stylesheet" href="resource/css/custom.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="resource/images/favicon.png" />
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper auth p-0 theme-two">
        <div class="row d-flex align-items-stretch">
          <div class="col-md-6 banner-section d-none d-md-flex align-items-stretch justify-content-center" style="background-image: url(resource/images/cover_img.jpg);">

          </div>
          <div class="col-12 col-md-6 h-100 bg-white">
            <div class="auto-form-wrapper d-flex align-items-center justify-content-center flex-column">
              <form:form action="addUser" modelAttribute="user">
                <div align="center" style="padding: 2rem 0rem;"><img src="resource/images/logo_01.png" alt="bag" class="img-fluid"></div>
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="mdi mdi-account-outline"></i></span>
                    </div>
                    <form:input path="userName" class="form-control" placeholder="Name"/>
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="mdi mdi-account-outline"></i></span>
                    </div>
                    <form:input path="email" class="form-control" placeholder="Email Id"/>
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="mdi mdi-lock-outline"></i></span>
                    </div>
                    <form:input path="password" type ="password" class="form-control" placeholder="Password"/>
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="mdi mdi-lock-outline"></i></span>
                    </div>
                    <input type="password" class="form-control" placeholder="Confirm Password"/>
                  </div>
                </div>

                <div class="form-group">
                  <button type="submit" class="btn btn-info btn-fw btn-padding">Save</button>
                  <a href="/" class="btn btn-danger btn-fw btn-padding float-right">Cancel</a>
                </div>
                <div class="wrapper mt-5 text-gray">
                  <p class="footer-text">Copyright © Emerging Five. All rights reserved.</p>

                </div>
              </form:form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="resource/vendors/js/vendor.bundle.base.js"></script>
  <script src="resource/vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="resource/js/off-canvas.js"></script>
  <script src="resource/js/hoverable-collapse.js"></script>
  <script src="resource/js/misc.js"></script>
  <script src="resource/js/settings.js"></script>
  <script src="resource/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->
</body>

</html>