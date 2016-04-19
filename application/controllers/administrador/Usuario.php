<?php

class Usuario extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Usuario_model');
        $this->load->model('Rol_model');
        $this->load->model('Estamento_model');
        $this->load->model('Servicio_model');
        $this->load->model('Establecimiento_model');
        $this->load->model('Usuario_Establecimiento_model');
        $this->load->helper('url');
        $this->load->library('session');
        if ($this->session->userdata('logueado')) {
            if ($this->session->userdata('tipo') == 'administrador') {
                
            } else {
                redirect(base_url() . 'index.php/error403');
            }
        } else {
            redirect(base_url() . 'index.php/login');
        }
    }

    public function index() {
        $data['id'] = $this->session->userdata('id');
        $data['nombre'] = $this->session->userdata('nombre');
        $data['tipo'] = $this->session->userdata('tipo');
        $data['email'] = $this->session->userdata('email');
        $data['establecimiento'] = $this->session->userdata('establecimiento');
        $data['establecimiento_id'] = $this->session->userdata('establecimiento_id');
        $establecimiento_id = $this->session->userdata('establecimiento_id');
        $data['usuario'] = $this->Usuario_model->list_all();

        //$this->load->view('layout/header',$data);
        $this->load->view('administrador/usuario/usuario_index', $data);
        //$this->load->view('layout/footer',$data);
    }

    public function nuevo() {
        $data['id'] = $this->session->userdata('id');
        $data['nombre'] = $this->session->userdata('nombre');
        $data['tipo'] = $this->session->userdata('tipo');
        $data['email'] = $this->session->userdata('email');
        $data['establecimiento'] = $this->session->userdata('establecimiento');
        $data['establecimiento_id'] = $this->session->userdata('establecimiento_id');
        $data['rol'] = $this->Rol_model->list_all();
        $data['estamento'] = $this->Estamento_model->list_all();
        $this->load->view('administrador/usuario/usuario_new', $data);
    }
    
    public function save(){
        $ruttot=$this->input->post('ruttot');
        $tot=strlen($ruttot);
        
        $rut=substr($ruttot, 0,$tot-2);
        $dv=substr($ruttot,-1);
            
        $nombre=$this->input->post('nombre');
        $apepat=$this->input->post('apepat');
        $apemat=$this->input->post('apemat');
        
        $fec_nac=$this->input->post('fec_nac');
        $estamento_id=$this->input->post('estamento_id');
        $username=$this->input->post('username');
        $password=$this->input->post('password');
        $enabled=1;
        $creado_por=$this->session->userdata('id');
        $email=$this->input->post('email');
        $rol_id=$this->input->post('rol_id');
        
        $this->Usuario_model->save($rut,$dv,$nombre,$apepat,$apemat,$fec_nac,$estamento_id,$username,$password,$enabled,$creado_por,$email,$rol_id);
        redirect(base_url() . 'index.php/administrador/usuario');
        
    }
    

    public function delete($usuario_id) {
        $this->Usuario_model->delete($usuario_id);
        redirect(base_url() . 'index.php/administrador/usuario');
    }

    public function parametrizar($usuario_id){
        $data['id'] = $this->session->userdata('id');
        $data['nombre'] = $this->session->userdata('nombre');
        $data['tipo'] = $this->session->userdata('tipo');
        $data['email'] = $this->session->userdata('email');
        $data['establecimiento'] = $this->session->userdata('establecimiento');
        $data['establecimiento_id'] = $this->session->userdata('establecimiento_id');
        $data['establecimientos']=$this->Establecimiento_model->list_all();
        
       
        $data["usuario"]=$this->Usuario_model->find_by_id($usuario_id);
        $this->load->view('administrador/usuario/usuario_conf',$data);
        
    }
    public function enviar_establecimientos(){
        $usuario_id=$this->input->get('id');
        $data=$this->Usuario_Establecimiento_model->list_by_id($usuario_id);
        echo json_encode($data);
    }
    
    public function save_ue(){
        $usuario_id=$this->input->get('usuario_id');
        $establecimiento_id=$this->input->get('establecimiento_id');
        $this->Usuario_Establecimiento_model->save($usuario_id,$establecimiento_id);
        $data="ok".$usuario_id . $establecimiento_id;
        echo json_encode($data);
    }
    
    public function editar() {
        
    }

    public function ver() {
        
    }

}
