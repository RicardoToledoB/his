<?php

class Servicio extends CI_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->model('Servicio_model');
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
        $data['servicio']=$this->Servicio_model->list_all($establecimiento_id);
        $this->load->view('administrador/servicio/servicio_index',$data);
    }
    
    public function nuevo(){
        $data['id'] = $this->session->userdata('id');
        $data['nombre'] = $this->session->userdata('nombre');
        $data['tipo']=$this->session->userdata('tipo');
        $data['email']=$this->session->userdata('email');
        $data['establecimiento']=$this->session->userdata('establecimiento');
        $data['establecimiento_id']=$this->session->userdata('establecimiento_id');
        $this->load->view('administrador/servicio/servicio_new',$data);
    }
   
    public function save(){
        //OBTENER INPUT//
        $nombre=$this->input->post('nombre');
        $estado='activo';
        $creado_por=$this->session->userdata('id');
        $codigo=$this->input->post('codigo');
        $establecimiento_id=$this->session->userdata('establecimiento_id');
        $this->Servicio_model->save($nombre,$estado,$creado_por,$codigo,$establecimiento_id);
        redirect(base_url() . 'index.php/administrador/servicio');
    }
    
    
    
}
