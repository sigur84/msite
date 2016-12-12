<?php
class main extends core {
	public function get_content(){
		$query = "SELECT id,title,date,description,img_src FROM article ORDER BY date DESC";
		$result = mysql_query($query);
		if(!$result) {
			exit(mysql_error());
		}	
		echo '<div class="col-md-9 c-right">';
		$row = array();
		
		for($i = 0; $i < mysql_num_rows($result);$i++) {
			$row = mysql_fetch_array($result,MYSQL_ASSOC);
			printf('<div class="row article_box">
						<div class="thumbnail">
							<img src="%s" class="img-responsive">
						</div>
						<div class="text-center"><h3>%s</h3></div>
						<div class="text-justify">%s</div>
						<p class="text-right"><a href="?option=view&id_text=%s" >Читати дальше...</a></p>
					</div>',$row['img_src'],$row['title'],$row['description'],$row['id']);
		}
		echo '</div></div></div>'; 
	}
}
?>
