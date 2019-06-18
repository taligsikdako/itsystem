<?php

class Chart_Model extends CI_Model
{

  function get_chart_data_pldt()
  {
      $this->db->where('SelectISP','PLDT');
      $result = $this->db->get('network_chart');
      return $result;
  }

  function get_chart_data_globe()
  {
    // $this->db->select('DateStarted,SelectISP,Outage');
    $this->db->where('SelectISP','GLOBE');
    $result = $this->db->get('network_chart');
    return $result;
  }
  function get_chart_data_infinivan()
  {
    $this->db->where('SelectISP','INFINIVAN');
    $result = $this->db->get('network_chart');
    return $result;
  }
  function get_NumberOfOutage_GLOBE()
  {
    $this->db->select('count(*) as no');
    $this->db->where('SelectISP','GLOBE');
    $query = $this->db->get('network_outage');
    return $query->result();
  }

  function get_NumberOfOutage_PLDT()
  {
    $this->db->select('count(*) as no');
    $this->db->where('SelectISP','PLDT');
    $query = $this->db->get('network_outage');
    return $query->result();
  }

  function get_NumberOfOutage_INFINIVAN()
  {
    $this->db->select('count(*) as no');
    $this->db->where('SelectISP','INFINIVAN');
    $query = $this->db->get('network_outage');
    return $query->result();
  }

}

 ?>
