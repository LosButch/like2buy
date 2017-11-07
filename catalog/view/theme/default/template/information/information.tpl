<?php echo $header; ?>

<?php 
	$flag = false;

	function IsFaq($input){
		global $flag;

		$faq = array('Bestilling', 'Betaling', 'Øvrige', 'levering', 'reklamation', 'retur');
		foreach ($faq as $item){

			if(strpos(strtolower($input), strtolower($item)) !== false){
				$flag = true;
				return true;
			}
		}

		return false;
	}
?>

  <ul class="breadcrumb">

    <?php foreach ($breadcrumbs as $breadcrumb) { 
    				global $flag; ?>
    	<?php if(IsFaq($breadcrumb['text']) ){  ?>
    		<li><a href="/faq">FAQ</a></li> &raquo;
    	<?php } ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li> &raquo;
    <?php } ?>
  </ul>
  <br/>
  <div class="container" >
    <div class="row content-page" style="background: none;"><?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="information" class="<?php echo $class; ?> "><?php echo $content_top; ?>
        <!--<h1><?php echo $heading_title; ?></h1> ***** TO ADD TITLE *****-->
        <?php echo $description; ?><?php echo $content_bottom; ?></div>
      <?php echo $column_right; ?></div>
  </div>
  <br/>

<?php echo $footer; ?>