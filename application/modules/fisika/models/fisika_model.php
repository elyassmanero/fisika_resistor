<?php
class Fisika_model extends CI_Model{
 
	function get_all_color($field){
		$this->db->select(array('ID','warna'));
		$this->db->where(array($field.' <>'=>'-1'));
		return $this->db->get('resistor')->result();
	}
	
	function get_color_bg($ID){
		$this->db->select('color_bg');
		$this->db->where('ID',$ID);
		return $this->db->get('resistor')->row();
	}
	
	function get_color_value($ID,$field){
		$this->db->select($field);
		$this->db->where(array('ID'=>$ID));
		return $this->db->get('resistor')->row();
	}

}
?>
