<?php

class Unidad_model extends CI_Model{
    public function __construct() {
        parent::__construct();
        $this->load->database();
        
    }
    public function list_all($establecimiento_id){
        $query=$this->db->query("select unidades.unidad_id, unidades.nombre,unidades.codigo,servicios.nombre as servicio from Unidades,Servicios where unidades.servicio_id=servicios.servicio_id and unidades.establecimiento_id='".$establecimiento_id."' and unidades.estado='activo'");
        $result=$query->result_object();
        $this->db->close();
        return $result;
    }
    public function save($nombre,$estado,$servicio_id,$creado_por,$codigo,$establecimiento_id){
        $this->db->query("insert into Unidades(nombre,estado,servicio_id,creado_por,fecha_creacion,codigo,establecimiento_id) values('".$nombre."','".$estado."','".$servicio_id."','".$creado_por."',now(),'".$codigo."','".$establecimiento_id."')");
        $this->db->close();
    }
}

