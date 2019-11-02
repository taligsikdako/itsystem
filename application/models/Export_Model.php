<?php

  class Export_Model extends CI_Model
  {

    function fetch_listofAssets()
    {
      $this->db->select("Site, Floor,DataPort,AssetType,BundledCPU,Brand,Model,SerialNumber,Status,Ownership,OwnershipClientName,MicrostatusTicket,PONumber,PODate,DeliveryDate,VendorName,WarrantyStartDate,WarrantyEndDate");
      // $this->db->where('AssetType','Keyboard');
      $this->db->order_by('AssetType','DESC');
      $this->db->from('msassets');
      return $this->db->get();
    }
    function fetch_assetsKeyboard()
    {
      $this->db->select("Site, Floor,DataPort,AssetType,BundledCPU,Brand,Model,SerialNumber,Status,Ownership,OwnershipClientName,MicrostatusTicket,PONumber,PODate,DeliveryDate,VendorName,WarrantyStartDate,WarrantyEndDate");
      $this->db->where('AssetType','Keyboard');
      $this->db->from('msassets');
      return $this->db->get();
    }

    function fetch_assetsMouse()
    {
      $this->db->select("Site, Floor,DataPort,AssetType,BundledCPU,Brand,Model,SerialNumber,Status,Ownership,OwnershipClientName,MicrostatusTicket,PONumber,PODate,DeliveryDate,VendorName,WarrantyStartDate,WarrantyEndDate");
      $this->db->where('AssetType','Mouse');
      $this->db->from('msassets');
      return $this->db->get();
    }
  }

 ?>
