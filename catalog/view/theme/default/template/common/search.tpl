
  <!--  <button type="button" class="btn btn-default btn-lg"><i class="fa fa-search"></i></button>  -->
  <!--
  <span class="input-group-btn" id="search-button-box">
    
    <button type="button" id="search-button" class="btn btn-default btn-lg"></button>
  </span>
  -->
  <form id="search" action="/sog">
  	<input type="submit" id="search-button" class="btn btn-default btn-lg" value="" />
  	<input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form-control input-lg" />
  </form>
