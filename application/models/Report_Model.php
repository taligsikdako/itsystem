<?php

  class Report_Model extends CI_Model
  {
    function get_NumberOfUsers() //Number of registered users
    {
        $this->db->select('count(*) as no');
        $query = $this->db->get('users');
        return $query->result();
    }


    function get_DeployedMouse()
    {
      $this->db->where('AssetType','Mouse');
      $this->db->where('Status','Deployed');
      $this->db->select('count(*) as no');
      $query = $this->db->get('msassets');
      return $query->result();
    }


    function get_DeployedKeyboard()
    {
      $this->db->select('count(*) as no');

      $this->db->where('AssetType','Keyboard');
      $this->db->where('Status','Deployed');
      $query = $this->db->get('msassets');
      return $query->result();
    }


  


    function get_SpareKeyboard()
    {

      $this->db->where('AssetType','Keyboard');
      $this->db->where('Status','Spare');
      $this->db->select('count(*) as no');
      $query = $this->db->get('msassets');
      return $query->result();
    }

    function get_SpareMouse()
    {
      $this->db->where('AssetType','Mouse');
      $this->db->where('Status','Spare');
      $this->db->select('count(*) as no');
      $query = $this->db->get('msassets');
      return $query->result();
    }

    function get_MouseWarranty()
    {
      $this->db->where('AssetType','Mouse');
      $this->db->where('Status','For Warranty');
      $this->db->select('count(*) as no');
      $query = $this->db->get('msassets');
      return $query->result();
    }

    function get_KeyboardWarranty()
    {
      $this->db->where('AssetType','Keyboard');
      $this->db->where('Status','For Warranty');
      $this->db->select('count(*) as no');
      $query = $this->db->get('msassets');
      return $query->result();
    }

    function get_SpareHeadset()
    {

      $this->db->where('AssetType','Headset');
      $this->db->where('Status','Spare');
      $this->db->select('count(*) as no');
      $query = $this->db->get('msassets');
      return $query->result();
    }

    function get_SpareBatteries()
    {
      $this->db->where('Status','Spare');
      $this->db->select('count(*) as no');
      $query = $this->db->get('asset_batteries');
      return $query->result();
    }

    function get_SpareMonitor()
    {
      $this->db->where('AssetType','Monitor');
      $this->db->where('Status','Spare');
      $this->db->select('count(*) as no');
      $query = $this->db->get('msassets');
      return $query->result();
    }


  }

 ?>
