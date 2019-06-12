<?php

  class Export_Model extends CI_Model
  {
    function fetch_data()
    {
      $this->db->select("Site, Floor,DataPort,AssetType,BundledCPU,Brand,Model,SerialNumber,Status,Ownership,OwnershipClientName,MicrostatusTicket,PONumber,PODate,DeliveryDate,VendorName,WarrantyStartDate,WarrantyEndDate");
      $this->db->from('msassets');
      return $this->db->get();
    }
  }

 ?>
