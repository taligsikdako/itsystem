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
<?php echo form_open("user/new_user", array("id" => "form-user", "class" => "form-horizontal")) ?>
        <!-- <form method="post" id="frmNewUser" action=""> -->
        <div class="row">
          <div class="col-sm-6 col-md-12">
          <div id="the-message"></div>
            <div class="form-group ">
              <div class="col-sm-12">
                <label class="control-label">Name</label>
                <input type="text" class="form-control" id="user_name" name="user_name">
                  <span class="text-danger"><?php echo form_error('user_name'); ?></span>

              </div>
            </div><!-- /form-group -->
            <div  class="form-group">
              <div class="col-sm-12">
                <label class="control-label">Email</label>
                <input type="email" class="form-control" id="user_email"  name="user_email">
                <span class="text-danger"><?php echo form_error('user_email'); ?></span>
                </div>
                </div>
                <div  class="form-group">
                  <div class="col-sm-12">
                    <label class="control-label">Password</label>
                    <input type="password" class="form-control" id="user_password"  name="user_password">
                    <span class="text-danger"><?php echo form_error('user_password'); ?></span>

                    </div>
                    </div>
                    <div  class="form-group">
                      <div class="col-sm-12">
                        <label class="control-label">Confirm Password</label>
                        <input type="password" class="form-control" id="confirm_password"  name="confirm_password">
                        <span class="text-danger"><?php echo form_error('confirm_password'); ?></span>
                        </div>
                        </div>
                        </div>
                        </div>
                <div class="form-group">
                  <span class="text-danger"><i>Note:</i> New Account will be manually activated by any member of the Administrator</span>
                </div>

          </div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" value="update" data-dismiss="modal">Cancel</button>
        <input type="submit" value="Create Account" class="btn btn-primary">

  </form>
      </div>

    </div>
  </div>
 </div>
<!-- Changepassword Modal-->



<script type="text/javascript">
$('#btnAddUserModal').click(function()
{
  $('#AddUsersModal').modal('show');
  $('#AddUsersModal').find('.modal-title').text('Create New Account');
  $('#frmNewUser').attr('action','<?php echo base_url()?>user/new_user');
});

$('#form-user').submit(function(e) {
e.preventDefault();
var me = $(this);

// perform ajax
$.ajax({
// url: me.attr('action'),
url: '<?php echo base_url(); ?>user/new_user',
type: 'post',
data: me.serialize(),
dataType: 'json',
success: function(response) {
if (response.success == true) {
  // if success we would show message
  // and also remove the error class
  $('#the-message').append('<div class="alert alert-success">' +
    '<span class="glyphicon glyphicon-ok"></span>' +
    ' New Account has been created' +
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

</body>



</html>
