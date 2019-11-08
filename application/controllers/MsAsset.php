<?php

  class MsAsset extends CI_Controller
  {
    public function __construct()
    {
      parent::__construct();
      $this->load->model('assets_model');
      $this->load->library('form_validation');
    }

    function assets_list()
    {
      if($this->session->userdata('logged_in'))
      {
        /* Fetch all assets from the database */
        $data['get_msasset'] = $this->assets_model->get_msassets();
        $data['title'] = 'List of Assets';
        $data['header_title'] = 'IT Assets';
        $this->load->view('template/header',$data);
        $this->load->view('template/nav');
        $this->load->view('datatable/list_assets',$data);
        $this->load->view('template/footer');
      }
      else {
        // code...
        redirect('site');
      }

    }

    function assets_keyboard()
    {
      if($this->session->userdata('logged_in'))
      {
        $data['get_msasset'] = $this->assets_model->assets_keyboard();
        $data['header_title'] = 'IT Assets';
        $data['title'] = 'Keyboard - Spare /Deployed / Defective';
        $this->load->view('template/header',$data);
        $this->load->view('template/nav');
        $this->load->view('datatable/list_assets_keyboard',$data);
        $this->load->view('template/footer');
      }
      else {
        // code...
        redirect('site');
      }

    }

    function assets_mouse()
    {
      if($this->session->userdata('logged_in'))
      {
        $data['get_msasset'] = $this->assets_model->assets_mouse();
        $data['header_title'] = 'IT Assets';
        $data['title'] = 'Mices - Spare / Deployed / Defective';
        $this->load->view('template/header',$data);
        $this->load->view('template/nav');
        $this->load->view('datatable/list_assets_mouse',$data);
        $this->load->view('template/footer');
      }
      else {
        // code...
        redirect('site');
      }

    }

    function new_asset()
    {
      if($this->session->userdata('logged_in'))
      {
        $data['header_title'] = 'IT Assets';
        $data['title'] = 'Add New Assets';
        $data['getAssetType'] = $this->assets_model->get_AssetType();
        $data['GetPortLocation'] = $this->assets_model->get_DataPort();
        $data['getAssetStatus'] = $this->assets_model->get_AssetStatus();
        $data['Floor'] = $this->assets_model->get_Floor();
        $data['Site'] = $this->assets_model->get_Site();
        $this->form_validation->set_rules('select_port','dataport','required');
        $this->form_validation->set_rules('select_assettype','type of asset','required');
        $this->form_validation->set_rules('serialnumber','serial','required|callback_check_AssetSerial_exists');
        $this->form_validation->set_rules('ponumber','po number','required');
        $this->form_validation->set_rules('vendor','vendor','required');
        $this->form_validation->set_rules('date_po','po date','required');
        $this->form_validation->set_rules('date_delivery','delivery date','required');
        $this->form_validation->set_rules('start_date','warranty start','required');
        $this->form_validation->set_rules('end_date','warranty end','required');
        $this->form_validation->set_rules('select_status','status','required');
        if($this->form_validation->run() == FALSE)
        {
          $data['title'] = ' Create New Asset';
          $data['header_title'] = 'IT Assets';
          $this->load->view('template/header',$data);
          $this->load->view('template/nav');
          $this->load->view('forms/new_asset',$data);
          $this->load->view('template/footer');
        }
        else {
          //INSERT
          $this->assets_model->new_asset();
          $this->session->set_flashdata('added_assets','New assets has been added successfully');
          redirect('msasset/new_asset');

        }
      }
      else {
        // code...
        redirect('site');
      }

    }


    function check_AssetSerial_exists($Serial)
    {
        $this->form_validation->set_message('check_AssetSerial_exists','The Asset Serial is already exist, please update the existing machine');
        if($this->assets_model->check_AssetSerial_exists($Serial))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    function update_asset($id)
    {
      if($this->session->userdata('logged_in'))
      {
        $data['header_title'] = 'IT Assets';
        $data['title'] = "Update Assets";
        $data['content_title'] = "Update Assets";
        $user_id = $this->uri->segment(3);
        // $this->load->model('assets_model');

        $data['fetch_single_asset'] = $this->assets_model->fetch_single_asset($user_id);
        $data['GetPortLocation'] = $this->assets_model->get_DataPort();
        $data['get_AssetStatus'] = $this->assets_model->get_AssetStatus();
        $data['fetch_data'] = $this->assets_model->get_msassets();

        $this->load->view('template/header',$data);
        $this->load->view('template/nav');
        $this->load->view('forms/update_asset',$data);
        $this->load->view('template/footer');
      }
      else {
        // code...
        redirect('site');
      }

    }

    function update_asset_form_validation()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('PONumber','po number','required');
        $this->form_validation->set_rules('ticketid','ticket id','required');
        // $this->form_validation->set_rules('date_updated','date updated','required');


        if($this->form_validation->run() == TRUE)
        {
            // echo "success";
            $this->load->model('assets_model');
            $data  = array(
                'PONumber' => $this->input->post('PONumber'),
                'MicrostatusTicket' => $this->input->post('ticketid'),
                'DataPort' => $this->input->post('select_port'),
                // 'DateUpdated' =>$this->input->post('date_updated'),
                'Status' => $this->input->post('select_status'),
                'DeployedBy' => $this->session->userdata('user_name'));
            if($this->input->post('update'))
            {
                $this->assets_model->update_assets($data,$this->input->post('hidden_id'));
                $this->session->set_flashdata('assets_updated','New assets has been updated successfully');
                redirect('msasset/assets_list');
            }
        }
        else
        {
          echo  validation_errors();

        }
    }

    function import_msassets()
    {
      $data['title'] = 'Import Assets from a CSV File';
      $this->load->view('import/import_assets',$data);
    }

    function ups_batteries()
    {
      if($this->session->userdata('logged_in'))
      {
      
       $data['header_title'] = 'IT Assets';
      $data['title'] = 'List of UPS Batteries';
      $data['get_AssetStatus'] = $this->assets_model->get_AssetStatus();
      $data['GetPortLocation'] = $this->assets_model->get_DataPort();
      $data['cardHeader'] = 'Assets Deployed';
      $data['get_batteries'] = $this->assets_model->list_batteries();
      $this->load->view('template/header',$data);
      $this->load->view('template/nav');
      $this->load->view('datatable/all_batteries',$data);
      $this->load->view('template/footer',$data);
      }
      else {
        redirect('site');
      }
    }
    function new_battery()
    {
      $this->load->library('form_validation');
      $data['battery_status'] = $this->assets_model->get_AssetStatus();

      $data['title'] = 'Add New Spare UPS Batteries';
      $data['header_title'] = 'IT Assets';
      $this->form_validation->set_rules('Brand','brand','required');
      $this->form_validation->set_rules('Model','model','required');
      $this->form_validation->set_rules('BatterySerial','serial','required|callback_check_BatterySerial_exists');
      $this->form_validation->set_rules('ponumber','po number','required');
      $this->form_validation->set_rules('date_delivery','delivery date','required');
      $this->form_validation->set_rules('select_status','status','required');
      if($this->form_validation->run() == FALSE)
      {
        $this->load->view('template/header');
        $this->load->view('template/nav');
        $this->load->view('forms/new_battery',$data);
        $this->load->view('template/footer');
      }
      else
      {
        $data = array(
          'Brand' => $this->input->post('Brand'),
          'Model' => $this->input->post('Model'),
          'SerialNumber' => $this->input->post('BatterySerial'),
          'PONumber' => $this->input->post('ponumber'),
          'DeliveryDate' => $this->input->post('date_delivery'),
          'Status' => $this->input->post('select_status'),
        );
        $this->assets_model->new_battery($data);
        $this->session->set_flashdata('battery_added','New battery has been added successfully');
        redirect('msasset/new_battery');
      }
    }

    function check_BatterySerial_exists($BatterySerial)
    {
        $this->form_validation->set_message('check_BatterySerial_exists','The Battery Serial Number is already exist');
        if($this->assets_model->check_BatterySerial_exists($BatterySerial))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    function update_battery($SerialNumber)
    {
      if($this->session->userdata('logged_in'))
      {
        $data['header_title'] = 'IT Assets';
        $data['title'] = "Update UPS Battery";
        $data['content_title'] = "Update UPS Battery";
        $user_id = $this->uri->segment(3);
        // $this->load->model('assets_model');
        $data['get_AssetStatus'] = $this->assets_model->get_AssetStatus();

        $data['fetch_single_battery'] = $this->assets_model->fetch_single_battery($user_id);
          $this->load->view('template/header',$data);
          $this->load->view('template/nav');
          $this->load->view('forms/update_battery',$data);
          $this->load->view('template/footer');
      }
      else {
        redirect('site');
      }

    }

    function update_battery_form_validation()
    {
      	$data = array('success' => false, 'messages' => array());

        $this->load->library('form_validation');
        $this->form_validation->set_rules('PONumber','po number','required');
        // $this->form_validation->set_rules('ticketid','ticket id','required');

        if($this->form_validation->run())
        {
          $data['success'] = true;
            $this->load->model('assets_model');
            $data  = array(
                'PONumber' => $this->input->post('PONumber'),
                'TicketNumber' => $this->input->post('ticketid'),
                'UPS_AssetTag' => $this->input->post('ups_asset_tag'),
                'DateInstalled' => $this->input->post('date_installed'),
                'Status' => $this->input->post('select_status'),
                'PerformedBy' => $this->session->userdata('user_name')
            );
            if($this->input->post('update'))
            {
                $this->assets_model->update_battery($data,$this->input->post('hidden_id'));
                $this->session->set_flashdata('batteries_updated','New battery has been updated successfully');
                redirect('msasset/ups_batteries');
            }
        }
        else
        {
          // echo  validation_errors();
          foreach ($_POST as $key => $value)
          {
            $data['messages'][$key] = form_error($key);
          }

        }
        		echo json_encode($data);
    }

    function list_accesscard()
    {
      $data['header_title'] = 'IT Assets';
      $data['get_msasset'] = $this->assets_model->list_accesscard();
      $data['title'] = 'List of Access Card Deployed';
      $this->load->view('template/header',$data);
      $this->load->view('template/nav');
      $this->load->view('datatable/list_accesscard',$data);
      $this->load->view('template/footer');
    }

    function access_card_deployment()
    {
      if($this->session->userdata('logged_in'))
      {
        $data['getStatus'] = $this->assets_model->get_AssetStatus();
        $data['title'] = 'Access Card Deployment';
        $data['header_title'] = 'IT Assets';

        $this->load->library('form_validation');
        $this->form_validation->set_rules('access_card','access card','required');
        $this->form_validation->set_rules('new_access_card','access card','required');
        $this->form_validation->set_rules('ticketid','new access card','required');
        $this->form_validation->set_rules('select_status','status','required');
        if($this->form_validation->run())
        {

            $this->assets_model->access_card_deployment();
            $this->session->set_flashdata('deployed_access_card','New Access card has been updated');
            redirect('msasset/list_accesscard');
        }
        else {
          // code...
          $this->load->view('template/header',$data);
          $this->load->view('template/nav');
          $this->load->view('forms/access_card_deployment',$data);
          $this->load->view('template/footer');
        }
      }
      else {
        // code...
        redirect('site');
      }

    }

    function deployed_keyboard()
    {
      $data['header_title'] = 'IT Assets';
      $data['title'] = 'Deployed Keyboard';
      $data['deployed_keyboard'] = $this->assets_model->deployed_keyboard();
      $this->load->view('template/header',$data);
      $this->load->view('template/nav');
      $this->load->view('asset/deployed_keyboard',$data);
      $this->load->view('template/footer');
      
    }
    function deployed_mouse()
    {
      $data['header_title'] = 'IT Assets';
      $data['title'] = 'Deployed Mouse';
      $data['deployed_mouse'] = $this->assets_model->deployed_mouse();
      $this->load->view('template/header',$data);
      $this->load->view('template/nav');
      $this->load->view('asset/deployed_mouse',$data);
      $this->load->view('template/footer');
    }


  }

 ?>
