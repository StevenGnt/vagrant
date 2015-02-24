class steven::stack::webphp {
    notice '---> WebPHP stack will be installed: Apache, PHP-FPM, MySQL and Composer.'

    include steven::wrapper::wrap_apache
    include steven::wrapper::wrap_fpm
    include steven::wrapper::wrap_mysql
    include steven::wrapper::wrap_composer
}