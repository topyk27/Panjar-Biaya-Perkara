<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Perkara extends CI_Controller
{
    public function __construct()
	{
		parent::__construct();
		$this->load->model("M_perkara");
	}
	
	public function get_perkara()
	{		
		echo json_encode($this->M_perkara->get_perkara());
	}

	public function get_kecamatan()
	{
		echo json_encode($this->M_perkara->get_kecamatan());
	}

	public function get_kelurahan()
	{
		echo json_encode($this->M_perkara->get_kelurahan());
	}

	public function detail_radius()
	{
		echo json_encode($this->M_perkara->detail_radius());
	}

	public function get_token()
	{
		echo json_encode($this->M_perkara->get_token());
	}
}

 ?>