<?php

class Assets_Model extends CI_Model
{

  function new_asset()
  {
      $data = array(
          'Site'          => $this->input->post('select_site'),
          'Floor'     => $this->input->post('select_floor'),
          'DataPort'     => $this->input->post('select_port'),
          'AssetType'       => $this->input->post('select_assettype'),
          'BundledCPU' => $this->input->post('CPUSerial'),
          'Brand'  => $this->input->post('brand'),
          'Model'    => $this->input->post('model'),
          'SerialNumber'      => $this->input->post('serialnumber'),
          'Ownership'        => $this->input->post('ownership'),
          'OwnershipClientName'        => $this->input->post('client'),
          'PONumber'        => $this->input->post('ponumber'),
          'PODate'        => $this->input->post('date_po'),
          'DeliveryDate'        => $this->input->post('date_delivery'),
          'VendorName'        => $this->input->post('vendor'),
          'WarrantyStartDate'        => $this->input->post('start_date'),
          'WarrantyEndDate'        => $this->input->post('end_date'),
          'Status'        => $this->input->post('select_status'),
          'AddedBy' => $this->session->userdata('user_name'));
          return $this->db->insert('msassets',$data);
    }

        function new_battery($data)
        {
          $this->db->insert('asset_batteries',$data);
        }
        //Deployed Hard Drive
        function deployed_hdd($data)
        {
          $this->db->insert('asset_storagedevice',$data);
        }
        //Query existing hdd serial Number
        function check_hddserial_exists($hddSerial)
        {
            $query = $this->db->get_where('asset_storagedevice',array(
                'SerialNumber' => $hddSerial));
                if(empty($query->row_array()))
                {
                    return true;
                }
                else
                {
                    return false;
                }
        }
        //Get Storage Deployment or asset storage device
        function hdd_deployment()
        {
            // $this->db->order_by('id','DESC');
            $query = $this->db->get('viewassetstorage');
            return $query;
        }

        function fetch_hard_drive($id)
        {
          $this->db->where('ID',$id);
          $query = $this->db->get('viewassetstorage');
          return $query;
        }

        function storage_drive_status()
        {
          $query = $this->db->get('asset_status');
          return $query->result_array();
        }

        //This to update existing hdd
        function update_deployed_hdd($data,$id)
        {
          $this->db->where('id',$id);
          $this->db->update('asset_storagedevice',$data);
        }

        function update_battery($data,$SerialNumber)
        {
            $this->db->where('SerialNumber',$SerialNumber);
            $this->db->update('asset_batteries',$data);
        }

        function fetch_single_battery($SerialNumber)
        {
            $this->db->where('SerialNumber',$SerialNumber);
            $query = $this->db->get('asset_batteries');
            return $query;
        }
        function get_Site()
        {
          $query = $this->db->get('asset_site');
          return $query->result_array();
        }

        function get_AssetStatus()
        {
          // $this->db->order_by('id','DESC');
          $query = $this->db->get('asset_status');
          return $query->result_array();
        }

        function get_Floor()
        {
          $query = $this->db->get('floor');
          return $query->result_array();
        }

        function get_DataPort()
        {
          $this->db->order_by('id','ASC');
          $query = $this->db->get('asset_dataport');
          return $query->result_array();
        }

        function get_AssetType()
        {
          $query = $this->db->get('asset_type');
          return $query->result_array();
        }

        function list_batteries()
        {
            $this->db->order_by('DateInstalled','DESC');
            // $this->db->where('Site','Cebu');
            $query = $this->db->get('asset_batteries');
            return $query;
        }

        function get_assetlist()
        {
            $this->db->order_by('id','DESC');
            $query = $this->db->get('msassets');
            return $query;
        }

        function deployed_mouse()
        {
            // $this->db->order_by('DateDeployed','DESC');
            $this->db->where('AssetType','Mouse');
            $this->db->where('Status','Deployed');
            $query = $this->db->get('msassets');
            return $query;
        }
        function deployed_keyboard()
        {
      
            $this->db->where('AssetType','Keyboard');
            $this->db->where('Status','Deployed');
            $query = $this->db->get('msassets');
            return $query;
        }

        function deployed_assets()
        {
            $this->db->where('Status','Deployed');
            $query = $this->db->get('assets');
            return $query;
        }

        function defective_assets()
        {
            $this->db->where('Status','Defective');
            $query = $this->db->get('assets');
            return $query;
        }




        function fetch_single_asset($id)
        {
            $this->db->where('ID',$id);
            $query = $this->db->get('msassets');
            return $query;
        }

        function update_assets($data,$id)
        {
            $this->db->where('id',$id);
            $this->db->update('msassets',$data);
        }


        function check_AssetSerial_exists($Serial)
        {
            $query = $this->db->get_where('msassets',array(
                'SerialNumber' => $Serial));
                if(empty($query->row_array()))
                {
                    return true;
                }
                else
                {
                    return false;
                }
        }
        function check_BatterySerial_exists($BatterySerial)
        {
            $query = $this->db->get_where('asset_batteries',array(
                'SerialNumber' => $BatterySerial));
                if(empty($query->row_array()))
                {
                    return true;
                }
                else
                {
                    return false;
                }
        }
        //Get all Assets such as keyboard,mouse,ups
        function get_msassets()
        {
          $this->db->order_by('DateUpdated','DESC');
          $query = $this->db->get('msassets');
          return $query;
        }
        //Get all keyboard assets
        function assets_keyboard()
        {
          $this->db->order_by('DateUpdated','DESC');
          $this->db->where('AssetType','Keyboard');
          $query = $this->db->get('msassets');
          return $query;
        }
        //Get all keyboard assets
        function assets_mouse()
        {
          $this->db->order_by('DateUpdated','DESC');
          $this->db->where('AssetType','Mouse');
          $query = $this->db->get('msassets');
          return $query;
        }

        // Deployed Access Card
        function list_accesscard()
        {
          $this->db->order_by('DateAdded','DESC');
          $query = $this->db->get('asset_accesscard');
          return $query;
        }

        function access_card_deployment()
        {
          $data = array(
              'AccessCard'          => $this->input->post('access_card'),
              'ReplacementCard'     => $this->input->post('new_access_card'),
              'TicketId'     => $this->input->post('ticketid'),
              'Status'       => $this->input->post('select_status')
          );
          return $this->db->insert('asset_accesscard',$data);
        }


}
