
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
