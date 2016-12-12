<?php
abstract class core{

	protected $db;
	public function __construct() {
		$this->db = mysql_connect(DB_HOST,DB_USER,DB_PASSWORD);
		if(!$this->db) {
			exit("Помилка з'єдняння з базою даних".mysql_error());
		}
		if(!mysql_select_db(DB,$this->db)){	
			exit("Немає такої бази даних".mysql_error());
		}
		mysql_query ("SET NAMES 'UTF8'");
	}
	
	protected function get_header(){
		include "header.php";
	}

	protected function get_menu(){
		$row = $this->menu_array();
		echo 	'<div class="navbar mb15">
				  <div class="navbar-default">
						<div class="container">
						
							<div class="navbar-header">
							  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							  </button>
							  <a class="navbar-brand" href="/">Назва компанії</a>
							</div>
							<nav class="collapse navbar-collapse nav-collapse">
								<ul class="nav navbar-nav navbar-right">';
		foreach ($row as $item){
			printf("<li><a href='?option=menu&id_menu=%s'>%s</a></li>",
			$item['id_menu'],$item['name_menu']);
			}
		echo '</ul></nav></div></div></div>';
	}

	protected function menu_array(){
		$query = "SELECT id_menu,name_menu FROM menu";
		$result = mysql_query($query);
		if(!$result) {
			exit(mysql_error());
		}
		$row = array();
		for($i = 0;$i < mysql_num_rows($result); $i++) {
			$row[] = mysql_fetch_array($result, MYSQL_ASSOC);
		}
		return $row;
	}

	protected function get_left() {
		$query = "SELECT id_category,name_category FROM category";
		$result = mysql_query($query);
		if(!$result) {
			exit(mysql_error());
		}
		$row = array();
		echo '<div class="container">
			  <div class="row">
		      <div class="col-md-3 c-left">
			  <ul class="nav nav-tabs nav-stacked ">';
		for($i = 0;$i < mysql_num_rows($result); $i++) {
			$row = mysql_fetch_array($result, MYSQL_ASSOC);
			printf("<li><a href='?option=category&id_category=%s'>%s</a></li>",$row['id_category'],$row['name_category']);
		}
		echo '</ul>
			  </div>';		
	}
	
	protected function get_footer(){
		include "footer.php";
	}	
	
	public function get_body(){
		$this->get_header();
		$this->get_menu();	
		$this->get_left();
		$this->get_content();
		$this->get_footer();
	}
	
	abstract function get_content();
}
?>
