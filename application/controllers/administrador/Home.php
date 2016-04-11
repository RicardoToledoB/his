<?php

class Home extends CI_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        
    }
    public function index(){
        $this->load->view('administrador/home_index');
    }
}
