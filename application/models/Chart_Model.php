<?php

class Chart_Model extends CI_Model
{

  function get_data()
  {
      $this->db->where('SelectISP','GLOBE');
      $result = $this->db->get('network_chart');
      return $result;
  }
  function get_data_pldt()
  {
    // $this->db->select('DateStarted,SelectISP,Outage');
    $this->db->where('SelectISP','GLOBE');
    $result = $this->db->get('network_chart');
    return $result;
  }

}

 ?>
