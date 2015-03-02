class steven::stack::webphp {
    notice '---> WebPHP stack will be installed :'
    notice '       * Apache'
    notice '       * PHP-FPM'
    notice '       * MySQL'
    notice '       * PHPMyAdmin'
    notice '       * Composer'

    include steven::wrapper::wrap_apache
    include steven::wrapper::wrap_fpm
    include steven::wrapper::wrap_mysql
    include steven::wrapper::wrap_phpmyadmin
    include steven::wrapper::wrap_composer
}