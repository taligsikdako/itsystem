<?php

class Report extends CI_Controller
{
    public function __construct()
    {
      parent:: __construct();
    }

    function index()
    {
      $data['header_title'] = 'IT Assets';
      $data['title'] = 'Manage Reports';
      $data['content_title'] = 'Manage Report';
      $this->load->view('template/header',$data);
      $this->load->view('template/nav');
      $this->load->view('pages/report');
      $this->load->view('template/footer');
    }
}
