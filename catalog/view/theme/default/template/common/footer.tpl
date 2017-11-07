
<footer>


  <div class="container">
    <div class="row">
      <div class="col-sm-4 categories">
	<h2>Kategorier</h2>
	<div class="col-sm-6">
		<?php if($categories) { ?>
			<?php $cat_index = 0; ?>
			<?php foreach ($categories as $category) { ?>
				<?php if ($cat_index == 2) { ?>
					</div>
					<div class="col-sm-6">
				<?php } ?>
				<a href="<?php echo $category['href']; ?>"><h3><?php echo($category['name']) ?></h3></a>
				<?php if ($category['children']) { ?>
					<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
						<?php foreach ($children as $child) { ?>
							<a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a><br />
						<?php } ?>
					<?php } ?>
				<?php } ?>
				<?php $cat_index ++ ?>
			<?php } ?>
		<?php } ?>
	</div>
      </div>
      <div class="col-sm-4 newsletter-signup">
	<h2>Nyhedstilmelding</h2>
      	<!-- Begin MailChimp Signup Form -->
		<link href="//cdn-images.mailchimp.com/embedcode/horizontal-slim-10_7.css" rel="stylesheet" type="text/css">
		<style type="text/css">
			#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; width:100%;}
			/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
			   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
		</style>
		<div id="mc_embed_signup">
		<form action="//like2buy.us16.list-manage.com/subscribe/post?u=4983774b108ab6c89a7a7ca72&amp;id=6b4585e6aa" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
		    <div id="mc_embed_signup_scroll">
			<p>Tilmeld dig vores nyhedsbrev og følg med når vi får nye spændende produkter</p>
			<input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Indtast e-mail" required>
		    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
		    <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_4983774b108ab6c89a7a7ca72_6b4585e6aa" tabindex="-1" value=""></div>
		    <input type="submit" value="Tilmeld" name="subscribe" id="mc-embedded-subscribe" class="button">
		    </div>
		</form>
		</div>

		<!--End mc_embed_signup-->
      </div>
      <div class="col-sm-4 contact">
	<h2>Kontakt</h2>
	Like 2 Buy<br />
	Vendersvej 17<br />
	5000 Odense C<br />
	Danmark<br />
	CVR: 35016074<br />
	Reg: 0828 Konto: 0003931323<br /><br />
	<a href="mailto:kontakt@like2buy.dk">kontakt@like2buy.dk</a><br />
	Tlf: 42 83 49 49<br />
      </div>
    </div>
  </div>
  <div id="under-footer">
		<div class="col-sm-8">
			<ul>
				<li><a href="<?php echo HTTP_SERVER . 'index.php?route=information/information&information_id=5'; ?>">HANDELSBETINGELSER</a></li>
				<li><a href="<?php echo HTTP_SERVER . 'index.php?route=information/information&information_id=4'; ?>">REKLAMATION & GARANTI</a></li>
				<!-- <li><a href="<?php echo HTTP_SERVER . 'index.php?route=information/information&information_id=6'; ?>">BRUGSBETINGELSER</a></li> -->
				<li><a href="<?php echo HTTP_SERVER . 'index.php?route=information/information&information_id=3'; ?>">PRIVATLIVSPOLITIK</a></li>
			</ul>
		</div>
		<div class="col-sm-4 pull-right">
			<p>Copyright &copy; 2017 Like2Buy</p>
		</div>
  </div>
</footer>


</div>


<script>
	var btn = document.getElementById('login-btn');
	btn.addEventListener('click', function() {
	  document.location.href = '<?php echo $account; ?>';
	});
</script>

</body>
</html>
