<!DOCTYPE html>
<html lang="uk">
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>


<link rel="stylesheet" href="fbox/jquery.fancybox.css">
<script type="text/javascript" src="fbox/jquery.fancybox.pack.js"></script>



<script type="text/javascript">
			jQuery(document).ready(function($){
				var imgs = $('#galery-full div > img');
				if(imgs.length)
				{
					$(imgs).each(function( index ){
						$(this).wrap('<a href=' + $(this).attr('src') + ' rel="group1"></a>');
					});
					
					$('[rel="group1"]').fancybox({
						'margin': 0,
						'padding': 0,
						'transitionIn': 'none',
						'transitionOut': 'none',
						'titlePosition': 'over',
						'cyclic': true
					});
				}
			})
</script>

</head>
<body>
	<header>
		<div class="container">
			<div class="row">
				<img src="/img/baner.png">	
			</div>
		</div>
	</header>
