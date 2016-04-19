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
    public function find_by_id($usuario_id){
        $query=$this->db->query("select * from usuarios where usuario_id='".$usuario_id."' and enabled=1");
        $result=$query->result_object();
        $this->db->close();
        return $result;
        
    }
    
    public function delete($usuario_id){
        $this->db->query("update Usuario set enabled=0 where usuario_id='".$usuario_id."'");
        $this->db->close();
    }
    
    public function save($rut,$dv,$nombre,$apepat,$apemat,$fec_nac,$username,$password,$enabled,$creado_por,$estamento_id,$email,$rol_id){
        $this->db->query("insert into Usuarios(rut,dv,nombre,apepat,apemat,fec_nac,username,password,enabled,creado_por,fecha_creacion,estamento_id,email,rol_id) values('".$rut."','".$dv."','".$nombre."','".$apepat."','".$apemat."','".$fec_nac."','".$username."','".$password."','".$enabled."','".$creado_por."',now(),'".$estamento_id."','".$email."','".$rol_id."')");
        $this->db->close();
        
    }
}