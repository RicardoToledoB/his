<?php

class Usuario_Establecimiento_model extends CI_Model{
    public function __construct() {
        parent::__construct();
        $this->load->database();
        
    }
    
    public function list_by_id($usuario_id){
        $query=$this->db->query(" select establecimientos.establecimiento_id,establecimientos.nombre from Usuarios,Establecimientos,Usuarios_Establecimientos where Usuarios_Establecimientos.usuario_id=Usuarios.usuario_id and Usuarios_Establecimientos.establecimiento_id=Establecimientos.establecimiento_id and usuarios.enabled=1 and usuarios.usuario_id='".$usuario_id."'");
        $result=$query->result_object();
        $this->db->close();
        return $result;
    }
    
    public function save($usuario_id,$establecimiento_id){
        $this->db->query("insert into Usuarios_Establecimientos(usuario_id,establecimiento_id) values('".$usuario_id."','".$establecimiento_id."')");
        $this->db->close();
    }
}
