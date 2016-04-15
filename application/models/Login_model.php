<?php

class Login_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function validar($username, $password,$establecimiento_id) {
        //$query = $this->db->query("select usuarios.usuario_id,usuarios.username,usuarios.password,roles.tipo,usuarios.enabled,usuarios.email from usuarios,roles  where usuarios.rol_id=roles.rol_id and usuarios.username='" . $username . "' and usuarios.enabled=1");
        $query = $this->db->query("select Establecimientos.establecimiento_id,Establecimientos.nombre as establecimiento,Usuarios.usuario_id,Usuarios.username,Usuarios.password,Roles.tipo,usuarios.enabled,usuarios.email from Usuarios,Establecimientos,Usuarios_Establecimientos,Roles where Usuarios_Establecimientos.usuario_id=Usuarios.usuario_id and Usuarios_Establecimientos.establecimiento_id=Establecimientos.establecimiento_id and Usuarios.rol_id=Roles.rol_id  and usuarios.username='" . $username . "' and establecimientos.establecimiento_id='".$establecimiento_id."' and usuarios.enabled=1");
        $result = $query->result_object();
        $this->db->close();
        foreach ($result as $row) {
            if ($row->password == $password) {
                return $result;
            } else {
                return false;
            }
        }
    }

}
