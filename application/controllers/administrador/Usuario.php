<?php

class Usuario extends CI_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->model('Usuario_model');
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
        $establecimiento_id=$this->session->userdata('establecimiento_id');
        $data['usuario']=$this->Usuario_model->find_by_id($establecimiento_id);
        $this->load->view('layout/header',$data);
        $this->load->view('administrador/usuario/usuario_index',$data);
        $this->load->view('layout/footer',$data);
    }
    public function nuevo(){
        $data['id'] = $this->session->userdata('id');
        $data['nombre'] = $this->session->userdata('nombre');
        $data['tipo']=$this->session->userdata('tipo');
        $data['email']=$this->session->userdata('email');
        $data['establecimiento']=$this->session->userdata('establecimiento');
        $data['establecimiento_id']=$this->session->userdata('establecimiento_id');
        $this->load->view('administrador/usuario/usuario_new',$data);
    }
    public function editar(){
        
    }
    public function ver(){
        
    }
    
}

