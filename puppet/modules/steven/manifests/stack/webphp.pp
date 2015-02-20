class steven::stack::webphp {
    notice '---> Web HP stack will be installed: Apache, PHP-FPM, MySQL and Composer.'

    include steven::wrapper::wrap_apache
    include steven::wrapper::wrap_fpm
    include steven::wrapper::wrap_mysql
    include steven::wrapper::wrap_composer
}