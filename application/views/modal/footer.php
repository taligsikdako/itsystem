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
  $('#AddUsersModal').modal('show');
  $('#AddUsersModal').find('.modal-title').text('Create New Account');
  $('#frmNewUser').attr('action','<?php echo base_url()?>user/new_user');
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
