<?php

class Network_Model extends  CI_Model
{

      function get_isp()
      {
        $query = $this->db->get('network_isp');
        return $query->result_array();
      }

      function get_ISPStatus()
      {
        $query = $this->db->get('network_status');
        return $query->result_array();
      }

      function get_NetworkCID()
      {
        $query = $this->db->get('network_circuit');
        return $query->result_array();
      }

      function new_outage()
      {
        $data = array(
          'Site' => $this->input->post('select_site'),

          'SelectISP' => $this->input->post('select_isp'),
          'Status' => $this->input->post('select_networkstatus'),
          'select_circuit' => $this->input->post('select_circuitid,'),
          'TicketId' => $this->input->post('ticket_id'),
          'DateStarted' => $this->input->post('date_started'),
          'DateRestored' => $this->input->post('date_restored'),
          'select_circuit' => $this->input->post('select_circuitid'),

          'PerformedBy' => $this->session->userdata('user_name'));

          return $this->db->insert('network_outage',$data);
      }

      function fetch_single_outage($id)
      {
          $this->db->where('id',$id);
          $query = $this->db->get('network_outage');
          return $query;
      }

    function fetch_single_downtime($id)
    {
      $this->db->where('ID',$id);
      $query = $this->db->get('networkdowntime');
      return $query;
    }

      function update_outage($data,$id)
      {
          $this->db->where('id',$id);
          $this->db->update('network_outage',$data);
      }

        function network_outage()
        {
          $this->db->order_by('ID','DESC');
          $query =$this->db->get('network_outage');
          return $query;
        }



        function check_ticketid_exists($TicketID)
        {
          $query = $this->db->get_where('network_outage',array(
              'TicketID' => $TicketID));
              if(empty($query->row_array()))
              {
                  return true;
              }
              else
              {
                  return false;
              }
        }


}
