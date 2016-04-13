<?php

class Login extends CI_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
        $this->load->model('Login_model');
       
    }

    public function index() {
        $this->load->view('login_index');
    }

    public function log_in() {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $data = $this->Login_model->validar($username, $password);

        if($data != false) {
            $login=null;
            foreach ($data as $login) {
                $usuario_data = array(
                    'id' => $login->usuario_id,
                    'nombre' => $login->username,
                    'tipo' => $login->tipo,
                    'email' => $login->email,
                    'logueado' => TRUE
                );
            }
            $this->session->set_userdata($usuario_data);
            if($login->tipo=='administrador'){
                redirect(base_url() . 'index.php/administrador/home');
            }else if($login->tipo=='medico'){
                redirect(base_url() . 'index.php/medico/home');
            }else if($login->tipo=='secretaria'){
                redirect(base_url() . 'index.php/secretaria/home');
            }else if($login->tipo=='administrativo'){
                redirect(base_url() . 'index.php/administrativo/home');
            }
        } else {
            echo $data;
            redirect('login');
        }
    }

    public function log_out() {
        $this->session->sess_destroy();
        redirect(base_url() . 'index.php/login');
    }
}

