<?php

class Chart extends CI_Controller
{
    function __construct()
    {
      parent::__construct();
      //Load model
      $this->load->model('chart_model');
      $this->load->model('user_model');
      $this->load->model('network_model');
      $this->load->model('report_model');
    }

    // function index()
    // {
    //   $getData = $this->chart_model->get_data()->result();
    //   $x['data'] = json_encode($getData);
    //   $this->load->view('dashboard/chart_dashboard',$x);
    //
    // }
}


 ?>
