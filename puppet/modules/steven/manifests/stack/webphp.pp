class steven::stack::webphp {
    notice '---> Installing web PHP stack : Apache, PHP-FPM, MySQL and Composer.'

    include steven::wrapper::wrap_apache
    include steven::wrapper::wrap_fpm
    include steven::wrapper::wrap_mysql
    include steven::wrapper::wrap_composer
}