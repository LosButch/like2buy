
    <div id="banner<?php echo $module; ?>" class="bannerCategory radius">
      <?php foreach ($banners as $banner) { ?>
      <?php if ($banner['link']) { ?>
      <div class="radius"><a href="<?php echo $banner['link']; ?>"><img class="radius" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></div>
      <?php } else { ?>
      <div class="radius"><img class="radius" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
      <?php } ?>
      <?php } ?>
    </div>

<script type="text/javascript"><!--
$(document).ready(function() {
	$('#banner<?php echo $module; ?> div:first-child').css('display', 'block');
});

var banner = function() {
	$('#banner<?php echo $module; ?>').cycle({
		before: function(current, next) {
			$(next).parent().height($(next).outerHeight());
		}
	});
}

setTimeout(banner, 2000);
//--></script>