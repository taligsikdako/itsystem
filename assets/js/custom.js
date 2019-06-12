// Update password start
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
// Update password End




$(document).ready(function(){
  $(document).on('click','a[data-role=update]',function(){
    var id = $(this).data('id');
    var select_port = $('#'+id).children('td[data-target="select_port"]').text();
    var Brand = $('#'+id).children('td[data-target="select_port"]').text();
    var Model = $('#'+id).children('td[data-target="Model"]').text();
    var SerialNumber = $('#'+id).children('td[data-target="SerialNumber"]').text();
    var PONumber = $('#'+id).children('td[data-target="PONumber"]').text();
    var ups_asset_tag = $('#'+id).children('td[data-target="ups_asset_tag"]').text();
    var date_deliver = $('#'+id).children('td[data-target="date_deliver"]').text();
    var ticketid = $('#'+id).children('td[data-target="ticketid"]').text();
    var date_installed = $('#'+id).children('td[data-target="date_installed"]').text();
    var PerformedBy = $('#'+id).children('td[data-target="PerformedBy"]').text();
    var select_status = $('#'+id).children('td[data-target="select_status"]').text();

    $('#select_port').val(select_port);
    $('#Brand').val(Brand);
    $('#Model').val(Model);
    $('#SerialNumber').val(SerialNumber);
    $('#PONumber').val(PONumber);
    $('#ups_asset_tag').val(ups_asset_tag);
    $('#date_deliver').val(date_deliver);
    $('#ticketid').val(ticketid);
    $('#date_installed').val(date_installed);
    $('#PerformedBy').val(PerformedBy);
    $('#select_status').val(select_status);
    $('#UpdateBattery').modal('toggle');

  });

  //Update battery Button
  $('#btn_update').click(function(){
  var id = $('#UserId').val();
  var Brand =  $('#Brand').val();
  var select_port =  $('#select_port').val();
  var Model =  $('#Model').val();
  var SerialNumber =  $('#SerialNumber').val();
  var PONumber =  $('#PONumber').val();
  var ups_asset_tag =  $('#ups_asset_tag').val();
  var date_deliver =  $('#date_deliver').val();
  var ticketid =  $('#ticketid').val();
  var date_installed =  $('#date_installed').val();
  var PerformedBy =  $('#PerformedBy').val();
  var select_status =  $('#select_status').val();

            $.ajax({
                url      : '<?php echo base_url(); ?>msasset/update_battery_form_validation',
                method   : 'post',
                data     : {select_port : select_port, Brand: Brand, Model : Model, SerialNumber :SerialNumber, PONumber : PONumber, ups_asset_tag : ups_asset_tag, date_deliver : date_deliver,
                ticketid : ticketid, date_installed : date_installed, PerformedBy : PerformedBy, select_status : select_status,ID: id},
                success  : function(response){
                              // now update user record in table
                               $('#'+id).children('td[data-target=select_port]').text(select_port);
                               $('#'+id).children('td[data-target=Brand]').text(Brand);
                               $('#'+id).children('td[data-target=Model]').text(Model);
                               $('#'+id).children('td[data-target=SerialNumber]').text(SerialNumber);
                               $('#'+id).children('td[data-target=PONumber]').text(PONumber);
                               $('#'+id).children('td[data-target=ups_asset_tag]').text(ups_asset_tag);
                               $('#'+id).children('td[data-target=date_deliver]').text(date_deliver);
                               $('#'+id).children('td[data-target=ticketid]').text(ticketid);
                               $('#'+id).children('td[data-target=date_installed]').text(date_installed);
                               $('#'+id).children('td[data-target=PerformedBy]').text(PerformedBy);
                               $('#'+id).children('td[data-target=select_status]').text(select_status);

                               $('#UpdateBattery').modal('toggle');
                           }
                         });
            });
          });
