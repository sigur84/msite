<?php
class view extends core {
	public function get_content(){
		
		if (!$_GET['id_text']){
			echo "Неправильні дані для виводу статті";
		}
		else{
			$id_text = (int)$_GET['id_text'];
			if(!$id_text){
				echo "Неправильні дані для виводу статті";			
			}
			else{
				$query = "SELECT title,text,date,img_src FROM article WHERE id='$id_text'";
				$result = mysql_query($query);
				if(!$result) {
				exit(mysql_error());
				}
				$row = mysql_fetch_array($result,MYSQL_ASSOC);
					echo '<div class="col-md-9 c-right">';
						printf('<div class="row article_box">
							<div class="thumbnail">
								<img src="%s" class="img-responsive">
							</div>
							
							<div class="">
								<h3 class="text-center">%s</h3>	
								<span class="db mb5">%s</span>
								<div class="text-justify">%s</div>
							</div>	
							
						</div>',$row['img_src'],$row['title'],$row['date'],$row['text']);					
					echo '</div></div></div>'; 				
			}
		}
	}
}
?>
