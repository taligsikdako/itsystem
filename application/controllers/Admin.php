<?php

class Admin extends CI_Controller{

    protected $access = "Administrator";

        function __Construct()
        {
            parent::__Construct ();
        }

    public function user()
    {
        if($this->session->userdata('logged_in') != '')
        {
            $data['getUsers'] = $this->admin_model->getUsers();
            $data['title'] = 'Account Management';
            if($this->session->userdata('user_roles') == 'Administrator' /* || $this->session->userdata('user_roles') == 'Operation' */)
            {
                $this->load->view('template/header',$data);
                $this->load->view('template/nav');
                $this->load->view('admin/user',$data);
                $this->load->view('template/footer');
            }
            else
            {
                redirect(base_url().'site');
            }
       }
       else
       {
            redirect(base_url().'site');
       }
    }

    public function update_account($id)
    {
        $data['title'] = "Account Update";
        $user_id = $this->uri->segment(3);
        $data["get_usergroup"] = $this->user_model->get_usergroup();

        $this->load->model('admin_model');
        $data['fetch_single_user'] = $this->admin_model->fetch_single_user($user_id);
        $data['fetch_users'] = $this->admin_model->getUsers();
        $this->load->view('template/header');
        $this->load->view('template/nav');
        $this->load->view('admin/update_account',$data);
        $this->load->view('template/footer');
    }
// Sample sessions functionality

    function form_validation()
    {
      $this->load->model('admin_model');
      $data  = array(
        'user_name' => $this->input->post('user_name'),
        // 'user_email' => $this->input->post('user_email'),
        // 'user_password' => md5($this->input->post('user_password')),
        'user_roles' => $this->input->post('group_id')
    );

    if($this->input->post('update'))
    {
        $this->admin_model->update_users($data,$this->input->post('hidden_id'));
        $this->session->set_flashdata('updated_users','User has been updated successfully');
        redirect('admin/user');
    }
    }

    public function user_group()
    {
         $data["user_type"] = $this->admin_model->get_usertype();
                if($this->session->userdata('user_roles')=='Administrator')
                {
                $this->load->view('template/header');
                $this->load->view('template/nav');
                $this->load->view('admin/user_group',$data);
                $this->load->view('template/footer');
                }
                else
                {
                    redirect(base_url().'site');
                }
    }


}
