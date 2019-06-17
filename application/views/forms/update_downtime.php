<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">


<?php echo form_open('network/network_update_form_validation'); ?>
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">

                <h1 class="h4 text-gray-900 mb-4"><?php echo $title; ?></h1>
              </div>
              <?php
           if(isset($fetch_single_outage))
           {
                foreach($fetch_single_outage->result() as $row)
                {
           ?>
           <div class="form-group">
                <!-- <label>User ID</label>   -->
                <input type="hidden" name="user_id" value="<?php echo $row->ID; ?>" class="form-control" disabled />

           </div>
           <div class="form-group">
                <label>Site</label>
                <span class="form-control"><?php echo $row->Site; ?></span>
           </div>

           <div class="form-group">
                <label>Internet Service Provider</label>
                <strong>  <span class="form-control"><?php echo $row->SelectISP; ?></span></strong>
           </div>
           <div class="form-group">
             <label>Ticket ID</label>

             <input type="text" name="ticketid" value="<?php echo $row->TicketID; ?>" class="form-control" />
               <span class="text-danger"><?php echo form_error('ticketid'); ?></span>
           </div>

           <div class="form-group">

                <label>Date Started</label></br>
                <div class="form-group">
                    <strong>  <span class="text-center"><?php echo $row->DateStarted; ?></span> </br></strong>
                </div>

                <label>Date Restored</label></br>
                <div class="form-group">
                      <input type="datetime" class="form-control form-control-user" value="<?php echo $row->DateRestored; ?>" name="date_restored" >
                </div>


           </div>
           <div class="form-group row">
             <label class="col-lg mb-12 mb-sm-0 small">Reason For Outage</label>
             <textarea class="form-control" name="rfo" rows="5" cols="75"><?php echo $row->RFO; ?></textarea>
            </div>
            <div class="form-group row">
               <label   class="col-lg mb-12 mb-sm-0 small">Status</label>

               <select class="form-control" name="select_ticket_status">
                 <option value="<?php echo $row->Status; ?>" selected><?php echo $row->Status; ?></option>
                 <?php foreach ($get_ISPStatus as $ISPStatus){ ?>
                 <option value="<?php echo $ISPStatus['network_status']; ?>"> <?php echo $ISPStatus['network_status']; ?></option>
                 <?php } ?>
               </select>
           </div>
           <?php if(isset($fetch_single_downtime))
           {
            foreach($fetch_single_downtime->result() as $row)
            { ?>
           <label>Outage Duration</label></br>
           <div class="form-group">
            <strong> <span class="text-danger"><?php echo $row->Outage; ?></span></strong>

           </div>
     <?php }
           } ?>
           <div class="form-group form-control-row">
                <input type="hidden" name="hidden_id" value="<?php echo $row->ID; ?>" />
                <input type="submit" name="update" value="Update" class="btn btn-primary" />
           </div>
           <?php
                }
           }

           ?>
          </form>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
