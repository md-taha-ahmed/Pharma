<?php include "includes/head.php"; ?>

<body>

  <?php include "includes/header.php"; ?>

  <div class="container-fluid">

    <?php include "includes/sidebar.php"; ?>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <br>
      <div class="d-flex justify-content-center flex-wrap">
        <div class="card m-4" style="width: 25rem;">
          <a href="orders.php">
            <img class="card-img-top mx-auto d-block" src="../images/shopping-cart.svg" alt="Card image cap" style="width: 5rem; margin-top: 20px;">
          </a>
          <div class="card-body text-center">
            <h5 class="card-title">Orders</h5>
            <p class="card-text">Display and modify the orders details.</p>
            <a href="orders.php" class="btn btn-primary">Go to orders page</a>
          </div>
        </div>
        <div class="card m-4" style="width: 25rem;">
          <a href="products.php">
            <img class="card-img-top mx-auto d-block" src="../images/package.svg" alt="Card image cap" style="width: 5rem; margin-top: 20px;">
          </a>
          <div class="card-body text-center">
            <h5 class="card-title">Products</h5>
            <p class="card-text">Display and modify the products details.</p>
            <a href="products.php" class="btn btn-primary">Go to products page</a>
          </div>
        </div>
        <div class="card m-4" style="width: 25rem;">
          <a href="customers.php">
            <img class="card-img-top mx-auto d-block" src="../images/users.svg" alt="Card image cap" style="width: 5rem; margin-top: 20px;">
          </a>
          <div class="card-body text-center">
            <h5 class="card-title">Customers</h5>
            <p class="card-text">Display and modify the customers details.</p>
            <a href="customers.php" class="btn btn-primary">Go to customers page</a>
          </div>
        </div>
        <div class="card m-4" style="width: 25rem;">
          <a href="admin.php">
            <img class="card-img-top mx-auto d-block" src="../images/user.svg" alt="Card image cap" style="width: 5rem; margin-top: 20px;">
          </a>
          <div class="card-body text-center">
            <h5 class="card-title">Admin</h5>
            <p class="card-text">Display and modify the admins details.</p>
            <a href="admin.php" class="btn btn-primary">Go to admin page</a>
          </div>
        </div>
      </div>
    </main>
  </div>

  <?php include "includes/footer.php"; ?>
</body>

</html>
