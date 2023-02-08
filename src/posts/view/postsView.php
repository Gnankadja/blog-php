<!-- Post container section -->
<section class="posts-container">
    <!-- Display Latest Post -->
    <?php require_once(__DIR__ . "./latestPost.php"); ?>

    <!-- Display Post grid -->
    <?php require_once(__DIR__ . "./postGrid.php"); ?>

    <!-- Display  Featured Post-->
    <?php require_once(__DIR__ . "./featuredPost.php"); ?>

    <!-- Read more on blog page btn -->
    <a href="/src/posts/single.php" class="read-more-on-blog-btn">
        <div>See more</div>
        <img src="/../../../assets/images/arrow-down-circle-fill-1.svg" alt="">
    </a>
</section>