<?php

class Usuario_model extends CI_Model{
    public function __construct() {
        parent::__construct();
        $this->load->database();
        
    }
    public function list_all(){
        $query=$this->db->query("select * from usuarios where enabled=1");
        $result=$query->result_object();
        $this->db->close();
        return $result;
    }
    public function find_by_id($establecimiento_id){
        $query=$this->db->query("select usuarios.usuario_id,usuarios.nombre,usuarios.apepat,usuarios.apemat,usuarios.username from establecimientos,usuarios,Usuarios_Establecimientos where Usuarios_Establecimientos.usuario_id=Usuarios.usuario_id and Usuarios_Establecimientos.establecimiento_id=Establecimientos.establecimiento_id and Establecimientos.establecimiento_id='".$establecimiento_id."' and Usuarios.enabled=1");
        $result=$query->result_object();
        $this->db->close();
        return $result;
        
    }
}