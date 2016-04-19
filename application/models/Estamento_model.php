<?php

class Estamento_model extends CI_Model{
    public function __construct() {
        parent::__construct();
        $this->load->database();
        
    }
    
    public function list_all(){
        $query=$this->db->query("select * from estamentos where estado='activo' ");
        $result=$query->result_object();
        $this->db->close();
        return $result;
       
    }
}
