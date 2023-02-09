<?php
require_once(__DIR__ . "/../../../config/database.php");

// Get featured post
$query = $pdo->prepare('SELECT * FROM posts, author WHERE posts.author_id = author.id ORDER BY RAND() DESC LIMIT 3');
$query->execute();
$rows = $query->fetchAll(PDO::FETCH_ASSOC);
?>


<!-- Grid Post Section -->
<section class="post-grid">
    <!--Article container -->
    <?php foreach ($rows as $row) {
        // Format date
        $created_at = new DateTime($row['created_at'], new DateTimeZone('Europe/Paris'));
        ?>

        <article class="column-post">
            <div>
                <img class="grid-post-cover" src="<?= $row['cover_url'] ?>" alt="">
            </div>
            <div>
                <h2 class="post-title">
                    <?= $row['title'] ?>
                </h2>
                <h6 class="post-short">
                    <?= substr($row['content'], 0, 250); ?>...
                </h6>
                <div class="post-meta-data">
                    <div class="post-meta-date">
                        <?= $created_at->format('M d Y') ?>
                    </div>
                    <div><a class="post-btn-read-more-link"
                            href="http://127.0.0.3/src/posts/single.php?postId=<?= $row['post_id'] ?>">Read more</a></div>
                </div>
            </div>
        </article>
    <?php } ?>
</section>