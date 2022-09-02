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
          <div class="col-md-12 mb-0">
            <a href="index.php">Home</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">Cart</strong>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <form action="cart.php" class="col-md-12" method="post">
            <div class="site-blocks-table">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th class="product-thumbnail">Image</th>
                    <th class="product-name">Product</th>
                    <th class="product-price">Price</th>
                    <th class="product-quantity">Quantity</th>
                    <th class="product-total">Total</th>
                    <th class="product-remove">Remove</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  if (!empty($_SESSION['cart'])) {
                    $data = get_cart();
                    delete_from_cart();
                    $num = sizeof($data);
                    for ($i = 0; $i < $num; $i++) {
                      if (isset($data[$i])) {
                  ?>
                        <tr>
                          <td class="product-thumbnail">
                            <img src="images/<?php echo $data[$i][0]['item_image'] ?>" alt="Image" class="img-fluid">
                          </td>
                          <td class="product-name">
                            <h2 class="h5 text-black"><?php echo $data[$i][0]['item_title'] ?></h2>
                          </td>
                          <td>₹<?php echo $data[$i][0]['item_price'] ?></td>
                          <td><?php echo $_SESSION['cart'][$i]['quantity'] ?></td>
                          <td>₹<?php echo ($data[$i][0]['item_price'] * $_SESSION['cart'][$i]['quantity']) ?></td>
                          <td><a href="cart.php?delete=<?php echo $data[$i][0]['item_id'] ?>" class="btn btn-primary height-auto btn-sm">delete</a></td>
                        </tr>
                    <?php }
                    } ?>
                </tbody>
              </table>
            </div>
          </form>
        </div>

        <div class="row">
          <div class="col pl-5">
            <div class="row justify-content-end">
              <div class="col">
                <div class="row">
                  <div class="col-md-12 text-center border-bottom mb-5">
                    <h3 class="text-black h4 text-uppercase">Cart Totals</h3>
                  </div>
                </div>
                <div class="row mb-3">
                  <div class="col-md-6">
                    <span class="text-black"></span>
                  </div>

                  <div class="col-md-6 text-right">
                    <?php
                    $num = sizeof($data);
                    for ($i = 0; $i < $num; $i++) {
                      if (isset($data[$i])) {
                    ?>
                        <strong class="text-black">₹<?php echo ($data[$i][0]['item_price'] * $_SESSION['cart'][$i]['quantity']) ?></strong> <br>
                    <?php
                      }
                    }

                    ?>
                  </div>

                </div>
                <div class="row mb-5">
                  <div class="col-md-6">
                    <span class="text-black font-weight-bold">Total</span>
                  </div>
                  <div class="col-md-6 text-right font-weight-bold">
                    <strong class="text-black">₹<?php echo total_price($data); ?></strong>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6">
                    <button class="btn btn-outline-primary btn-lg btn-block" onclick="window.location='store.php'">Continue Shopping</button>
                  </div>
                  <br> <br>
                  <div class="col-md-6">
                    <button class="btn btn-primary btn-lg btn-block" onclick="window.location='checkout.php'">Proceed To
                      Checkout</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  <?php


                  } else {
  ?>
    <h1 style="text-align: center; color:black; ">Your Cart is empty</h1>
    <img style="width:46rem; margin-left: 330px; margin-bottom:20px;" src="images/nocart.png" alt="">
  <?php
                  }
                  include "includes/footer.php"
  ?>
  </div>
</body>

</html>