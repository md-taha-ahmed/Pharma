<?php
include "includes/head.php"
?>

<body>

  <div class="site-wrap">


    <?php
    include "includes/header.php"
    ?>
    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0"><a href="index.php">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Store</strong></div>
        </div>
      </div>
    </div>
    <?php
    ?>
    <div class="site-section">
      <div class="container">
        <div class="row">
          <?php
          $data = search();
          if ($data != "no result" and !empty($data)) {
            $num = sizeof($data);
            for ($i = 0; $i < $num; $i++) {
          ?>
              <div class="col-sm-6 col-lg-4 text-center item mb-4">
                <a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"> <img class="rounded mx-auto d-block" style="width:270px ; height:270px ;" src="images/<?php echo $data[$i]['item_image'] ?>" alt="Image"></a>
                <?php if (strlen($data[$i]['item_title']) <= 20) { ?>
                  <h3 class="text-dark"><a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"><?php echo $data[$i]['item_title'] ?></a></h3>
                <?php
                } else {
                ?>
                  <h3 class="text-dark"><a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"><?php echo substr($data[$i]['item_title'], 0, 20) . "..." ?></a></h3>
                <?php
                }
                ?>
                <p class="price">₹<?php echo $data[$i]['item_price'] ?></p>
              </div>
            <?php
            }
            unset($data);
            if ($num < 8) {
              $data = all_products();
              $num = sizeof($data);
            ?>
              <div class="title-section text-center col-12">
                <h1 class="text-uppercase">Products You Might Like</h1>
                <br><br>
              </div>
              <?php
              for ($i = 0; $i < $num; $i++) {
              ?>
                <div class="col-sm-6 col-lg-4 text-center item mb-4">
                  <a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"> <img class="rounded mx-auto d-block" style="width:270px ; height:270px ;" src="images/<?php echo $data[$i]['item_image'] ?>" alt="Image"></a>
                  <?php if (strlen($data[$i]['item_title']) <= 20) { ?>
                    <h3 class="text-dark"><a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"><?php echo $data[$i]['item_title'] ?></a></h3>
                  <?php
                  } else {
                  ?>
                    <h3 class="text-dark"><a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"><?php echo substr($data[$i]['item_title'], 0, 20) . "..." ?></a></h3>
                  <?php
                  }
                  ?>
                  <p class="price">₹<?php echo $data[$i]['item_price'] ?></p>
                </div>
              <?php
                if ($i == 2) {
                  break;
                }
              }
            }
          } elseif (empty($data)) {
            $data = all_products();
            $num = sizeof($data);
            for ($i = 0; $i < $num; $i++) {
              ?>
              <div class="col-sm-6 col-lg-4 text-center item mb-4">
                <a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"> <img class="rounded mx-auto d-block" style="width:270px ; height:270px ;" src="images/<?php echo $data[$i]['item_image'] ?>" alt="Image"></a>
                <?php if (strlen($data[$i]['item_title']) <= 20) { ?>
                  <h3 class="text-dark"><a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"><?php echo $data[$i]['item_title'] ?></a></h3>
                <?php
                } else {
                ?>
                  <h3 class="text-dark"><a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"><?php echo substr($data[$i]['item_title'], 0, 20) . "..." ?></a></h3>
                <?php
                }
                ?>
                <p class="price">₹<?php echo $data[$i]['item_price'] ?></p>
              </div>
            <?php
              if ($i == 11) {
                break;
              }
            }
          } else {
            ?>
            <div class="text-center col-12">
              <img class="img-fluid " style="margin-top: -90px;" src="images/1.gif">
            </div>
          <?php
          }
          ?>
        </div>

      </div>
    </div>

    <?php
    include "includes/footer.php"
    ?>
  </div>
</body>

</html>