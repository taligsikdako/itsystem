<?php
defined('BASEPATH') OR exit('No direct script access allowed');



class Site extends CI_Controller
{

	public function __construct()
	{
		parent:: __construct();
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('encryption');
		$this->load->model('user_model');
		$this->load->model('network_model');
		$this->load->model('report_model');
		$this->load->model('chart_model');


	}
		public function index()
		{
			if($this->session->userdata('logged_in')!= '')
			{
				redirect(base_url().'site/dashboard');
			}
			else
			{
				$data['title'] = 'Welcome to Team XTN | Login';
				$this->load->view('template/modal/header');
				$this->load->view('login',$data);
				$this->load->view('template/modal/footer');
				// $this->load->view('template/footer');
			}
		}

		function login(){
		 $data['title'] = 'Sign In';

		 $this->form_validation->set_rules('user_email','email','required|valid_email');
		 $this->form_validation->set_rules('user_password','password','required');

		 if($this->form_validation->run() === FALSE){
			 $this->load->view('template/modal/header');
			 $this->load->view('login',$data);
			 $this->load->view('template/modal/footer');

		 } else {
			 //Get username
			 $email = $this->input->post('user_email');
			 //Get and encrypt the password
			 $password = md5($this->input->post('user_password'));


			 //Login User
			 $user_id = $this->user_model->login($email,$password);
			 if($user_id){
				 //create sessions
				 $user_data = array(
					 'id' => $user_id->id,
					 'user_email' => $email,
					 'user_password' => $password,
					 'user_name' =>$user_id->user_name,
					 'user_roles'=>$user_id->user_roles,
					 'logged_in' => true
				 );
				 $this->session->set_userdata($user_data);

			$this->session->set_flashdata('user_loggedin','Welcome, ');
			redirect(base_url() . 'site/dashboard');
			 } else {
			 //Set message
			 $this->session->set_flashdata('failed_login','Login is Invalid');
			 redirect(base_url() . 'site');
			 }
		 }
	 }

		public function dashboard()
		{
			if($this->session->userdata('logged_in'))
			{

			if($this->session->userdata('user_roles') == 'Administrator')
			{
				// Report Get NUmber of Registered Users
				$usersNo = $this->report_model->get_NumberOfUsers();
				$data['totalUsersNo'] = $usersNo[0]->no;
				// Report Get the total number of network outage
				$Outage = $this->report_model->get_NumberOfOutage();
				$data['totalOutage'] = $Outage[0]->no;
				// Report Get the total number of network outage
				$OutageGlobe = $this->report_model->get_NumberOfOutage_Globe();
				$data['totalOutage_Globe'] = $OutageGlobe[0]->no;

				// Report get the overall assets inserted in the database
				$TotalKeyboard = $this->report_model->get_DeployedKeyboard(); //get_SpareKeyboard
				$data['DeployedKeyboard'] = $TotalKeyboard[0]->no;
				// get remaining spare mouse
				$TotalMouse = $this->report_model->get_SpareMouse(); //get_SpareKeyboard
				$data['SpareMouse'] = $TotalMouse[0]->no;
				// get remaining spare keybarod
				$TotalKeyboard = $this->report_model->get_SpareKeyboard();
				$data['SpareKeyboard'] = $TotalKeyboard[0]->no;
				// Report get the overall assets inserted in the database
				$TotalMouseDeployed = $this->report_model->get_DeployedMouse();
				$data['DeployedMouse'] = $TotalMouseDeployed[0]->no;
				// Report get the overall assets inserted in the database
				$SpareHeadset = $this->report_model->get_SpareHeadset();
				$data['SpareHeadset'] = $SpareHeadset[0]->no;
				// Report get the overall assets inserted in the database
				$SpareBatteries = $this->report_model->get_SpareBatteries();
				$data['SpareBattery'] = $SpareBatteries[0]->no;
				// Report get the overall assets inserted in the database
				$MWarranty = $this->report_model->get_MouseWarranty();
				$data['MouseWarranty'] = $MWarranty[0]->no;
				// Get Number of keyboards for Warranty
				$KWarranty = $this->report_model->get_KeyboardWarranty();
				$data['KeyboardWarranty'] = $KWarranty[0]->no;
				// Get Spare Monitor
				$SMonitor = $this->report_model->get_SpareMonitor();
				$data['SpareMonitor'] = $SMonitor[0]->no;

			//
			// $getData = $this->chart_model->get_data()->result();
			$getData = $this->chart_model->get_data_pldt()->result();
			$data['data'] = json_encode($getData);
			//
				$data['title'] = 'Welcome to Admin Dashboard';
				$this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->view('dashboard/admin_dashboard',$data);
				$this->load->view('template/chart/footer');
			}
			elseif($this->session->userdata('user_roles') == 'User')
			{
				$data['title'] = 'Welcome to Users Dashboard';
				$this->load->view('template/header');
				$this->load->view('template/nav');
				$this->load->view('dashboard/user_dashboard',$data);
				$this->load->view('template/footer');
			}
			else {

				$this->session->set_flashdata('inactive_account','Account is inactive');
				$this->logout();

			}
		}
		else {
			redirect('site');
		}
		}




		function check_email_exists($email)
		{
			$this->form_validation->set_message('check_email_exists','This email account is a In a relationship already');
			if($this->user_model->check_email_exists($email))
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		function logout()
		{
			$this->session->unset_userdata('logged_in');
			redirect(base_url(). 'site');
		}


	}
