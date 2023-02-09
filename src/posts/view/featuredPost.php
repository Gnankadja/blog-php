<?php
require_once(__DIR__ . "/../../../config/database.php");

// Get featured post
$query = $pdo->prepare('SELECT * FROM posts, author where posts.is_featured = 1 AND posts.author_id = author.id');
$query->execute();
$row = $query->fetch(PDO::FETCH_ASSOC); 
$created_at = new DateTime($row['created_at'], new DateTimeZone('Europe/Paris'));
?>

<!-- Featured Post View -->
<article class="featured-post-wrapper">
    <div>
        <h2 class="featured-post-title">
            <?= $row['title'] ?>
        </h2>
        <h6 class="featured-post-short">
            <?= substr($row['content'], 0, 250); ?>...
        </h6>
        <div class="featured-post-meta-data">
            <div>
                <?= $created_at->format('M d Y') ?>
            </div>
            <div><a href="http://127.0.0.3/src/posts/single.php?postId=<?= $row['post_id'] ?>">Read More</a></div>
        </div>
    </div>
    <div>
        <img src="<?= $row['cover_url'] ?>" alt="">
    </div>
</article>