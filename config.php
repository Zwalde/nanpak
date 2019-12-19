<?php
 define('BASEURL', $_SERVER['DOCUMENT_ROOT'].'/zitchat/');
 define('CART_COOKIE','USBjdhe6780kskklG1235');
 define('CART_COOKIE_EXPIRE',time() + (86400 *30));
 define('TAXRATE',0.050); //sales tax set to 0 if you arn't charging tax


 define('CURRENCY', 'NGN');
 define('CHECKOUTMODE','TEST'); //change to live when your ready to go live.

 if(CHECKOUTMODE == 'TEST'){
   define('PAYSTACK_PRIVATE','sk_test_672762a3d32b66c84e864f62c66eef3d09db748d');
   define('PAYSTACK_PUBLIC','pk_test_c82da7a0b75875d68972a0ee08161a70972faaff');
 }

 if(CHECKOUTMODE == 'LIVE'){
   define('PAYSTACK_PRIVATE','sk_live_9d0e73a3ce5e3a7147745a9b8c6c9cab1030c024');
   define('PAYSTACK_PUBLIC','pk_live_d48d255dd6e24284ca7525320a2543d31a57597f');
 }

 ?>
