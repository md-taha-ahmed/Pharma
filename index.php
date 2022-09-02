<?php
include "includes/head.php"
?>

<body>

  <div class="site-wrap">
    <?php
    include "includes/header.php"
    ?>
    <div class="site-blocks-cover" style="background-image: url('images/hero_1.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
            <div class="site-block-cover-content text-center">
              <h2 class="sub-title">Effective Medicine, New Medicine Everyday</h2>
              <h1>Welcome To Pharma</h1>
              <p>
                <a href="store.php" class="btn btn-primary px-5 py-3">Shop Now</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row align-items-stretch section-overlap">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-primary h-100">
              <a href="#" class="h-100">
                <h5>Free <br> Shipping</h5>
                <p>
                  ₹0 charge for all your orders delivery
                  <strong>for Orders above ₹199.</strong>
                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap h-100">
              <a href="#" class="h-100">
                <h5>Season <br> Sale 50% Off</h5>
                <p>
                  Up to 80% off on health products.

                </p>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="banner-wrap bg-warning h-100">
              <a href="#" class="h-100">
                <h5>New <br> Products</h5>
                <p>
                  Explore more than 10,000 products.
                </p>
              </a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">Products You Might Like</h2>
          </div>
        </div>

        <div class="row">
          <?php
          $data = all_products();
          $num = sizeof($data);
          for ($i = 0; $i < $num; $i++) {
          ?>
            <div class="col-sm-6 col-lg-4 text-center item mb-4">
              <a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"> <img class="rounded mx-auto d-block" style="width:20vw ; height:40vh ;" src="images/<?php echo $data[$i]['item_image'] ?>" alt="Image"></a>
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
            if ($i == 5) {
              break;
            }
          }
          ?>
        </div>
        <div class="row mt-5">
          <div class="col-12 text-center">
            <a href="store.php" class="btn btn-primary px-4 py-3">View All Products</a>
          </div>
        </div>
      </div>
    </div>


    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">New Products</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 block-3 products-wrap">
            <div class="nonloop-block-3 owl-carousel">
              <?php
              $data = all_products_reverse();

              $num = sizeof($data);
              for ($i = 0; $i < $num; $i++) {
              ?>
                <!--  -->
                <div class="  text-center item mb-4">
                  <a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>"> <img class="rounded mx-auto d-block" style="width:20vw ; height:vh ;" src="images/<?php echo $data[$i]['item_image'] ?>" alt="Image"></a>

                  <h3 class="text-dark"><a href="product.php?product_id=<?php echo $data[$i]['item_id'] ?>">Umcka Cold Care</a></h3>

                  <p class="price">₹<?php echo $data[$i]['item_price'] ?></p>
                </div>
                <!--  -->
              <?php
                if ($i == 5) {
                  break;
                }
              }
              ?>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">Testimonials</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 block-3 products-wrap">
            <div class="nonloop-block-3 no-direction owl-carousel">

              <div class="testimony">
                <blockquote>
                  <img src="images/person_1.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle">
                  <p>&ldquo;PHARMA service during COVID 19 is magnificent. It gives good discounts than
                    medical shops. The Website is very simple to choose and the service is very much
                    proficient and prompt. Pretty satisfied with the service. Good Part is you need not
                    spend huge bucks on Doctor's prescribed medical shops which is other big relief. Way
                    to GO.&rdquo;</p>
                </blockquote>

                <p>&mdash; Kelly Holmes</p>
              </div>

              <div class="testimony">
                <blockquote>
                  <img src="images/person_2.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle">
                  <p>&ldquo;As an NRI for me personally PHARMA offers a great relief in getting medicines
                    for my family from finger tip without any hazzles all the time with very limited lead
                    time on all orders. very happy to be a customer and surely recommend it to all those
                    require medicines in reasonable cost and routine basis.&rdquo;</p>
                </blockquote>

                <p>&mdash; Rebecca Morando</p>
              </div>

              <div class="testimony">
                <blockquote>
                  <img src="images/person_3.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle">
                  <p>&ldquo;Now I became customer of pharma.com. Every time I ordering the medicine on pharma.com
                    . It is very helpful website in online shopping for healthcare products. Its delivering service is
                    very fast, and packing also very good, if by mistake any medicine is wrong deliver then easily
                    returns to this web-store. Its customer service is very good.&rdquo;</p>
                </blockquote>

                <p>&mdash; Lucas Gallone</p>
              </div>

              <div class="testimony">
                <blockquote>
                  <img src="images/person_4.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle">
                  <p>&ldquo;I would like to thanks Pharma for their brilliant Customer Service. I ordered
                    medicines from Pharma and they delivered my medicines within 3 days. Keep it up the
                    good work. Pharma is the best medicine app. I recommend everyone to use Pharma
                    Website.&rdquo;</p>
                </blockquote>

                <p>&mdash; Andrew Neel</p>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>


    <?php
    include "includes/footer.php"
    ?>
  </div>



</body>

</html>