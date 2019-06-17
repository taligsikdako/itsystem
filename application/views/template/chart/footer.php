<!-- Footer -->
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>Copyright &copy; Team XTN - In House Web Application 2019</span>
    </div>
  </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
  <div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">×</span>
    </button>
  </div>
  <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
  <div class="modal-footer">
    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
    <a class="btn btn-primary" href="<?php echo base_url(); ?>site/logout">Logout</a>
  </div>
</div>
</div>
</div>

<!-- Changepassword Modal-->
<div class="modal fade" id="ChangePassword" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
  <div class="modal-content">

    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Change Password</h5>


      <button class="close" type="button" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">×</span>
      </button>

    </div>
    <div class="modal-body">
      <!-- <form method="post" id="password_update_form"> -->
        <?php echo form_open("user/update_password_validation", array("id" => "update-password", "class" => "form-horizontal")) ?>
      <input type="hidden" id="form-type" value="">
      <input type="hidden" name="id" id="id" value="">
      <div class="row">
        <div class="col-sm-6 col-md-12">
              <div id="the-message"></div>
          <div  class="form-group ">
            <div class="col-sm-12">
              <label class="control-label">
              New Password
              </label>
              <input type="password" class="form-control" id="new_password" name="new_password">
              <span class="text-danger"><?php echo form_error('new_password'); ?></span>
            </div>
          </div><!-- /form-group -->
          <div class="form-group ">
            <div class="col-sm-12">
              <label class="control-label">
              Confirm Password
              </label>
              <input type="password" class="form-control" id="confirm_password"  name="confirm_password">
              <span class="text-danger"><?php echo form_error('confirm_password'); ?></span>
              </div>
              </div>
            </div>
              </div>

            </div>
    <div class="modal-footer">
      <button class="btn btn-secondary" type="button" value="update" data-dismiss="modal">Cancel</button>
      <input type="submit" name="insert" id="insert" value="Update" class="btn btn-primary">
    </div>
      </form>
  </div>
</div>
</div>



<div class="row">

</div>
<!-- Update Battery Modal -->




<!-- Bootstrap core JavaScript-->


    <!-- Bootstrap core JavaScript-->
    <script type='text/javascript' src="<?php echo base_url(); ?>assets/vendor/jquery/jquery.min.js"></script>
    <script type='text/javascript' src="<?php echo base_url(); ?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Core plugin JavaScript-->
    <script type='text/javascript' src="<?php echo base_url(); ?>assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script type='text/javascript' src="<?php echo base_url(); ?>assets/js/sb-admin-2.min.js"></script>
      <!-- Datatables -->
      <script type='text/javascript' src="<?php echo base_url(); ?>assets/vendor/datatables/jquery.datatables.min.js"></script>
      <script type='text/javascript' src="<?php echo base_url(); ?>assets/vendor/datatables/datatables.bootstrap4.min.js"></script>
        <!-- Data Tables -->
        <script type='text/javascript' src="<?php echo base_url(); ?>assets/vendor/datatables/main.js"></script>
      <!-- Custom Scripts -->
      <script type='text/javascript' src="<?php echo base_url(); ?>assets/js/demo/datatables-demo.js"></script>
      <!-- Custom JS File -->
      <script type='text/javascript' src="<?php echo base_url(); ?>assets/js/custom.js"></script>

    <!-- Page level plugins -->
    <script type='text/javascript' src="<?php echo base_url(); ?>assets/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
     <script type='text/javascript' src="<?php echo base_url(); ?>assets/js/demo/chart-area-demo.js"></script>
    <script type='text/javascript' src="<?php echo base_url(); ?>assets/js/demo/chart-pie-demo.js"></script>
    <script src="<?php echo base_url().'assets/js/jquery.min.js'?>"></script>
    <script src="<?php echo base_url().'assets/js/raphael-min.js'?>"></script>
    <script src="<?php echo base_url().'assets/js/morris.min.js'?>"></script>
</body>

<script>
    Morris.Line({
      element: 'graph',
      data: <?php echo $data;?>,
      xkey: 'DateStarted',
      ykeys: ['ID','Outage'],
      labels: ['ID','Hours']
    });
</script>

<script type="text/javascript">
$('#update-password').submit(function(e) {
e.preventDefault();
var me = $(this);

// perform ajax
$.ajax({
// url: me.attr('action'),
url: '<?php echo base_url(); ?>user/update_password_validation',
type: 'post',
data: me.serialize(),
dataType: 'json',
success: function(response) {
if (response.success == true) {
  // if success we would show message
  // and also remove the error class
  $('#the-message').append('<div class="alert alert-success">' +
    '<span class="glyphicon glyphicon-ok"></span>' +
    ' Password has been updated' +
    '</div>');
  $('.form-group').removeClass('has-error')
          .removeClass('has-success');
  $('.text-danger').remove();

  // reset the form
  me[0].reset();

  // close the message after seconds
  $('.alert-success').delay(500).show(10, function() {
    $(this).delay(3000).hide(10, function() {
      $(this).remove();

    });
  })
}

else {
  $.each(response.messages, function(key, value) {
    var element = $('#' + key);

    element.closest('div.form-group')
    .removeClass('has-error')
    .addClass(value.length > 0 ? 'has-error' : 'has-success')
    .find('.text-danger')
    .remove();
    element.after(value);
  });
}
}
});
});

</script>



</html>
