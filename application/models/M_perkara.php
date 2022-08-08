<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_perkara extends CI_Model
{
    public function get_perkara()
    {
        $this->db->from("perkara");
        $query = $this->db->get();
        if($query->num_rows() > 0)
        {
            $data['success'] = 1;
        }
        else
        {
            $data['success'] = 0;
        }
        $data['perkara'] = $query->result();
        return $data;
    }

    public function get_kecamatan()
    {
        $this->db->from("kecamatan");
        $this->db->order_by("kecamatan","ASC");
        $query = $this->db->get();
        if($query->num_rows() > 0)
        {
            $data['success'] = 1;
        }
        else
        {
            $data['success'] = 0;
        }
        $data['kecamatan'] = $query->result();
        return $data;
    }

    public function get_kelurahan()
    {
        $post = $this->input->post();
        $id = $post['id'];
        $this->db->from("radius");
        $this->db->where("kecamatan",$id);
        $this->db->order_by("kelurahan","ASC");
        $query = $this->db->get();
        if($query->num_rows() > 0)
        {
            $data['success'] = 1;
        }
        else
        {
            $data['success'] = 0;
        }
        $data['kelurahan'] = $query->result();
        return $data;
    }

    public function detail_radius()
    {
        $post = $this->input->post();
        $id = $post['id'];        
        $this->db->from("radius");
        $this->db->where("id",$id);        
        $query = $this->db->get();
        if($query->num_rows() > 0)
        {
            $data['success'] = 1;
        }
        else
        {
            $data['success'] = 0;
        }
        $data['radius'] = $query->result();
        return $data;
    }

    public function get_token()
    {
        $this->db->from("setting");
        $query = $this->db->get();
        $data['setting'] = $query->result();
        if($query->num_rows() > 0)
        {
            $data['success'] = 1;            
        }
        else
        {
            $data['success'] = 0;
        }
        return $data;
    }
}

 ?>