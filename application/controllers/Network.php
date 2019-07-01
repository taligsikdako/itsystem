<?php

      class Network extends CI_Controller
      {
          function __Construct()
          {
            parent::__Construct();
            $this->load->model('network_model');
            $this->load->model('report_model');
            $this->load->library('form_validation');
            $this->load->model('assets_model');
          }

          function new_outage()
          {
              $data['get_site'] =  $this->assets_model->get_site();
              $data['get_isp'] = $this->network_model->get_isp();
              $data['get_ISPStatus'] = $this->network_model->get_ISPStatus();
              $data['get_NetworkCID'] = $this->network_model->get_NetworkCID();
              $data['title'] = 'Add New Outage';

              $data['content_title'] = 'Network Outage Tracker';
              $this->form_validation->set_rules('select_site','Select Site','required|callback_select_site_validate');

              $this->form_validation->set_rules('select_isp','Select Internet Service Provider','required|callback_select_isp_validate');
              $this->form_validation->set_rules('select_circuitid','circuit id','required|callback_select_circuit_validate');
              $this->form_validation->set_rules('select_networkstatus','outage status','required|callback_select_network_validate');

              $this->form_validation->set_rules('ticket_id','ticket id','required|callback_check_ticketid_exists');
              if($this->form_validation->run() == FALSE)
              {
                $this->load->view('template/header',$data);
                $this->load->view('template/nav');
                $this->load->view('forms/new_outage',$data);
                $this->load->view('template/footer');
              }
              else
              {

              $this->network_model->new_outage();
              $this->session->set_flashdata('network_outage','New outage has been added successfully');
              redirect('network/new_outage');
              }
          }

          function update_downtime($id)
          {

            if($this->session->userdata('logged_in'))
            {
              $data['title'] = 'Update Network Downtime';
              $user_id = $this->uri->segment(3);

              $data['fetch_single_outage'] = $this->network_model->fetch_single_outage($user_id);
              //Get number of hours downtime
              $data['fetch_single_downtime'] = $this->network_model->fetch_single_downtime($user_id);
              $data['fecth_downtime'] = $this->network_model->network_outage();
              $data['get_ISPStatus'] = $this->network_model->get_ISPStatus();
              $this->load->view('template/header',$data);
              $this->load->view('template/nav');
              $this->load->view('forms/update_downtime',$data);
              $this->load->view('template/footer');
            }
            else {
              // code...
              redirect('site');
            }

          }

          function network_update_form_validation()
          {

            $this->form_validation->set_rules('ticketid','ticket id','required');
            if($this->form_validation->run())
            {

              $data  = array(
                'DateRestored' => $this->input->post('date_restored'),
                'Status' => $this->input->post('select_ticket_status'),
                'TicketID' => $this->input->post('ticketid'),
                'RFO' => $this->input->post('rfo'),
                'PerformedBy' => $this->session->userdata('user_name')
              );

              if($this->input->post('update'))
              {
                  $this->network_model->update_outage($data,$this->input->post('hidden_id'));
                  $this->session->set_flashdata('downtime_updated','Outage has been updated successfully');
                  redirect('network/network_outage');
              }
            }
            else {
              // code...
            echo validation_errors();
            }

          }

          function network_outage()
          {
            if($this->session->userdata('logged_in'))
            {
              $data['title'] = 'List of Network Outage';
              $data['outage'] = $this->network_model->network_outage();
              $this->load->view('template/header',$data);
              $this->load->view('template/nav');
              $this->load->view('datatable/list_networkoutage',$data);
              $this->load->view('template/footer');
            }
            else
            {
              redirect('site');
            }
          }
          // Datatable for globe outage only
          function outage_globe()
          {
            if($this->session->userdata('logged_in'))
            {
              $data['title'] = 'List of Globe Network Outage';
              $data['outage_globe'] = $this->network_model->outage_globe();
              $this->load->view('template/header',$data);
              $this->load->view('template/nav');
              $this->load->view('datatable/outage_globe',$data);
              $this->load->view('template/footer');
            }
            else {

            }
          }

          function select_site_validate($select_site)
          {
            if($select_site =='none')
            {
              $this->form_validation->set_message('select_site_validate');
              return false;
            }
            else
            {
              return true;
            }
          }
          function select_client_validate($select_client)
          {
            if($select_client =='none')
            {
              $this->form_validation->set_message('select_client_validate');
              return false;
            }
            else
            {
              return true;
            }
          }
          function select_isp_validate($select_isp)
          {
            if($select_isp =='none')
            {
              $this->form_validation->set_message('select_isp_validate');
              return false;
            }
            else
            {
              return true;
            }
          }
          function select_network_validate($select_network)
          {
            if($select_network =='none')
            {
              $this->form_validation->set_message('select_network_validate');
              return false;
            }
            else
            {
              return true;
            }
          }

          function select_circuit_validate($select_circuit)
          {
            if($select_circuit =='none')
            {
              $this->form_validation->set_message('select_circuit_validate');
              return false;
            }
            else
            {
              return true;
            }
          }


          function check_ticketid_exists($TicketID)
          {
            $this->form_validation->set_message('check_ticketid_exists','This Reference Ticket has been already inserted, Please update the existing one!');
            if($this->network_model->check_ticketid_exists($TicketID))
            {
                return true;
            }
            else
            {
                return false;
            }
          }










      }
