<?php
require_once $_SERVER['DOCUMENT_ROOT'].'/zitchat/core/init.php';
if(!is_logged_in()){
  login_error_redirect();
}
include 'includes/head.php';
include 'includes/navigation.php';
?>




<?php include 'includes/footer.php'; ?>
