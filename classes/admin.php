<?php
class admin extends core_a{
	public function get_content(){
		$query = "SELECT id,title FROM article";
		$result = mysql_query($query);
		if (!$result){
			exit (mysql_error());
		}
		echo "<div class='col-md-9 c-right'>";
		echo "<p><a style='color:red;' href='?option=add_articles'>Добавити нову статтю</a></p><hr>";		
		$row = array();
		for($i = 0; $i < mysql_num_rows($result);$i++) {
			$row = mysql_fetch_array($result,MYSQL_ASSOC);
			printf("<p><a href='?option=update_articles&id_text=%s'>%s</a> | 
					   <a style='color:red;' href='?option=delete_articles&id_text=%s'>Видалити</a></p>",
			$row['id'],$row['title'],$row['id']);
		}
		echo "</div></div></div>"; 	
	}
}
?>
