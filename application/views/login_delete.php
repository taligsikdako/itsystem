

<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>IT System - In House Web Application</title>
  <!-- Custom fonts for this template-->
  <link rel="stylesheet" type="text/css" href="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/vendor/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/vendor/fontawesome-free/css/custom.css">



  <!-- Custom styles for this template-->
  <link rel="stylesheet" type="text/css" href="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/css/sb-admin-2.min.css">
  <link rel="stylesheet" type="text/css" href="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/css/style.css">

  <!-- Datatables -->
  <link rel="stylesheet" type="text/css" href="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/vendor/datatables/datatables.bootstrap4.css">

</head>
<body class="bg-gradient-primary">

<div class="container">
 <!-- Outer Row -->

  <div class="row justify-content-center">

    <div class="col-xl-10 col-lg-12 col-md-9">

      <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
          <!-- Nested Row within Card Body -->
          <div class="row">
        <div class="col-lg-5 d-none d-lg-block bg-login-image"></div>
            <div class="col-lg-6">
              <div class="p-5">
                <div class="text-center">
                  <h1 class="h4 text-gray-900 mb-4">Welcome to Team XTN | Login</h1>
                                                    </div>
                <!-- Start Form -->

                    <form action="http://intranetmsit.amberbase.eagleview.com/itsystem/site/login" method="post" accept-charset="utf-8">
                    <div class="form-group">
                      <input type="text" class="form-control" name="user_email" value=""placeholder="Enter your email...">
                      <span class="text-danger"></span>
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" name="user_password"  placeholder="Password">
                      <span class="text-danger"></span>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                   <span class="text-danger"> </span> <br>
                   <div class="text-center">
                            <a class="small" href="#" id="btnAddUserModal">Create an Account!</a>
                  </div>
                  </form>              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>


<div class="modal fade" id="AddUsersModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"></h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
<form action="" id="form-user" class="form-horizontal" method="post" accept-charset="utf-8">
        <!-- <form method="post" id="frmNewUser" action=""> -->
        <div class="row">
          <div class="col-sm-6 col-md-12">
          <div id="the-message"></div>
            <div class="form-group ">
              <div class="col-sm-12">
                <label class="control-label">Name</label>
                <input type="text" class="form-control" id="user_name" name="user_name">
                  <span class="text-danger"></span>

              </div>
            </div><!-- /form-group -->
            <div  class="form-group">
              <div class="col-sm-12">
                <label class="control-label">Email</label>
                <input type="email" class="form-control" id="user_email"  name="user_email">
                <span class="text-danger"></span>
                </div>
                </div>
                <div  class="form-group">
                  <div class="col-sm-12">
                    <label class="control-label">Password</label>
                    <input type="password" class="form-control" id="user_password"  name="user_password">
                    <span class="text-danger"></span>

                    </div>
                    </div>
                    <div  class="form-group">
                      <div class="col-sm-12">
                        <label class="control-label">Password</label>
                        <input type="password" class="form-control" id="confirm_password"  name="confirm_password">
                        <span class="text-danger"></span>
                        </div>
                        </div>
                        </div>
                        </div>
                <div class="form-group">
                  <span class="text-warning"><i>Note:</i> New Account will be manually activated by any member of the Administrator</span>
                </div>

          </div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" value="update" data-dismiss="modal">Cancel</button>
        <input type="submit"  id="btnNewUser" value="Add User" class="btn btn-primary">
           <input type="submit" name="insert" id="insert" value="Update" class="btn btn-primary">
  </form>
      </div>

    </div>
  </div>
 </div>

<script type="text/javascript">
$('#btnAddUserModal').click(function()
{
die('aw');
  // $('#AddUsersModal').modal('show');
  // $('#AddUsersModal').find('.modal-title').text('Create New Account');
  // $('#frmNewUser').attr('action','http://intranetmsit.amberbase.eagleview.com/itsystem/user/new_user');
});
</script>
<!-- Footer -->

<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>



<!-- Changepassword Modal-->

<!-- Changepassword Modal-->



<script type="text/javascript">
$('#btnAddUserModal').click(function()
{
  die('success');
  // $('#AddUsersModal').modal('show');
  // $('#AddUsersModal').find('.modal-title').text('Create New Account');
  // $('#frmNewUser').attr('action','http://intranetmsit.amberbase.eagleview.com/itsystem/user/new_user');
});
// $('#btnNewUser').click(function()
// {
  // alert('sample');
  // var url = $('frmNewUser').attr('action');
  // var data = $('frmNewUser').serialize();
  //Validate form
  // var fullname = $('input[name='user_name']');
  // var email = $('input[name='user_email']');
  // var password = $('input[name='user_password']');
  // var result ='';

  // if(fullname.val() =='')
  // {
  //     fullname.parent().addClass('has-error');
  // }
  // else {
  //     fullname.removeClass('has-error');
  //     result +='1';
  // }

// });

</script>

<!-- Bootstrap core JavaScript-->
<script type='text/javascript' src="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/vendor/jquery/jquery.min.js"></script>
<script type='text/javascript' src="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


<!-- Core plugin JavaScript-->
<script type='text/javascript' src="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script type='text/javascript' src="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/js/sb-admin-2.min.js"></script>
  <!-- Datatables -->
  <script type='text/javascript' src="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/vendor/datatables/jquery.datatables.min.js"></script>
  <script type='text/javascript' src="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/vendor/datatables/datatables.bootstrap4.min.js"></script>
    <!-- Data Tables -->
    <script type='text/javascript' src="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/vendor/datatables/main.js"></script>
  <!-- Custom Scripts -->
  <script type='text/javascript' src="http://intranetmsit.amberbase.eagleview.com/itsystem/assets/js/demo/datatables-demo.js"></script>

</body>



</html>
