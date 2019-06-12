<?php

class import_Model extends CI_Model
{
  function select()
  {
    $this->db->order_by('id','DESC');
    $query = $this->db->get('assets');
    return $query;
  }
  function insert($data)
  {
    $this->db->insert_batch('assets', $data);
  }




  function select_msassets()
  {
    $this->db->order_by('ID','DESC');
    $query = $this->db->get('msassets');
    return $query;
  }
  function insert_msassets($data)
  {
    $this->db->insert_batch('msassets', $data);
  }
}

 ?>
