
<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">


        <?php echo form_open('msasset/update_asset_form_validation',array('class'=>'assetform')); ?>
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">

                <h1 class="h4 text-gray-900 mb-4"><?php echo $title; ?></h1>
              </div>
              <?php
           if(isset($fetch_single_asset))
           {
                foreach($fetch_single_asset->result() as $row)
                {
           ?>
           <div class="form-group">
                <label>Asset Type</label> </br>
                <p class="form-control"> <?php  echo $row->AssetType; ?></p>
           </div>
           <div class="form-group">
                <label>Asset Serial</label> </br>
                <p class="form-control"> <?php  echo $row->SerialNumber; ?></p>
           </div>
           <div class="form-group">
                <label>PO Number</label> </br>
                <input type="text" name="PONumber" value="<?php echo $row->PONumber;?>" class="form-control"/>

           </div>
           <div class="form-group">


           </div>
           <div class="form-group">
                <label>Ticket</label>
                <input type="text" name="ticketid" value="<?php echo $row->MicrostatusTicket; ?>" class="form-control" />
                <span class="text-danger"><?php echo form_error("ticketid"); ?></span>

           </div>
           <div class="form-group">
           </div>
           <div class="form-group">
                <label>Data Port</label>
                <select class="form-control" name="select_port">
                    <option class="form-control" selected><?php echo $row->DataPort; ?></option>
                  <?php foreach ($GetPortLocation as $Port) { ?>
                    <option value="<?php echo $Port['DataPort']; ?>"><?php echo $Port['DataPort']; ?></option>
                <?php   } ?>
                </select>
                <span class="text-danger"><?php echo form_error("select_port"); ?></span>

           </div>
           <div class="form-group">
                <label>Date Deployed</label>
                <input type="date" name="date_updated" value="<?php echo $row->DateUpdated; ?>" class="form-control" />
                <span class="text-danger"><?php echo form_error("date_updated"); ?></span>

           </div>

           <div class="form-group">
                <label>Status</label>
                <select class="form-control" name="select_status">
                <option class="form-control" selected><?php echo $row->Status; ?></option>
                <?php foreach($get_AssetStatus as $AssetStatus){?>
                  <option value="<?php echo $AssetStatus['AssetStatus']; ?>"><?php echo $AssetStatus['AssetStatus']; ?></option>
                  <?php }  ?>
                </select>

           </div>
           <div class="form-group">
                <input type="hidden" name="hidden_id" value="<?php echo $row->ID; ?>" />
                <input type="submit" name="update" value="Update" class="btn btn-info" />
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
