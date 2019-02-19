<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {

	public function index(){

		$header = array(
			'title' => 'DormNBU'
		);

		$this->load->view('template/header', $header);
		$this->load->view('apps/contact/contact');
		$this->load->view('template/footer');
  }

}