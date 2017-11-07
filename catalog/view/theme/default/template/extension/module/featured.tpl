<h3 class="featured"><?php echo $heading_title; ?></h3>
<div class="row">

  <?php foreach ($products as $product) { ?>
        <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
          <div class="product-thumb transition home-products">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo substr($product['description'],0,35); ?>...</p>

            </div>
            <div class="button-group">
              <p class="price price-home-small ">Pris</p>
              <p class="price price-home"><?php echo $product['price']; ?></p>
              <div class="cart-add-button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                <div class="green-button"><p></p></div>
              </div>
            </div>

            
            <!-- Rating stjerner 
            <div class="rating product-rating">
                <p>ANMELD</p>
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                <?php } ?>
                <?php } ?>
            </div>
			-->

          </div>
        </div>
        <?php } ?>
</div>
