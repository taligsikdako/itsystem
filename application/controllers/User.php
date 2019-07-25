
<?php
// session_start();
class User extends CI_Controller
{
			public function __contruct()
			{
				parent:: __construct();
				$this->load->library('form_validation');
				$this->load->model('user_model','admin_model');
			}
			function new_user()
					{
						$data = array('success' => false, 'messages' => array());

						$this->form_validation->set_rules('user_name','user name','required');
						$this->form_validation->set_rules('user_email', 'user email', 'required|valid_email|callback_check_email_exists');
						$this->form_validation->set_rules('user_password','password','required');
						$this->form_validation->set_rules('confirm_password','confirm password','required|matches[user_password]');
						$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');
						if($this->form_validation->run() )
						{
							$data['success'] = true;
							$enc_password = md5($this->input->post('user_password'));

							$this->user_model->register($enc_password);
						}
						else {
						foreach ($_POST as $key => $value) {
							$data['messages'][$key] = form_error($key);
						}
						}
						echo json_encode($data);
					}

//
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
					//
		  public function add_userroles()
		  {
			$this->form_validation->set_rules('user_roles','User Roles','required');
			if($this->form_validation->run() === FALSE) {
				redirect('admin/user_group');
			} else {
				$this->admin_model->insert_group();

			$this->session->set_flashdata('added_roles','New Roles has been added');
				redirect('admin/user_group');
			}
		  }

			function update_password()
			{
				redirect('user/update_password_validation');
			}

			function update_password_validation()
			{
				$data = array('success' => false, 'messages' => array());

				$this->load->library('form_validation');
				$this->form_validation->set_rules('new_password','new password','required');
				$this->form_validation->set_rules('confirm_password','confirm password','required|matches[new_password]');
				$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

				if ($this->form_validation->run()) {
				$data['success'] = true;
				$email =  $this->session->userdata('user_email');
				$password = $this->input->post('new_password');
				$this->user_model->update_password($email,$password);
				
				}
				else
				{
				foreach ($_POST as $key => $value)
				{
					$data['messages'][$key] = form_error($key);
				}
				}
				echo json_encode($data);
			}

}
