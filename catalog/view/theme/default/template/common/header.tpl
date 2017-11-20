<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="da-DK">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div id="background">
<!-- PRELOAD IMAGES -->
<img src="/catalog/view/theme/default/image/cart2-hover.png" 		class="hide" alt="preloaded image" />
<img src="/catalog/view/theme/default/image/cart2.png" 				class="hide" alt="preloaded image" />
<img src="/catalog/view/theme/default/image/menu-cart-hover.png" 	class="hide" alt="preloaded image" />
<img src="/catalog/view/theme/default/image/login-hover.png" 		class="hide" alt="preloaded image" />
<img src="/catalog/view/theme/default/image/kurv_gul.png"    class="hide" alt="preloaded image" />
<img src="/catalog/view/theme/default/image/ring_gul.png"    class="hide" alt="preloaded image" />
<!-- PRELOAD IMAGES -->

<div id="top-top-header" class="navbar-header">
	<div class="container">
		<button type="button" class="navbar-toggle burger-menu" data-toggle="collapse" data-target=".dropdown-top-menu"><i class="fa fa-bars"></i></button>
		<div class="col-sx-4">
			<div id="login-btn" class="hidden-xs top-header-link">
				<a href="<?php echo $register; ?>" id="grey-link">Opret</a>&nbsp;/&nbsp;
				<a href="<?php echo $login; ?>">Log Ind</a>
			</div>
		</div>
		<div class="col-sx-8 pull-right" id="top-top-cart">
			<div class="top-header-link indkoebsvogn">
				   <?php echo $cart; ?>
			</div>
			<div class="hidden-xs top-header-link hjaelp">
				<a href="/faq" >Hj&aelig;lp</a>
			</div>
			<div class="hidden-xs top-header-link email">
				<a href="mailto:kontakt@like2buy.dk">kontakt@like2buy.dk</a>
			</div>
			<div class="hidden-xs top-header-link phone">
				<a href="tel:+4542834949">Tlf: 42 83 49 49</a>
			</div>
		</div>
	</div>
</div>

<header id="home-header">
  <div class="container">
    <div class="row">
      <div class="col-sm-3">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-2 header-box">
      	<img src="/catalog/view/theme/default/image/1.png" />
      	<p class="big">Garanti</p>
      	<p class="small">+1 års reklamation</p>
      </div>
      <div class="col-sm-2 header-box">
      	<img src="/catalog/view/theme/default/image/fragt.png" />
      	<p class="big">Fri Fragt</p>
      	<p class="small">v. køb over 325kr</p>
      </div>
      <div class="col-sm-3 header-box">
		<img src="/catalog/view/theme/default/image/levering.png" />
      	<p class="big">1-4 Dages Levering</p>
      	<p class="small">Postnord, GLS, DOA365, Bring</p>
	  </div>
      <div class="col-sm-2 header-box">
		<img src="/catalog/view/theme/default/image/thumbs.png" />
      	<p class="big">30 Dages Returret</p>
      	<p class="small"><a href="/Handelsbetingelser">Læs Handelsbetingelser</a></p>
	  </div>
    </div>
  </div>
<?php if ($categories) { ?>
<div class="container" id="menu-nav">
  <nav id="menu" class="navbar">
    <div id="menu-category">
      <ul class="nav navbar-nav dropdown-top-menu col-sm-9 collapse navbar-collapse">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" ><?php echo $category['name']; ?></a> 
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li> 
                <?php } ?>
              </ul>

              
              <?php } ?>
            </div>

            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> </a> </div>
            
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>  
        <?php } ?>
        <?php } ?>
	<li class="visible-xs">
		<a href="<?php echo $register; ?>">Opret</a>
	</li>
	<li class="visible-xs">
		<a href="<?php echo $login; ?>">Log Ind</a>
	</li>
	<li class="visible-xs">
		<a href="/faq">Hjælp</a>
	</li>
      </ul>
      <div class="col-sm-3 float-right">
          <?php echo $search; ?>
      </div>
    </div>
  </nav>

  
</div>
</header>

<?php } ?>
