<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_kategori','kat');
	}
	public function index()
	{
		$data['tampil_kategori']=$this->kat->tampil_kategori();
		$data['konten']="v_kategori";
		$this->load->view('template', $data);
	}

	public function tambah()
	{
		if ($this->input->post('simpan')) {
			if ($this->kat->simpan_kat()) {
				$this->session->set_flashdata('message', 'Sukses tambah');
				redirect('kategori','refresh');
			} else {
				$this->session->set_flashdata('message', 'Failed tambah');
				redirect('kategori','refresh');
			}
		}
	}
	public function edit_kategori($id)
	{
		$data=$this->kat->detail($id);
		echo json_encode($data);
	}
	public function kategori_update()
	{
		if ($this->input->post('edit')) {
			if ($this->kat->edit_kat()) {
				$this->session->set_flashdata('message', 'Sudah di Update');
				redirect('kategori','refresh');
			}
			else {
				$this->session->set_flashdata('message', 'Failed Update');
				redirect('kategori','refresh');
			}
		}
	}

	public function hapus($id='')
	{
		if ($this->kat->hapus_kat($id)) {
			$this->session->set_flashdata('message', 'Delete Sukses');
			redirect('kategori','refresh');
		} else {
			$this->session->set_flashdata('message', 'Delete Failed');
			redirect('kategori','refresh');
		}
	}

}

/* End of file Kategori.php */
/* Location: ./application/controllers/Kategori.php */