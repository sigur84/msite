<?php
class add_articles extends core_a {
	protected function obr() {
		//if(!empty($_FILES['img_src']['tmp_name'])) {
	//		if(!move_uploaded_file($_FILES['img_src']['tmp_name'],'/img/'.$_FILES['img_src']['tmp_name'])){
		//		exit("Не вдалось загрузити зображення");
	//		}
	//		$img_src = '/img/'.$_FILES['img_src']['tmp_name'];
	//	}
	//	else {
	//		exit("Необхідно загрузити зображення");
	//	}
		$title = $_POST['title'];
		$date = date("Y-m-d",time());
		$description = $_POST['description'];
		$text = $_POST['text'];		
		$cat = $_POST['cat'];	

		if(empty($title) || empty($text) || empty($description)){
			exit("Не заповненні обовязкові поля");
		}
		$query = "INSERT INTO article
				(title,img_src,date,text,description,cat)
				VALUES ('$title','$img_src','$date','$text','$description','$cat')";
		if(!mysql_query($query)){
			exit(mysql_error());
		}
		else{
			$_SESSION['res'] = "Зміни збережено";
			header("Location:?option=add_articles");
			exit;
		}		
	}
	
	public function get_content(){
		echo "<div class='col-md-9 c-right'><div class='article_box row'>";
		if($_SESION['res']){
			echo $_SESION['res'];
			unset($_SESION['res']);
		}
		$cat = $this->get_categories();
		print <<<HEREDOC
<form enctype='multipart/form-data' action='' method='POST'>
<label>Заголовок статті</label><br>
<input type="text" name="title" class="input-article">
<label>Короткий опис</label><br>	
<textarea class="input-article" id="textarea" rows="5" name="description"></textarea><br>
<label>Текст:</label><br>
<textarea class="input-article" id="textarea" rows="15" name="text"></textarea><br>
<div class='col-md-4'><label>Зображення</label><br><input class="img_src" type='file' name='img_src'><br></div>
<div class='col-md-8'>
<label>Категорія:</label><br>
<select name="cat">
HEREDOC;
	foreach($cat as $item){
		echo "<option value='".$item['id_category']."'>".$item['name_category']."</option>";
	}
	echo "</select></div><div class='col-md-12'><button type='submit' class='btn btn-primary' name='button'>Отправить</button></div></form></div></div></div></div><hr>";		
	}
}
?>
