<?php

  class Import extends CI_Controller
  {
    public function __construct()
    {
      parent::__construct();
      $this->load->model('import_model');
      $this->load->library('csvimport');

    }

    //Import
    function load_msassets()
    {
    $result = $this->import_model->select_msassets();
    $output = '
     <h3 align="center">Imported Assets Data From a CSV File</h3>
        <div class="table-responsive">
          <table class="table table-bordered table-striped">
            <tr>
            <th>ID</th>
            <th>Site</th>
            <th>Floor</th>
            <th>DataPort</th>
            <th>AssetType</th>
            <th>CPU</th>
            <th>Brand</th>
            <th>Model</th>
            <th>Serial Number</th>
            <th>Status</th>
            <th>Ownership</th>
            <th>Onwership ClientName</th>
            <th>Microstatus Ticket</th>
            <th>PO Number</th>
            <th>PO Date</th>
            <th>Delivery Date</th>
            <th>Vendor Name</th>
            <th>Start Date</th>
            <th>End Date</th>

            </tr>
    ';
    $count = 0;
    if($result->num_rows() > 0)
    {
      foreach($result->result() as $row)
      {
        $count = $count + 1;
        $output .= '
        <tr>
          <td>'.$count.'</td>
          <td>'.$row->Site.'</td>
          <td>'.$row->Floor.'</td>
          <td>'.$row->DataPort.'</td>
          <td>'.$row->AssetType.'</td>
          <td>'.$row->BundledCPU.'</td>
          <td>'.$row->Brand.'</td>
          <td>'.$row->Model.'</td>
          <td>'.$row->SerialNumber.'</td>
          <td>'.$row->Status.'</td>
          <td>'.$row->Ownership.'</td>
          <td>'.$row->OwnershipClientName.'</td>
          <td>'.$row->MicrostatusTicket.'</td>
          <td>'.$row->PONumber.'</td>
          <td>'.$row->PODate.'</td>
          <td>'.$row->DeliveryDate.'</td>
          <td>'.$row->VendorName.'</td>
          <td>'.$row->WarrantyStartDate.'</td>
          <td>'.$row->WarrantyEndDate.'</td>

        </tr>
        ';
      }
    }
    else
    {
      $output .= '
      <tr>
          <td colspan="5" align="center">Data not Available</td>
        </tr>
      ';
    }
    $output .= '</table></div>';
    echo $output;
    }

    function import_msassets()
    {
        $file_data = $this->csvimport->get_array($_FILES["csv_file"]["tmp_name"]);
          foreach($file_data as $row)
            {
              $data[] = array(
                    'Site'                      	=>	$row["Site"],
                    'Floor'	                	=>	$row["Floor"],
                    'DataPort'		         	=>	$row["DataPort"],
                    'AssetType'			           =>	$row["AssetType"],
                    'BundledCPU'			           =>	$row["CPU"],
                    'Brand'		            	=>	$row["Brand"],
                    'Model'	            =>	$row["Model"],
                    'SerialNumber'	             	=>	$row["SerialNumber"],
                    'Status'		          	=>	$row["Status"],
                    'Ownership'		              	=>	$row["Ownership"],
                    'OwnershipClientName'	        =>	$row["ClientName"],
                    'MicrostatusTicket'		     =>	$row["MicrostatusTicket"],
                    'PONumber'	            =>	$row["PONumber"],
                    'PODate'	             	=>	$row["PODate"],
                    'DeliveryDate'		          	=>	$row-["DeliveryDate"],
                    'VendorName'		              	=>	$row["Vendor"],
                    'WarrantyStartDate'	                    =>	$row["WarrantyStartDate"],
                    'WarrantyEndDate'		                =>	$row["WarrantyEndDate"]



              );
          }
            $this->import_model->insert_msassets($data);
            $this->session->set_flashdata('assets_imported','New assets has been imported successfully');
            redirect('msasset/import_msassets');
    }

  }

 ?>
