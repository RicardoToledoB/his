<?php

class Usuario_Establecimiento_model extends CI_Model{
    public function __construct() {
        parent::__construct();
        $this->load->database();
        
    }
    
    public function list_esta_by_id($usuario_id){
        $query=$this->db->query(" select establecimientos.establecimiento_id,establecimientos.nombre from Usuarios,Establecimientos,Usuarios_Establecimientos where Usuarios_Establecimientos.usuario_id=Usuarios.usuario_id and Usuarios_Establecimientos.establecimiento_id=Establecimientos.establecimiento_id and usuarios.enabled=1 and usuarios.usuario_id='".$usuario_id."'");
        $result=$query->result_object();
        $this->db->close();
        return $result;
    }
    //LLENO TABLA SERVICIOS DE X USUARIO
    public function carga_serv_by_id($usuario_id){
        $query=$this->db->query("select servicios.servicio_id,servicios.nombre as servicio,usuarios.nombre as usuario,establecimientos.nombre as establecimiento from Usuarios_Servicios,Servicios,Usuarios,Establecimientos,Usuarios_Establecimientos where Usuarios_Servicios.servicio_id=Servicios.servicio_id and Usuarios_Servicios.usuario_id=Usuarios.usuario_id and Usuarios_Establecimientos.establecimiento_id=Establecimientos.establecimiento_id and Usuarios_Establecimientos.usuario_id=Usuarios.usuario_id and servicios.establecimiento_id=establecimientos.establecimiento_id and usuarios.usuario_id='".$usuario_id."';");
        $result=$query->result_object();
        $this->db->close();
        return $result;
    }
    
    
    public function list_serv_by_id($establecimiento_id){
        $query=$this->db->query("select * from servicios where establecimiento_id='".$establecimiento_id."' and estado='activo'");
        $result=$query->result_object();
        $this->db->close();
        return $result;
    }
    
    
    
    
    public function save_ue($usuario_id,$establecimiento_id){
        $this->db->query("insert into Usuarios_Establecimientos(usuario_id,establecimiento_id) values('".$usuario_id."','".$establecimiento_id."')");
        $this->db->close();
    }
    public function delete_ue($usuario_id,$establecimiento_id){
        $this->db->query("delete from Usuarios_Establecimientos where usuario_id='".$usuario_id."' and establecimiento_id='".$establecimiento_id."'");
        $this->db->close();
    }
    
    public function save_us($usuario_id,$servicio_id){
        $this->db->query("insert into Usuarios_Servicios(usuario_id,servicio_id) values('".$usuario_id."','".$servicio_id."')");
        $this->db->close();
    }
    public function delete_us($usuario_id,$servicio_id){
        $this->db->query("delete from Usuarios_Servicios where usuario_id='".$usuario_id."' and servicio_id='".$servicio_id."' ");
        $this->db->close();
    }
    
}
