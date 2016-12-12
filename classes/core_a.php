<?php
abstract class core_a{
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
		echo 	'<div class="navbar mb15">
				  <div class="navbar-default">
						<div class="container">
							<div class="navbar-header">
							  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							  </button>
							  <a class="navbar-brand" href="#">Назва компанії</a>
							</div>
							<div class="nav-collapse collapse">
								<ul class="nav navbar-nav">';

		echo '</ul></div></div></div></div>';
	}
	protected function get_left() {
		echo '<div class="container">
			  <div class="row">
		      <div class="col-md-3 c-left">
			  <ul class="nav nav-tabs nav-stacked ">';
		echo'<li><a href="?option=admin">Статті</a></li>';
		echo'<li><a href="?option=edit_category">Категорії</a></li>';				
		echo'<li><a href="?option=edit_menu">Меню</a></li>';
		echo'</ul></div>';		
	}
	protected function get_footer(){
		include "footer.php";
	}	
	public function get_body(){
		if ($_POST){
			$this->obr();		
		}
		
		$this->get_header();
		$this->get_menu();
		$this->get_left();
		$this->get_content();
		$this->get_footer();
	}
	abstract function get_content();
	
	protected function get_categories(){
			$query = "SELECT id_category,name_category FROM category";
			$result = mysql_query($query);
		    if(!$result) {
			exit("помилка".mysql_error());
		    }	
			for($i = 0; $i < mysql_num_rows($result);$i++) {
			$row[] = mysql_fetch_array($result,MYSQL_ASSOC);
			}
			return $row;

	}
	
	protected function get_text_articles($id){
			$query = "SELECT id,title,description,text,cat FROM article WHERE id='$id'";
			$result = mysql_query($query);
		    if(!$result) {
			exit(mysql_error());
		    }	
			$row[] = mysql_fetch_array($result,MYSQL_ASSOC);
			return $row;
	}
}
?>
