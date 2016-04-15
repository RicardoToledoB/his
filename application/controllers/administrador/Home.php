<?php

class Home extends CI_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
        if ($this->session->userdata('logueado')) {
            if($this->session->userdata('tipo')=='administrador'){
                
            }else{
                redirect(base_url().'index.php/error403');
            }
        } else {
            redirect(base_url() . 'index.php/login');
        }
        
    }
    public function index(){
        $data['id'] = $this->session->userdata('id');
        $data['nombre'] = $this->session->userdata('nombre');
        $data['tipo']=$this->session->userdata('tipo');
        $data['email']=$this->session->userdata('email');
        $data['establecimiento']=$this->session->userdata('establecimiento');
        $data['establecimiento_id']=$this->session->userdata('establecimiento_id');
        $this->load->view('administrador/home_index',$data);
    }
}
