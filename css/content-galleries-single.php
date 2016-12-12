<?php
/**
 * Template part for displaying page content in page.php.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package ddim
 */

?>

  <div class="body-right" itemscope itemtype="http://schema.org/ImageGallery">
    <div id="galery-full-text" class="galery-full-text">
        <?php the_content();	?>
      </div>
  </div>

  <div class="body-left">
    <?php wp_nav_menu( array( 'menu' => 'galleries_left_menu',) ); ?>
        <div class="calc-top-box">
            <div class="calc-box">
                <form name="calc" action="http://derevodim.com.ua/customsearch" method="get">
                    <span class="title-c">Калькулятор</span>
                    <div class="budget">
                        <span class="title-b">Бюджет (грн)</span>
						<input type="hidden" name="min-price" value="0">
                        <input id="budget" name="max-price" class="irs-hidden-input" readonly=""/>
                    </div>
                    <div class="add-options">
                        <div class="garage">
                            <input type="checkbox" name="garage" id="garage" value="1"/><span class="before-label unchecked"></span><label for="garage"></label><span class="after-label checked"></span>
                            <span class="title-g">Гараж</span>
                        </div>
                        <div class="levels">
                            <input type="checkbox" name="floor" id="levels" value="2"/><span class="before-label">1</span><label for="levels"></label><span class="after-label">2</span>
                            <span class="title-l">Поверхів</span>
                        </div>
                    </div>
                    <div class="suare">
                        <span class="title-s">Площа будинку (м2)</span>
                        <input id="suare" name="progect_area" class="irs-hidden-input" readonly=""/>
                    </div>
					
                    <div class="type-byild">
                        <select class="type-select" name="progect_type">
                                <option value="1">Будинок</option>
                                <option value="2">Баня</option>
                                <option value="3">Альтанка</option>
                        </select>
                    </div>
                    
                    <button type="submit" class="filter">Підібрати проекти</button>
                </form>
            </div>
        </div>

	<script type="text/javascript">

$("#budget").ionRangeSlider({
            min: 5000,
            max: 3000000,
            from: 1500000,
            step: 10000
        });

$("#suare").ionRangeSlider({
            type: "double",
            min: 0,
            max: 200,
            from: 40,
            to: 100,
            step: 10,
            keyboard: true            
        });
 </script>       
    
  </div>


<script type="text/javascript">
			jQuery(document).ready(function($){
				var imgs = $('#galery-full-text div > img');
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


