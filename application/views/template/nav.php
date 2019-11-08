<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?php echo base_url(); ?>site/dashboard">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3"><?php echo $header_title; ?></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="<?php echo base_url(); ?>site">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>
      <!-- Administration Inf -->
        <!-- Divider -->
        <hr class="sidebar-divider">
    <?php if($this->session->userdata('user_roles') =='Administrator'){ ?>
        <!-- Heading -->
        <div class="sidebar-heading">
          Administration
        </div>
  <!-- Nav Item - Pages Collapse Menu -->
  <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAccount" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-user"></i>
          <span>Account</span>
        </a>
        <div id="collapseAccount" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <!--  -->
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Manage User </h6>
            <a class="collapse-item" href="<?php echo base_url(); ?>admin/user">Accounts</a>
             <!-- <a class="collapse-item" href="#" data-toggle="modal" data-target="AddUsersModal">Create Account</a> -->
            <h6 class="collapse-header">Manage User Group</h6>
             <a class="collapse-item" href="<?php echo base_url(); ?>admin/user_group">Groups</a>
             <!-- <a class="collapse-item" href="<?php echo base_url(); ?>admin/user_group">Create New Group</a>    -->
          </div>
          <!--  -->
        </div>
      </li>
      <!--Asset Management -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseManageAssets" aria-expanded="true" aria-controls="collapseTwo">
        <i class="fas fa-tasks"></i>
          <span>Manage Asset/s</span>
        </a>
        <div id="collapseManageAssets" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <!--  -->
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Asset Management </h6>
            <a class="collapse-item" href="<?php echo base_url(); ?>admin/user">Asset New Site</a>
            <a class="collapse-item" href="<?php echo base_url(); ?>admin/user">Asset Department</a>
            <a class="collapse-item" href="<?php echo base_url(); ?>admin/user">Asset Type</a>
            <a class="collapse-item" href="<?php echo base_url(); ?>admin/user">Asset Data Port</a>
             <!-- <a class="collapse-item" href="#" data-toggle="modal" data-target="AddUsersModal">Create Account</a> -->
            <h6 class="collapse-header">Manage User Group</h6>
             <a class="collapse-item" href="<?php echo base_url(); ?>admin/user_group">Groups</a>
             <!-- <a class="collapse-item" href="<?php echo base_url(); ?>admin/user_group">Create New Group</a>    -->
          </div>
          <!--  -->
        </div>

      </li>
      <!-- Divider -->
      <hr class="sidebar-divider">
      <!-- Heading -->
      <div class="sidebar-heading">
        Tracker
      </div>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAssets" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-book"></i>
          <span>Assets</span>
        </a>
        <div id="collapseAssets" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <!--  -->
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Manage Assets</h6>
          <a class="collapse-item" href="<?php echo base_url(); ?>msasset/assets_list">Assets List</a>
          <a class="collapse-item" href="<?php echo base_url(); ?>msasset/assets_keyboard">Keyboard</a>
          <a class="collapse-item" href="<?php echo base_url(); ?>msasset/assets_mouse">Mouse</a>
             <a class="collapse-item" href="<?php echo base_url(); ?>msasset/ups_batteries">UPS Batteries</a>
             <a class="collapse-item" href="<?php echo base_url(); ?>asset/storage_deployment">Storage</a>
          </div>
          </div>
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-ethernet"></i>
          <span>Network</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <!--  -->
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Network Downtime</h6>
              <a class="collapse-item wordwrap" href="<?php echo base_url(); ?>network/network_outage">Network Outage</a>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAccessCard" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-id-card"></i>
          <span>Access Card</span>
        </a>
        <div id="collapseAccessCard" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <!--  -->
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Access Card Tracker</h6>
            <!-- <a class="collapse-item wordwrap" href="<?php echo base_url(); ?>msasset/access_card_deployment">New</a> -->
              <a class="collapse-item wordwrap" href="<?php echo base_url(); ?>msasset/list_accesscard">Access Card Tracker</a>
          </div>
        </div>
      </li>

 <hr class="sidebar-divider">
 <div class="sidebar-heading">
   Reporting
 </div>
<!-- Reports Start -->
<li class="nav-item">
  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseReports" aria-expanded="true" aria-controls="collapseTwo">
    <i class="fas  fa-chart-line"></i>
    <span>Reports</span>
  </a>
  <div id="collapseReports" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
    <!--  -->
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header">Manage Reports</h6>
    <a class="collapse-item" href="<?php echo base_url(); ?>report/index">Reports</a>

    </div>
    </div>

</li>

<!-- Reports end -->

  <?php } ?>



      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
            <!-- <p id="date"></p> -->
                <span id="date"class="mr-2 d-none d-lg-inline text-gray-600 small"> </span>
          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>



          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>




            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">

              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Welcome, <?php echo $this->session->userdata('user_name'); ?> </span>

              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <!-- <a class="dropdown-item" href="#" data-toggle="modal" data-target="#modalRegisterForm">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a> -->
<!-- <a class="dropdown-item" href="#" data-toggle="modal" data-target="#ChangePassword" > -->
              <a class="dropdown-item" href="#" data-toggle="modal" data-target="#ChangePassword" >
                  <i class="fas fa-home fa-sm fa-fw mr-2 text-gray-400"></i>
                  Change Password
                </a>

                <!-- <a class="dropdown-item" href="#" onclick="sample()">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a> -->

                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
                </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->
<script type="text/javascript">
function  sample()
{  window.alert("I am ain't working yet");
}
</script>


          <?php if($this->session->flashdata('added_roles')) : ?>
          <?php echo '<p class="alert alert-success">'.$this->session->flashdata('added_roles').'</p>'; ?>
          <?php endif; ?>
