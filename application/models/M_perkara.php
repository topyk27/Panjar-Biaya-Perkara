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
        $post = $this->input->post();
        // return $post['lokasi'];
        if(!empty($post['lokasi']))
        {            
            $lokasi = $post['lokasi'];
            if($lokasi!=1)
            {
                $query = $this->db->query("SELECT * FROM kecamatan WHERE id IN (SELECT kecamatan_id FROM kantor_kecamatan WHERE kantor_id = $lokasi) ORDER BY kecamatan ASC");
            }
            else
            {
                $query = $this->db->query("SELECT * FROM kecamatan WHERE id NOT IN (SELECT kecamatan_id FROM kantor_kecamatan WHERE kantor_id = $lokasi) ORDER BY kecamatan ASC");
            }
        }
        else
        {
            $this->db->from("kecamatan");            
            $this->db->order_by("kecamatan","ASC");
            $query = $this->db->get();
        }
        if($query->num_rows() > 0)
        {
            $data['success'] = 1;
        }
        else
        {
            $data['success'] = 0;
        }
        $data['kecamatan'] = $query->result();
        // return $this->db->last_query();
        return $data;
    }

    public function get_kelurahan()
    {
        $post = $this->input->post();
        $id = $post['id'];
        $lokasi = $post['lokasi'];
        $this->db->from("radius");
        $this->db->where("kecamatan",$id);
        $this->db->where("kantor_id",$lokasi);
        $this->db->order_by("kelurahan","ASC");
        $query = $this->db->get();
        if($query->num_rows() > 0)
        {
            $data['success'] = 1;
            $data['kelurahan'] = $query->result();
        }
        else
        {
            // $data['success'] = 0;
            $this->db->from("radius");
            $this->db->where("kecamatan",$id);
            $this->db->where("kantor_id",1);
            $this->db->order_by("kelurahan","ASC");
            $query2 = $this->db->get();
            if($query2->num_rows() > 0)
            {
                $data['success'] = 1;
            }
            else
            {
                $data['success'] = 0;
            }
            $data['kelurahan'] = $query2->result();
        }        
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

    public function getLokasi()
    {    
        $query = $this->db->get_where('kantor',array('aktif' => 1));        
        if($query->num_rows() > 0)
        {
            $data['success'] = 1;
        }
        else
        {
            $data['success'] = 0;
        }
        $data['lokasi'] = $query->result();
        return $data;
    }
}

 ?>