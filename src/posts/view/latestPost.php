<?php
require_once(__DIR__ . "/../../../config/database.php");

// Get featured post
$query = $pdo->prepare('SELECT * FROM posts, author WHERE posts.author_id = author.id ORDER BY posts.created_at DESC LIMIT 1');
$query->execute();
$row = $query->fetch(PDO::FETCH_ASSOC);
$created_at = new DateTime($row['created_at'], new DateTimeZone('Europe/Paris'));
?>

<!-- Latest Post Bloc -->
<article class="latest-post-wrapper">
    <!-- Post Detail -->
    <div>
        <h2>
            <?= $row['title'] ?>
        </h2>
        <h6>
            <?= substr($row['content'], 0, 250); ?>...
        </h6>
        <div>
            <div class="post-meta-date">
                <?= $created_at -> format('M d Y') ?>
            </div>
            <a class="post-btn-read-more-link" href="http://127.0.0.3/src/posts/single.php?postId=<?= $row['post_id'] ?>">Read More</a>
        </div>
    </div>

    <!-- Post Image -->
    <div>
        <img src="<?= $row['cover_url'] ?>" alt="">
    </div>
</article>