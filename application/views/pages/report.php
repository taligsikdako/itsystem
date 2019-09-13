
  <div class="container-fluid">
    <div class="card shadow mb-4">

      <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary"><?php echo "Report"; ?></h6>

      </div>
    <div class="card-body">
      <!-- Begin Report Header -->
      <ul class="nav nav-tabs" id="myTab" role="tablist">

<li class="nav-item">
  <a class="nav-link active" id="home-tab" data-toggle="tab" href="#office_software" role="tab" aria-controls="home" aria-selected="true">Office Software</a>
</li>
<li class="nav-item">
  <a class="nav-link" id="profile-tab" data-toggle="tab" href="#monitor_deployment" role="tab" aria-controls="profile" aria-selected="false">Monitor Deployment</a>
</li>
<li class="nav-item">
  <a class="nav-link" id="messages-tab" data-toggle="tab" href="#asset_deployment" role="tab" aria-controls="messages" aria-selected="false">Assets Deployment</a>
</li>
<li class="nav-item">
  <a class="nav-link" id="settings-tab" data-toggle="tab" href="#ups_batteries" role="tab" aria-controls="settings" aria-selected="false">UPS Batteries</a>
</li>

</ul>
<!-- End Report Header -->
      <div class="table-responsive">
        <div class="tab-content">
        <div class="tab-pane active" id="office_software" role="tabpanel" aria-labelledby="home-tab">
          <div class="">
      Office Software Content
          </div>
      </div>
        <div class="tab-pane" id="monitor_deployment" role="tabpanel" aria-labelledby="profile-tab">
          <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th></th>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th></th>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Salary</th>
            </tr>
        </tfoot>
    </table>
        </div>
        <div class="tab-pane" id="asset_deployment" role="tabpanel" aria-labelledby="messages-tab">
          Asset Deployment Content
        </div>
        <div class="tab-pane" id="ups_batteries" role="tabpanel" aria-labelledby="settings-tab">
        UPS Batteries Content
        </div>
      </div>
      </div>
      </div>

      </div>
        <!-- Card Shadow End -->

    </div>
  <!-- Container Fluid End -->
    </div>
