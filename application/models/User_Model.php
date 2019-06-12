<?php

class User_Model extends CI_Model{

  var $user_table = 'users';
    // public function __construct(){
    //     $this->load->database();
    // }

    // public function login_success($email,$password){
    //
    //     $this->db->where('user_email',$email);
    //     $this->db->where('user_password',$password);
    //
    //     $query = $this->db->get('users');
    //     if($query->num_rows() > 0){
    //         return true;
    //     } else {
    //         return false;
    //     }
    //   }

     function login($email,$password)
    {
        $this->db->where('user_email',$email);
        $this->db->where('user_password',$password);

        $result = $this->db->get('users');
        if($result->num_rows() === 1){
            return $result->row();
        } else {
            return false;
        }
    }

     function get_usergroup() // Fetch created user groups
    {
        // $this->db->order_by('UserRoles');
        $query = $this->db->get('user_group');
        return $query->result_array();
    }

   function check_username_exists($username)
   {
        $query = $this->db->get_where('users',array('user_name'=> $username));
        if(empty($query->row_array())){
            return true;
        } else {
            return false;
        }
    }

     function register ($data){
        //User data array
        		$enc_password = md5($this->input->post('user_password'));
        $data = array (
                'user_name' => $this->input->post('user_name'),
                'user_password' => $enc_password,
                'user_email' =>  $this->input->post('user_email')
            );
            return $this->db->insert('users',$data);
    }

    function check_email_exists($email)
    {
        $query = $this->db->get_where('users',array(
            'user_email' => $email));
            if(empty($query->row_array()))
            {
                return true;
            }
            else
            {
                return false;
            }
    }
    function update_password($email,$password)
    {
        $data = array(
            'user_password' => md5($password)
        );
        $this->db->where('user_email',$email);
        $this->db->update($this->user_table,$data);
    }

}
