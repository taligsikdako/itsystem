<div class="container-fluid">
<?php if($this->session->flashdata('new_assets')) : ?>
  <?php echo '<p class="alert alert-success">'.$this->session->flashdata('new_assets').'</p>'; ?>
  <?php endif; ?>
</div>
<?php echo form_open('monitoring/assets');?>
<div class="container-fluid">
<h1 class="text-center"><?php echo $title; ?> </h1>

<div class="row">
<div class="col-md-4 col-md-offset-4">
<?php echo validation_errors(); ?>
<div class="form-group">
    <label for="">Asset Type</label>
    <input type="text" class="form-control" name="asset_id" placeholder="Select the type of Assets">
</div>

<div class="form-group">
    <label for="">Serial / CT #</label>
    <input type="text" class="form-control" name="serial_ct" placeholder="Enter Accessories Seriel or CT #">
</div>

<div class="form-group">
    <label for="">Port</label>
    <input type="text" class="form-control" name="data_port" placeholder="Port of Deployment">
</div>

<div class="form-group">
    <label for="">Ticket</label>
    <input type="text" class="form-control" name="ticket_no" placeholder="Microstatus Ticket">
</div>


<div class="form-group">
    <label for="">Deployed By</label>
    <input type="dropdown" class="form-control" name="deployedby" placeholder="Deployed By">
</div> 

<div class="form-group">
    <label for="">Remarks</label></br>
    <textarea name="assets_remarks" class="form-control" placeholder="Comments / Remarks" ></textarea>
  
</div> 

<button type="submit" class="btn btn-primary btn-block">Submit</button>
</div>
</div>

<?php echo form_close(); ?>