<?php

class Report extends CI_Controller
{
    public function __construct()
    {
      parent:: __construct();
    }

    function index()
    {
      $this->load->view('template/header');
      $this->load->view('template/nav');
      $this->load->view('pages/report');
      $this->load->view('template/footer');
    }
}
