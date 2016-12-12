<?php
class menu extends core {
	public function get_content(){
		
		if (!$_GET['id_menu']){
			echo "Неправильні дані для виводу меню";
		}
		else{
			$id_menu = (int)$_GET['id_menu'];
			if(!$id_menu){
				echo "Неправильні дані для виводу menu";			
			}
			else{
				$query = "SELECT id_menu,name_menu,text_menu FROM menu WHERE id_menu='$id_menu'";
				$reslit = mysql_query($query);
				if(!$reslit) {
				exit(mysql_error());
				}
				$row = mysql_fetch_array($reslit,MYSQL_ASSOC);
					echo '<div class="col-md-9 c-right">';
						printf("<div class='row article_box'>

								%s

						</div>",$row['text_menu']);					
					echo '</div></div></div>'; 				
			}
		}
	}
}
?>
