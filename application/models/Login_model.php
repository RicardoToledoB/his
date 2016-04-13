<?php

class Login_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function validar($username, $password) {
        $query = $this->db->query("select usuarios.usuario_id,usuarios.username,usuarios.password,roles.tipo,usuarios.enabled,usuarios.email from usuarios,roles  where usuarios.rol_id=roles.rol_id and usuarios.username='" . $username . "' and usuarios.enabled=1");
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
