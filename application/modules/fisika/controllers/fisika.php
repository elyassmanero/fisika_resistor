<?php

class Fisika extends CI_Controller{
	function __construct(){
	 parent::__construct();
	 $this->load->model('fisika_model','m');
	 $this->load->helper(array('html','url'));
	}

	function index(){
		if($_POST){
			$g1=$this->m->get_color_value($this->input->post('g1'),'gelang1')->gelang1;
			$g2=$this->m->get_color_value($this->input->post('g2'),'gelang2')->gelang2;
			$g3=$this->m->get_color_value($this->input->post('g3'),'gelang3')->gelang3;
			$g4=$this->m->get_color_value($this->input->post('toleransi'),'toleransi')->toleransi;
				$data['hasil']=number_format((($g1.($g2*10))*(pow(10,$g3)))).' Ohm <sub>+-</sub><sup>'.$g4.'%</sup>';
				
			$data['c1']=$this->m->get_color_bg($this->input->post('g1'))->color_bg;
			$data['c2']=$this->m->get_color_bg($this->input->post('g2'))->color_bg;
			$data['c3']=$this->m->get_color_bg($this->input->post('g3'))->color_bg;
			$data['c4']=$this->m->get_color_bg($this->input->post('toleransi'))->color_bg;
		}	
			$datas1=$this->m->get_all_color('gelang1');
			$datas2=$this->m->get_all_color('gelang2');
			$datas3=$this->m->get_all_color('gelang3');
			$datas4=$this->m->get_all_color('toleransi');
			foreach($datas1 as $r){
				$arr1[$r->ID]=$r->warna;
			}
			foreach($datas2 as $r){
				$arr2[$r->ID]=$r->warna;
			}
			foreach($datas3 as $r){
				$arr3[$r->ID]=$r->warna;
			}
			foreach($datas4 as $r){
				$arr4[$r->ID]=$r->warna;
			}
			$data['r1']=$arr1;
			$data['r2']=$arr2;
			$data['r3']=$arr3;
			$data['r4']=$arr4;
			$this->load->helper('form');
			$this->load->view('home',$data);
	}




}
?>