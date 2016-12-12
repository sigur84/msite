<?php
class category extends core {
	public function get_content(){
		echo '<div class="col-md-9 c-right">';		
		if (!$_GET['id_category']){
			echo "Неправильні дані для виводу категорії.";
		}
		else{
			$id_cat = (int)$_GET['id_category'];	
				if(!$id_cat){
				echo "Неправильні дані для виводу категорії";	
				echo $id_cat;
				}
			else{
				$query = "SELECT id,title,date,description,img_src 
						FROM article 
						WHERE cat ='$id_cat' 
						ORDER BY date DESC";
				$result = mysql_query($query);
				if(!$result) {
					exit(mysql_error());
				}	
				if(mysql_num_rows($result) > 0) { 
					$row = array();
					for($i = 0; $i < mysql_num_rows($result);$i++) {
						$row = mysql_fetch_array($result,MYSQL_ASSOC);
						printf('<div class="row article_box">
									<div class="thumbnail">
									<img src="%s" class="img-responsive">
									</div>
									<div class="text-center"><h3>%s</h3></div>
									<div class="text-justify">%s</div>
									<p><a href="?option=view&id_text=%s">Читати дальше...</a></p>
									
								</div>',$row['img_src'],$row['title'],$row['description'],$row['id']);
					}
				}
				else {
				    echo ('В цій категорії ще немає статей');	
				}		
			}
		}
		echo '</div></div></div>'; 
	}
}
?>
