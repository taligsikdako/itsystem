<?php

class Admin_Model extends CI_Model{

    public function __construct(){

        // $this->load->database();
    }
    function login_validate()
    {
        $arr['user_email'] = $this->input->post('user_email');
        $arr['user_password'] = md5($this->input->post('user_password'));
        // $arr['user_roles'] = $this->input->post('user_roles');

        return $this->db->get_where('users',$arr)->row();
    }

    function getUsers()
    {
        $this->db->order_by('ID','DESC');
        $query = $this->db->get('users');
        //
        return $query;
    }

    function fetch_single_user($id)
    {
        $this->db->where('id',$id);
        $query = $this->db->get('users');
        return $query;
    }



    public function get_usertype() // Fetch created user groups
    {
        $this->db->order_by('UserRoles');
        $query = $this->db->get('user_group');
        return $query;
    }

    function update_users($data,$id)
    {
        $this->db->where('id',$id);
        $this->db->update('users',$data);
    }

    function insert_group(){

        $data = array (
            'UserRoles' => $this->input->post('user_roles')
        );
        return $this->db->insert('user_group',$data);
    }





}
