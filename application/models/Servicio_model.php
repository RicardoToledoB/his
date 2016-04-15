<?php

class Servicio_model extends CI_Model{
    public function __construct() {
        parent::__construct();
        $this->load->database();
        
    }
    public function list_all($establecimiento_id){
        $query=$this->db->query("select servicios.servicio_id,servicios.nombre,servicios.codigo from Servicios where establecimiento_id='".$establecimiento_id."' and estado='activo'");
        $result=$query->result_object();
        $this->db->close();
        return $result;
    }
        
    public function save($nombre,$estado,$creado_por,$codigo,$establecimiento_id){
        $this->db->query("insert into Servicios(nombre,estado,creado_por,fecha_creacion,codigo,establecimiento_id) values('".$nombre."','".$estado."','".$creado_por."',now(),'".$codigo."','".$establecimiento_id."')");
        $this->db->close();
        
    }
    
    public function cuenta(){
        $query=$this->db->query("select count(*) as cuenta from Servicios where estado='activo'");
        $result=$query->result_object();
        $this->db->close();
        return $result;
    }
}

