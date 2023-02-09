<?php
// Include External module
require_once(__DIR__ . "/../../includes/header.php");
require_once(__DIR__ . "/../../config/database.php");

$post_id = null;

// Check if post id is sent by GET Variable
if (isset($_GET['postId'])) {
    $post_id = intval($_GET['postId']);

    // Get post
    $query = $pdo->prepare('SELECT * FROM posts, author where posts.post_id = ? AND posts.author_id = author.id');
    $query->bindValue(1, $post_id);
    $query->execute();
    $row = $query->fetch(PDO::FETCH_ASSOC);

    if ($row) {
        $created_at = new DateTime($row['created_at'], new DateTimeZone('Europe/Paris'));
        // print_r($row);
    } else {
        display_message('Post non disponible', 'error');
        die();
    }
} else {
    display_message("Opération non autorisée", 'error');
    die();
}
?>

<!-- Single post -->
<section class="single-post-container">
    <!-- Single post Image -->
    <div class="single-post-image-wrapper" style="background-image: url(<?= $row['cover_url'] ?>);"></div>

    <!-- Post -->
    <div class="single-post-content-wrapper">

        <!-- Single post header -->
        <div class="single-post-header">
            <h2 class="single-post-title">
                <?= $row['title'] ?>
            </h2>
            <div class="single-post-meta-data">
                <h3 class="post-author">Written by
                    <?= $row['first_name'] . ' ' . $row['last_name'] ?>
                </h3>
                <div class="post-date">
                    <?= $created_at->format('D M d') ?>
                </div>
            </div>
        </div>

        <!-- Post content -->
        <p class="post-content">
            <?= $row['content'] ?>
        </p>
    </div>
</section>

<?php
// Include Footer
require_once(__DIR__ . "/../../includes/footer.php");
?>