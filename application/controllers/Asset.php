<?php


class Asset extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->library('session');
    		$this->load->library('encryption');
    		$this->load->model('assets_model');
        $this->load->library('form_validation');
        // $this->load->library('csvimport');
    }

    function new_asset()
    {
        $this->load->library('form_validation');
        $data['get_site'] =  $this->assets_model->get_site();
        $data['get_AssetType'] = $this->assets_model->get_AssetType();
        $data['get_AssetStatus'] = $this->assets_model->get_AssetStatus();
        $data['title'] = 'New Assets';
        $this->form_validation->set_rules('select_site','asset type','required|callback_select_site_validate');
        $this->form_validation->set_rules('select_asset','asset type','required|callback_select_asset_validate');
        $this->form_validation->set_rules('serial','asset serial','required|callback_check_serial_exists');
        $this->form_validation->set_rules('date_purchased','purchase date','required');
        $this->form_validation->set_rules('date_received','received date','required');
        $this->form_validation->set_rules('ponumber','PO Number','required');
        $this->form_validation->set_rules('select_status','Asset Status','required|callback_select_validate');
        if($this->form_validation->run() == FALSE)
        {
            $this->load->view('template/header');
            $this->load->view('template/nav');
            $this->load->view('asset/new_asset',$data);
            $this->load->view('template/footer');
        }
        else
        {
           $this->assets_model->new_asset();
           $this->session->set_flashdata('added_assets','New assets has been added successfully');
           redirect('asset/new_asset');
        }
    }



    function select_validate($select_status)
    {
      if($select_status == 'none')
      {
        $this->form_validation->set_message('select_validate');
        return false;
      }
      else
      {
        return true;
      }

    }

    function import_asset()
    {

      $this->load->view('asset/assets_import');

    }

    function import_batteries()
    {
        $data['title'] = 'Import Assets Batteries here';
        $this->load->view('asset/import_batteries',$data);
    }





    function export_asset()
    {
      $this->load->view('asset/export_assets');
    }

    function select_asset_validate($Type)
    {
      if($Type == 'none')
      {
        $this->form_validation->set_message('select_asset_validate');
        return false;
      }
      else
      {
        return true;
      }
    }

    function select_site_validate($selec_site)
    {
        if($selec_site == 'none')
        {
          $this->form_validation->set_message('select_site_validate');
          return false;
        }
        else
        {
          return true;
        }
    }
    function asset_deployed()
    {
        $data['cardHeader'] = 'Assets Deployed';
        $data['get_assets'] = $this->assets_model->deployed_assets();
        $this->load->view('template/header');
        $this->load->view('template/nav');
        $this->load->view('asset/asset_deployed',$data);
        $this->load->view('template/footer');
    }

    function defective()
    {
        $data['cardHeader'] = 'Defective Assets';
        $data['get_defectiveassets'] = $this->assets_model->defective_assets();
        $this->load->view('template/header');
        $this->load->view('template/nav');
        $this->load->view('asset/defective_assets',$data);
        $this->load->view('template/footer');
    }




    function select_data_port($select_port)
    {
      if($select_port == 'none')
      {
        $this->form_validation->set_message('select_data_port');
        return false;
      }
      else {
        return true;
      }
    }


  


    function get_allassets()
    {
      if($this->session->userdata('logged_in'))
      {
        $data['get_assets'] = $this->assets_model->get_assetlist();
        $this->load->view('template/header');
        $this->load->view('template/nav');
        $this->load->view('asset/all_assets',$data);
        $this->load->view('template/footer');
      }
      else {
        redirect('site');
      }
    }

    function deployed_mouse()
    {
      $data['title'] = 'Deployed Mouse';
      $data['deployed_mouse'] = $this->assets_model->deployed_mouse();
      $this->load->view('template/header');
      $this->load->view('template/nav');
      $this->load->view('asset/deployed_mouse',$data);
      $this->load->view('template/footer');
    }

    function deployed_keyboard()
    {
      $data['title'] = 'Deployed Mouse';
      $data['deployed_keyboard'] = $this->assets_model->deployed_keyboard();
      $this->load->view('template/header');
      $this->load->view('template/nav');
      $this->load->view('asset/deployed_keyboard',$data);
      $this->load->view('template/footer');
    }
}
