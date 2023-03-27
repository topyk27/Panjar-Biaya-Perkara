<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class M_statistik extends CI_MOdel
{
    private $table = 'statistik';
    public $id;
    public $tanggal;

    public function addStatistik()
    {
        $this->tanggal = date('Y-m-d');
        $this->db->insert($this->table,$this);
        return $this->db->affected_rows();
    }

    public function getStat()
    {
        $currenDate = date('Y-m-d');
        $today = $this->db->where(['tanggal' => $currenDate])->from($this->table)->count_all_results();
        $data['today'] = $today;
        $yesterday = $this->db->query("SELECT * FROM $this->table WHERE tanggal = DATE(NOW() - INTERVAL 1 DAY)");
        $yesterday = $yesterday->num_rows();
        $data['yesterday'] = $yesterday;
        $sevenDays = $this->db->query("SELECT * FROM $this->table WHERE tanggal >= DATE(NOW() - INTERVAL 7 DAY)");
        $sevenDays = $sevenDays->num_rows();
        $data['sevenDays'] = $sevenDays;
        $month = $this->db->query("SELECT * FROM $this->table WHERE YEAR(tanggal) = YEAR('$currenDate') AND MONTH(tanggal) = MONTH('$currenDate')");
        $month = $month->num_rows();
        $data['month'] = $month;
        $year = $this->db->query("SELECT * FROM $this->table WHERE YEAR(tanggal) = YEAR('$currenDate')");
        $year = $year->num_rows();
        $data['year'] = $year;
        return $data;
    }
}

 ?>