<?php

class Report extends CI_Controller
{
    public function __construct()
    {
      parent:: __construct();
    }

    function index()
    {
      if($this->session->userdata('logged_in'))
      {
        $data['title'] = 'Report and Summary';
        $this->load->view('template/header',$data);
        $this->load->view('template/nav');
        $this->load->view('pages/report');
        $this->load->view('template/footer');
      }
      else {
        redirect('site');
      }

    }
}
