

        <!-- Begin Page Content -->
        <div class="container-fluid">


          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800"><?php echo $content_title; ?></h1>
          <p class=""></p>
            <!-- <a href="<?php echo base_url();?>export\export_to_csv" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
          </div>
          <?php if($this->session->flashdata('user_loggedin')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').' '.$this->session->userdata('user_name').'</p>'; ?>
          <?php endif; ?>


      <?php //endforeach; ?>


          <!-- Content Row -->
          <div class="row">


             <!--  Earnings (Monthly)-->
             <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Registered Users</div>
                    <a href="<?php echo base_url();?>admin/user">   <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $totalUsersNo; ?> </div> </a>
                    </div>
                    <div class="col-auto">
                     <a href="<?php echo base_url();?>admin/user"> <i class="fas fa-users fa-2x text-gray-300" ></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!--  Asset Summary-->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Network Downtime</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?php echo base_url();?>network/network_outage"> <?php echo $totalOutage; ?></a></div>

                    </div>
                    <div class="col-auto">
                      <a href="<?php echo base_url();?>network/network_outage"> <i class="fas fa-network-wired fa-2x text-gray-300"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Mouse Deployed</div>
                      <a href="<?php echo base_url('asset/deployed_mouse');?>"><div class="h5 mb-0 font-weight-bold text-gray-800"> <?php echo $DeployedMouse; ?></div></a>

                    </div>
                    <div class="col-auto">
                    <a href="<?php echo base_url('asset/deployed_mouse');?>">  <i class="fas fa-mouse-pointer fa-2x text-gray-300"></i> </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
<!-- CEBU -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Keyboard Deployed</div>
                    <a href="<?php echo base_url ('asset/deployed_keyboard'); ?>"><div class="h5 mb-0 font-weight-bold text-gray-800"> <?php echo $DeployedKeyboard; ?></div></a>
                    </div>
                    <div class="col-auto">
                  <a href="<?php echo base_url ('asset/deployed_keyboard'); ?>"> <i class="fas fa-keyboard fa-2x text-gray-300"></i> </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>






            </div>
          <!-- Content Row -->

          <div class="row">

            <!-- Area Chart -->
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
               <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

                  <h6 class="m-0 font-weight-bold text-primary"><?php echo $titleGlobe; ?></h6>

                  <div class="dropdown no-arrow">
              <h6 class="m-0 font-weight-bold text-primary"> <a href="<?php echo base_url('network/outage_globe'); ?>"> <?php echo $totalOutage_Globe; ?></a> </h6>
                    <!-- <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div> -->
                  </div>
                </div>
                    <!--  -->
                    <!-- <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Globe Outage</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?php echo base_url();?>network/network_outage"> <?php echo $totalOutage_Globe; ?></a></div>

                    </div> -->
                    <!--  -->
                <!-- Card Body -->
                <div class="card-body">
                  <div id="graph"></div>
                </div>

              </div>
            </div>
            <!-- Asset Summary begin-->
            <div class="col-xl-4 col-lg-5">
             <div class="card shadow mb-4">
               <!-- Card Header - Dropdown -->

                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                 <h6 class="m-0 font-weight-bold text-primary">Assets Summary</h6>
                 <div class="dropdown no-arrow">

                 </div>
               </div>

               <!-- Card Body -->
                <div class="card-body">
                  <div class="form-group">
                    <h6 class="m-0 font-weight-bold text-primary">Spare</h6>
                    <span class="mr-2">
                      <i class="fas fa-keyboard"></i> Keyboard <span>:<strong> <?php echo $SpareKeyboard;?> </strong> </span>
                    </span></br>
                    <span class="mr-2">
                      <i class="fas fa-mouse-pointer"></i> Mouse    <span >: <strong> <?php echo $SpareMouse;?></strong>  </span>
                    </span>
                    </span>
                  </br>
                    <span class="mr-2">
                      <i class="fas fa-battery-full"></i> UPS Batteries <span>:<strong> <?php echo $SpareBattery;?></strong>  </span>
                    </span></br>
                    <span class="mr-2">
                      <i class="fas fa-desktop"></i> Monitor <span>: <strong> <?php echo $SpareMonitor;?> </strong> </span>
                    </span>
                  </br>
                  <span class="mr-2">
                    <i class="fas fa-headphones"></i> Headphones <span>: <strong> <?php echo $SpareHeadset;?> </strong> </span>
                  </span>
                  </div>
                  <div class="form-group">
                       <h6 class="m-0 font-weight-bold text-primary">For Warranty</h6>
                       <span class="mr-2">
                         <i class="fas fa-mouse-pointer"></i> Mouse <span>: <strong> <?php echo $MouseWarranty;?> </strong> </span>
                       </span></br>
                       <span class="mr-2">
                         <i class="fas fa-keyboard"></i> Keyboard <span>: <strong> <?php echo $KeyboardWarranty;?> </strong> </span>
                       </span>
                  </div>
               </div>
             </div>
           </div>
            <!-- Asset Summary End-->
<!-- Eagleview | PLDT | Graph-->
<div class="col-xl-8 col-lg-7">
  <div class="card shadow mb-4">
    <!-- Card Header - Dropdown -->
   <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

      <h6 class="m-0 font-weight-bold text-primary">  <?php echo $titlePldt; ?></h6>

      <div class="dropdown no-arrow">
        <h6 class="m-0 font-weight-bold text-primary"><a href="<?php echo base_url('network/outage_pldt'); ?>"><?php echo $totalOutage_PLDT; ?></a></h6>
      </div>
    </div>
        <!--  -->
        <!-- <div class="col mr-2">
          <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">PLDT Outage</div>
          <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?php echo base_url();?>network/network_outage"> </a></div>

        </div> -->
        <!--  -->
    <!-- Card Body -->
    <div class="card-body">
      <div id="graphPLDT"></div>
    </div>

  </div>
</div>

            <!-- Eagleview | Infinivan Graph Start-->
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
               <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

                  <h6 class="m-0 font-weight-bold text-primary"><?php echo $titleInfinivan ?></h6>

                  <div class="dropdown no-arrow">
                    <h6 class="m-0 font-weight-bold text-primary"><a href="<?php echo base_url('network/outage_infinivan') ?>"> <?php echo $totalOutage_INFINIVAN; ?></a></h6>
                  </div>
                </div>
                    <!--  -->
                    <!-- <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">PLDT Outage</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?php echo base_url();?>network/network_outage"> </a></div>

                    </div> -->
                    <!--  -->
                <!-- Card Body -->
                <div class="card-body">
                  <div id="graphINFINIVAN"></div>
                </div>

              </div>
            </div>
            <!-- Eagleview | Infinivan Graph Start-->

          </div>

          <!-- Content Row -->
          <div class="row">

            <!-- Content Column -->
            <div class="col-lg-6 mb-4">



            </div>

            <div class="col-lg-6 mb-4">



            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
