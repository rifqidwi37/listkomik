<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Dashboard extends CI_Model {

	public function get_jml_buku(){
		return $this->db->select('count(*) as jml_buku')
					    ->get('buku')
					    ->row();
	}

	public function get_book_cat(){
		return $this->db->select('count(*) as book_cat')
					    ->get('kategori_buku')
					    ->row();
	}

	public function get_sys_user(){
		return $this->db->select('count(*) as sys_user')
					    ->get('user')
					    ->row();
	}


}
?>