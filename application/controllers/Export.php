<?php

class Export extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();

    $this->load->model('export_model');
  }
  function export_to_csv()
  {
    $file_name = 'assets_details_on_'.date('Ymd').'.csv';
     header("Content-Description: File Transfer");
     header("Content-Disposition: attachment; filename=$file_name");
     header("Content-Type: application/csv;");

     // get data
     $assets_data = $this->export_model->fetch_listofAssets();

     // file creation
     $file = fopen('php://output', 'w');

     $header = array('Site','Floor','DataPort','AssetType','CPU','Brand','Model','SerialNumber','Status','Ownership','OwnershipClientName','MicrostatusTicket','PONumber','PODate','DeliveryDate','VendorName','WarrantyStartDate','WarrantyEndDate');
     fputcsv($file, $header);
     foreach ($assets_data->result_array() as $key => $value)
     {
       fputcsv($file, $value);
     }
     fclose($file);
     exit;
  }

  function export_to_csv_mouse()
  {
    $file_name = 'assets_details_on_'.date('Ymd').'.csv';
     header("Content-Description: File Transfer");
     header("Content-Disposition: attachment; filename=$file_name");
     header("Content-Type: application/csv;");

     // get data
     $assets_data = $this->export_model->fetch_assetsMouse();

     // file creation
     $file = fopen('php://output', 'w');

     $header = array('Site','Floor','DataPort','AssetType','CPU','Brand','Model','SerialNumber','Status','Ownership','OwnershipClientName','MicrostatusTicket','PONumber','PODate','DeliveryDate','VendorName','WarrantyStartDate','WarrantyEndDate');
     fputcsv($file, $header);
     foreach ($assets_data->result_array() as $key => $value)
     {
       fputcsv($file, $value);
     }
     fclose($file);
     exit;
  }

  function export_to_csv_keyboard()
  {
    $file_name = 'assets_details_on_'.date('Ymd').'.csv';
     header("Content-Description: File Transfer");
     header("Content-Disposition: attachment; filename=$file_name");
     header("Content-Type: application/csv;");

     // get data
     $assets_data = $this->export_model->fetch_assetsKeyboard();

     // file creation
     $file = fopen('php://output', 'w');

     $header = array('Site','Floor','DataPort','AssetType','CPU','Brand','Model','SerialNumber','Status','Ownership','OwnershipClientName','MicrostatusTicket','PONumber','PODate','DeliveryDate','VendorName','WarrantyStartDate','WarrantyEndDate');
     fputcsv($file, $header);
     foreach ($assets_data->result_array() as $key => $value)
     {
       fputcsv($file, $value);
     }
     fclose($file);
     exit;
  }

}


 ?>
